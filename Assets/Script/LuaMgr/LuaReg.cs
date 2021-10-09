using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using UnityEngine;
using Net;
using XLua;
using UObject = UnityEngine.Object;
using UnityEngine.UI;
using UnityEngine.Video;


[CSharpCallLua]
public delegate void SimpleFuncDelegate();
[CSharpCallLua]
public delegate int MsgByteDelegate(int msgid, byte[] data);
[CSharpCallLua]
public delegate void GoDelegate(GameObject go);
[CSharpCallLua]
public delegate void StrDelegate(string str);
[CSharpCallLua]
public delegate void TT2DDelegate(Texture2D obj);
[CSharpCallLua]
public delegate void AudioDelegate(AudioClip obj);
[CSharpCallLua]
public delegate void VideoDelegate(VideoClip obj);
[CSharpCallLua]
public delegate void SpriteDelegate(Sprite obj);
[CSharpCallLua]
public delegate void MeshDelegate(Mesh obj);
[CSharpCallLua]
public delegate void AddToggleList();
[CSharpCallLua]
public delegate List<string> FuncDelegateList();
[CSharpCallLua]
public delegate XLua.LuaTable FuncDelegateTable();


[CSharpCallLua]
[Hotfix]
public class LuaCall
{
    public static void OnHandleMsg(int msgId, byte[] bytes)
    {
        if( msgId != (int)MSGID.MSG_GT2CL_SOCKETHIT )
        {
            Logger.Log("recv msg <--- id:" +msgId + " len:" + (bytes.Length + 10) );
        }        
        MsgByteDelegate func = LuaMgr.LuaEnv.Global.Get<MsgByteDelegate>("lua_msg_recv");
        func(msgId, bytes);
    }

    public static void OnNetClose()
    {
        SimpleFuncDelegate func = LuaMgr.LuaEnv.Global.Get<SimpleFuncDelegate>("lua_net_close");
        func();
    }

    public static void OnAppInitOver()
    {
        Logger.Log("OnAppInitOver..........");
        SimpleFuncDelegate func = LuaMgr.LuaEnv.Global.Get<SimpleFuncDelegate>("app_init_over");
        func();
    }

    public static void GetMainTaskInfo()
    {
        FuncDelegateTable func = LuaMgr.LuaEnv.Global.Get<FuncDelegateTable>("GetTaskInfo");
        //List<string> list =  func();
        XLua.LuaTable tb = func();
    }        
}



[LuaCallCSharp]
[Hotfix]
public class LuaReg
{
    public static string CAppRunPath()
    {
        return GFunc.AppRunPath();
    }

    public static string CAppResPath()
    {
        return GFunc.AppResPath();
    }    

    // --------------------------------- LOG
    public static void Logger_Log(string log, params object[] objlist)
    {
        Logger.Log(log, objlist);
    }

    public static void Logger_Warn(string log, params object[] objlist)
    {
        Logger.Warn(log, objlist);
    }

    public static void Logger_Err(string log, string trace, params object[] objlist)
    {
        Logger.ErrorLua(log, trace, objlist);
    }
    
    // --------------------------------- 网络消息
    public static void NetConnect(string ip, short port, IntDelegate cbfunc)
    {
        NetMgr.NetConnect(ip, port, cbfunc);
    }

    public static void NetClose()
    {
        NetMgr.NetClose();
    }

    public static bool IsNetConnect()
    {
        return NetMgr.IsConnect();
    }    

    public static int SendMsg(int msgId)
    {
        NetMgr.SendMsg((MSGID)msgId);
        if( msgId != (int)MSGID.MSG_CL2GT_SOCKETHIT ) Logger.Log("send msg ---> id:" + msgId );
        int msgLen = 10;
        return msgLen;
    }

    public static int SendMsg(int msgId, byte[] bytes)
    {
        MsgBytes msgBytes = new MsgBytes();
        msgBytes.CopyBytes(bytes);
        int msgLen = bytes.Length + 10;
        Logger.Log("send msg ---> id:" + msgId + " len:" + msgLen.ToString());
        NetMgr.SendMsg((MSGID)msgId, msgBytes);
        return msgLen;
    }



