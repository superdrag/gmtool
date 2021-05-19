using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

// using Proto.Common;
// using Proto.MahJong;
// using Proto.Poker;

//using Google.Protobuf;

namespace Net
{
    public class MsgPack
    {
        public uint msglen = 0;
        public ushort msgid = 0;
        public int msgarg = 0;
      
        private MemoryStream stream = null;
        private BinaryWriter writer = null;
        private BinaryReader reader = null;

        public MsgPack()
        {
            stream = new MemoryStream();
            reader = new BinaryReader(stream);
            writer = new BinaryWriter(stream);
        }

        public MsgPack(ushort id):this()
        {
            msgid = id;
        }

        //public void Msg2Stream()
        //{

        //}

        public void Stream2Msg(byte[] buff, int offset, ushort id, uint len, int arg)
        {
            msgid = id;
            msglen = len;           
            msgarg = arg;          
            int bodysize = (int)msglen - NetEnv.MSG_HEAD_LEN;
            if (bodysize > 0)
            {
                //Output.Log("Stream2Msg body............");
                stream.Write(buff, offset+ NetEnv.MSG_HEAD_LEN, bodysize);
                stream.Position = 0;
                //stream.Flush();                
            }            
        }

        public void Reset(ushort id)
        {
            msgid = id;
            stream.Dispose();
            stream.Position = 0;
        }

        public void Free()
        {
            if (writer != null) writer.Close();
            if (reader != null) reader.Close();

            stream.Close();
            writer = null;
            reader = null;
            stream = null;
        }

        public void MsgEncrypt()
        {
            uint __len = (msglen >> 16) | (msglen << 16);
            int __id = (msgid >> 8) | (msgid << 8);
            msgarg = (int)(__len + __id);
            //Output.Log("MsgEncrypt...........", arg1);
        }

        public byte[] ToBytes()
        {
            return stream.ToArray();           
        }
        
        public MemoryStream GetStream()
        {
            return this.stream;
        }

        public void PackHead()
        {
            writer.Write(msglen);
            writer.Write(msgid);
            writer.Write(msgarg);           
        }

        public void PackHeadBuf()
        {
            msglen = (ushort)NetEnv.MSG_HEAD_LEN;
            PackHead();                        
        }

        //msgbuff
        public void PackByteBuf(MsgBytes mb)
        {            
            stream.Position = NetEnv.MSG_HEAD_LEN;
            if(mb != null)
            {
                writer.Write(mb.ToBytes());
            }            
            msglen = (uint)stream.Position;
            stream.Position = 0;
            PackHead();              
        }

       // public void UnpackByteBuf(MsgBytes mb)
        // {
        //     if (stream.Length <= 0) return;
        //     mb.CopyBytes(stream.ToArray());
        // }

        //proto
        public void PackProtoBuf(Google.Protobuf.IMessage pb)
        {
            //Serializer.Serialize<T>(stream, t);
            stream.Position = NetEnv.MSG_HEAD_LEN;
            if(pb != null)
            {
                Google.Protobuf.CodedOutputStream codedOutput = new Google.Protobuf.CodedOutputStream(stream);
                pb.WriteTo(codedOutput);
                codedOutput.Flush();
            }
            msglen = (uint)stream.Position;
            stream.Position = 0;
            PackHead();           
        }

        public void UnpackProtoBuf(Google.Protobuf.IMessage pb)
        {                
            Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(stream.ToArray());
            pb.MergeFrom(pbStream);
            //Output.Log("unpack pb <--- ",msgid, pb.ToString());
            Logger.Log("recv msgid <---" + (int)msgid +  " pb: " + pb.ToString());
        }

        public T UnpackProtoBuf<T>(Google.Protobuf.IMessage pb)
        {                
            Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(stream.ToArray());
            pb.MergeFrom(pbStream);
            //Output.Log("unpack pb <--- ",msgid, pb.ToString());
            Logger.Log("recv msgidT <---" + (int)msgid +  " pb: " + pb.ToString());
            return (T)pb;
        }
        
        //public T UnpackProtoBuf<T>()
        //{
        //    MessageParser fs;
        //    //stream.Position = 0;
        //    //T t = Serializer.Deserialize<T>(stream);
        //    //Google.Protobuf.ParseFrom(stream);
        //    //return t; 
        //}

        // public Google.Protobuf.IMessage XUnPackProtoBuf(Google.Protobuf.IMessage pb)
        // {                
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(stream.ToArray());
        //     pb.MergeFrom(pbStream);
        //     Output.Log("ReadMessage1 ok..............", pb.ToString());
        //     return pb;
        // }


        // public void ReadMessage<T>(Google.Protobuf.IMessage<T> parser) where T : Google.Protobuf.IMessage<T>
        // {
        //     Output.Log("ReadMessage........................",parser.ToString()); 
        // }

    } 
}
