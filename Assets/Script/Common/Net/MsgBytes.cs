using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.IO;

namespace Net
{
    public class MsgBytes
    {      
        private MemoryStream stream = null;
        private BinaryWriter writer = null;
        private BinaryReader reader = null;

        public MsgBytes()
        {
            stream = new MemoryStream();
            reader = new BinaryReader(stream);
            writer = new BinaryWriter(stream);                      
        }


        // ----------------------

        public byte[] ToBytes()
        {
            return stream.ToArray();
        }

        public void CopyBytes(byte[] buff)
        {
            writer.Write(buff);
        }

        public int GetSize()
        {
            return (int)stream.Position;
        } 

        // --------------------------  read  --------------------

        public sbyte GetInt8()
        {
            return reader.ReadSByte();
        }
        public short GetInt16()
        {
            return reader.ReadInt16();
        }
        public int GetInt32()
        {
            return reader.ReadInt32();
        }
        public float GetFloat()
        {
            return reader.ReadSingle();
        }
        public long GetInt64()
        {
            return reader.ReadInt64();
        }
        public double GetDouble()
        {
            return reader.ReadDouble();
        }



        // --------------------------  write  --------------------

        public void PushInt8(int d)
        {
            writer.Write((sbyte)d);            
        }
        public void PushInt16(int d)
        {
            writer.Write((short)d);
        }
        public void PushInt32(int d)
        {
            writer.Write(d);
        }
        public void PushInt64(long d)
        {
            writer.Write(d);
        }
        public void PushBool(bool d)
        {
            writer.Write(d);
        }
        public void PushFloat(float d)
        {
            writer.Write(d);
        }
        public void PushDouble(double d)
        {
            writer.Write(d);
        }

        public string GetString()
        {
            short nSize = reader.ReadInt16();
            if (nSize <= 0)
            {
                return string.Empty;
            }

            byte[] stringByes = reader.ReadBytes(nSize);
            return System.Text.Encoding.UTF8.GetString(stringByes);
        }

        public void PushString(string s)
        {
            if (string.IsNullOrEmpty(s))
            {
                writer.Write((short)0);
            }
            else
            {
                byte[] srcByByte = System.Text.Encoding.GetEncoding("UTF-8").GetBytes(s);
                if (srcByByte.Length > NetEnv.MSG_STR_LEN)
                {
                    Logger.Error("PushString max len {0}", srcByByte.Length);
                    return;
                }
                writer.Write((short)srcByByte.Length);
                writer.Write(srcByByte);
            }
        }

        public void PushList(object[] list)
        {
            writer.Write((short)list.Length);
            for (int i = 0, imax = list.Length; i < imax; ++i)
            {
                WriteObject(list[i]);
            }
        }

        public void PushArray(ArrayList list)
        {
            object[] objs = list.ToArray();
            PushList(objs);
        }


        private bool WriteObject(object obj)
        {
            System.Type type = obj.GetType();

            if (type == typeof(sbyte))
            {
                writer.Write((sbyte)obj);
            }
            else if (type == typeof(bool))
            {
                writer.Write((bool)obj);
            }
            else if (type == typeof(byte))
            {
                writer.Write((byte)obj);
            }
            else if (type == typeof(short))
            {
                writer.Write((short)obj);
            }
            else if (type == typeof(ushort))
            {
                writer.Write((ushort)obj);
            }
            else if (type == typeof(int))
            {
                writer.Write((int)obj);
            }
            else if (type == typeof(uint))
            {
                writer.Write((uint)obj);
            }
            else if (type == typeof(float))
            {
                writer.Write((float)obj);
            }
            else if (type == typeof(long))
            {
                writer.Write((long)obj);
            }
            else if (type == typeof(string))
            {
                string str = (string)obj;
                PushString(str);
            }
            //////////////////////////     list     ////////////////////////
            else if (type == typeof(bool[]))
            {
                bool[] arr = (bool[])obj;
                writer.Write((short)arr.Length);
                for (int i = 0, imax = arr.Length; i < imax; ++i) writer.Write(arr[i]);
            }
            else if (type == typeof(byte[]))
            {
                byte[] arr = (byte[])obj;
                writer.Write((short)arr.Length);
                writer.Write(arr);
            }
            else if (type == typeof(short[]))
            {                
                short[] arr = (short[])obj;
                writer.Write((short)arr.Length);
                for (int i = 0, imax = arr.Length; i < imax; ++i) writer.Write(arr[i]);
            }
            else if (type == typeof(int[]))
            {
                int[] arr = (int[])obj;
                writer.Write((short)arr.Length);
                for (int i = 0, imax = arr.Length; i < imax; ++i) writer.Write(arr[i]);
            }
            else if (type == typeof(float[]))
            {
                float[] arr = (float[])obj;
                writer.Write((short)arr.Length);
                for (int i = 0, imax = arr.Length; i < imax; ++i) writer.Write(arr[i]);
            }
            else if (type == typeof(string[]))
            {
                string[] arr = (string[])obj;
                writer.Write((short)arr.Length);
                for (int i = 0, imax = arr.Length; i < imax; ++i) PushString(arr[i]);
            }
            else if (type == typeof(ArrayList))
            {
                PushArray((ArrayList)obj);
            }
            else
            {
                Logger.Error("WriteObject error type :{0}", type);
                return false;
            }
            return true;
        }


    }


}
