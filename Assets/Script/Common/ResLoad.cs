using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
//using UnityEngine.EventSystems;
using System.IO;
using System;

using UObject = UnityEngine.Object;

public delegate void OnResLoadOverFunc();


class ABLoadCallback 
{
    public Action<UObject> cbfunc;
}

public class ResPathInfo 
{
    public int resType;
    public string resPath;
}

public class ResPathOBJ 
{
    public string resPath;
    public UObject go;
}

public static class ResLoad 
{
	// Use this for initialization
    private static AssetBundleManifest assetBundleManifest = null;

    static Dictionary<string, List<ABLoadCallback>> assetBundleLoading = new Dictionary<string, List<ABLoadCallback>>();

///////-------------------------- AB ---------------------------------

    public static bool Init() 
    { 
        return true;
    }

    public static string FormatWWWLoadPath(string path)
    {
#if UNITY_ANDROID && !UNITY_EDITOR
        return "file:///" + path;
#else
        return "file:///"  + path;
#endif
    }

    public static void InitLoadManifest(Action<AssetBundleManifest> cbfunc) 
    {        
        // AssetBundle ab = AssetBundle.LoadFromFile(path);
        // Debug.logger.Log("InitLoadManifest ab.........................."+ab);
        //assetBundleManifest = ab.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
        //cbfunc(assetBundleManifest);
        string path = GFunc.AppRunPath() + "StreamingAssets";

        Logger.Log("InitLoadManifest.........................."+path);

        GMApp.Instance.StartCoroutine(OnLoadManifest(path,cbfunc));
    }
    private static IEnumerator OnLoadManifest(string path, Action<AssetBundleManifest> cbfunc)
    {
        Logger.Log("OnLoadManifest start.........................."+path);

        AssetBundle ab= AssetBundle.LoadFromFile(path);
        assetBundleManifest = ab.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
        Logger.Log("OnLoadManifest over.........................."+path);
        cbfunc(assetBundleManifest);
        yield break;    

//         UnityWebRequest uwr = UnityWebRequest.Get(path);        
//         DownloadHandlerAssetBundle abDl = new DownloadHandlerAssetBundle(path,0);            
//         uwr.downloadHandler = abDl;
//         yield return uwr.SendWebRequest();

//         if (uwr.isDone)
//         {             
//             Logger.Error("OnLoadManifest done ..........");       
//             AssetBundle ab = abDl.assetBundle;            
// //            Logger.Log("OnLoadManifest2 .........."+ab); 
//             assetBundleManifest = ab.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
//   //          Logger.Log("OnLoadManifest3 .........."+assetBundleManifest); 
//             string[] allab = assetBundleManifest.GetAllAssetBundles();
//             foreach (var str in allab)
//             {
//                 //Logger.Log("OnLoadManifest ab .........."+str); 
//             }        
//             Logger.Error("OnLoadManifest over.........................."+path);
//             cbfunc(assetBundleManifest);    
//         }
//         else
//         {
//             Logger.Error("Manifest www error "+ path);
//         }
//         yield break;       
    }       

    public static void LoadAsynDir<T>(string dirPath, Action<Dictionary<string,T>> action, bool needCache = true) where T : UObject
    {
        string path = GFunc.AppRunPath() + dirPath;
        if(Application.isEditor && GData.DebugHotFix == false)
        {
            path = GFunc.AppRunPath() + "resab/" + dirPath;
        }
        path = path.ToLower();

        Logger.Log("LoadAsynDir resPath :"+path);
        List<string> fileList = GFunc.GetDirFiles(path);
        List<string> resList = new List<string>();

        List<UObject> objList = new List<UObject>();
        for (int i = 0; i < fileList.Count; i++)
        {   
            string _file = fileList[i];
            if (_file.EndsWith(".meta")) continue;
            if (_file.EndsWith(".manifest")) continue;
          
            //_file = _file.Substring(inpath.Length);

            _file = _file.Substring(_file.IndexOf(dirPath));
            _file = _file.Replace('\\', '/');

            if( _file.EndsWith(GData.ResABExName) )    
            {
                _file = Path.GetDirectoryName(_file) + "/" + Path.GetFileNameWithoutExtension(_file);           
            }                    
            resList.Add(_file);        
        } 

        LoadAsynList<T>(resList,action,needCache);
    }

    public static void LoadAsynList<T>(List<string> resPathList, Action<Dictionary<string,T>> action, bool needCache = true) where T : UObject
    {
        Dictionary<string,T> objDict = new Dictionary<string,T>();

        for (int i = 0; i < resPathList.Count; i++)
        {
            string resPath = resPathList[i];
            Logger.Log("LoadAsynList resPath :"+resPath); 
            LoadAsyn<T>(resPath,
            (obj) =>
                {   
                    if(needCache)
                    {
                        //ResPool.Instance.AddResObj(resPath,obj);
                    }           
                    objDict.Add(resPath,(T)obj); 
                    if( objDict.Count >= resPathList.Count )
                    {
                        action(objDict);
                    }                                                    
                }
            );
        }                           
    }

