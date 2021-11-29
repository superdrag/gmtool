using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public enum LOG_TYPE
{
    NORMAL = 1,
    WARNING = 2,
    ERROR = 3,
}


public class Logger
{
    private string logPath;
    private static StreamWriter sWriter;
    private static bool isInit = false;

    public static bool Init(string logDir)
    {
        //string logDir = GFunc.AppLogPath();        
        if (false == Directory.Exists(logDir))
        {        
            //创建pic文件夹
            Directory.CreateDirectory(logDir);
        }

        //string logPath = logDir + "/client_" + DateTime.Now.ToString("HHmmss") + ".log";
        string logPath = logDir + "/client_" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".log";      

        if (File.Exists(logPath))
        {
            File.Delete(logPath);
        }
        sWriter = File.CreateText(logPath);
        isInit = true;
        return true;
    }

    public static bool IsInit()
    {
        if (isInit == false)
        {
            Debug.LogError("Output Not Init"); 
        }
        return isInit;
    }

    public static void Log(string content, params object[] objs)
    {
        if (Application.isMobilePlatform) return;
        string logstr = logFormat(LOG_TYPE.NORMAL, content, objs);
        Debug.Log(logstr);
        if (!IsInit()) return;
        WriteLog(LOG_TYPE.NORMAL, logstr);
    }

    public static void Warn(string content, params object[] objs)
    {
        string logstr = logFormat(LOG_TYPE.WARNING, content, objs);
        Debug.LogWarning(logstr);
        if (!IsInit()) return;
        WriteLog(LOG_TYPE.WARNING, logstr);
    }

    public static void Error(string content,params object[] objs)
    {
        string logstr = logFormat(LOG_TYPE.ERROR, content, objs);
        Debug.LogError(logstr);
        if (!IsInit()) return;
        WriteLog(LOG_TYPE.ERROR, logstr);
    }

    public static void ErrorLua(string content, string luaTrace, params object[] objs)
    {
        string logstr = logFormat(LOG_TYPE.ERROR, content, objs);
        Debug.LogError(logstr + "\n" + luaTrace);
        if (!IsInit()) return;
        WriteLog(LOG_TYPE.ERROR, logstr, luaTrace);
    }

    private static void WriteLog(LOG_TYPE type, string s, string traceEx = "")
    {        
        string trackStr = traceEx;
        trackStr += new System.Diagnostics.StackTrace().ToString();

        if (type == LOG_TYPE.ERROR)
        {
            s += "\n";
            s += trackStr;
        }

        lock (sWriter)
        {
            sWriter.WriteLine(s);
            sWriter.Flush();
        }
    }

    private static string logFormat(LOG_TYPE type, string str, params object[] objs)
    {
        //string s = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss ") + str;

        string s = DateTime.Now.ToString("HH:mm:ss ") + str;
        if (objs.Length > 0)
        {
            s += ",";
        }
        
        for (int i = 0; i < objs.Length; i++)
        {
            s += objs[i];
            if (i < objs.Length-1)
            {
                s += ",";
            }  
        }
        return s;
    }
}


