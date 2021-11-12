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
    public Button delBtn;
    public Button agreeBtn;
    public Button disAgreeBtn;
    public List<Text> infoList = new List<Text>();

    public int port;

    public string ip;

    public int index;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/MailItem").transform;

        editBtn = view.Find("bg/btns/editBtn").GetComponent<Button>();
        delBtn = view.Find("bg/btns/delBtn").GetComponent<Button>();
        agreeBtn = view.Find("bg/btns/agreeBtn").GetComponent<Button>();
        disAgreeBtn = view.Find("bg/btns/disAgreeBtn").GetComponent<Button>();

        editBtn.onClick.AddListener(OnBtnEditClick);     
        delBtn.onClick.AddListener(OnBtnDelClick);     
        agreeBtn.onClick.AddListener(OnBtnAgreeClick);     
        disAgreeBtn.onClick.AddListener(OnBtnDisAgreeClick);     
        
        infoList.Add(view.Find("bg/data/time").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/title").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/type").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/account").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/item").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/agree").GetComponent<Text>());        
    }

    public void Show()
    {
        infoList[0].text = mailData.Sendtime.ToString();
        infoList[1].text = mailData.Title.ToString();
        infoList[2].text = mailData.Type.ToString();
        infoList[3].text = mailData.Account.ToString();
        infoList[4].text = mailData.Itemlist.ToString();
        infoList[5].text = mailData.Agree.ToString();

        infoList[0].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[0].text) ).ToString(); 

        if (mailData.Type == 1)
        {
            infoList[2].text = "个人";
        }
        else if( mailData.Type == 2 )
        {
            infoList[2].text = "全服";
        }

        if (mailData.Itemlist == "")
        {
            infoList[4].text = "无";
        }
        else
        {
            infoList[4].text = "有";
        }

        if (mailData.Agree == 0)
        {
            infoList[5].text = "待审批";
        }
        else if (mailData.Agree == 1)
        {
            infoList[5].text = "已发送";
            editBtn.gameObject.SetActive(false);
        }  
        else if (mailData.Agree == 2)
        {
            infoList[5].text = "已拒绝";
        }              

        /////////////////
        if (mailData.Agree == 0)  //待审批
        {
            editBtn.gameObject.SetActive(true);
            delBtn.gameObject.SetActive(false);
            agreeBtn.gameObject.SetActive(true);
            disAgreeBtn.gameObject.SetActive(true);
        }
        else if (mailData.Agree == 1)   //已发送
        {
            editBtn.gameObject.SetActive(false);
            delBtn.gameObject.SetActive(true);
            agreeBtn.gameObject.SetActive(false);
            disAgreeBtn.gameObject.SetActive(false);
        }  
        else if (mailData.Agree == 2)   //拒绝
        {
            editBtn.gameObject.SetActive(true);
            delBtn.gameObject.SetActive(false);
            agreeBtn.gameObject.SetActive(false);
            disAgreeBtn.gameObject.SetActive(false);
        }  

        //infoList[5].text = mailData.Sendtime.ToString();
    }

    private void OnBtnEditClick()
    {    
        Logger.Log("OnBtnEditClick click..........");
        UIMgr.ShowUI( VIEWID.MailSend, 2, mailData );
    }
 
    private void OnBtnDelClick()
    {    
        Logger.Log("OnBtnDelClick click..........");
        C2S_GMDeleteMail pb = new C2S_GMDeleteMail();
        pb.Account = mailData.Account;
        pb.Mailid = mailData.Mid;           
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_DELETEMAIL,pb); 
    }

    private void OnBtnAgreeClick()
    {    
        Logger.Log("OnBtnAgreeClick click..........");

        C2S_GMSendMail pb = new C2S_GMSendMail();

        pb.Account = mailData.Account;
        if (mailData.Type == 2)
        {
            pb.Account = "";
        }
        pb.Mailtype = mailData.Type;

        PB_MailItem item = new PB_MailItem();
        item.Mid = mailData.Mid;
        pb.Maildata = item;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_SENDMAIL,pb); 
    }

    private void OnBtnDisAgreeClick()
    {    
        Logger.Log("OnBtnDisAgreeClick click..........");
        C2S_GMModMail pb = new C2S_GMModMail();
        pb.Modtype = (int)MOD_TYPE.UPATE;

        pb.Maildata = mailData;
        pb.Maildata.Agree = 2;
        pb.Maildata.Pasttime = 1;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_MODMAIL,pb);             
    }

}
