using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;



public class DiamondItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/DiamondItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(List<int> data)
    {
        infoList[0].text = data[0].ToString();

        infoList[0].text = GFunc.ToUseDiamondName( data[0]);

        infoList[1].text = data[1].ToString();
        infoList[2].text = data[2].ToString();        
    }

    public void SetTitle()
    {
        infoList[0].text = "商品ID";
        infoList[1].text = "次数";
        infoList[2].text = "数量";
    }
}
