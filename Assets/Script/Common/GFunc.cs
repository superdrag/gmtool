using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using System.IO;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using UnityEngine.SceneManagement;
using PBase;
using PPhp;

public class GFunc
{
    public static bool DEBUGMODE()
    {
        return true;
    }

    public static string AppRunPath()
    {
        string appName = GData.AppName.ToLower();
        if (Application.isMobilePlatform)
        {
            return Application.persistentDataPath + "/" + appName + "/";
        }
        else if (Application.platform == RuntimePlatform.WindowsPlayer)
        {
            return Application.streamingAssetsPath + "/";
        }
        else if (Application.isEditor)
        {
            if (GData.DebugHotFix)
            {
                return "c:/" + appName + "/";
            }
            else
            {
                return Application.dataPath.Replace("Assets", "");
            }
        }
        else
        {
            Logger.Error(" AppRunPath Error !");
            return "";
        }
    }

    public static string AppResPath()
    {
        string path = string.Empty;
        switch (Application.platform)
        {
            case RuntimePlatform.Android:
                path = "jar:file://" + Application.dataPath + "!/assets/";
                break;
            case RuntimePlatform.IPhonePlayer:
                path = Application.dataPath + "/Raw/";
                break;
            default:
                path = Application.dataPath + "/StreamingAssets/";
                break;
        }
        return path;
    }

    //APP打包路径
    public static string AppPackgePath()
    {
        return Application.dataPath + "/StreamingAssets/";;
    }

    public static string AppDataPathEx()
    {
        return Application.dataPath.Replace("Assets","");
    }    

    public static string AppLogPath()
    {
        string path = string.Empty;
        if (Application.isMobilePlatform)
        {
            path = Application.persistentDataPath + "/HCLogs";
        }
        else
        {
            path = Application.dataPath + "/../HCLogs";
        }
        return path;
    }  

    public static string MD5(string source)
    {
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] data = System.Text.Encoding.UTF8.GetBytes(source);
        byte[] md5Data = md5.ComputeHash(data, 0, data.Length);
        md5.Clear();

