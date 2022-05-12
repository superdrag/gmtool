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
    RECORD_ONLINENUMEX	= 1006,		
    RECORD_ONLINENUMEX2	= 1007,		

    RECORD_USERLOGIN = 1010,
    RECORD_USEROFFLINE = 1011,

    RECORD_GUIDETASk	  	= 1012,		//新手任务
    RECORD_MAINTASK	  		= 1013,		//主线任务
    RECORD_VIPCARD	  		= 1014,		//vipcard
    RECORD_RANKLIST	  		= 1015,		//ranklist

    RECORD_GMOPERATE = 1020,
    RECORD_CHEAT     = 1070,
}


//一天的数据
public class CoreData
{
    public string date;
    public int timetv;
    public int DAU;
    public int newUser;
    public int income; //每日总流水
    public int incomeNew; //新用户流水
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
    public Dictionary<string,int> adsAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> regAccDict = new Dictionary<string, int>();
    public Dictionary<int,int> hourOnlineNumDict = new Dictionary<int, int>();
    public Dictionary<int,int> remainDict = new Dictionary<int, int>(); //留存数量  //次留是 i+ 1 = 2 开始        
    public Dictionary<int,double> remainPectDict = new Dictionary<int, double>(); //留存百分比  //次留是 i+ 1 = 2 开始   
    public Dictionary<int,int> remainPayDict = new Dictionary<int, int>(); //付费留存  //次留是 i+ 1 = 2 开始
    public Dictionary<int,double> remainPayPectDict = new Dictionary<int, double>(); //留存百分比  //次留是 i+ 1 = 2 开始    
    public Dictionary<string,RankData> rankListDict = new Dictionary<string, RankData>();   //排行榜

    public Dictionary<int,int> payAccLTV = new Dictionary<int, int>();
    public Dictionary<int,int> adsAccLTV = new Dictionary<int, int>();
}

public class RankData
{
    public string daytime;
    public string id;
    public string member;
    public int createtime;
    public int rewardtime; 
    public int rewardcount;
    public int addRobotTime;
    public int addRobotInterval;
    public int endtime;
    public int maxnum;
}

public class RankMember
{
    public int dbid;
    public string name;
    public string acc;
    public int rank;
    public int vipcard;
    public int param1; 
    public int param2; 
    public int param3; 
}
//====================================
public class AccData
{
    public Dictionary<int,List<int>> payIdDict = new Dictionary<int, List<int>>();
    public Dictionary<int,List<int>> diamodTypeDict = new Dictionary<int, List<int>>();
    public bool newReg = false;
    public int income = 0;
    public int mainTaskId = 0;
    public int mainTaskTime = 0;

    public int vipcard = 0;
    public int lastLoginTime = 0;

    public List<int> guideTaskList = new List<int>();

    public void Reset()
    {
        newReg = false;
        payIdDict.Clear();
    }
}


public class RankMemberComparer : IComparer<RankMember>
{
    public int Compare(RankMember p1, RankMember p2)
    {
        return p2.vipcard.CompareTo(p1.vipcard);
    }
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

    public static List<List<string>> dayDataList = new List<List<string>>(); //一天数据
    public static List<CoreData> coreList = new List<CoreData>();  //每天全部数据
    public static List<string[]> operateList = new List<string[]>(); //操作记录
    public static List<string[]> cheatList = new List<string[]>(); //作弊
    public static List<string> countryList = new List<string>{"ALL", "CN","US","CA","TW","GB","BE","NZ","JP","KR","AU","IT","DE"
    ,"ES","FR","RU","HK","NL","AE","IN","TH","AT","VN","DK","PL","MX","CH","BR","BG","PH","other"};
    public static List<string> platformList = new List<string>{"ALL", "ios","android","unity","other"};
    public static List<double> coreSumList = new List<double>();
    public static Dictionary<string,AccData> accDataDict = new Dictionary<string, AccData>();

    public static int sumWatchAds = 0;
    public static int sumRegAccNum = 0;
    public static int sumDauNum = 0;

    public static Dictionary<int,string> FileDict = new Dictionary<int, string>();

    public void Init()
    {
        resetCoreSumData();    
    }

    public static void resetCoreSumData()
    {
        if (coreSumList.Count <= 0)
        {
            for (int i = 0; i < 30; i++)
            {
                coreSumList.Add(0);
            }      
        }
        for (int i = 0; i < 30; i++)
        {
            coreSumList[i] = 0;
        }  
        sumWatchAds = 0;
        sumRegAccNum = 0;
        sumDauNum = 0;   
        cheatList.Clear();   
        accDataDict.Clear();   
    }

