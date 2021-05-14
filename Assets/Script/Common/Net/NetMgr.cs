using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public delegate void IntDelegate(int a);

namespace Net
{
    public delegate void MsgHandlerDelegate(MsgPack msg);

    public static class NetMgr
    {
        private static NetSocket gameSocket = null;
        //private NetSocket phpSocket = null;
        private static Dictionary<int, MsgHandlerDelegate> registerMsgHandlerDict = new Dictionary<int, MsgHandlerDelegate>();
        private static Dictionary<int, Google.Protobuf.IMessage> registerMsgProtoDict = new Dictionary<int, Google.Protobuf.IMessage>();

        private static IntDelegate onConnectCallBackFunc;

        public static void Init()
        {
            gameSocket = new NetSocket();
            gameSocket.SetRecvCallBackFunc(OnSocketRecvMsg);
            gameSocket.SetConnectCallBackFunc(OnSocketConnect);
            gameSocket.SetCloseCallBackFunc(OnSocketClose);
            onConnectCallBackFunc = null;
        }        

        public static void RegisterMsgHandler(int msgid, MsgHandlerDelegate handler, Google.Protobuf.IMessage pb = null)
        {
            if (registerMsgHandlerDict.ContainsKey(msgid))
            {
                Logger.Error("msgid has registered! msgid={0}", msgid);
                return;
            }
            registerMsgHandlerDict.Add(msgid, handler);
            registerMsgProtoDict.Add(msgid, pb);
        }

        public static MsgHandlerDelegate GetMsgHandler(int msgid)
        {
            MsgHandlerDelegate handler;
            if (!registerMsgHandlerDict.TryGetValue(msgid, out handler))
            {
                //Logger.Error("get msghandler not register msgid={0} !", msgid);
                return null;
            }
            return handler;
        }

        public static Google.Protobuf.IMessage GetMsgProto(int msgid)
        {
            Google.Protobuf.IMessage pb;
            if (!registerMsgProtoDict.TryGetValue(msgid, out pb))
            {
                //Logger.Error("get msgproto  not register msgid={0} !", msgid);
                return null;
            }
            return pb;
        }
        
        public static void DoFixUpdate()
        {
            if (gameSocket == null) return;
            gameSocket.OnSocektUpdate();
        }

        public static void NetConnect(string host, int port, IntDelegate cbfunc)
        {
            Logger.Log("NetConnect: ip:" + host + " port:" + port);
            onConnectCallBackFunc = cbfunc;
            gameSocket.CreateConnect(host, port);
        }

        private static void OnSocketConnect(int ret)
        {
            Logger.Log("OnSocketConnect:",ret); 
            onConnectCallBackFunc(ret);               
        }

        private static void OnSocketClose(int type)
        {
            Logger.Log("OnSocketClose:",type); 
            //UIMgr.GetUI<AlertMsgView>(VIEWID.DIALOG_ALERT).ShowAlertInfo("服务器断开");

        }        

        public static void NetClose()
        {
            Logger.Log("Do Socket Close:"); 
            gameSocket.Close();
        }

        public static bool CheckMsgId(MSGID msgid)
        {
            int _msgid = (int)msgid;
            if (_msgid < GData.MSG_SEND_MINID || _msgid > GData.MSG_SEND_MAXID)
            {
                return false;
            }
            return true;
        } 

        public static bool IsConnect()
        {
            return gameSocket.isConnect;               
        }         

        public static void SendMsg(MSGID msgid)
        {
            if (gameSocket.isConnect == false)
            {
                Logger.Error("SendMsg Byte no connent!!!!!");
                return;
            }

            if (CheckMsgId(msgid) == false)
            {
                Logger.Error("error send msg msgid : " + msgid);
                return;
            }

            gameSocket.SendMsg((int)msgid);            
        }

        public static void SendMsg(MSGID msgid, MsgBytes mb)
        {
            if (gameSocket.isConnect == false)
            {
                Logger.Error("SendMsg Byte no connent!!!!!");
                return;
            }

            if (CheckMsgId(msgid) == false)
            {
                Logger.Error("error send msg msgid : " + msgid);
                return;
            }
            //Logger.Log("send byte msgid --->" + (int)msgid);
            gameSocket.SendMsg((int)msgid,mb);
        }

        public static void SendMsg(MSGID msgid, Google.Protobuf.IMessage pb)
        {
            if (gameSocket.isConnect == false)
            {
                Logger.Error("SendMsg Proto no connent!!!!!");
                return;
            }

            if (CheckMsgId(msgid) == false)
            {
                Logger.Error("error send msg msgid : " + msgid);
                return;
            }

            Logger.Log("send msgid --->" + (int)msgid + " pb: " + pb.ToString());
            gameSocket.SendMsg((int)msgid,pb);
        }

        private static void OnSocketRecvMsg(MsgPack msg)
        {
            MsgHandlerDelegate msgHandler = GetMsgHandler(msg.msgid);
            if (msgHandler == null)
            {
                Logger.Log("recv no reg msgid <---" + (int)msg.msgid);
                return;
            }

            Google.Protobuf.IMessage _pb = GetMsgProto(msg.msgid);
            if(_pb != null)
            {                       
                msg.UnpackProtoBuf(_pb);
                //Logger.Log("recv msgid <---" + (int)msg.msgid +  " pb: " + _pb.ToString());
            }
            else
            {
                Logger.Error("recv msgid no regedit protobuf id:" + msg.msgid);
                return;
            }

            msgHandler(msg);    
        }
    }
}