        string destString = "";
        for (int i = 0; i < md5Data.Length; i++)
        {
            destString += System.Convert.ToString(md5Data[i], 16).PadLeft(2, '0');
        }
        destString = destString.PadLeft(32, '0');
        return destString;
    }

    public static string MD5file(string file)
    {
        try
        {
            FileStream fs = new FileStream(file, FileMode.Open);
            System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] retVal = md5.ComputeHash(fs);
            fs.Close();

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < retVal.Length; i++)
            {
                sb.Append(retVal[i].ToString("x2"));
            }
            return sb.ToString();
        }
        catch (Exception ex)
        {
            throw new Exception("MD5file() fail, error:" + ex.Message + " file:" + file);
        }
    }

    //DateTime转时间戳
    public static int DateTime2TimeStamp(DateTime dt)
    {
        DateTime dateStart = new DateTime(1970, 1, 1, 8, 0, 0);  
        int timeStamp = Convert.ToInt32((dt - dateStart).TotalSeconds);  
        return timeStamp; 
    }

    //时间戳转DateTime
    public static DateTime TimeStamp2DateTime(int timeStamp)
    {
        DateTime dtStart = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));  
        long lTime = ((long)timeStamp * 10000000);  
        TimeSpan toNow = new TimeSpan(lTime);  
        DateTime targetDt = dtStart.Add(toNow);  
        //Logger.Log("tttttttttttttttt ",targetDt.ToString());
        return targetDt;  
    }    

    public static List<string> GetDirFiles(string pathName)
    {
        List<string> filelist = new List<string>();

        Stack<string> skDir = new Stack<string>();
        skDir.Push(pathName);
        while (skDir.Count > 0)
        {
            pathName = skDir.Pop();
            string[] subDirs = Directory.GetDirectories(pathName);
            string[] subFiles = Directory.GetFiles(pathName);
            if (subDirs != null)
            {
                for (int i = 0; i < subDirs.Length; i++)
                {
                    //string dirName = Path.GetFileName(subDirs[i]);
                    skDir.Push(subDirs[i].Replace('\\','/'));
                }
            }
            
            if (subFiles != null)
            {
                for (int i = 0; i < subFiles.Length; i++)
                {
                    //string fileName = Path.GetFileName(subFiles[i]);
                    filelist.Add(subFiles[i].Replace('\\','/'));
                }
            }
        }
        return filelist;
    }

    public static void CopyDirectory(string sourceDirPath,string SaveDirPath)
    {
        try
        {
            //如果指定的存储路径不存在，则创建该存储路径
            if (!Directory.Exists(SaveDirPath))
            {
                //创建
                Directory.CreateDirectory(SaveDirPath);
            }
            //获取源路径文件的名称
            string[] files = Directory.GetFiles(sourceDirPath);
            //遍历子文件夹的所有文件
            foreach(string file in files)
            {
                string pFilePath = SaveDirPath + "\\" + Path.GetFileName(file);
                // if (File.Exists(pFilePath))
                //     continue;
                File.Copy(file, pFilePath, true);
            }
            string[] dirs = Directory.GetDirectories(sourceDirPath);
            //递归，遍历文件夹
            foreach (string dir in dirs)
            {
                CopyDirectory(dir, SaveDirPath + "\\" + Path.GetFileName(dir));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }

    public static GameObject GetUICamera()
    {
        return GameObject.Find("UICamera");        
    }

    public static GameObject Get3DCamera()
    {
        return GameObject.Find("3DCamera");        
    } 

    public static string List2Str<T>(List<T> list)
    {
        string str = null;
        for (int i = 0; i < list.Count; i++)
        {
            if(i != 0) str += ",";
            str += list[i].ToString();                                
        }
        return str;
    }

    public static void PBMap2Dict<T1,T2>(global::Google.Protobuf.Collections.MapField<T1, T2> pbMap, Dictionary<T1,T2> dict)
    {
        foreach( var item in pbMap )
        {            
            dict.Add(item.Key,item.Value);                
        }        
    }  

    public static void Dict2PBMap<T1,T2>(Dictionary<T1,T2> dict, global::Google.Protobuf.Collections.MapField<T1, T2> pbMap )
    {
        foreach( var item in dict )
        {            
            pbMap.Add(item.Key,item.Value);                
        }        
    }  

    public static void ChangeImageTex(UnityEngine.UI.Image img, string pathTex)
    {
        Logger.Log("ChangeImageTex pathTex .............",pathTex);
        Sprite sp = ResMgr.LoadRes<Sprite>(pathTex);
        //Logger.Log("ChangeImageTex sp .............",sp);    
        img.sprite = sp;        
        img.SetNativeSize(); 
    }   

    public static Vector2 ToVector2(string posMsg)
    {
        string[] split = posMsg.Split(',');
        if (split.Length < 2)
        {
            Logger.Error("字符串格式不正确{0}", posMsg);
        }
        return new Vector2(float.Parse(split[0]), float.Parse(split[1]));
    }

    public static Vector3 ToVector3(string posMsg)
    {
        string[] split = posMsg.Split(',');
        if (split.Length < 3)
        {
            Logger.Error("字符串格式不正确{0}", posMsg);
        }
        return new Vector3(float.Parse(split[0]), float.Parse(split[1]), float.Parse(split[2]));
    }
    public static Vector3 ToVector3(string posMsg, char[] flag)
    {
        string[] split = posMsg.Split(flag);
        return new Vector3(float.Parse(split[0]), float.Parse(split[1]), float.Parse(split[2]));
    }      

    public static int Date2Time(string date)
    {
        //date = "2021/07/22-14:15:22";
        string[] slist = date.Split('-');
        string[] time1 = slist[0].Split('/');
        string[] time2 = slist[1].Split(':');

        DateTime UnixTimeStampStart = new DateTime(1970, 1, 1, 8, 0, 0, DateTimeKind.Utc);

        DateTime UnixTimeStampNow = new DateTime(Convert.ToInt32(time1[0]) , Convert.ToInt32(time1[1]), Convert.ToInt32(time1[2]), Convert.ToInt32(time2[0]), Convert.ToInt32(time2[1]), Convert.ToInt32(time2[2]), DateTimeKind.Utc);

        int tv = Convert.ToInt32( (UnixTimeStampNow - UnixTimeStampStart).TotalSeconds );  
        //Logger.Log("1111111111111 ",tv);              
        return tv;
    }

    //DateTime转时间戳
    public static int DateTime2Int(DateTime time)
    {
        DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
        return (int)(time - startTime).TotalSeconds;
    }

    //时间戳转DateTime
    public static DateTime Int2DateTime(int d)
    {
        DateTime time = DateTime.MinValue;
        DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
        time = startTime.AddSeconds(d);
        //Logger.Log("Int2DateTime........", time.ToString());
        return time;
    }  

    public static string Int2DateStr(int d)
    {
        DateTime time = Int2DateTime(d);
        string s = time.ToString("yyyy-MM-dd HH:mm:ss");
        //Logger.Log("Int2DateTime........", time.ToString());
        return s;
    }             
}

