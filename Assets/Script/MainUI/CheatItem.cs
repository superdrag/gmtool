using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class CheatItem
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
        view = ResMgr.CreateGo("Prefab/CheatItem").transform;

        editBtn = view.Find("bg/btns/editBtn").GetComponent<Button>();

        editBtn.onClick.AddListener(OnBtnEditClick);     
        
        infoList.Add(view.Find("bg/data/time").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/account").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/type").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/state").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/data").GetComponent<Text>());     
    }

    public void Show(string[] s)
    {
        

        infoList[0].text = s[0];
        infoList[1].text = s[2];
        infoList[2].text = "vipcard";
        infoList[3].text = "未封号";
        infoList[4].text = s[5] + "," + s[6];
        if (s.Length >= 8)
        {
            infoList[4].text = s[5] + "," + s[6] + "," + s[7];
        }

        //infoList[0].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[0].text) ).ToString(); 

        /////////////////
        // if (mailData.Agree == 0)  //待审批
        // {
        //     editBtn.gameObject.SetActive(true);
        //     delBtn.gameObject.SetActive(false);
        // }
        // else if (mailData.Agree == 1)   //已发送
        // {
        //     editBtn.gameObject.SetActive(false);
        //     delBtn.gameObject.SetActive(true);
        // }  
        // else if (mailData.Agree == 2)   //拒绝
        // {
        //     editBtn.gameObject.SetActive(true);
        //     delBtn.gameObject.SetActive(false);
        // }  
    }

    private void OnBtnEditClick()
    {    
        Logger.Log("OnBtnEditClick click..........");
        GUIUtility.systemCopyBuffer = infoList[1].text;
    }


    public void SetTitle()
    {
        infoList[0].text = "日期";
        infoList[1].text = "账号";
        infoList[2].text = "类型";
        infoList[3].text = "状态";
        infoList[4].text = "信息";
        editBtn.gameObject.SetActive(false);
    }    

    public string GetAccount()
    {
        return infoList[1].text;
    }
    public void SetState()
    {
        infoList[3].text = "已封号";
    }
    

}
