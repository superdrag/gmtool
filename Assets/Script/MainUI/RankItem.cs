using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class RankItem : ItemBase
{
    public List<Text> infoList = new List<Text>();
    public Image line;

    public override void Create()
    {        
        base.Create();
        root = ResMgr.CreateGo("Prefab/RankItem").transform;
        Transform bg = root.Find("bg");
        line = root.Find("line").GetComponent<Image>();
        line.gameObject.SetActive(false);

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
        SetOnClick();
    }

    public void Show(RankData data)
    {
        //Logger.Warn("111     " + data.member);
        List<int> playerIDList = new List<int>();        
        string[] ary1 = data.member.Split('|');
        for (int i = 0; i < ary1.Length; i++)
        {
            if (ary1[i].IndexOf('*') == -1)
            {
                continue;
            }

            string[] ary2 = ary1[i].Split('*');
            
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

    public override void OnClickItem(GameObject go)
    {
        //UIMgr.ShowUI(VIEWID.ITEMINFO,infoList[10].text);

        UIMgr.ShowUI(VIEWID.ITEMINFO);

        List<RankMember> memberlist = Str2Memberlist(infoList[10].text);

        for (int i = 0; i < memberlist.Count; i++)
        {
            RankMember member = memberlist[i];

            string objtype = "玩家";
            if (Convert.ToInt32(member.dbid) < 0)
            {
                objtype = "  AI  ";
            }

            string rankIndex = "第" + (i+1) + "名";

            //string lineStr = string.Format("{0,-8},{1,-10},{2,-10},{3,-50}",dbid,name,vipcard,acc);

            string lineStr = string.Format("{0},{1},{2},{3},{4},{5}",rankIndex,objtype,member.dbid,member.name,member.vipcard,member.acc);

            UIMgr.GetUI<ItemInfoView>(VIEWID.ITEMINFO).AddItemInfo(lineStr);
        }

        // for (int i = 0; i < list.Length; i++)
        // {
        //     string s = "第" + (i+1) + "名 -> " + list[i];
        //     UIMgr.GetUI<ItemInfoView>(VIEWID.ITEMINFO).AddItemInfo(s);
        // }        
                
    }

    public List<RankMember> Str2Memberlist(string strData)
    {
        List<RankMember> memberlist = new List<RankMember>();
        string[] list = strData.Split('|');
        for (int i = 0; i < list.Length; i++)
        {
            string s = list[i];
            if (s.IndexOf('*') == -1)
            {
                continue;
            }

            string[] list2 = list[i].Split('*');  
            RankMember member = new RankMember();
            member.dbid = Convert.ToInt32(list2[0]);
            member.acc = list2[1];
            member.name = list2[2];
            if (member.name == "")
            {
                member.name = "未取名";
            }
            member.vipcard = Convert.ToInt32(list2[3]);  
            memberlist.Add(member);
        }

        memberlist.Sort(new RankMemberComparer());
        return memberlist;
    }

    public void ShowLine()
    {
        line.gameObject.SetActive(true);
    }
}
