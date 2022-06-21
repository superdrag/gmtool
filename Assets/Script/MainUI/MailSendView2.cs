using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using Net;
using PPhp;
using PBase;

public class MailSendView2 : View
{
    private static MailSendView2 ins = null;

    PB_MailItemEx pbData;
    private Button sendBtn;
    private Button closeBtn;

    private Text sendBtnTxt;

    private InputField itemListText;
    private InputField accountText;

    string mailId;

    int openType;

    public static MailSendView2 Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new MailSendView2();
            }
            return ins;
        }
    }

    private MailSendView2()
    {
        Logger.Log("MailSendView2 Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/MailSendView2").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        sendBtn = bg.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickEdit); 
        sendBtnTxt = bg.Find("sendBtn/Text").GetComponent<Text>(); 

        closeBtn = bg.Find("closeBtn").GetComponent<Button>();  
        closeBtn.onClick.AddListener(onClickClose); 
      
        itemListText = bg.Find("itemlist/InputField").GetComponent<InputField>();
        accountText = bg.Find("account/InputField").GetComponent<InputField>();        
    }

    override public void OnShow(params object[] args)
    {        
        openType = (int)args[0];

        if (openType == 1) //新建
        {
            
        }
        else if (openType == 2) //编辑
        {
            pbData = (PB_MailItemEx)args[1];
            itemListText.text = pbData.Itemlist;
            accountText.text = pbData.Account;
            mailId = pbData.Mid;
            pbData.Configid = 4; 
        }
    }

    private void onClickEdit()
    {
        Logger.Log("onClickEdit mail...........");

        if( String.IsNullOrEmpty(accountText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号为空");
            return;
        }

        if (itemListText.text != "")
        {
            if ( itemListText.text.IndexOf("'") != -1)
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"错误字符");
                return;
            }
        }

        C2S_GMModMail pb = new C2S_GMModMail();

        PB_MailItemEx item = new PB_MailItemEx();
        if (openType == 1) //新建
        {
            pb.Modtype = (int)MOD_TYPE.ADD;
        }
        else if (openType == 2) //编辑
        {
            pb.Modtype = (int)MOD_TYPE.UPATE;
            item.Mid = pbData.Mid;
            item.State = pbData.State;         
            item.Configid = 4; 
        }    

        item.Itemlist = "PayId;" + itemListText.text + ";1";
        item.Pasttime = 90;
        item.Account = accountText.text;
        item.Configid = 4;

        item.Type = 1;
        item.Agree = 0;

        pb.Maildata = item;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_MODMAIL,pb);          
    } 


    private void onClickClose()
    {
        UIMgr.HideUI(VIEWID.MailSend2);

        UIMgr.GetUI<MailView>(VIEWID.Mail).reFresh();
        // C2S_GMQueryAllMail pb = new C2S_GMQueryAllMail();
        // pb.Type = 1;
        // pb.Account = "";
        // NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYALLMAIL,pb);  
    }
    

}
