﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using System;
using System.IO;

[CSharpCallLua]
public delegate int ParamsDelegate(params object[] args); 

public class LuaMgr {

    private static LuaEnv m_luaEnv;
    static LuaMgr m_instance;

    public static LuaMgr instance {
        get {
            if(m_instance == null) {
                m_instance = new LuaMgr();
            }
            return m_instance;
        }
    }
    
    public static bool Init(Action action)
    {
        if(m_luaEnv == null) {
            m_luaEnv = new LuaEnv();
        }

        m_luaEnv.AddBuildin("pb", XLua.LuaDLL.Lua.LoadLuaProfobuf);
        m_luaEnv.AddBuildin("rjson", XLua.LuaDLL.Lua.LoadRapidJson);
        
        m_luaEnv.AddLoader(MyLoader);
        m_luaEnv.DoString("require 'GameMain'");
        action();

        return true;
    }

    public static byte[] MyLoader(ref string filePath)
    {
        //绝对路径
        string path = GFunc.AppRunPath() + ResMgr.LOAD_LUA_DIR + filePath + ".lua";
        //Logger.Log("MyLoader path..........",path);
        //相对路径
       // string path = @"相对路径" + filePath + ".lua.txt";
        //系统转字节数组
        return System.Text.Encoding.UTF8.GetBytes(File.ReadAllText(path));
    }


    public static LuaEnv LuaEnv
    {
        get
        {
            return m_luaEnv;
        }
    }   

    public static void Desctoy()
    {
        m_luaEnv.Dispose();   
    }

    public static void Test1()
    {        
        LuaEnv.DoString("print('hello world')");
        TextAsset ta = Resources.Load<TextAsset>("TestLua1.lua");//helloworld.lua.txt
        LuaEnv.DoString(ta.text);
    }
}