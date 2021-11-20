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

    private Text zhanghaoText;
    private InputField dataIF;

    private Text playernameText;
    private InputField dataIF2;

    public Transform Content;    

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
        zhanghaoText = bg.Find("chaxun/shuru/Text").GetComponent<Text>();

        nameBtn = bg.Find("chaname/cha").GetComponent<Button>();  
        nameBtn.onClick.AddListener(onClickChaName); 
        playernameText = bg.Find("chaname/shuru/Text").GetComponent<Text>();
 
        Content = bg.Find("Scroll View/Viewport/Content");        
        dataIF = Content.Find("InputField").GetComponent<InputField>();
 

    }

    override public void OnShow(params object[] args)
    {
        
    }

    private void onClickCha()
    {
        Logger.Log("onClickCha ...........");
        

        if( string.IsNullOrEmpty(zhanghaoText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }

        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = zhanghaoText.text;
        pb.Querytype = (int)PHP_QUERY.PLAYERDATA;
        pb.Params.Add(1);
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);
    }

    private void onClickChaName()
    {
        Logger.Log("onClickChaName ...........");
        

        if( string.IsNullOrEmpty(playernameText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"昵称不能为空");
            return;
        }

        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = playernameText.text;
        pb.Querytype = (int)PHP_QUERY.PLAYERDATA;
        pb.Params.Add(2);
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);
    }

    public void SetDataText(S2C_GMQueryNormalInfo _pb)
    {
        dataIF.text = "";
        foreach (var item in _pb.Result[0].Dict)
        {
            dataIF.text = dataIF.text + item.Key + ":" + item.Value + "\n";
        }
    }
    
}
