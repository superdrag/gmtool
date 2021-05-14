using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Net;

using PBase;
using PClient;


using System.IO;
//using Google.ProtoBuf.MessageExtensions;

public class ServerList
{
    int index;
    string name;
    string ip;
    int port;
}


public class AppConfig
{
    private static AppConfig ins = null;    

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
        
    }
}
