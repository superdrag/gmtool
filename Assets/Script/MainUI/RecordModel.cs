using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System.Text;
using System;

public enum RECORD_TYPE
{
    NONE = 0,
    RECORD_ONLINENUM = 1001,
    RECORD_RECHARGE = 1002,
    RECORD_USEDIAMOND = 1003,
    RECORD_USERREG = 1004,
    RECORD_USERLOGIN = 1010,
    RECORD_USEROFFLINE = 1011,

    RECORD_GMOPERATE = 1020,
}

public class CoreData
{
    public string date;
    public int DAU;
    public int newUser;
    public int income; //流水
    public int sumPayUser;
    public int newPayUser; //新增付费用户
    public float ARPPU; ////时间段内，消费额除以付费用户数。
    public float ARPPDAU; 
    public int PCU; //最高在线人数
    public int ACU; //平均同时在线人数 ACU=24小时每小时最高同时在线相加总和/24小时
    public int secondLive;
    public int threeLive;
    public int sevenLive;
    public int avgOnlineSec; //平均在线时长
    public int allRegNum; //总注册数
    public Dictionary<string,int> loginAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> payAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> regAccDict = new Dictionary<string, int>();
    public Dictionary<int,int> hourOnlineNumDict = new Dictionary<int, int>();
}

public class RecordModel {


    private static RecordModel ins;

    public static RecordModel Instance
    {
        get
        {
          if(ins==null)
          {
              ins=new RecordModel();
          }     
          return ins; 
        }
    }

    public List<string[]> dayDataList = new List<string[]>(); //一天数据
    public List<CoreData> coreList = new List<CoreData>();  //每天全部数据
    public List<string[]> operateList = new List<string[]>(); //操作记录

    public void Init()
    {
        
    }

    public void loadFile()
    {        
        string dirpath = Application.dataPath + "/record"; 
        if (!Application.isEditor)
        {
            dirpath = Application.dataPath + "/../record";        
        }        
        Logger.Log("record path...................",dirpath);
        List<string> filelist = GFunc.GetDirFiles(dirpath);
        for (int i = 0; i < filelist.Count; i++)
        {              
            if (filelist[i].EndsWith("meta")) continue;
            string[] lineAry = File.ReadAllLines(filelist[i]);
            dayDataList.Add(lineAry);
        }

        analyseAllCoreData();
    }

    public void analyseAllCoreData()
    {
        for (int i = 0; i < dayDataList.Count; i++)
        {
            string[] dayData = dayDataList[i];
            analyseDayCoreData(dayData,i);
        }
    }

    public void analyseDayCoreData(string[] dayData, int dayIndex)
    {        
        CoreData coreData = new CoreData();
        int sumOnlineSec = 0;

        for (int i = 0; i < 24; i++)
        {
            coreData.hourOnlineNumDict[i] = 0;
        }

        for (int j = 0; j < dayData.Length; j++)
        {
            string lineData = dayData[j];

            string[] fields = lineData.Split(',');
            if (coreData.date == null)
            {                
                coreData.date = fields[0].Split('-')[0];     //统计日期  
                //Logger.Log("day date.............",coreData.date);                             
            }
            string curTime = fields[0].Split('-')[1];
            int curHour = Convert.ToInt32( curTime.Split(':')[0] );

            RECORD_TYPE recordType =(RECORD_TYPE)( System.Convert.ToInt32(fields[1]) ); 
            
            if (recordType == RECORD_TYPE.RECORD_USERREG)
            {
                string acc = fields[2].Trim();

                coreData.regAccDict[acc] = 1;
                //Logger.Log("000000000000000 ",fields[2]);
                coreData.newUser++;
            }

            if (recordType == RECORD_TYPE.RECORD_USERLOGIN)
            {
                string acc = fields[2].Trim();

                if(!coreData.loginAccDict.ContainsKey(fields[2]))
                {
                    coreData.loginAccDict[acc] = 1;
                    //Logger.Log("day login acc.............",fields[2]);
                }                
            }

            if (recordType == RECORD_TYPE.RECORD_ONLINENUM)
            {
                int num = System.Convert.ToInt32(fields[2]);
                if (coreData.PCU < num )
                {
                    coreData.PCU = num;
                }

                if( coreData.hourOnlineNumDict[curHour] < num )
                {
                    coreData.hourOnlineNumDict[curHour] = num;
                }                    
            }

            if (recordType == RECORD_TYPE.RECORD_USEROFFLINE)
            {   
                sumOnlineSec += System.Convert.ToInt32(fields[3]);
            }

            if (recordType == RECORD_TYPE.RECORD_RECHARGE)
            {
                int _num = Convert.ToInt32( fields[4] );
                string _acc = fields[2].Trim();
                coreData.income += Convert.ToInt32( _num );    
                if ( coreData.payAccDict.ContainsKey(_acc) )
                {
                    coreData.payAccDict[_acc] += _num;
                }   
                else
                {
                    coreData.payAccDict[_acc] = _num;                    
                }         
            }

            if (recordType == RECORD_TYPE.RECORD_GMOPERATE)
            {                              
                // string _acc = fields[2].Trim();
                // string opt = fields[3].Trim();
                // string content = fields[4].Trim();

                operateList.Add(fields);
            }

        }   

        foreach (var item in coreData.loginAccDict)
        { 
            //次留
            if (dayIndex >= 1)
            {
                CoreData preData = coreList[dayIndex-1];
                
                if( preData.regAccDict.ContainsKey(item.Key) )
                {
                    coreData.secondLive++;                    
                }
            }   

            //三留
            if (dayIndex >= 2)
            {
                CoreData preData = coreList[dayIndex-2];                
                if( preData.regAccDict.ContainsKey(item.Key) )
                {
                    coreData.threeLive++;
                }
            }

            //7留
            if (dayIndex >= 6)
            {
                CoreData preData = coreList[dayIndex-6];
                if( preData.regAccDict.ContainsKey(item.Key) )
                {
                    coreData.sevenLive++;
                }
            }                                     
        }

        for (int i = 0; i < dayIndex; i++)
        {
            if (i >= dayIndex) continue;
            CoreData preData = coreList[i];
            coreData.allRegNum += preData.newUser;
        }
        coreData.allRegNum += coreData.newUser;

        foreach (var item in coreData.regAccDict)
        {
            if (coreData.payAccDict.ContainsKey(item.Key))
            {
                coreData.newPayUser++;
            }     
        }

        int _acusum = 0;
        foreach (var item in coreData.hourOnlineNumDict)
        {            
            _acusum += item.Value;
        }

        coreData.DAU = coreData.loginAccDict.Count;

        if( coreData.loginAccDict.Count > 0 ) coreData.avgOnlineSec = sumOnlineSec / coreData.loginAccDict.Count;

        coreData.sumPayUser = coreData.payAccDict.Count;

        if(coreData.payAccDict.Count > 0) coreData.ARPPU = coreData.income / coreData.payAccDict.Count;

        if( coreData.loginAccDict.Count > 0 ) coreData.ARPPDAU = coreData.payAccDict.Count / coreData.loginAccDict.Count;

        coreData.ACU = _acusum / 24;

        if( coreData.loginAccDict.Count > 0 ) coreData.ARPPDAU = coreData.income / coreData.loginAccDict.Count;

        coreList.Add(coreData);
        
        Logger.Log("day core.............",coreData.date,coreData.DAU,coreData.PCU,coreData.secondLive,coreData.newUser,coreData.avgOnlineSec,coreData.newPayUser);
    }

}
