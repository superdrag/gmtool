using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class RechargeView : View
{
    private static RechargeView ins = null;

    private Button chaxunBtn;
    private Button nameBtn;
    private Button delBtn;

    private Text zhanghaoText;
    private InputField zhanghaoIF;
    private Text playernameText;
    private InputField playernameIF;

    public Transform Content;   
    private InputField dataIF; 

    public static RechargeView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new RechargeView();
            }
            return ins;
        }
    }

    private RechargeView()
    {
        Logger.Log("RechargeView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/RechargeView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        chaxunBtn = bg.Find("chaxun/cha").GetComponent<Button>();  
        chaxunBtn.onClick.AddListener(onClickCha); 
        zhanghaoIF = bg.Find("chaxun/shuru").GetComponent<InputField>();
        zhanghaoText = bg.Find("chaxun/shuru/Text").GetComponent<Text>();

        nameBtn = bg.Find("chaname/cha").GetComponent<Button>();  
        nameBtn.onClick.AddListener(onClickChaName); 
        playernameIF = bg.Find("chaname/shuru").GetComponent<InputField>();
        playernameText = bg.Find("chaname/shuru/Text").GetComponent<Text>();
 
        Content = bg.Find("Scroll View/Viewport/Content");        
        dataIF = Content.Find("InputField").GetComponent<InputField>();
 
        delBtn = bg.Find("delBtn").GetComponent<Button>();  
        delBtn.onClick.AddListener(onClickDel);
    }

    override public void OnShow(params object[] args)
    {
        if( LoginModel.Instance.Permission < 9 )
        {
            delBtn.gameObject.SetActive(false);
        }
    }

    private void onClickCha()
    {
        Logger.Log("onClickCha ...........");
        

        if( string.IsNullOrEmpty(zhanghaoIF.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }

        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = zhanghaoIF.text;
        pb.Querytype = (int)PHP_QUERY.PLAYERDATA;
        pb.Params.Add(1);
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);
    }

    private void onClickChaName()
    {
        Logger.Log("onClickChaName ...........");
        

        if( string.IsNullOrEmpty(playernameIF.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"昵称不能为空");
            return;
        }

        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = playernameIF.text;
        pb.Querytype = (int)PHP_QUERY.PLAYERDATA;
        pb.Params.Add(2);
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);
    }

    private void onClickDel()
    {
        Logger.Log("onClickDel ...........");

        if (zhanghaoIF.text == "")
        {
            return;
        }

        C2S_GMCommand pb = new C2S_GMCommand();
        pb.Commandid = (int)PHP_COMMAMD.DELETESAVE;
        pb.Acclist.Add(zhanghaoIF.text);
        
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMCOMMAND,pb);         
    }        

    public void SetDataText(S2C_GMQueryNormalInfo _pb)
    {
        dataIF.text = "";

        foreach (var item in _pb.Result)
        {
            foreach (var item2 in item.Dict)
            {
                dataIF.text = dataIF.text + item2.Key + ":" + item2.Value + "\n";
            }
        }
    }
    
}
