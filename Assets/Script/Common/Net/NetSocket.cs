using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.IO;
using System.Runtime.InteropServices;
using System.Threading;
using UnityEngine;

namespace Net
{
    public class NetSocket
    {       
        private Socket socket = null;        
        private byte[] recvbuf = new byte[NetEnv.MSG_RECV_LEN];
        //private byte[] sendbuf = new byte[NetEnv.MSG_SEND_LEN];
        private byte[] splitbuf = new byte[NetEnv.MSG_SPLIT_LEN];
        private int splitlen = 0;

        private MutexQueue<MsgPack> reciveMsgQueue = new MutexQueue<MsgPack>();
        private MutexQueue<MsgPack> sendMsgQueue = new MutexQueue<MsgPack>();
        private MutexQueue<NetEvent> eventMsgQueue = new MutexQueue<NetEvent>();
        private static readonly object recvMutex = new object();

        private Action<MsgPack> onRecvCallBackFunc;   
        private Action<int> onConnCallBackFunc;
        private Action<int> onCloseCallBackFunc;

       
        public bool isConnect = false;

        public NetSocket()
        {
            onRecvCallBackFunc = null;     
            onConnCallBackFunc = null;
            onCloseCallBackFunc = null;                    
        }

        public void SetRecvCallBackFunc(Action<MsgPack> cbfunc)
        {
            onRecvCallBackFunc = cbfunc;
        }

        public void SetConnectCallBackFunc(Action<int> cbfunc)
        {
            onConnCallBackFunc = cbfunc;
        }           

        public void SetCloseCallBackFunc(Action<int> cbfunc)
        {
            onCloseCallBackFunc = cbfunc;
        }       

        private void SetSocketOpt()
        {
            //uint tmp = 0; int OPSIZE = Marshal.SizeOf(tmp);
            //byte[] inOptionValues = new byte[OPSIZE * 3];
            //BitConverter.GetBytes((uint)1).CopyTo(inOptionValues, 0);
            //BitConverter.GetBytes((uint)5000).CopyTo(inOptionValues, OPSIZE);
            //BitConverter.GetBytes((uint)5000).CopyTo(inOptionValues, OPSIZE * 2);
            //socket.IOControl(IOControlCode.KeepAliveValues, inOptionValues, null);
        }

        public void CreateConnect(string host, int port)
        {
            //Debug.Log("CreateConnect TID: " + Thread.CurrentThread.ManagedThreadId);
            if (socket != null)
            {
                if(NetEnv.NET_LOG)Debug.LogError("CreateConnect has socket!!");
                return;                    
            }

            socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);           
            IPAddress ipAddress = IPAddress.Parse(host);
            IPEndPoint ipEndPoint = new IPEndPoint(ipAddress, port);        
            IAsyncResult connAsyncRet = socket.BeginConnect(ipEndPoint, new AsyncCallback(ConnectAsyncCallback), socket);
            //connAsyncRet.AsyncWaitHandle.WaitOne(2000, true);  //等待2秒
        }

        private void ConnectAsyncCallback(IAsyncResult ar)
        {
            //Debug.Log("ConnectAsyncCallback TID: " + Thread.CurrentThread.ManagedThreadId);
            
            MsgBytes mb = new MsgBytes();
            try
            {
                if(NetEnv.NET_LOG)Debug.Log("Socket Connect Ok");                        
                Socket socketHandle = (Socket)ar.AsyncState;
                socketHandle.EndAccept(ar);
                isConnect = true;                
                AddNetEvent(NET_EVENT.SOCKET_CONNECT,onConnCallBackFunc,0);
                StartReceived();
            }
            catch (Exception e)
            {   
                if(NetEnv.NET_LOG)Debug.LogError("Net Connect Fail :" + e.ToString());         
                AddNetEvent(NET_EVENT.SOCKET_CONNECT,onConnCallBackFunc,-1);                
            }
        }

