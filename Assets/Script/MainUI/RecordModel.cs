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
}

public class CoreData
{
    public string date;
    public int DAU;
    public int newUser;
    public int income; //流水
    public int sumPayUser;
    public int newPayUser;
    public int ARPPU;
    public int ARPPDAU;
    public int PCU; //最高在线人数
    public int ACU; //平均同时在线人数 ACU=24小时每小时最高同时在线相加总和/24小时
    public int secondLive;
    public int threeLive;
    public int sevenLive;
    public int avgOnlineSec; //平均在线时长
    public int allRegNum = 0;
    public Dictionary<string,int> loginAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> regAccDict = new Dictionary<string, int>();

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

    public List<string[]> dayDataList = new List<string[]>();
    public List<CoreData> coreList = new List<CoreData>();

    public void Init()
    {
        
    }

    public void loadFile()
    {        
        string dirpath = Application.dataPath + "/record"; 
        List<string> filelist = GFunc.GetDirFiles(dirpath);
        for (int i = 0; i < filelist.Count; i++)
        {
            if (filelist[i].EndsWith("meta")) continue;
            string[] lineAry = File.ReadAllLines(filelist[i]);
            dayDataList.Add(lineAry);
            //Logger.Log("111111111111 "+lineAry);            
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

        for (int j = 0; j < dayData.Length; j++)
        {
            string lineData = dayData[j];

            string[] fields = lineData.Split(',');
            if (coreData.date == null)
            {                
                coreData.date = fields[0].Split('-')[0];     //统计日期  
                //Logger.Log("day date.............",coreData.date);                             
            }

            RECORD_TYPE recordType =(RECORD_TYPE)( System.Convert.ToInt32(fields[1]) ); 
            
            if (recordType == RECORD_TYPE.RECORD_USERREG)
            {
                coreData.regAccDict[fields[2]] = 1;
                coreData.newUser++;
            }

            if (recordType == RECORD_TYPE.RECORD_USERLOGIN)
            {
                if(!coreData.loginAccDict.ContainsKey(fields[2]))
                {
                    coreData.loginAccDict[fields[2]] = 1;
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
            }

            if (recordType == RECORD_TYPE.RECORD_USEROFFLINE)
            {   
                sumOnlineSec += System.Convert.ToInt32(fields[3]);
            }
        }   

        foreach (var item in coreData.loginAccDict)
        { 
            //次留
            if (dayIndex >= 1)
            {
                CoreData preData = coreList[dayIndex-1];
                
                foreach (var item2 in preData.regAccDict)
                {
                    if (item.Key == item2.Key)
                    {
                        coreData.secondLive++;
                        break;
                    }
                }
            }   

            //三留
            if (dayIndex >= 2)
            {
                CoreData preData = coreList[dayIndex-2];
                
                foreach (var item2 in preData.regAccDict)
                {
                    if (item.Key == item2.Key)
                    {
                        coreData.threeLive++;
                        break;
                    }
                }
            }

            //7留
            if (dayIndex >= 6)
            {
                CoreData preData = coreList[dayIndex-6];
                
                foreach (var item2 in preData.regAccDict)
                {
                    if (item.Key == item2.Key)
                    {
                        coreData.sevenLive++;
                        break;
                    }
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

        coreData.DAU = coreData.loginAccDict.Count;

        coreData.avgOnlineSec = sumOnlineSec / coreData.loginAccDict.Count;

        coreList.Add(coreData);
        
        Logger.Log("day core.............",coreData.date,coreData.DAU,coreData.PCU,coreData.secondLive,coreData.newUser,coreData.avgOnlineSec);
    }

}
