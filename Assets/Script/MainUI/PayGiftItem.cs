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

    public void Show(List<int> data)
    {
        for (int i = 0; i < data.Count; i++)
        {
            infoList[i].text = data[i].ToString();
            if (i == 0)
            {
                infoList[i].text = GFunc.ToShopName(Convert.ToInt32(data[i]) );
            }
            if (i == 2 || i == 3 )
            {
                infoList[i].text = GFunc.US2Cent(Convert.ToInt32(data[i]) );
            }  
        }
    }

    public void SetTitle()
    {
        infoList[0].text = "商品id";
        infoList[1].text = "充值次数";
        infoList[2].text = "单价";
        infoList[3].text = "总额";
    }
}
