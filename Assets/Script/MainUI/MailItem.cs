using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class MailItem
{
    public PB_MailItemEx mailData;
    public Transform view;
    public Button editBtn;
    public List<Text> infoList = new List<Text>();

    public int port;

    public string ip;

    public int index;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/MailItem").transform;
        editBtn = view.Find("bg/editBtn").GetComponent<Button>();
        infoList.Add(view.Find("bg/data/date").GetComponent<Text>()); 
        infoList.Add(view.Find("bg/data/time").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/title").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/type").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/account").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/item").GetComponent<Text>());

        editBtn.onClick.AddListener(OnBtnClick);     
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

    private void OnBtnClick()
    {    
        Logger.Log("editBtn click..........");
        UIMgr.ShowUI( VIEWID.MailSend, 2, mailData );
    }
 

}