    private static T LoadSyncEditor<T>(string resPath, bool needCache = false) where T : UObject
    {
#if UNITY_EDITOR   
        //Logger.Log("LoadSyncEditor..........."+resPath);
        T result = UnityEditor.AssetDatabase.LoadAssetAtPath<T>(resPath);             
        if (result == null)
        {
            Logger.Warn("LoadSyncEditor fail..."+ resPath);
            return null;
        }    
        return result;
#else        
        Logger.Error("LoadSyncEditor NO EDITOR MODE..."+ resPath);
        return null;        
#endif                                         
    }

    public static void LoadAsyn<T>(string resPath, Action<UObject> action, bool needCache = false) where T : UObject
    {
        resPath = resPath.ToLower();
        //resPath = LOAD_RES_DIR + resPath.ToLower();

#if UNITY_EDITOR   
        if(GData.DebugHotFix == true)
        {
            LoadAssetBundleAsyn<T>(resPath,action,needCache);
        }
        else 
        {
            Timer.Instance.AddTimer(null,0,0.5f,1, (tick)=>
                {                    
                    T t = LoadSyncEditor<T>(resPath,needCache); 

                    if( t != null && !ResPool.Instance.HasResObj(resPath) )
                    {                                             
                        ResPool.Instance.AddResObj(resPath,(UObject)t);              
                    } 

                    action((UObject)t);
                }  
            );            
        }
#else                            
        LoadAssetBundleAsyn<T>(resPath,action,needCache);
#endif                        
    }

    private static void LoadAssetBundleAsyn<T>(string resPath, Action<UObject> action, bool needCache = false) where T : UObject
    {
        resPath = resPath.ToLower();
 
        string abName = System.IO.Path.GetFileNameWithoutExtension(resPath); //只是文件名
        string assetName = resPath  + GData.ResABExName;  // 全路径名      

        string resName = assetName.Replace(GData.ResABExName, "");
        if( ResPool.Instance.HasResObj(resName) )
        {
            Logger.Log("LoadAsyn from pool.........."+resName); 
            action( ResPool.Instance.GetResObj(resName) ); 
            return;               
        }            
        
        Logger.Log("LoadAsyn abName--"+abName + "  assetName--" + assetName);      
        GMApp.Instance.StartCoroutine(OnLoadAssetBundleAsyn<T>(abName,assetName,action,needCache));    
    }

    private static IEnumerator OnLoadAssetBundleAsyn<T>(string abName, string assetName, Action<UObject> action, bool needCache = false) where T : UObject
    {
        //Debug.Log("OnLoadAssetBundleAsyn start load.........."+assetName); 

        string resName = assetName.Replace(GData.ResABExName, "");
        if(ResPool.Instance.HasResObj(resName))
        {
            //Debug.Log("OnLoadAssetBundleAsyn pool has.........."+resName); 
            yield break;
        }      

        ABLoadCallback cb = null;
        if( action != null )
        {
            cb = new ABLoadCallback();
            cb.cbfunc = action;
        }          

        List<ABLoadCallback> cblist = null;
        if( assetBundleLoading.TryGetValue(assetName,out cblist) )
        {
            if(cb != null)
            {
                cblist.Add(cb); 
            } 
            //Debug.Log("OnLoadAssetBundleAsyn assetBundleLoading break.........."+assetName);        
            yield break;            
        }
        else 
        {
            cblist = new List<ABLoadCallback>();
            if(cb != null)
            {
                cblist.Add(cb);                   
            }   
            //Debug.Log("OnLoadAssetBundleAsyn assetBundleLoading add.........."+assetName); 
            assetBundleLoading.Add(assetName,cblist);       
        }
        
        {
            //先检查依赖加载
            string[] dependencies = assetBundleManifest.GetAllDependencies(assetName);

            //Logger.Log("OnLoadAsset dependencies..........",assetName,dependencies.Length); 
            if(dependencies.Length > 0)
            {
                //Logger.Log("OnLoadAsset dependencies11111111111111111..........",assetName); 
                foreach (var str in dependencies)
                {
                    string dName = System.IO.Path.GetFileNameWithoutExtension(str);
                    string dAsset = str;  

                    Hash128 hashCode = assetBundleManifest.GetAssetBundleHash(dAsset);
                    //Logger.Log("OnLoadAsset hashCode .........."+dAsset);                

                    string _resName = dAsset.Replace(GData.ResABExName, "");
                    if( ResPool.Instance.HasResObj(_resName) )
                    {
                        //Logger.Log("OnLoadAsset dependencies from pool.........."+dAsset); 
                        continue;          
                    }                    

                    //Debug.Log("LoadAsset dependencies .........."+dAsset); 

                    yield return GMApp.Instance.StartCoroutine(OnLoadAssetBundleAsyn<T>(dName,dAsset,null,needCache));
                    //yield return LoadAsyn<GameObject>( str, null , false );
                }                
            }    

            string abPath = GFunc.AppRunPath() + assetName;

            //Debug.Log("OnLoadAsset start assetName.........."+abPath);
            AssetBundleCreateRequest abRequest = AssetBundle.LoadFromFileAsync(abPath);
            yield return abRequest;

            AssetBundle ab = abRequest.assetBundle;

            if (ab == null)
            {
                Logger.Warn("Failed to load AssetBundle!",abPath);
                yield break;
            }

            UObject obj = ab.LoadAsset(abName);

            Debug.Log("OnLoadAsset finish assetName.........."+assetName); 

            //string resName = assetName.Replace(GData.ResABExName, "");
            if( obj != null && !ResPool.Instance.HasResObj(resName) )
            {                                             
                ResPool.Instance.AddResObj(resName,obj);              
            }

            List<ABLoadCallback> cblist2 = null;
            if( assetBundleLoading.TryGetValue(assetName,out cblist2) )
            {
                for (int i = 0; i < cblist2.Count; i++)
                {
                    if( cblist2[i].cbfunc != null )
                    {
                        cblist2[i].cbfunc(obj);
                    }
                }
                //Debug.Log("assetBundleLoading remove .........."+assetName); 
                assetBundleLoading.Remove(assetName);   
            }            
            //ab.Unload(false);  
        }
    }


