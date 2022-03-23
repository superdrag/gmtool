﻿using UnityEngine;
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
    public static string recordDir; 

    public bool Init()
    {                
        // if (Directory.Exists(recordDir))
        // {
        //     Directory.Delete(recordDir,true);
        // }
        // Directory.CreateDirectory(recordDir);
        return true;
    }

  public void StartAppResCheck(Action cbfunc)
    {
        if( Application.isEditor )
        {
            Logger.Log("--------------- Res No Handle Edit Mode ------------",cbfunc);
            cbfunc();
        }
        else
        {
            cbfunc();
            // if (File.Exists(GFunc.AppRunPath() + APP_CONFIG_FILE) )  
            // {
            //     Logger.Log("--------------- Res Check HotFix Mode ------------",cbfunc);
            //     //有版本文件 更新检查           
            //     //GMApp.Instance.StartCoroutine(DownLoadVersionFile(cbfunc));
            // }
            // else
            // {
            //     Logger.Log("--------------- Res Install UnPack Mode ------------");
            //     //无版本文件 解压包
            //     GMApp.Instance.StartCoroutine(UnPackRes(cbfunc));
            // }    
        }        
    }

    
    //资源解包
    // private IEnumerator UnPackRes(Action cbfunc)
    // {
    //     Logger.Log("--------------- start unpack res  ------------------");

    //     Logger.Log("packge zip res flie :", GFunc.AppResPath() + APP_PACKAGE_UPK_RES );
    //     Logger.Log("packge zip run flie:", GFunc.AppRunPath() + APP_PACKAGE_UPK_RES );

    //     if (Directory.Exists(GFunc.AppRunPath())) 
    //     { 
    //         Directory.Delete(GFunc.AppRunPath(), true); 
    //     }
    //     Directory.CreateDirectory(GFunc.AppRunPath());   

    //     //压缩包 从资源目录拷贝到运行目录
    //     if (Application.platform == RuntimePlatform.Android)
    //     {
    //         WWW www = new WWW(GFunc.AppResPath() + APP_PACKAGE_UPK_RES);
    //         yield return www;

    //         if (www.isDone)
    //         {            
    //             File.WriteAllBytes(GFunc.AppRunPath() + APP_PACKAGE_UPK_RES, www.bytes);                
    //         }
    //         yield return 0;

    //         // www = new WWW(GFunc.AppResPath() + APP_PACKAGE_UPK_LUA);
    //         // yield return www;

    //         // if (www.isDone)
    //         // {            
    //         //     File.WriteAllBytes(GFunc.AppRunPath() + APP_PACKAGE_UPK_LUA, www.bytes);                
    //         // }
    //         // yield return 0;

    //     }
    //     else
    //     {
    //         File.Copy(GFunc.AppResPath() + APP_PACKAGE_UPK_RES, GFunc.AppRunPath() + APP_PACKAGE_UPK_RES, true);
    //         // File.Copy(GFunc.AppResPath() + APP_PACKAGE_UPK_LUA, GFunc.AppRunPath() + APP_PACKAGE_UPK_LUA, true);
    //         // File.Copy(GFunc.AppResPath() + APP_PACKAGE_UPK_CONFIG, GFunc.AppRunPath() + APP_PACKAGE_UPK_CONFIG, true);
    //     }

    //     //yield return new WaitForEndOfFrame(); //???

    //     //解压
    //     //ResMgr.LZMADeCompress(runFile, runPath, null);

    //     //释放资源
    //     ResPack.UnPackFolder(GFunc.AppRunPath() + APP_PACKAGE_UPK_RES,GFunc.AppRunPath(),null);
    //     //释放lua
    //     // ResPack.UnPackFolder(GFunc.AppRunPath() + APP_PACKAGE_UPK_LUA,GFunc.AppRunPath(),null);
    //     // //释放config
    //     // ResPack.UnPackFolder(GFunc.AppRunPath() + APP_PACKAGE_UPK_CONFIG,GFunc.AppRunPath(),null);

    //     Logger.Log("--------------- finish unpack res  ------------------");
    //     //cbfunc();
    //     GameApp.Instance.StartCoroutine(DownLoadVersionFile(cbfunc));
    // }



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
        //Debug.Log("LoadRes.........."+resPath);
        T t = Resources.Load<T>(resPath);
        if(t == null)
        {
            Debug.LogError("LoadRes..........null " + resPath);
        }         
        return t;
    }

    public static void CleanAllRecord()
    {
        string recordDirPath = Application.dataPath + "/record/";
        if (Application.platform == RuntimePlatform.WindowsPlayer)
        {
            recordDirPath = Application.dataPath + "/../record/";
        }  
        else if (Application.isMobilePlatform)
        {
            string appName = GData.AppName.ToLower();
            recordDirPath = Application.persistentDataPath + "/" + appName + "/../record/";
        }

        if (Directory.Exists(recordDirPath))
        {
            Directory.Delete(recordDirPath,true);
        }
        Directory.CreateDirectory(recordDirPath);
    }

    private IEnumerator DownLoadVersionFile2(Action<int> cbfunc)
    {
        // string url_listfile = "list.txt";
        // string url_dir = LoginModel.Instance.record_url;
        // string url_path =url_dir + url_listfile;

        // WebClient client = new WebClient();
        
        // client.DownloadProgressChanged += new DownloadProgressChangedEventHandler(ProcessChanged);
        // client.DownloadFileCompleted += new System.ComponentModel.AsyncCompletedEventHandler(DownLoadComplete);
        // client.DownloadFileAsync(url_path, url_listfile);
        
        // Logger.Log("----------------check down record file over-----------");      
        cbfunc(0);
        yield break;        
    }

    private void DownLoadComplete(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
    {  
        Console.WriteLine(sender.ToString());  //触发事件的对象

        Console.WriteLine(e.UserState);

        Console.WriteLine(e.Cancelled);

        Console.WriteLine("异步下载完成！");
    }

    private void ProcessChanged(object sender, DownloadProgressChangedEventArgs e)
    {
        // DownLoadFile downloadfile = (DownLoadFile)e.UserState;
        // downloadfile.Process = (float)e.ProgressPercentage / 100;
        // downloadfile.AlreadyDownLoadSize = e.BytesReceived;
        // UpdateDownLoadProcess();
    }

    private IEnumerator DownLoadVersionFile(Action<int> cbfunc)
    {
        Logger.Log(" --------------- start dwonload version file  ------------------ ");

        recordDir = Application.dataPath + "/record/" + LoginModel.Instance.LoginIP + "/"; 
        if (Application.platform == RuntimePlatform.WindowsPlayer)
        {
            recordDir = Application.dataPath + "/../record/" + LoginModel.Instance.LoginIP+ "/";        
        }   
        else if (Application.isMobilePlatform)
        {
            string appName = GData.AppName.ToLower();
            recordDir = Application.persistentDataPath + "/" + appName + "/" + LoginModel.Instance.LoginIP+ "/";
        }


        // Logger.Log("11111111111111111 " + recordDir);
        // Logger.Log("2222222222222222 " + LoginModel.Instance.LoginIP);

        if (!Directory.Exists(recordDir))
        {
            Directory.CreateDirectory(recordDir);
        }


        string url_listfile = "list.txt";
        string url_dir = LoginModel.Instance.record_url;
        string url_path =url_dir + url_listfile;

        Logger.Log("url_path:", url_path);      

        UnityWebRequest uwr = UnityWebRequest.Get(url_path); 
        yield return uwr.SendWebRequest();
        UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginInfo("登录成功,开始下载 => " + "list.text");

        if(uwr.isNetworkError || uwr.isHttpError)
        {                
            Logger.Error("down list net err ",uwr.isNetworkError,uwr.isHttpError,uwr.error);
            UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginInfo("登录成功,下载list错误");
            UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginButtonVis(true);
            cbfunc(1);
            yield break;
        }

        if (uwr.isDone)
        {
            string filepath = recordDir + "list.txt" ; 
            if (!Application.isEditor)
            {
                filepath = recordDir + "list.txt" ;        
            }   
            File.WriteAllBytes(filepath,  uwr.downloadHandler.data); 
        }

        if (uwr.isDone)
        {
            Logger.Log("download list ok:", url_path);     

            string[] arystr = uwr.downloadHandler.text.Split('\n'); 

            List<string> listFile = new List<string>(arystr);
            //listFile.RemoveAt(listFile.Count-1);

            for (int i = 0; i < listFile.Count; i++)
            {
                if (listFile[i] == "")
                {
                    continue;
                }

                string filename= listFile[i].Split('|')[0];
                string md5str = listFile[i].Split('|')[1];

                string path = url_dir + filename;

                string[] slist = path.Split('/');
                string localPath = recordDir + slist[slist.Length-1];
                
                if (File.Exists( @localPath ))
                {
                    if (md5str == GFunc.MD5file(localPath))
                    {
                        if (GFunc.DEBUGMODE())Logger.Log("localPath has file.......", localPath,i);      
                        continue;                            
                    }
                    else
                    {
                        Logger.Log("localPath need down file1.......", md5str, GFunc.MD5file(localPath)); 
                        Logger.Log("localPath need down file2.......", localPath,i);      
                    }
                }

                UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginInfo("登录成功,开始下载 => " + filename);
                Logger.Log("start down........", path);      
                UnityWebRequest uwr2 = UnityWebRequest.Get(path); 
                yield return uwr2.SendWebRequest();

                if(uwr2.isNetworkError || uwr2.isHttpError)
                {                
                    Logger.Error("down file net err ",uwr2.isNetworkError,uwr2.isHttpError,uwr2.error);
                    UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginInfo("登录成功,下载" + filename + "错误");
                    UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginButtonVis(true);
                }
                else
                {
                    if (uwr2.isDone)
                    {
                        Logger.Log("download file ok:", path);      
                        string filepath = recordDir + filename ; 
                        if (!Application.isEditor)
                        {
                            filepath = recordDir + filename ;        
                        }   
                        File.WriteAllBytes(filepath,  uwr2.downloadHandler.data); 
                    }
                }                
            }                          
        }    
        else 
        {
            Logger.Error("down list net err2 "+ url_path);
        }         

        UIMgr.GetUI<LoginView>(VIEWID.LOGIN).SetLoginInfo("下载数据完成");

        Logger.Log("----------------check down record file ovev-----------");      
        cbfunc(0);
        yield break;
    }
}

