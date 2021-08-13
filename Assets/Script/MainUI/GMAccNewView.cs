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

public class GMAccNewView : View
{
    private static GMAccNewView ins = null;

    private Button sendBtn;
    private Button closeBtn;
    private Button delBtn;
    private InputField accountText;
    private InputField passwdText;  
    private InputField nameText;
    private InputField rankText;
    private int curRank;

    private Dictionary<int,string> rankNameDict = new Dictionary<int, string>();

    public static GMAccNewView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GMAccNewView();
            }
            return ins;
        }
    }

    private GMAccNewView()
    {
        Logger.Log("GMAccNewView Construct Call");
        rankNameDict[1] = "普通账号";
        rankNameDict[2] = "高级账号";
        rankNameDict[9] = "管理员";
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/GMAccNewView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        Transform btns = viewRoot.Find("bg/btns");

        sendBtn = btns.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickSend); 

        closeBtn = btns.Find("closeBtn").GetComponent<Button>();  
        closeBtn.onClick.AddListener(onClickClose);    

        delBtn = btns.Find("delBtn").GetComponent<Button>();  
        delBtn.onClick.AddListener(onClickDel);                             

        accountText = bg.Find("account/InputField").GetComponent<InputField>();      
        passwdText = bg.Find("passwd/InputField").GetComponent<InputField>();
        nameText = bg.Find("name/InputField").GetComponent<InputField>();
        rankText = bg.Find("rank/InputField").GetComponent<InputField>();
    }

    override public void OnShow(params object[] args)
    {        
        if ((int)args[0] == 1)
        {
            accountText.text = ""; 
            passwdText.text = "";
            nameText.text = "";
            curRank = 1;
            rankText.text = rankNameDict[curRank];
        }
        else if ((int)args[0] == 2)
        {
            accountText.text = args[0].ToString(); 
            passwdText.text = "";
            nameText.text = "";
            curRank = System.Convert.ToInt32(args[0]) ;
            rankText.text = rankNameDict[curRank];
        }
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");

        if( String.IsNullOrEmpty(accountText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号为空");
            return;
        }

        if( String.IsNullOrEmpty(passwdText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"密码错误");
            return;
        }        

        C2S_GMAccountMgr pb = new C2S_GMAccountMgr();
        pb.Type = (int)MOD_TYPE.ADD;
        pb.Account = accountText.text;
        pb.Passwd = passwdText.text;
        pb.Nickname = nameText.text;
        pb.Permission = curRank;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMACCOUNTMGR,pb);          
    } 

    private void onClickDel()
    {

    }    

    private void onClickClose()
    {
        UIMgr.HideUI(VIEWID.GMAccNew);
        UIMgr.RefreshUI(VIEWID.GMAcc);
    }



}
