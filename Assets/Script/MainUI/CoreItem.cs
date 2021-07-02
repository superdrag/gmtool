using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class CoreItem
{
    public PB_MailItemEx mailData;
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/CoreItem").transform;
        infoList.Add(view.Find("bg/date").GetComponent<Text>()); 
        infoList.Add(view.Find("bg/usernum").GetComponent<Text>());
        infoList.Add(view.Find("bg/dau").GetComponent<Text>());
        infoList.Add(view.Find("bg/newuser").GetComponent<Text>());
        infoList.Add(view.Find("bg/income").GetComponent<Text>());
        infoList.Add(view.Find("bg/paynum").GetComponent<Text>());
        infoList.Add(view.Find("bg/pcu").GetComponent<Text>());
        infoList.Add(view.Find("bg/acu").GetComponent<Text>());
    }

    public void Show()
    {
        infoList[0].text = mailData.Sendtime.ToString();
        //infoList[1].text = mailData..ToString();
        infoList[2].text = mailData.Title.ToString();
        //infoList[3].text = mailData..ToString();
        infoList[4].text = mailData.Account.ToString();
        if (mailData.Itemlist == "")
        {
            infoList[5].text = "无";
        }
        else
        {
            infoList[5].text = "有";
        }
        //infoList[5].text = mailData.Sendtime.ToString();
    }


}
