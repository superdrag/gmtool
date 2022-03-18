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
    public Dictionary<string,int> adsAccDict = new Dictionary<string, int>();
    public Dictionary<string,int> regAccDict = new Dictionary<string, int>();
    public Dictionary<int,int> hourOnlineNumDict = new Dictionary<int, int>();
    public Dictionary<int,int> remainDict = new Dictionary<int, int>(); //留存数量  //次留是 i+ 1 = 2 开始        
    public Dictionary<int,double> remainPectDict = new Dictionary<int, double>(); //留存百分比  //次留是 i+ 1 = 2 开始   
    public Dictionary<int,int> remainPayDict = new Dictionary<int, int>(); //付费留存  //次留是 i+ 1 = 2 开始
    public Dictionary<int,double> remainPayPectDict = new Dictionary<int, double>(); //留存百分比  //次留是 i+ 1 = 2 开始    

    public Dictionary<int,List<int>> guideTaskDict = new Dictionary<int, List<int>>(); //新手引导
    public Dictionary<int,List<int>> mainTaskDict = new Dictionary<int, List<int>>();   //主线任务
    public Dictionary<string,RankData> rankListDict = new Dictionary<string, RankData>();   //排行榜

    public Dictionary<int,int> payAccLTV = new Dictionary<int, int>();
    public Dictionary<int,int> adsAccLTV = new Dictionary<int, int>();
}



public class DiaData
{
    public int eventid;
    public int count;
    public int num;
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
    public static List<string> countryList = new List<string>{"ALL", "CN","US","CA","AU","PH","ID","MY","TH","other"};
    public static List<string> platformList = new List<string>{"ALL", "ios","android","unity","other"};
    public static Dictionary<int,DiaData> useDiamondDict = new Dictionary<int, DiaData>();
    public static List<double> coreSumList = new List<double>();
    public static int sumWatchAds = 0;
    public static int sumRegAccNum = 0;
    public static int sumDauNum = 0;

    public void Init()
    {
        resetCoreSumData();    
    }

    public static void resetCoreSumData()
    {
        if (coreSumList.Count <= 0)
        {
            for (int i = 0; i < 15; i++)
            {
                coreSumList.Add(0);
            }      
        }
        for (int i = 0; i < 15; i++)
        {
            coreSumList[i] = 0;
        }  
        sumWatchAds = 0;
        sumRegAccNum = 0;
        sumDauNum = 0;         
    }

    public static bool loadFile()
    {        
        if (!Directory.Exists(ResMgr.recordDir))
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"获取数据失败");
            return false;
        }

        List<string> filelist = GFunc.GetDirFiles(ResMgr.recordDir);

        if (filelist.Count > 0)
        {
            for (int i = 0; i < filelist.Count; i++)
            {              
                if (GFunc.DEBUGMODE()) Logger.Log("file.........",filelist[i]);
                if (filelist[i].EndsWith("meta")) continue;
                if (filelist[i].EndsWith("txt")) continue;
                string[] lineAry = File.ReadAllLines(filelist[i]);

                List<string> tmpary=new List<string>();                   
                for (int j = 0; j < lineAry.Length; j++)
                {
                    int findindex = lineAry[j].IndexOf(",1012,");
                    int findindex2 = lineAry[j].IndexOf(",1013,");
                    if (findindex == -1 && findindex2 == -1)
                    {
                        tmpary.Add(lineAry[j]);
                    }
                }

                dayDataList.Add(tmpary);
            }
            analyseAllCoreData("ALL","ALL");            
        }



        // for (int i = 0; i < coreList.Count; i++)
        // {
        //     CoreData coreData = coreList[i];
        //     foreach (var item in coreData.remainDict)
        //     {
        //         int _day = item.Key;
        //         int _loginNum = item.Value;

        //         if (_loginNum > 0)
        //         {
        //             Logger.Warn("1111111111111 " +i + "  "+_day+"   "+_loginNum);
        //         }

        //         int dindex = i + _day; 
        //         coreData.remainPectDict[_day] = 0;

        //         if (dindex < coreList.Count)
        //         {
        //             CoreData nextData = coreList[dindex];  
        //             if (nextData.regAccDict.Count > 0)
        //             {                    
        //                 coreData.remainPectDict[_day] = _loginNum / (float)coreData.regAccDict.Count * 100.0; 

        //                 //coreData.remainPayPectDict[_day] = _loginPayNum / (float)preData.regAccDict.Count * 100.0;
        //                 //Logger.Warn("xxxxxxxxxxxxx ",coreData.remainPectDict[_day],_loginNum ,preData.regAccDict.Count);
        //             }                
        //         }
        //     }
        // }

        return true;
    }

    public static void analyseAllCoreData(string country, string platform)
    {
        coreList.Clear();

        //分析每天
        for (int i = 0; i < dayDataList.Count; i++)
        {
            List<string> _dayData = dayDataList[i];
            analyseDayCoreData(_dayData.ToArray(),i,country,platform);
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

        //remain
        // for (int i = 5; i <= 9; i++)
        // {
        //     coreSumList[i] = ( coreSumList[i] / (float)coreList.Count ) ;
        // }
        
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

            
            if (recordType == RECORD_TYPE.RECORD_USERREG)
            {
                coreData.regAccDict[_acc] = 1;
                //Logger.Log("000000000000000 ",fields[2]);
                coreData.newUser++;
            }

            if (recordType == RECORD_TYPE.RECORD_USERLOGIN)
            {
                coreData.loginAccDict[_acc] = 1;
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
                    if ( coreData.payAccDict.ContainsKey(_acc) )
                    {
                        coreData.payAccDict[_acc] += _num;
                    }   
                    else
                    {
                        coreData.payAccDict[_acc] = _num;                    
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
                Logger.Log("rankgroup data -- "+lineData);   

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

            if (recordType == RECORD_TYPE.RECORD_GUIDETASk)
            {

            }

            if (recordType == RECORD_TYPE.RECORD_MAINTASK)
            {
                //Logger.Log("11111111111111111");
                //int _taskid = System.Convert.ToInt32(fields[5].Trim());

                // List<int> list = null;
                // if (coreData.mainTaskDict.TryGetValue(_taskid,out list) == false)
                // {
                //     list = new List<int>{0,0};
                //     coreData.mainTaskDict[_taskid] = list;
                // }

                // bool lost = true;
                // for (int day = 1; day <= 7; day++)
                // {
                //     int dindex = dayIndex - day; 
                //     if (dindex >= 0 && dindex < coreList.Count) 
                //     {
                //         CoreData preData = coreList[dindex];           
                //         if (preData.loginAccDict.ContainsKey(_acc))
                //         {
                //             lost = false;
                //             break;
                //         }
                //     }  
                // }

                // coreData.mainTaskDict[_taskid][0] += 1;
                // if(lost == true)
                // {
                //     coreData.mainTaskDict[_taskid][1] += 1;
                // }                
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

        if (GFunc.DEBUGMODE()) Logger.Log("day core end.............",coreData.date,coreData.DAU,coreData.PCU,coreData.newUser,coreData.avgOnlineSec,coreData.newPayUser);
    }

}
