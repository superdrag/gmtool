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
        //Logger.Warn("111     " + data.member);
        List<int> playerIDList = new List<int>();        
        string[] ary1 = data.member.Split('|');
        for (int i = 0; i < ary1.Length; i++)
        {
            string[] ary2 = ary1[i].Split(':');
            
            int id = Convert.ToInt32(ary2[0]); 
            if (id > 0)
            {
                playerIDList.Add(id);
            }
        }

        infoList[0].text = data.daytime.ToString();
        infoList[1].text = data.id;
        infoList[2].text = GFunc.TimeStamp2DateTime(data.createtime).ToString();
        infoList[3].text = data.rewardcount.ToString(); 
        infoList[4].text = GFunc.TimeStamp2DateTime(data.rewardtime).ToString();
        infoList[5].text = GFunc.TimeStamp2DateTime(data.addRobotTime).ToString();       
        infoList[6].text = data.addRobotInterval.ToString();   
        infoList[7].text = "";
        if (data.endtime > 0)
        {
            infoList[7].text = GFunc.TimeStamp2DateTime(data.endtime).ToString(); 
        }                     
        infoList[8].text = data.maxnum.ToString();       
        infoList[9].text = playerIDList.Count.ToString();   
        infoList[10].text = data.member.ToString(); 
    }

    public void SetTittle()
    {
        infoList[0].text = "日期";
        infoList[1].text = "ID";
        infoList[2].text = "创建时间";
        infoList[3].text = "领奖次数";
        infoList[4].text = "下次领奖时间";
        infoList[5].text = "加入AI时间";
        infoList[6].text = "加入AI间隔";
        infoList[7].text ="关闭时间";
        infoList[8].text ="当前人数";
        infoList[9].text = "玩家数量";
        infoList[10].text = "成员信息";
    }    


}