    public static UObject LoadSync<T>(string resPath, bool needCache = false) where T : UObject
    {
        resPath = resPath.ToLower();

#if UNITY_EDITOR   
        if( GData.DebugHotFix == true)
        {
            return LoadAssetBundleSync<T>(resPath, needCache);
        }
        else 
        {
            T t = LoadSyncEditor<T>(resPath,needCache); 
            return t;
        }
#else                            
        return LoadAssetBundleSync<T>(resPath,needCache);
#endif  
    }

    private static UObject LoadAssetBundleSync<T>(string resPath, bool needCache = false) where T : UObject
    {
        resPath = resPath.ToLower();
 
       string abName = System.IO.Path.GetFileNameWithoutExtension(resPath);
        string assetName = resPath  + GData.ResABExName;    

        string resName = assetName.Replace(GData.ResABExName, "");
        if( ResPool.Instance.HasResObj(resName) )
        {
            Logger.Log("LoadAsyn from pool.........."+resName); 
            return ResPool.Instance.GetResObj(resName) ;             
        }            
        
        Logger.Log("LoadAsyn abName--"+abName + "  assetName--" + assetName);

        return OnLoadAssetBundleSync<T>(abName,assetName,needCache);      
    }

    private static UObject OnLoadAssetBundleSync<T>(string abName, string assetName, bool needCache = false) where T : UObject
    {
        //先检查依赖加载
        string[] dependencies = assetBundleManifest.GetAllDependencies(assetName);
 
        if(dependencies.Length > 0)
        {
            foreach (var str in dependencies)
            {
                string dName = System.IO.Path.GetFileNameWithoutExtension(str);
                string dAsset = str;  

                Hash128 hashCode = assetBundleManifest.GetAssetBundleHash(dAsset);
                //Logger.Log("OnLoadAsset hashCode .........."+dAsset);                

                string _resName = dAsset.Replace(GData.ResABExName, "");
                if( ResPool.Instance.HasResObj(_resName) )
                {
                    //Logger.Log("OnLoadAsset dependencies from pool.........."+dAsset); 
                    continue;          
                }                              

                Logger.Log("OnLoadAssetBundleSync dependencies .........."+dAsset); 

                OnLoadAssetBundleSync<T>(dName,dAsset,needCache);
            }                
        }    

        string path = GFunc.AppRunPath() + assetName;
        Logger.Log("OnLoadAssetBundleSync path.........."+path); 

        AssetBundle ab = AssetBundle.LoadFromFile(path);
        UObject obj = ab.LoadAsset(abName);

        string resName = assetName.Replace(GData.ResABExName, "");
        if( obj != null && !ResPool.Instance.HasResObj(resName) )
        {                                             
            ResPool.Instance.AddResObj(resName,obj);              
        }    
        return obj;
    }





}