        public void SendMsg(int msgid)
        {
            MsgPack mp = new MsgPack((ushort)msgid);
            mp.PackHeadBuf();
            PushMsg(mp);
        }

        public void SendMsg(int msgid, Google.Protobuf.IMessage pb)
        {
            MsgPack mp = new MsgPack((ushort)msgid);
            mp.PackProtoBuf(pb);
            PushMsg(mp);
        }

        public void SendMsg(int msgid, MsgBytes mb)
        {
            MsgPack mp = new MsgPack((ushort)msgid);
            mp.PackByteBuf(mb);
            PushMsg(mp);
        }

        private void PushMsg(MsgPack msg)
        {
            if (socket == null) return;

            if (msg.msglen > NetEnv.MSG_PACKET_LEN)
            {
                if(NetEnv.NET_LOG)Debug.LogError("Socket PushMsg Maxlen:" + msg.msglen);
                return;
            }
            //Debug.Log("push msg msgid <---" + msg.msgid.ToString() + " length: " + msg.msglen.ToString());           
            sendMsgQueue.Push(msg);
            OnCheckSendQueue();
        }

        private void AddNetEvent(NET_EVENT eventId, Action<int> cbfunc, int arg = 0)
        {
            NetEvent netEvent = new NetEvent(eventId,cbfunc,arg);
            eventMsgQueue.Push(netEvent);
        }

        private void OnCheckSendQueue()
        {
            if (sendMsgQueue.Empty()) return;
            MsgPack msg = sendMsgQueue.Pop();
            if (msg == null)
            {
                if(NetEnv.NET_LOG)Debug.LogError("Socket OnCheckSendQueue msg null");
                return;
            }
            
            Debug.Log("send q msgid --->" + msg.msgid.ToString() + " len: " + msg.msglen.ToString());
            IAsyncResult sendAsyncRet = socket.BeginSend(msg.ToBytes(), 0, (int)msg.msglen, SocketFlags.None, SendMsgCallback, socket);            
        }

        private void SendMsgCallback(IAsyncResult ar)
        {
            ar.AsyncWaitHandle.WaitOne();
            if (ar.IsCompleted)
            {
                Socket socketHandle = (Socket)ar.AsyncState;
                socketHandle.EndSend(ar);
                OnCheckSendQueue();
            }
            else
            {
                if(NetEnv.NET_LOG)Debug.LogError("SendMsgCallback fail!!!");
                Close(true);
            }                    
        }  

        public void Close(bool sysClose = false)
        {
            if (socket == null) return;
            Logger.Log("Socket Close");    
            
            sendMsgQueue.Clear();
            reciveMsgQueue.Clear();

            isConnect = false;

            Array.Clear(splitbuf, 0, splitbuf.Length);
            
            try
            {
                socket.Shutdown(SocketShutdown.Both);
                socket.Close();                
            }
            catch (SocketException e)
            {
                if(NetEnv.NET_LOG)Debug.LogError("Socket Close errorCode:" + e.ErrorCode);
            }               
            socket = null;

            if(sysClose)
            {
                AddNetEvent(NET_EVENT.SOCKET_CLOSE,onCloseCallBackFunc,0);    
            }            
        }

        public void ReConnect(string host, int port)
        {            
            Close();
            CreateConnect(host, port);
        }

        private void StartReceived()
        {
            lock (recvMutex)
            {
                Array.Clear(recvbuf, 0, recvbuf.Length);
                IAsyncResult recvAsyncRet = socket.BeginReceive(recvbuf, 0, recvbuf.Length, SocketFlags.None, new AsyncCallback(OnReceiveData), socket);
            }                  
        }

        private void OnReceiveData(IAsyncResult ar)
        {           
            Socket socketHandle = (Socket)ar.AsyncState;           
            int recvlen = socketHandle.EndReceive(ar);                       
            if (recvlen == 0)
            {
                if(NetEnv.NET_LOG)Debug.Log("OnReceiveData len 0 close conn");                
                Close(true);
                return;
            }
      
            if (recvlen > 0)
            {
                lock (recvMutex)
                {
                    UnPackRecvData(recvlen);
                }                
            }
            StartReceived();
        }

