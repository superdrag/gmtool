using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class VipItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/VipItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(QueryTaskData taskData)
    {
        infoList[0].text = taskData.taskId.ToString();
        infoList[1].text = taskData.curNum.ToString();
        infoList[2].text = taskData.lostNum.ToString();
        //infoList[3].text = taskData.percent.ToString();
    }

    public void SetTitle()
    {
        infoList[0].text = "vpcard区间";
        infoList[1].text = "人数";
        infoList[2].text = "流失";
        //infoList[3].text = "通过率";
    }
}
