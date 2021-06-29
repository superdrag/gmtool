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

public class MailSendView : View
{
    private static MailSendView ins = null;

    private Button sendBtn;
    private Button closeBtn;
    private Button deleteBtn;
    private InputField titleText;
    private InputField contentText;
    private InputField itemListText;
    private InputField pastDayText;    
    private InputField accountText;


    private Toggle oneTog;
    private Toggle allTog;

    string mailId;

    int openType;

    public static MailSendView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new MailSendView();
            }
            return ins;
        }
    }

    private MailSendView()
    {
        Logger.Log("MailSendView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/MailSendView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        sendBtn = bg.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickSend); 

        closeBtn = bg.Find("closeBtn").GetComponent<Button>();  
        closeBtn.onClick.AddListener(onClickClose); 

        deleteBtn = bg.Find("deleteBtn").GetComponent<Button>();  
        deleteBtn.onClick.AddListener(onClickDelete);                 

        titleText = bg.Find("title/InputField").GetComponent<InputField>();
        contentText = bg.Find("content/InputField").GetComponent<InputField>();
        itemListText = bg.Find("itemlist/InputField").GetComponent<InputField>();
        pastDayText = bg.Find("pastday/InputField").GetComponent<InputField>();
        accountText = bg.Find("account/InputField").GetComponent<InputField>();        

        oneTog = bg.Find("account/ToggleGroup/Toggle").GetComponent<Toggle>();
        allTog = bg.Find("account/ToggleGroup/Toggle2").GetComponent<Toggle>();

        // chongzhiBtn = bg.Find("chong/chongzhi").GetComponent<Button>();
        // chongzhiBtn.onClick.AddListener(onClickChong);      
        // shuliangText = bg.Find("chong/num/Text").GetComponent<Text>();
      
        // zhanghaoData = bg.Find("UserInfoView/data/zhanghao").GetComponent<Text>(); 
        // idData = bg.Find("UserInfoView/data/id").GetComponent<Text>();
        // zhuanshiData = bg.Find("UserInfoView/data/zuanshi").GetComponent<Text>();
        // chaopiaoData = bg.Find("UserInfoView/data/chaopiao").GetComponent<Text>();
        // vipData = bg.Find("UserInfoView/data/vip").GetComponent<Text>();
        // dengluData = bg.Find("UserInfoView/data/denglu").GetComponent<Text>();
        // lixianData = bg.Find("UserInfoView/data/lixian").GetComponent<Text>();
    }

    override public void OnShow(params object[] args)
    {        
        openType = (int)args[0];

        if ((int)args[0] == 1)
        {
            titleText.text = "这是标题啊 this is title text";
            contentText.text = "这是内容啊 this is content text";
            itemListText.text = "Currency;diamond;1000/BaseBaller;1001;1/TreasureChest;103;1/Equip;40102;1";
            accountText.text = "AAA123";
            pastDayText.text = "30";   
        }
        else if ((int)args[0] == 2)
        {
            PB_MailItemEx data = (PB_MailItemEx)args[1];
            titleText.text = data.Title;
            contentText.text = data.Content;
            itemListText.text = data.Itemlist;
            accountText.text = data.Account;
            pastDayText.text = "30";

            mailId = data.Mid;
        }
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");

        if( String.IsNullOrEmpty(pastDayText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"过期天数未空");
            return;
        }

        int passDay = int.Parse(pastDayText.text);
        if( passDay <= 0 )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"过期天数错误");
            return;
        }

        int mailType = 1;
        if( allTog.isOn ) 
        {
            mailType = 2;        
        }
        GlobalCtl.MSG_CL2PHP_SENDMAIL( mailType, accountText.text,titleText.text,contentText.text,itemListText.text, passDay );
    } 


    private void onClickDelete()
    {
        if (openType == 2)
        {
            C2S_GMDeleteMail pb = new C2S_GMDeleteMail();
            pb.Mailid = mailId ;           
            NetMgr.SendMsg(MSGID.MSG_CL2PHP_DELETEMAIL,pb); 
        }
    }

    private void onClickClose()
    {
        UIMgr.HideUI(VIEWID.MailSend);
    }



}