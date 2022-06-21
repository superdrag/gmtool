using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class AdsItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/AdsItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(QueryTaskData taskData)
    {
        infoList[0].text = taskData.taskId.ToString() + " ~ " + taskData.taskId2.ToString()  ;
        if (taskData.taskId == taskData.taskId2)
        {
            infoList[0].text = taskData.taskId.ToString();
        }
        infoList[1].text = taskData.curNum.ToString();
        // infoList[2].text = taskData.lostNum.ToString();
        // infoList[3].text = taskData.percent.ToString("F2") + "%";
    }

    public void SetTitle()
    {
        infoList[0].text = "广告次数区间";
        infoList[1].text = "人数";
        // infoList[2].text = "流失";
        // infoList[3].text = "流失率";
    }
}
