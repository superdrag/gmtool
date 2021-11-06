﻿using System.Collections;
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
    RECORD_WATCHADV	 = 1005,		//看广告

    RECORD_USERLOGIN = 1010,
    RECORD_USEROFFLINE = 1011,
    RECORD_GMOPERATE = 1020,
}

public class CoreData
{
    public string date;
    public int timetv;
    public int DAU;
    public int newUser;
    public int income; //流水
    public int sumPayUser;
    public int newPayUser; //新增付费用户
    public float ARPPU; ////时间段内，消费额除以付费用户数。
    public float ARPPDAU; 
    public int PCU; //最高在线人数
    public int ACU; //平均同时在线人数 ACU=24小时每小时最高同时在线相加总和/24小时
    public int avgOnlineSec; //平均在线时长
    public int allRegNum; //总注册数
    public int watchAds; //看广告
    public Dictionary<string,int> loginAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> payAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> regAccDict = new Dictionary<string, int>();
    public Dictionary<int,int> hourOnlineNumDict = new Dictionary<int, int>();
    public Dictionary<int,int> remainDict = new Dictionary<int, int>(); //留存
}



public class DiaData
{
    public int eventid;
    public int count;
    public int num;
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

    public static List<string[]> dayDataList = new List<string[]>(); //一天数据
    public static List<CoreData> coreList = new List<CoreData>();  //每天全部数据
    public static List<string[]> operateList = new List<string[]>(); //操作记录
    public static List<string> countryList = new List<string>{ "CN","US","JP","DE"};
    public static List<string> platformList = new List<string>{ "IOS","Android"};
    public static Dictionary<int,DiaData> useDiamondDict = new Dictionary<int, DiaData>();
    public static List<int> coreSumList = new List<int>();
    public static int sumWatchAds = 0;
    public static int sumRegAccNum = 0;

    public void Init()
    {
        for (int i = 0; i < 15; i++)
        {
            coreSumList.Add(0);
        }     
    }

    public void loadFile()
    {        
        List<string> filelist = GFunc.GetDirFiles(ResMgr.recordDir);
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

        //sum
        coreSumList[0] = coreList[coreList.Count-1].timetv;

        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData dayData = coreList[i];
            
            //coreSumList[1] = 0;
            coreSumList[1] += dayData.newUser;       
            foreach (var item in dayData.payAccDict)
            {
                coreSumList[2] += item.Value;
            }
            sumRegAccNum += dayData.allRegNum;                    
        }

        coreSumList[3] = sumWatchAds;
    }

    public void analyseDayCoreData(string[] dayData, int dayIndex)
    {        
        Debug.Log("index..............." + dayIndex);
        CoreData coreData = new CoreData();
        int sumOnlineSec = 0;

        for (int i = 0; i < 24; i++)
        {
            coreData.hourOnlineNumDict[i] = 0;
        }

        for (int i = 0; i < 30; i++)
        {
            coreData.remainDict[i+1] = 0;
        }   


        for (int j = 0; j < dayData.Length; j++)
        {
            string lineData = dayData[j];
            //Logger.Log("lineData.............",lineData);  
            if (lineData == "")
            {
                Logger.Error("lineData null.............",dayIndex); 
                continue;
            }

            string[] fields = lineData.Split(',');
            if (coreData.date == null)
            {                
                coreData.date = fields[0].Split('-')[0];     //统计日期  
                //Logger.Log("day date.............",coreData.date);                             
            }
            coreData.timetv = GFunc.Date2Time(fields[0]);
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
                //Logger.Log("1111111111111111 "+fields.Length);
                sumOnlineSec += System.Convert.ToInt32(fields[5]);
            }

            if (recordType == RECORD_TYPE.RECORD_RECHARGE)
            {
                int _num = Convert.ToInt32( fields[6] );
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

            if (recordType == RECORD_TYPE.RECORD_USEDIAMOND)
            {                                              
                int _event = System.Convert.ToInt32(fields[5].Trim());
                int _num = System.Convert.ToInt32(fields[6].Trim());
                
                //Logger.Log("111111111111111111111111111111111 "+_event);

                DiaData _data;
                if (useDiamondDict.TryGetValue(_event,out _data))
                {
                    
                }
                else
                {
                    _data = new DiaData();
                    useDiamondDict.Add(_event,_data);
                }

                _data.eventid = _event;
                _data.count ++;
                _data.num += _num;
            }

            if (recordType == RECORD_TYPE.RECORD_WATCHADV)
            {
                coreData.watchAds++;
            }
        }   

        foreach (var item in coreData.loginAccDict)
        { 
            //留存
            for (int i = 1; i <= 30; i++)
            {
                if (dayIndex >= i)
                {
                    CoreData preData = coreList[dayIndex-i];                
                    if( preData.regAccDict.ContainsKey(item.Key) )
                    {
                        coreData.remainDict[i+1]++;                    
                    }                  
                }
            }
            
            // //次留
            // if (dayIndex >= 1)
            // {
            //     CoreData preData = coreList[dayIndex-1];                
            //     if( preData.regAccDict.ContainsKey(item.Key) )
            //     {
            //         coreData.remainDict[1]++;                    
            //     }
            // }                  
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
        
        Logger.Log("day core.............",coreData.date,coreData.DAU,coreData.PCU,coreData.newUser,coreData.avgOnlineSec,coreData.newPayUser);
    }

}
