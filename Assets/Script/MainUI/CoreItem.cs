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
        CoreData coreData = RecordModel.Instance.coreList[dayIndex];

        infoList[0].text = coreData.date; 
        infoList[1].text = coreData.allRegNum.ToString();
        infoList[2].text = coreData.DAU.ToString();
        infoList[3].text = coreData.newUser.ToString();
        infoList[4].text = coreData.income.ToString();
        infoList[5].text = coreData.sumPayUser.ToString();
        infoList[6].text = coreData.newPayUser.ToString();
        infoList[7].text = coreData.ARPPU.ToString();
        infoList[8].text = coreData.ARPPDAU.ToString();
        infoList[9].text = coreData.PCU.ToString();
        infoList[10].text = coreData.ACU.ToString();
        infoList[11].text = coreData.secondLive.ToString();
        infoList[12].text = coreData.threeLive.ToString();
        infoList[13].text = coreData.sevenLive.ToString();
        infoList[14].text = coreData.avgOnlineSec.ToString();
    }


}
