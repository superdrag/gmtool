using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class GuideItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/GuideItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(QueryTaskData taskData)
    {
        infoList[0].text = taskData.taskId.ToString();
        infoList[1].text = taskData.taskName;
        infoList[2].text = taskData.curNum.ToString();
        infoList[3].text = taskData.finishNum.ToString();
        infoList[4].text = taskData.percent.ToString("F2") + "%";;
        infoList[5].text = taskData.lostNum.ToString();
        infoList[6].text = taskData.percent2.ToString("F2") + "%";;
        infoList[7].text = taskData.percent3.ToString("F2") + "%";;
    }

    public void SetTitle()
    {
        infoList[0].text = "任务id";
        infoList[1].text = "说明";
        infoList[2].text = "进入人数";
        infoList[3].text = "完成人数";
        infoList[4].text = "完成率";
        infoList[5].text = "流失人数";
        infoList[6].text = "流失率1";
        infoList[7].text = "流失率2";                     
    }
}
