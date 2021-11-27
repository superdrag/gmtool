using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class CoreItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/CoreItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(int dayIndex)
    {
        CoreData coreData = RecordModel.coreList[dayIndex];

        infoList[0].text = coreData.date; 
        infoList[1].text = coreData.allRegNum.ToString();
        infoList[2].text = coreData.DAU.ToString();
        infoList[3].text = coreData.newUser.ToString();
        infoList[4].text = GFunc.US2Cent(coreData.income);
        infoList[5].text = coreData.sumPayUser.ToString();
        infoList[6].text = coreData.newPayUser.ToString();
        infoList[7].text = GFunc.US2Cent(coreData.ARPPU); 
        infoList[8].text = GFunc.US2Cent(coreData.ARPPDAU);
        infoList[9].text = coreData.PCU.ToString();
        infoList[10].text = coreData.ACU.ToString();
        infoList[11].text = (coreData.avgOnlineSec / 60).ToString();
        infoList[12].text = coreData.watchAds.ToString();        

        //Logger.Log(",,,,,,,,,,,,,,,,, ",coreData.allRegNum);
        //留存

        infoList[13].text = coreData.remainPectDict[2].ToString("F2") + "%";       //2
        infoList[14].text = coreData.remainPectDict[3].ToString("F2") + "%";        //3
        infoList[15].text = coreData.remainPectDict[4].ToString("F2") + "%";        //4
        infoList[16].text = coreData.remainPectDict[5].ToString("F2") + "%";        //    
        infoList[17].text = coreData.remainPectDict[6].ToString("F2") + "%";
        infoList[18].text = coreData.remainPectDict[7].ToString("F2") + "%";
        infoList[19].text = coreData.remainPectDict[14].ToString("F2") + "%";
        infoList[20].text = coreData.remainPectDict[30].ToString("F2") + "%";
          
        // infoList[13].text = coreData.remainDict[2].ToString("F2") + "%";       //2
        // infoList[14].text = coreData.remainDict[3].ToString("F2") + "%";        //3
        // infoList[15].text = coreData.remainDict[4].ToString("F2") + "%";        //4
        // infoList[16].text = coreData.remainDict[5].ToString("F2") + "%";        //    
        // infoList[17].text = coreData.remainDict[6].ToString("F2") + "%";
        // infoList[18].text = coreData.remainDict[7].ToString("F2") + "%";
        // infoList[19].text = coreData.remainDict[14].ToString("F2") + "%";
        // infoList[20].text = coreData.remainDict[30].ToString("F2") + "%";          

    }

    public void SetTittle()
    {
        infoList[0].text = "统计日期";
        infoList[1].text = "总注册用户数";
        infoList[2].text = "dau";
        infoList[3].text = "新增注册用户";
        infoList[4].text = "流水收入";
        infoList[5].text = "付费人数";
        infoList[6].text = "新增付费人数";
        infoList[7].text ="ARPPU";
        infoList[8].text ="ARPDAU";
        infoList[9].text = "pcu";
        infoList[10].text = "acu";
        infoList[11].text = "人均在线时长(分钟)";
        infoList[12].text = "广告";
        infoList[13].text = "次留";
        infoList[14].text = "3留";
        infoList[15].text = "4留";
        infoList[16].text = "5留";
        infoList[17].text = "6留";
        infoList[18].text = "7留";
        infoList[19].text = "14留";
        infoList[20].text = "月留";
    }    


}
