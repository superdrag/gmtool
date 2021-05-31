using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class MailView : View
{
    private static MailView ins = null;

    private Button sendBtn;
    private InputField titleText;
    private InputField contentText;
    private InputField itemListText;
    private InputField accountText;
    private Toggle oneTog;
    private Toggle allTog;

    public static MailView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new MailView();
            }
            return ins;
        }
    }

    private MailView()
    {
        Logger.Log("MailView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/MailView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        sendBtn = bg.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickSend); 

        titleText = bg.Find("title/InputField").GetComponent<InputField>();
        contentText = bg.Find("content/InputField").GetComponent<InputField>();
        itemListText = bg.Find("itemlist/InputField").GetComponent<InputField>();
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

    override public void OnShow()
    {        
        titleText.text = "这是标题啊 this is title text";
        contentText.text = "这是内容啊 this is content text";
        itemListText.text = "currency;cash:1000|currency;diamond:100|item;10103:1|item;40102:1";
        accountText.text = "AAA123";
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");
        int mailType = 1;
        if( allTog.isOn ) 
        {
            mailType = 2;        
        }
        GlobalCtl.MSG_CL2PHP_SENDMAIL( mailType, accountText.text,titleText.text,contentText.text,itemListText.text );
    } 


}
