using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Net;

using PBase;
using PPhp;

using System;
using System.IO;
using LitJson;

public class ServerInfo
{    
    public int index;
    public string name;
    public string ip;
    public int port;
    public string record_url;
    public bool debug;
}

public class ServerInfoEx
{    
    public int server_id;
    public string server_name;
    public string php_ip;
    public int php_port;
    public string record_url;
}


public class AppConfig
{
    private static AppConfig ins = null;  
    public static List<ServerInfo> ServerList = new List<ServerInfo>();   

    public static List<ServerInfoEx> ServerListEx = new List<ServerInfoEx>();   

    public static AppConfig Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new AppConfig();
            }
            return ins;
        }
    }

    public void InitLoad()
    {
        // string dirpath = Application.dataPath + "/record"; 
        // if (!Application.isEditor)
        // {
        //     dirpath = Application.dataPath + "/../record";        
        // }        
        // Text tt = ResMgr.LoadRes<Text>( "app_server" );

        // ServerInfoEx si = JsonUtility.FromJson<ServerInfoEx>(tt.text);

        List<JsonData> jsons = JsonConfig.LoadJsonFile("app_server");
        foreach (var json in jsons)
        {
            ServerInfo  info = new ServerInfo();
            info.index = JsonConfig.ReadInt32(json,"server_id");
            info.name = JsonConfig.ReadString(json,"server_name");
            info.ip = JsonConfig.ReadString(json,"php_ip");
            info.port = JsonConfig.ReadInt32(json,"php_port");
            info.record_url = JsonConfig.ReadString(json,"record_url");
            info.debug = JsonConfig.ReadBool(json,"debug");
            //info.ip = JsonConfig.ReadString(json,"login_ip");
            //info.port = JsonConfig.ReadInt32(json,"login_port");
            //Debug.Log("11111111111111 "+info.ip);
            ServerList.Add(info);
        }
    }
}