    public static bool loadFile()
    {        
        if (!Directory.Exists(ResMgr.recordDir))
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"获取数据失败");
            return false;
        }

        List<string> filelist = GFunc.GetDirFiles(ResMgr.recordDir);
        for (int i = 0; i < filelist.Count; i++)
        {
            if (filelist[i].EndsWith("meta")) continue;
            if (filelist[i].EndsWith("txt")) continue;

            string[] ary1 = filelist[i].Split('/');    

            int filetime = Convert.ToInt32(ary1[ary1.Length-1].Split('_')[1]); 
            FileDict[filetime] = filelist[i];
            //Logger.Log("all file dir.........",filelist[i]);

            foreach (var item in FileDict)
            {
                //Logger.Log("all file dir.........",item.Key,item.Value);
            }
        }

        return true;
    }

    public static void chooseDayFile(int start, int end)
    {
        foreach (var item in FileDict)
        {
            if (item.Key >= start && item.Key <= end )
            {
                string[] lineAry = File.ReadAllLines(item.Value);
                //Logger.Log("chooseDayFile.........",item.Key,item.Value);

                List<string> tmpary=new List<string>();                   
                for (int j = 0; j < lineAry.Length; j++)
                {
                    // int findindex = lineAry[j].IndexOf(",1012,");
                    // int findindex2 = lineAry[j].IndexOf(",1013,");
                    //if (findindex == -1 && findindex2 == -1)
                    {
                        tmpary.Add(lineAry[j]);
                    }
                }

                dayDataList.Add(tmpary);   
            }
        }          
    }
    

    public static void analyseAllCoreData(int start, int end, string country, string platform)
    {
        operateList.Clear();
        coreList.Clear();
        dayDataList.Clear();
        chooseDayFile(start,end);
        cheatList.Clear();
        accDataDict.Clear();
        
        //分析每天
        for (int i = 0; i < dayDataList.Count; i++)
        {
            List<string> _dayData = dayDataList[i];
            analyseDayCoreData(_dayData.ToArray(),i,country,platform);
        }

        foreach (var item in RecordModel.accDataDict)
        {                
            item.Value.guideTaskList.Sort();
        }

        //留存
        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData todayData = coreList[i];
            foreach (var item in todayData.regAccDict)
            {
                string acc = item.Key;
                int num = item.Value;
                for (int day = 1; day <= 30; day++) //最大月流30天
                {
                    int nextIndex = i + day; 
                    if (nextIndex < coreList.Count)
                    {
                        foreach (var item2 in coreList[nextIndex].loginAccDict)
                        {
                            if (acc == item2.Key)
                            {
                                //Logger.Warn("1111111111111 "+acc+"   "+item2.Value);
                                todayData.remainDict[day] += 1;  
                            }                    
                        }
                    }
                    else
                    {
                        todayData.remainDict[day] = -1;
                    }
                }
            }         
        }

        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData coreData = coreList[i];
            
            for (int day = 1; day < 30; day++)
            {
                if( coreData.remainDict[day] != -1 )
                {
                    if (coreData.remainDict[day] > 0)
                    {
                        coreData.remainPectDict[day] = coreData.remainDict[day] / (float)coreData.regAccDict.Count * 100.0;
                        //Logger.Warn("1111111111111 ",i,day,coreData.remainPectDict[day]); 
                    }     
                }
                else
                {
                    coreData.remainPectDict[day] = -1;
                }
            }
        }

        //内购LTV
        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData coreData = coreList[i];
        
            for (int day = 0; day < 30; day++)
            {
                int nextIndex = i + day;

                if (nextIndex < coreList.Count)
                {
                    CoreData nextCoreData = coreList[nextIndex];

                    foreach (var item in nextCoreData.payAccDict)
                    {
                        if (coreData.regAccDict.ContainsKey(item.Key))
                        {
                            //Logger.Warn("11111111111111111111111 ",i,day+1,item.Value);
                            coreData.payAccLTV[day+1] += item.Value;
                        }                
                    }
                }
                else
                {
                    coreData.payAccLTV[day+1] = -1;
                }
            }

            for (int j = 0; j < 30; j++)
            {
                int day = j + 1;
                if (day < 30)
                {
                    if (coreData.payAccLTV[day+1] != -1)
                    {
                        coreData.payAccLTV[day+1] += coreData.payAccLTV[day];
                    }
                }                
            }
        }       

        //广告LTV 
        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData coreData = coreList[i];
        
            for (int day = 0; day < 30; day++)
            {
                int nextIndex = i + day;

                if (nextIndex < coreList.Count)
                {
                    CoreData nextCoreData = coreList[nextIndex];

                    foreach (var item in nextCoreData.adsAccDict)
                    {
                        if (coreData.regAccDict.ContainsKey(item.Key))
                        {
                            //Logger.Warn("11111111111111111111111 ",i,day+1,item.Value);
                            coreData.adsAccLTV[day+1] += item.Value;
                        }                
                    }
                }
                else
                {
                    coreData.adsAccLTV[day+1] = -1;
                }
            }

            for (int j = 0; j < 30; j++)
            {
                int day = j + 1;
                if (day < 30)
                {
                    if (coreData.adsAccLTV[day+1] != -1)
                    {
                        coreData.adsAccLTV[day+1] += coreData.adsAccLTV[day];
                    }
                }                
            }
        } 

        

        //分析总数
        coreSumList[0] = coreList[coreList.Count-1].timetv;

        float sum_arpdau = 0;
        for (int i = 0; i < coreList.Count; i++)
        {
            CoreData dayData = coreList[i];
            
            //coreSumList[1] = 0;
            coreSumList[1] += dayData.newUser;       
            foreach (var item in dayData.payAccDict)
            {
                coreSumList[2] += item.Value;
            }
            sumRegAccNum += dayData.newUser;   
            sumWatchAds += dayData.watchAds;
            sumDauNum += dayData.DAU;
            sum_arpdau += dayData.ARPPDAU;

            foreach (var item in dayData.remainPectDict)
            {
                int day = item.Key;
                double num = item.Value;

                // int index = 5 + day - 2;
                // if (index < coreSumList.Count)
                // {
                //     coreSumList[index] += num;
                // }
            //
                if (day == 1)
                {
                    coreSumList[5] += num;
                }
                else if (day == 2)
                {
                    coreSumList[6] += num;
                } 
                else if (day == 6)
                {
                    coreSumList[7] += num;
                }
                else if (day == 13)
                {
                    coreSumList[8] += num;
                } 
                else if (day == 29)
                {
                    coreSumList[9] += num;
                }                                                                                      
            }     

            foreach (var item in dayData.remainPayPectDict)
            {
                int day = item.Key;
                double num = item.Value;

                // int index = 5 + day - 2;
                // if (index < coreSumList.Count)
                // {
                //     coreSumList[index] += num;
                // }
            //
                if (day == 1)
                {
                    coreSumList[10] += num;
                }
                else if (day == 2)
                {
                    coreSumList[11] += num;
                } 
                else if (day == 6)
                {
                    coreSumList[12] += num;
                }
                else if (day == 13)
                {
                    coreSumList[13] += num;
                } 
                else if (day == 29)
                {
                    coreSumList[14] += num;
                }                                                                                      
            }  

        }

        coreSumList[3] = sumWatchAds;

        //arpu
        //Logger.Warn("00000000000000 ",coreSumList[2],sumRegAccNum);
        coreSumList[4] = coreSumList[2] / sumRegAccNum;
        //Logger.Warn("11111111111111 ",coreSumList[4]);
    
    }

    public static void analyseDayCoreData(string[] dayData, int dayIndex, string country, string platform)
    {        
        //Debug.Log("analyseDayCoreData..............." + dayIndex + " " + platform + " " + country);
        CoreData coreData = new CoreData();
        int sumOnlineSec = 0;

        //24小时
        for (int i = 0; i < 24; i++)
        {
            coreData.hourOnlineNumDict[i] = 0;
        }

        //月留30天
        for (int i = 1; i <= 30; i++)
        {
            coreData.remainDict[i] = 0;
            coreData.remainPectDict[i] = 0;

            coreData.remainPayDict[i] = 0;
            coreData.remainPayPectDict[i] = 0;
            coreData.payAccLTV[i] = 0;
            coreData.adsAccLTV[i] = 0;
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

            //Logger.Warn("lineData .............",lineData); 

            string[] fields = lineData.Split(',');

            if (fields.Length <= 0)
            {
                continue;
            }

            if (coreData.date == null)
            {                
                coreData.date = fields[0].Split('-')[0];     //统计日期  
                //Logger.Log("day date.............",coreData.date);                             
            }
            if (coreData.timetv == 0)
            {
                coreData.timetv = GFunc.Date2Time(fields[0]);
            }
            
            string curTime = fields[0].Split('-')[1];
            int curHour = Convert.ToInt32( curTime.Split(':')[0] );

            RECORD_TYPE recordType =(RECORD_TYPE)( System.Convert.ToInt32(fields[1]) ); 

            string _acc = "";
            string _country = "";
            string _platform = "";

            if (recordType == RECORD_TYPE.RECORD_ONLINENUM )
            {                

            }  
            else if( recordType == RECORD_TYPE.RECORD_ONLINENUMEX )       
            {
                //_acc = fields[2].Trim();
                _country = fields[3].Trim();
            }  
            else if( recordType == RECORD_TYPE.RECORD_ONLINENUMEX2 )       
            {
                //_acc = fields[2].Trim();
                _platform = fields[3].Trim();
            }   
            else if( recordType == RECORD_TYPE.RECORD_RANKLIST )       
            {

            }                         
            else
            {
                _acc = fields[2].Trim();
                _platform = fields[3].Trim();
                _country = fields[4].Trim();
            }

            if (country == "other")
            {
                bool _flag = false;
                for (int i = 0; i < countryList.Count-1; i++)
                {
                    if (_country == countryList[i])
                    {
                        _flag = true;                        
                        break;
                    }
                }  
                if (_flag == false && _country != "")
                {
                    Logger.Warn("oher country ",_country);
                }
                if( _flag ) continue; 
            }
            else
            {
                if (country != "ALL" && _country != country)
                {
                    //Logger.Log("222222222222 ",country,_country);
                    continue;
                }   
            }

            if (platform == "other")
            {
                bool _flag = false;
                for (int i = 0; i < platformList.Count-1; i++)
                {
                    if (_platform == platformList[i])
                    {
                        _flag = true;
                        break;
                    }
                }  
                if( _flag ) continue; 
            }
            else
            {
            
                if (platform != "ALL" && _platform != platform)
                {
                    continue;
                }  
            }            
       
            // if (platform == "ios" && _platform == "ios")
            // {
            //     //Logger.Log("11111111111111111  ",_platform,platform);    
            // }    

            if (_acc != "")
            {
                if (!accDataDict.ContainsKey(_acc))
                {
                    accDataDict[_acc] = new AccData();
                    //Logger.Warn("11111111 ",_acc);

                }                
            }
            
            if (recordType == RECORD_TYPE.RECORD_USERREG)
            {
                coreData.regAccDict[_acc] = 1;
                //Logger.Log("000000000000000 ",fields[2]);
                coreData.newUser++;
                accDataDict[_acc].newReg = true;
                //Logger.Warn("2222 ",_acc);
            }

            if (recordType == RECORD_TYPE.RECORD_USERLOGIN)
            {
                coreData.loginAccDict[_acc] = 1;
                accDataDict[_acc].lastLoginTime = coreData.timetv;
                //Logger.Log("day login acc.............",fields[2]);           
            }

            if (recordType == RECORD_TYPE.RECORD_ONLINENUM)
            {
                if (platform == "ALL")
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
            }

            if (recordType == RECORD_TYPE.RECORD_ONLINENUMEX)
            {
                if (country == _country)
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
            }               

            if (recordType == RECORD_TYPE.RECORD_ONLINENUMEX2)
            {
                if (platform == _platform)
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
            }                          

            if (recordType == RECORD_TYPE.RECORD_USEROFFLINE)
            {   
                //Logger.Log("1111111111111111 "+fields.Length);
                sumOnlineSec += System.Convert.ToInt32(fields[5]);
            }

            if (recordType == RECORD_TYPE.RECORD_RECHARGE)
            {
                if (_acc == "a4771bf6-ab35-462a-9b37-a0b6c946fdd1" 
                || _acc == "8cca97e7-781c-4d35-ab27-86270633f167"
                || _acc == "bbee5be4-eb41-453b-b5b0-5aeeba8fe4ba")
                {
                    continue;
                }

                int _num = Convert.ToInt32( fields[6] );
                int _purchaseType = 0;
                if (fields.Length >= 11)
                {
                    _purchaseType = Convert.ToInt32( fields[10] );
                }    

                if (GData.DebugMode == true)
                {
                    _purchaseType = 1;
                }

                if (_platform == "ios" && coreData.timetv < 1644253299)
                {
                    _purchaseType = 1;
                }

                if( _purchaseType > 0 )
                {                    
                    coreData.income += Convert.ToInt32( _num );   
                    accDataDict[_acc].income +=  Convert.ToInt32( _num );
                    if ( coreData.payAccDict.ContainsKey(_acc) )
                    {
                        coreData.payAccDict[_acc] += _num;
                    }   
                    else
                    {
                        coreData.payAccDict[_acc] = _num;                    
                    } 

                    if (fields.Length >=12)
                    {
                        int pid = System.Convert.ToInt32(fields[11]);
                        // if (accData == null)
                        // {
                        //     Logger.Warn("3333333333333333  ",_acc);
                        // }
                        if ( accDataDict[_acc].payIdDict.ContainsKey(pid) )
                        {
                            accDataDict[_acc].payIdDict[pid][1] ++;
                            accDataDict[_acc].payIdDict[pid][3] += _num;   
                        }   
                        else
                        {
                            accDataDict[_acc].payIdDict[pid] = new List<int> {pid,1,_num,_num};                    
                        }                         
                    }
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

                if ( accDataDict[_acc].diamodTypeDict.ContainsKey(_event) )
                {
                    accDataDict[_acc].diamodTypeDict[_event][1] ++;
                    accDataDict[_acc].diamodTypeDict[_event][2] += _num;   
                }   
                else
                {
                    accDataDict[_acc].diamodTypeDict[_event] = new List<int> {_event,1,_num};                    
                } 
            }

            if (recordType == RECORD_TYPE.RECORD_WATCHADV)
            {
                coreData.watchAds++;

                if ( coreData.adsAccDict.ContainsKey(_acc) )
                {
                    coreData.adsAccDict[_acc] += 1;
                }   
                else
                {
                    coreData.adsAccDict[_acc] = 1;                    
                }                 
            }

            if (recordType == RECORD_TYPE.RECORD_RANKLIST)
            {        
                //Logger.Warn("rankgroup data -- "+lineData);   

                RankData rankData = new RankData();
                rankData.id = fields[2];
                rankData.createtime = System.Convert.ToInt32(fields[3]);
                rankData.maxnum = System.Convert.ToInt32(fields[4]);
                rankData.rewardtime = System.Convert.ToInt32(fields[5]);
                rankData.rewardcount = System.Convert.ToInt32(fields[6]);
                rankData.addRobotTime = System.Convert.ToInt32(fields[7]);
                rankData.addRobotInterval = System.Convert.ToInt32(fields[8]);
                rankData.endtime = System.Convert.ToInt32(fields[9]);
                rankData.member = fields[10];

                coreData.rankListDict[rankData.id] = rankData;
            }

            if (recordType == RECORD_TYPE.RECORD_VIPCARD)
            {
                if (fields.Length >= 6)
                {
                    for (int i = 5; i < fields.Length; i++)
                    {
                        if ( fields[i] == "" ) continue;
                        int vip = Convert.ToInt32(fields[i]);
                        if ( accDataDict[_acc].vipcard < vip )
                        {
                            accDataDict[_acc].vipcard = vip;
                        }                        
                    }
                }
            }    

            if (recordType == RECORD_TYPE.RECORD_GUIDETASk)
            {
                if (fields.Length >= 6)
                {
                    for (int i = 5; i < fields.Length; i++)
                    {
                        if ( fields[i] == "" ) continue;
                        int gid =  Convert.ToInt32(fields[i]);
                        accDataDict[_acc].guideTaskList.Add(gid);                        
                    }
                }
            }            

            if (recordType == RECORD_TYPE.RECORD_MAINTASK)
            {
                string str = fields[5].Trim();
                string[] slist = str.Split(',');
                if (slist.Length > 0)
                {
                    if ( slist[0] != "" )
                    {
                        int curTaskId = Convert.ToInt32(slist[0]);
                        if ( accDataDict[_acc].mainTaskId < curTaskId )
                        {
                            //Logger.Log("11111",curTaskId);
                            accDataDict[_acc].mainTaskId = curTaskId;
                            accDataDict[_acc].mainTaskTime = coreData.timetv;
                        }
                    }
                }          
            }  

            if (recordType == RECORD_TYPE.RECORD_CHEAT)
            {
                cheatList.Add(fields);                
            }                      
        }   


        //-----------------------------------------



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
                coreData.incomeNew += coreData.payAccDict[item.Key];
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

        //if( coreData.loginAccDict.Count > 0 ) coreData.ARPPDAU = coreData.payAccDict.Count / coreData.loginAccDict.Count;

        coreData.ACU = _acusum / 24;

        if( coreData.loginAccDict.Count > 0 ) coreData.ARPPDAU = coreData.income / coreData.loginAccDict.Count;

        coreList.Add(coreData);

        Logger.Log("day core end.............",coreData.date,coreData.DAU,coreData.PCU,coreData.newUser,coreData.avgOnlineSec,coreData.newPayUser);
    }

}
