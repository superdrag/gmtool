using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class PayGiftItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/PayGiftItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(string data)
    {
        string[] slist =  data.Split(',');

        for (int i = 0; i < slist.Length; i++)
        {
            infoList[i].text = slist[i];
        }
    }

    public void SetTitle()
    {
        infoList[0].text = "商品id";
        infoList[1].text = "充值次数";
        infoList[2].text = "充值人数";
        infoList[3].text = "首次购买人数";
    }
}
