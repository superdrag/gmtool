using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Net;
using System.IO;
using System.Text;
using UObject = UnityEngine.Object;

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
    public static string LOAD_LUA_DIR =  Application.streamingAssetsPath + "/LuaScripts/";
    //public static string LOAD_LUACONFIG_DIR = "Assets/LuaScripts/Conifg";
    public static string LOAD_CONFIG_DIR = "Assets/Config/";

    public bool Init()
    {                
        
        return true;
    }

    public void StartAppDownload(Action<int> cbfunc)
    {
        GMApp.Instance.StartCoroutine(DownLoadVersionFile(cbfunc));
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


    public static GameObject CreateGo(string resPath)
    {
        GameObject go = LoadRes<GameObject>(resPath);
        return UnityEngine.Object.Instantiate(go);
    }

    public static T LoadRes<T>(string resPath) where T : UObject
    {
        //resPath = resPath.ToLower();
        Debug.Log("LoadRes.........."+resPath);
        T t = Resources.Load<T>(resPath);
        if(t == null)
        {
            Debug.LogError("LoadRes..........null " + resPath);
        }         
        return t;
    }

    private IEnumerator DownLoadVersionFile(Action<int> cbfunc)
    {
        Logger.Log(" --------------- start dwonload version file  ------------------ ");
        
        string url_listfile = "list.txt";
        string url_dir = LoginModel.Instance.record_url;
        string url_path =url_dir + url_listfile;

        Logger.Log("url_path:", url_path);      

        UnityWebRequest uwr = UnityWebRequest.Get(url_path); 
        yield return uwr.SendWebRequest();

        if(uwr.isNetworkError || uwr.isHttpError)
        {                
            Logger.Error("down list net err ",uwr.isNetworkError,uwr.isHttpError,uwr.error);
            cbfunc(1);
            yield break;
        }

        if (uwr.isDone)
        {
            Logger.Log("download list ok:", url_path);     

            string[] listFile = uwr.downloadHandler.text.Split('\n');                

            //string[] listFile = File.ReadAllLines(uwr.downloadHandler.text);  
            for (int i = 0; i < listFile.Length; i++)
            {
                if (listFile[i] == "")
                {
                    continue;
                }
                string path = url_dir + listFile[i];
                Logger.Log("start down........", path);      
                UnityWebRequest uwr2 = UnityWebRequest.Get(path); 
                yield return uwr2.SendWebRequest();

                if(uwr2.isNetworkError || uwr2.isHttpError)
                {                
                    Logger.Error("down file net err ",uwr2.isNetworkError,uwr2.isHttpError,uwr2.error);
                }
                else
                {
                    if (uwr2.isDone)
                    {
                        Logger.Log("download file ok:", path);      
                        string dirpath = Application.dataPath + "/record/" + listFile[i] ; 
                        if (!Application.isEditor)
                        {
                            dirpath = Application.dataPath + "/../record/" + listFile[i] ;        
                        }   

                        File.WriteAllBytes(dirpath,  uwr2.downloadHandler.data); 
                    }
                }                
            }                          
        }    
        else 
        {
            Logger.Error("down list net err2 "+ url_path);
        }         

        cbfunc(0);
        yield break;
    }
}

