using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Net;
using System.IO;
using System.Text;
using UObject = UnityEngine.Object;
using LitJson;

using System.Threading;

//using UnityEditor; 

/*
    打包步骤
    1 copy app_config.json
    2 ResPackEx.BuildAssetBundleRes 把资源文件转成AB文件
    3 PackFolder 把AB文件夹所有文件打包成一个upk文件
    4     
*/

public class ResMgr
{
    private static ResMgr ins = null;    

    public static ResMgr Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new ResMgr();
            }
            return ins;
        }
    }    

    
    static string[] resTypeList = { ".png",".txt", ".xml", ".lua", ".bundle", ".json" };
    private static string[] RES_TYPE_CHECK_LIST = { ".txt", ".xml", ".json", ".lua", ".bundle" };    
    private static string  APP_CONFIG_FILE = "app_config.json";

    private static string  RES_LIST_FILE = "res_list.json";

    public static string LOAD_RES_DIR = "Assets/ResAB/";
    public static string LOAD_LUA_DIR = "Assets/LuaScripts/";
    public static string LOAD_CONFIG_DIR = "Assets/Config/";

    public bool Init()
    {                
        return true;
    }

    private static bool CheckFileType(string fileName)
    {
        foreach (string e in resTypeList)
        {
            if (fileName.EndsWith(e)) return true;
        }
        return false;
    }
    ///////////////////////////////////////////////////

    private static int VerionStr2Int(string version)
    {
        string[] slist = version.Split('.');
        string _tmpstr = "";
        for (int i = 0; i < slist.Length; i++)
        {
            _tmpstr = _tmpstr + slist[i];
        }
        int sum = int.Parse(_tmpstr);
        //Logger.Log("VerionStr2Int.............", version, _tmpstr, sum);
        return sum;
    }
 
 
    private static bool CheckResFileType(string file)
    {
        foreach (string fileType in RES_TYPE_CHECK_LIST)
        {
            if (file.EndsWith(fileType)) return true;
        }
        return false;
    }


    public static T LoadRes<T>(string resPath, bool needCache = false) where T : UObject
    {
        //resPath = resPath.ToLower();
        Debug.Log("LoadRes.........."+resPath);
        T t = Resources.Load<T>(resPath);
        if(t == null)
        {
            Debug.LogError("LoadRes..........null" + resPath);
        }         
        return t;
    }


}

