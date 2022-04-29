using System.Collections;
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


public class QueryTaskData
{
    public int taskId;
    public string taskName;
    public int curNum;
    public int lostNum;
    public string percent;
    public string percent2;
}

public class TaskCfg
{
    public int taskId;
    public int sortId;
    public string name;
    public int param1;
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
    public static Dictionary<int,string> rankNameDict = new Dictionary<int, string>();
    public static Dictionary<int,QueryTaskData> taskDataDict = new Dictionary<int, QueryTaskData>();

    ///-----------------------------------config-------------------------------------------

    public static Dictionary<int,TaskCfg> guideTaskCfg = new Dictionary<int, TaskCfg>();
    public static Dictionary<int,TaskCfg> mainTaskCfg = new Dictionary<int, TaskCfg>();

    public void Init()
    {
        rankNameDict[1] = "普通账号";
        rankNameDict[2] = "高级账号";
        rankNameDict[9] = "管理员";
    }
    
    public static void InitConfig()
    {
        InitCfgGuideTask();
        InitCfgMainTask();
    }

    public static void InitCfgGuideTask()
    {
        FuncDelegateTable func = LuaMgr.LuaEnv.Global.Get<FuncDelegateTable>("GetGuideCfg");
        //List<string> list =  func();
        XLua.LuaTable tb = func();

        //Logger.Warn("InitCfgGuideTask count ",tb.Length);

        tb.ForEach<int,XLua.LuaTable>( (id,data) => { 
            XLua.LuaTable tb2 = data;
            TaskCfg cfg = new TaskCfg();
            cfg.taskId = id;
            tb2.Get<string,string>("mask",out cfg.name);
            tb2.Get<string,int>("sort",out cfg.sortId); 
            //Logger.Warn("guideTaskCfg info ",id,cfg.name);    
            guideTaskCfg[id] = cfg;
            } 
        );
    }     

    public static void InitCfgMainTask()
    {
        FuncDelegateTable func = LuaMgr.LuaEnv.Global.Get<FuncDelegateTable>("GetTaskCfg");
        //List<string> list =  func();
        XLua.LuaTable tb = func();

        //Logger.Warn("InitCfgMainTask count ",tb.Length);

        tb.ForEach<int,string>( (id,data) => { 
            //Logger.Warn("mainTaskCfg ",id); 
            TaskCfg cfg = new TaskCfg();
            cfg.taskId = id;
            cfg.name = data;
            mainTaskCfg[id] = cfg;
            } 
        );

        
    }  






}
