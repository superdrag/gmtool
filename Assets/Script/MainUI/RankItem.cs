using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class RankItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/RankItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(RankData data)
    {
        infoList[0].text = GFunc.TimeStamp2DateTime(data.createtime).ToString();
        infoList[1].text = data.id;
        infoList[2].text = data.rewardcount.ToString();
        infoList[3].text = "2";
        infoList[4].text = "3";
        infoList[5].text = "4";
        infoList[6].text = "5";
        infoList[7].text ="6";
        infoList[8].text ="7";
    }

    public void SetTittle()
    {
        infoList[0].text = "日期";
        infoList[1].text = "id";
        infoList[2].text = "1";
        infoList[3].text = "2";
        infoList[4].text = "3日";
        infoList[5].text = "4日";
        infoList[6].text = "5日";
        infoList[7].text ="6日";
        infoList[8].text ="7日";

    }    


}
