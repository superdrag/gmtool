﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QueryUserData
{
    public string account;
    public int accDbid;
    public int diamond;
    public int cash;
    public int vipcard;
    public int logintv;
    public int offlinetv;
}


public class GlobalModel {


    private static GlobalModel ins;

    public static GlobalModel Instance
    {
        get
        {
          if(ins==null)
          {
              ins=new GlobalModel();
          }     
          return ins; 
        }
    }

    public int RoleId;
    public string LoginGateIP;
    public int LoginGatePort;
    public int LoginSign;
    public int LoginGateTime;
    public static QueryUserData queryUserData = new QueryUserData();

    public static string alertInfoData;

    public void Init()
    {
        
    }
    






}
