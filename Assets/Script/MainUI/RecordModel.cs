using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System.Text;


public enum RECORD_TYPE
{
    NONE = 0,
    RECORD_ONLINENUM = 1001,
    RECORD_RECHARGE = 1002,
    RECORD_USEDIAMOND = 1003,
    RECORD_USERLOGIN = 1010,
    RECORD_USEROFFLINE = 1011,
}

public class CoreData
{
    public string date;
    public int DAU;
    public int newUser;
    public int income;
    public int sumPayUser;
    public int newPayUser;
    public int ARPPU;
    public int ARPPDAU;
    public int PCU;
    public int ACU;
    public int secondLive;
    public int threeLive;
    public int sevenLive;
    public int onlineTime;

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
            analyseDayCoreData(dayData);
        }
    }

    public void analyseDayCoreData(string[] dayData)
    {        
        CoreData coreData = new CoreData();
        Dictionary<string,int> dauDict = new Dictionary<string, int>(); //DAU

        for (int j = 0; j < dayData.Length; j++)
        {
            string lineData = dayData[j];

            string[] fieldlist = lineData.Split(',');
            //if (coreData.date == "")
            {
                coreData.date = fieldlist[0].Split('-')[0];     //统计日期               
            }

            RECORD_TYPE recordType =(RECORD_TYPE)( System.Convert.ToInt32(fieldlist[1]) ); 
            
            if (recordType == RECORD_TYPE.RECORD_USERLOGIN)
            {
                if(!dauDict.ContainsKey(fieldlist[2]))
                {
                    dauDict[fieldlist[2]] = 1;
                }                
            }                 
        }   

        coreData.DAU = dauDict.Count;
        
        Logger.Log("day core.............",coreData.date,coreData.DAU);
    }

}
