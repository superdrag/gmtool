using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using UnityEngine;
using UnityEngine.Networking;
using LitJson;


public static class JsonConfig
{
    
    public static List<JsonData> LoadJsonFile(string path)
    {
        TextAsset jsontext = ResMgr.LoadRes<TextAsset>(path);        
        if( jsontext == null ) 
        {
            Logger.Error("LoadCfg err path:",path);
            return null;
        }                
        //Logger.Log("LoadJsonFile str.......",jsonstr);
        List<JsonData> jsonList = LoadJsonStr(jsontext.text);
        return jsonList;
    }

    public static List<JsonData> LoadJsonStr(string jsonStr)
    {
        List<JsonData> jsonlist = JsonMapper.ToObject<List<JsonData>>(jsonStr);
        return jsonlist;
    }    

    public static bool ReadBool(JsonData data, string name) 
    {
        return data[name].ToString() == "1";
    }

    public static int ReadInt32(JsonData data,string name) 
    {
        return Int32.Parse(data[name].ToString());
    }

    public static short ReadInt16(JsonData data, string name) 
    {
        return Int16.Parse(data[name].ToString());
    }

    public static sbyte ReadSByte(JsonData data, string name) 
    {
        return sbyte.Parse(data[name].ToString());
    }
    public static byte ReadByte(JsonData data, string name)
    {
        return byte.Parse(data[name].ToString());
    }
    public static string ReadString(JsonData data, string name) 
    {
        return data[name].ToString();
    }

    public static long ReadInt64(JsonData data, string name) 
    {
        return Int64.Parse(data[name].ToString());
    }

    public static float ReadFloat(JsonData data, string name) 
    {
        return float.Parse(data[name].ToString());
    }

    public static List<int> ReadIntList(JsonData data, string name) 
    {
        string[] ary = data[name].ToString().Split(',');
        List<int> intList = new List<int>();
        for (int i = 0; i < ary.Length; ++i)
        {
            if (ary[i].ToString() != "")
            {
                intList.Add(int.Parse(ary[i]));
            }
        }
        return intList;
    }

    public static List<short> ReadShortList(JsonData data, string name)
    {
        string[] ary = data[name].ToString().Split(',');
        List<short> shortList = new List<short>();
        for (int i = 0; i < ary.Length; ++i)
        {
            shortList.Add(Int16.Parse(ary[i]));
        }
        return shortList;
    }

    public static List<float> ReadFloatList(JsonData data, string name) 
    {
        string[] ary = data[name].ToString().Split(',');
        List<float> floatList = new List<float>();
        for (int i = 0; i < ary.Length; ++i)
        {
            floatList.Add(float.Parse(ary[i]));
        }
        return floatList;
    }

    public static List<string> ReadStringList(JsonData data, string name)
    {
        string[] ary = data[name].ToString().Split(',');
        List<string> stringList = new List<string>();
        for(int i = 0; i < ary.Length; i++)
        {
            stringList.Add(ary[i]);
        }
        return stringList;
    }

    public static void ReadDictionaryKeyStringValueString(JsonData data, string name, Dictionary<string, string> dict)
    {
        string[] ary = data[name].ToString().Split('|');
        for (int i = 0; i < ary.Length; i++)
        {
            string[] arys = ary[i].Split(',');
            if (arys.Length > 1)
            {
                if (dict.ContainsKey(arys[0]))
                {
                    dict[arys[0]] = arys[1];
                }
                else
                {
                    dict.Add(arys[0], arys[1]);
                }
            }
        }
    }
    public static void ReadDictionaryKeyIntValueString(JsonData data, string name, Dictionary<int, string> dict)
    {
        string[] ary = data[name].ToString().Split('|');
        for (int i = 0; i < ary.Length; i++)
        {
            string[] arys = ary[i].Split(',');
            if (arys.Length > 1)
            {
                if (dict.ContainsKey(int.Parse(arys[0])))
                {
                    dict[int.Parse(arys[0])] = arys[1];
                }
                else
                {
                    dict.Add(int.Parse(arys[0]), arys[1]);
                }
            }
        }
    }

    public static void ReadDictionaryKeyStringValueInt(JsonData data, string name, Dictionary<string, int> dict)
    {
        string[] ary = data[name].ToString().Split('|');
        for (int i = 0; i < ary.Length; i++)
        {
            string[] arys = ary[i].Split(',');
            if (arys.Length > 1)
            {
                if (dict.ContainsKey(arys[0]))
                {
                    dict[arys[0]] = int.Parse(arys[1]);
                }
                else
                {
                    dict.Add(arys[0], int.Parse(arys[1]));
                }
            }
        }
    }
    public static void ReadDictionaryKeyIntValueInt(JsonData data, string name, Dictionary<int, int> dict)
    {
        string[] ary = data[name].ToString().Split('|');
        for (int i = 0; i < ary.Length; i++)
        {
            string[] arys = ary[i].Split(',');
            if(arys.Length > 1)
            {
                if (dict.ContainsKey(int.Parse(arys[0])))
                {
                    dict[int.Parse(arys[0])] = int.Parse(arys[1]);
                }
                else
                {
                    dict.Add(int.Parse(arys[0]), int.Parse(arys[1]));
                }
            }
        }
    }


    //---------------------------------------------------------

    public static void WriteBool(JsonWriter writer, bool value) 
    {
        writer.Write(value);
    }

    public static void WriteInt32(JsonWriter writer, Int32 value) 
    {
        writer.Write(value);
    }

    public static void WriteFloat(JsonWriter writer, float value) 
    {
        writer.Write(value);
    }    

    public static void WriteString(JsonWriter writer, string value) 
    {
        writer.Write(value);
    }    
      
}
