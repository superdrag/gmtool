using System.Collections;
using System.Collections.Generic;

using UnityEngine;
using XLua;
using System;
using System.IO;


[System.Serializable]
public class Injection
{
    public string name;
    public GameObject value;
    
}

[LuaCallCSharp]
public class LuaBehaviour : MonoBehaviour
{
    public Injection[] injections;

    //internal static LuaEnv luaEnv = new LuaEnv(); //all lua behaviour shared one luaenv only!
    internal static float lastGCTime = 0;
    internal const float GCInterval = 1;//1 second 

    private Action luaStart;
    private Action luaUpdate;
    private Action luaOnDestroy;

    private LuaTable scriptEnv;

    void Awake()
    {
        //UnityEngine.Debug.Log("c Awake");
        UnityEngine.Debug.Log("LuaBehaviour Awake name..." +this.name);

        if( LuaMgr.LuaEnv == null )
        {
            UnityEngine.Debug.Log("c null");
        }
        scriptEnv = LuaMgr.LuaEnv.NewTable();

        // 为每个脚本设置一个独立的环境，可一定程度上防止脚本间全局变量、函数冲突
        LuaTable meta = LuaMgr.LuaEnv.NewTable();
        meta.Set("__index", LuaMgr.LuaEnv.Global);
        scriptEnv.SetMetaTable(meta);
        meta.Dispose();

        scriptEnv.Set("self", this);
        foreach (var injection in injections)
        {
            scriptEnv.Set(injection.name, injection.value);
            UnityEngine.Debug.Log("injection.name..." +injection.name);
            UnityEngine.Debug.Log("injection.value..." +injection.value);
        }

        string luaPath = "";
        List<string> pathList = GFunc.GetDirFiles(GFunc.AppRunPath()+ResMgr.LOAD_LUA_DIR);
        foreach (var _path in pathList)
        {
            if(System.IO.Path.GetFileNameWithoutExtension(_path) == this.name )
            {
                luaPath = _path;
                //UnityEngine.Debug.Log("LuaBehaviour luaPath....................." +_path);
                break;
            }
        }
        string strLuaContent = File.ReadAllText(luaPath);
        
        LuaMgr.LuaEnv.DoString(strLuaContent, this.name , scriptEnv);

        //LuaMgr.LuaEnv.DoString(luaScript.text, this.name, scriptEnv);
        //UnityEngine.Debug.Log("name.text..." +this.name);

        Action luaAwake = scriptEnv.Get<Action>("awake");
        scriptEnv.Get("start", out luaStart);
        scriptEnv.Get("update", out luaUpdate);
        scriptEnv.Get("ondestroy", out luaOnDestroy);

        if (luaAwake != null)
        {
            luaAwake();
        }
    }

    // Use this for initialization
    void Start()
    {
        //UnityEngine.Debug.Log("c Start");
        if (luaStart != null)
        {
            luaStart();
        }

        //UIMgr.ShowUI(VIEWID.LOGIN);
    }

    // Update is called once per frame
    void Update()
    {
        //UnityEngine.Debug.Log("c udpate");
        if (luaUpdate != null)
        {
            luaUpdate();
        }
        if (Time.time - lastGCTime > GCInterval)
        {
            LuaMgr.LuaEnv.Tick();
            lastGCTime = Time.time;
        }
    }

    void OnDestroy()
    {
        //UnityEngine.Debug.Log("c destroy");
        if (luaOnDestroy != null)
        {
            luaOnDestroy();
        }
        luaOnDestroy = null;
        luaUpdate = null;
        luaStart = null;
        scriptEnv.Dispose();
        injections = null;
    }
}