    // --------------------------------- 异步加载

    public static void ResLoadPrefab(string path, GoDelegate func)
    {
        ResLoad.LoadAsyn<GameObject>(path, (obj) => { func((GameObject)obj); }, false);
    }

    public static void ResLoadText(string path, StrDelegate func)
    {
        ResLoad.LoadAsyn<TextAsset>(path, (obj) => { func(((TextAsset)obj).text); }, false);
    }

    public static void ResLoadSprite(string path, SpriteDelegate func)
    {
        ResLoad.LoadAsyn<Sprite>(path, (obj) => { func((Sprite)obj); }, false);
    }

    public static void ResLoadAudioClip(string path, AudioDelegate func)
    {
        ResLoad.LoadAsyn<AudioClip>(path, (obj) => { func((AudioClip)obj); }, false);
    }

     public static void ResLoadVideoClip(string path, VideoDelegate func)
    {
        ResLoad.LoadAsyn<AudioClip>(path, (obj) => { func((VideoClip)obj); }, false);
    }

    public static void ResLoadMesh(string path, MeshDelegate func)
    {
        ResLoad.LoadAsyn<Mesh>(path, (obj) => { func((Mesh)obj); }, false);
    }

    public static void ResLoadCacheList(List<ResPathInfo> pathList, SimpleFuncDelegate func)
    {
        int count = 0;
        Logger.Log("C ResLoadCacheist num...................",pathList.Count);
        foreach (var info in pathList)
        {
            Logger.Log("ResLoadCacheist type path ",info.resType, info.resPath);
            if( info.resType == (int)RES_TYPE.GAMEOBJECT )
            {
                ResLoad.LoadAsyn<GameObject>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            }
            else if( info.resType == (int)RES_TYPE.SPRITE )
            {
                ResLoad.LoadAsyn<Sprite>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            }
            else if( info.resType == (int)RES_TYPE.TEXT )
            {
                ResLoad.LoadAsyn<TextAsset>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            } 
            else if( info.resType == (int)RES_TYPE.AUDIO )
            {
                ResLoad.LoadAsyn<AudioClip>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            }            
            else if( info.resType == (int)RES_TYPE.MESH )
            {
                ResLoad.LoadAsyn<Mesh>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            }
            else if( info.resType == (int)RES_TYPE.VIDEO )
            {
                ResLoad.LoadAsyn<VideoClip>(info.resPath,
                    (obj) => { count++; if( count >= pathList.Count ){ func(); return; } }
                );
            }                                       
        }
    }

    public static GameObject ResGetGO(string path)
    {
        if( ResPool.Instance.HasResObj(path) ) return (GameObject)ResPool.Instance.GetResObj(path); 
        return null;         
    }

    public static Sprite ResGetSprite(string path)
    {
        return (Sprite)ResPool.Instance.GetResObj(path);        
    }

    public static TextAsset ResGetText(string path)
    {
        if( ResPool.Instance.HasResObj(path) ) return (TextAsset)ResPool.Instance.GetResObj(path); 
        return null;         
    }

    public static AudioClip ResGetAudio(string path)
    {
        if( ResPool.Instance.HasResObj(path) ) return (AudioClip)ResPool.Instance.GetResObj(path); 
        return null;         
    }

     public static VideoClip ResGetVideo(string path)
    {
         if( ResPool.Instance.HasResObj(path) ) return (VideoClip)ResPool.Instance.GetResObj(path); 
        return null; 
    }
    public static Mesh ResGetMesh(string path)
    {
        if( ResPool.Instance.HasResObj(path) ) return (Mesh)ResPool.Instance.GetResObj(path); 
        return null;         
    }        

    public static void ResCacheClear(string path)
    {
        ResPool.Instance.ClearAllRes();              
    }    

    public static GameObject Obj2Go(UObject obj)
    {
        return (GameObject)obj;
    }    
    public static Sprite Obj2Sprite(UObject obj)
    {
        return (Sprite)obj;
    } 
    public static TextAsset Obj2Text(UObject obj)
    {
        return (TextAsset)obj;
    }                 

    

    // --------------------------------- 同步加载

