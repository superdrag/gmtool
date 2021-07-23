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
        infoList.Add(view.Find("bg/date").GetComponent<Text>()); 
        infoList.Add(view.Find("bg/usernum").GetComponent<Text>());
        infoList.Add(view.Find("bg/dau").GetComponent<Text>());
        infoList.Add(view.Find("bg/newuser").GetComponent<Text>());
        infoList.Add(view.Find("bg/income").GetComponent<Text>());
        infoList.Add(view.Find("bg/paynum").GetComponent<Text>());
        infoList.Add(view.Find("bg/pcu").GetComponent<Text>());
        infoList.Add(view.Find("bg/acu").GetComponent<Text>());
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
    }


}
