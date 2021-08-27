﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class RecordItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();
    public PB_ParamStrDict rstData;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/RecordItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show()
    {
        infoList[0].text = rstData.Dict["time"];
        infoList[1].text = rstData.Dict["account"];
        infoList[2].text = rstData.Dict["nickName"];
        infoList[3].text = rstData.Dict["operateType"];
        infoList[4].text = rstData.Dict["content"];      

        infoList[0].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[0].text) ).ToString();   
    }

}