        public void OnSocektUpdate()
        {
            OnCheckRecvQueue(); 
            OnCheckEventQueue();          
        }

        private void OnCheckEventQueue()
        {
            if (eventMsgQueue.Empty()) return;
            
            NetEvent netEvent = eventMsgQueue.Pop();
            if(netEvent != null)
            {                
                netEvent.DoEvent();
            }                    
        }

        private void OnCheckRecvQueue()
        {
            if (reciveMsgQueue.Empty()) return;
            
            MsgPack msg = reciveMsgQueue.Pop();

            //Google.Protobuf.IMessage pb1;
            
            //Output.Log("recv msgid <---" + msg.msgid.ToString() + " length: " + msg.msglen.ToString());

            System.Diagnostics.Stopwatch stopwatch = new System.Diagnostics.Stopwatch();
            stopwatch.Start();

            ////////
            onRecvCallBackFunc(msg);
            ////////

            stopwatch.Stop();
            TimeSpan timeSpan = stopwatch.Elapsed;
            if (timeSpan.TotalMilliseconds >= 50)
            {
                if(NetEnv.NET_LOG)Debug.Log("MSG COST HIGH : msgid:" + msg.msgid + " ms:" + timeSpan.TotalMilliseconds);
            }            
        }

        private void ClearSplitBuf()
        {            
            Array.Clear(splitbuf, 0, splitbuf.Length);
            splitlen = 0;
        }

        public void UnPackRecvData(int recvlen)
        {
            //Output.Log("HandleRecvMsg.............................");
            int leftsize = recvlen;
            int buffpos = 0;

            if (splitlen > 0)
            {               
                byte[] tmpbuf = new byte[NetEnv.MSG_PACKET_LEN];
                Array.Copy(recvbuf, tmpbuf, recvlen);
                Array.Clear(recvbuf, 0, recvbuf.Length);

                Array.Copy(splitbuf, recvbuf, splitlen);                
                Array.Copy(tmpbuf, 0, recvbuf, splitlen, recvlen);

                leftsize += splitlen;
                ClearSplitBuf();
            }

            bool flag = true;
            while (leftsize >= NetEnv.MSG_HEAD_LEN)
            {
                uint _len = BitConverter.ToUInt32(recvbuf, buffpos ); 
                ushort _id = BitConverter.ToUInt16(recvbuf, buffpos + sizeof(uint));
                int _arg = BitConverter.ToInt32(recvbuf, buffpos + sizeof(uint) + sizeof(ushort));

                if (_len < NetEnv.MSG_HEAD_LEN || _len > NetEnv.MSG_RECV_LEN)
                {
                    if(NetEnv.NET_LOG)Debug.LogError("Recv Msg Len : " + _len);
                    ClearSplitBuf();
                    return;
                }

                if (_len > leftsize)
                {
                    break;
                }

                if (flag == true)
                {
                    MsgPack msg = new MsgPack();
                    msg.Stream2Msg(recvbuf, buffpos, _id, _len, _arg);
                    //Output.Log("recv msgid <---" + msg.msgid.ToString() + " length: " + msg.msglen.ToString() + " buffpos: " + buffpos.ToString() + " leftsize: " + leftsize.ToString() + " _len: " + _len.ToString());           
                    reciveMsgQueue.Push(msg);
                }

                leftsize -= (int)_len;                
                buffpos += (int)_len;                
            }

            if (leftsize > 0)
            {
                if(leftsize < NetEnv.MSG_RECV_LEN)
                {
                    splitlen = leftsize;
                    Array.Copy(recvbuf, buffpos, splitbuf, 0, splitlen);
                    if(NetEnv.NET_LOG)Debug.Log("splitbuf add size:" + splitlen);
                }else
                {
                    if(NetEnv.NET_LOG)Debug.LogError("leftsize err len:" + leftsize);
                }
            }
        }


    }
}