    public static GameObject ResLoadPrefabSync(string path)
    {
        return ((GameObject)ResLoad.LoadSync<GameObject>(path,false));
    }

    public static string ResLoadTextSync(string path)
    {
        return ((TextAsset)ResLoad.LoadSync<TextAsset>(path, false)).text;
    }

    public static Sprite ResLoadSpriteSync(string path)
    {
        return ((Sprite)ResLoad.LoadSync<Sprite>(path,false));
    }

    public static AudioClip ResLoadAudioClipSync(string path)
    {
        return ((AudioClip)ResLoad.LoadSync<AudioClip>(path,false));
    }        

    public static Mesh ResLoadMeshSync(string path)
    {
        return ((Mesh)ResLoad.LoadSync<Mesh>(path,false));
    }

     public static VideoClip ResLoadVideoSync(string path)
    {
        return ((VideoClip)ResLoad.LoadSync<VideoClip>(path,false));
    }

     // --------------------------------- Time相关
    public static int AddTimer(GameObject go, float start, float interval, int count, TimerCallBack func)
    {
        return Timer.Instance.AddTimer(go, start, interval, count, func);
    }

    public static int AddDeltaTimer(GameObject go, float start, float interval, int count, TimerCallBack func)
    {
        return Timer.Instance.AddDeltaTimer(go, start, interval, count, func);
    }

    public static void SetFixTimer(int tid)
    {
        Timer.Instance.SetFixTimer(tid);
    }

    public static void CancelTimer(int tid)
    {
        Timer.Instance.CancelTimer(tid);
    }

    public static void CancelAllTimer()
    {
        Timer.Instance.CancelAllTimer();
    }

    public static void PauseTimer(int tid)
    {
        Timer.Instance.PauseTimer(tid);
    }
    public static void RecoverTimer(int tid)
    {
        Timer.Instance.RecoverTimer(tid);
    }

    public static void PauseAllTimer()
    {
        Timer.Instance.PauseAllTimer();
    }

    public static void RecoverAllTimer()
    {
        Timer.Instance.RecoverAllTimer();
    }

    // public static int LuaTime2Int(DateTime time)
    // {
    //     return GFunc.DateTime2Int(time);
    // }

    // public static DateTime LuaInt2Time(int d)
    // {
    //     return GFunc.Int2DateTime(d);
    // }

    // public static int GetCurTimetv()
    // {
    //     return GFunc.DateTime2Int(DateTime.Now);
    // }

    public static int GetFileModTv(string filepath)
    {
        string file_path = GFunc.AppRunPath() + filepath;
        FileInfo fi = new FileInfo(file_path);
        if (!fi.Exists)
        {
            Logger.Error("GetFileModTv Not Exists file: ", file_path);
            return 0;
        }
        DateTime dt = fi.LastWriteTime;
        //fi.Refresh();
        //fi.Delete();
        //Logger.Log("date......{0},{1},{2},{3},{4},{5},{6}", path, dt.Year, dt.Month, dt.Day, dt.Hour, dt.Minute, dt.Second);
        return GFunc.DateTime2Int(dt);
    }    

    public static Vector3 ScreenToUGUIPosition(RectTransform transform, Vector2 ScreenPos, Camera UICam)
    {
     
        Vector3 pos;
        RectTransformUtility.ScreenPointToWorldPointInRectangle(transform, ScreenPos, UICam, out pos);
        return pos;
    }

  //Toggle
    public static void AddToggleListener(Toggle to,Action func)
    {
       // Mathf.
       to.onValueChanged.AddListener(delegate{func();} );
    }
 
    public static int GetDateTimeDifference(DateTime time1,DateTime time2)///Time2大于Time1
    {
        TimeSpan ts1 = time2.Subtract(time1).Duration();
        string Days_1 = ts1.Days.ToString();
        DateTime Convert_dt1 = Convert.ToDateTime(string.Format("{0}-{1}-{2}", time1.Year, time1.Month, time1.Day));
        DateTime Convert_dt2 = Convert.ToDateTime(string.Format("{0}-{1}-{2}", time2.Year, time2.Month, time2.Day));
        int Days_3 = (Convert_dt2 - Convert_dt1).Days;

        return Days_3;

    }


}