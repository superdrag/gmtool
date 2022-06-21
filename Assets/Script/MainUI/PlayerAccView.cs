using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class PlayerAccView : View
{
    private static PlayerAccView ins = null;

    private Button bangBtn;

    private Text zhanghaoText;
    private InputField zhanghaoIF;
    private Text playernameText;
    private InputField playernameIF;

    public static PlayerAccView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new PlayerAccView();
            }
            return ins;
        }
    }

    private PlayerAccView()
    {
        Logger.Log("PlayerAccView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/PlayerAccView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        zhanghaoIF = bg.Find("chaxun/shuru").GetComponent<InputField>();
        zhanghaoText = bg.Find("chaxun/shuru/Text").GetComponent<Text>();

        playernameIF = bg.Find("chaname/shuru").GetComponent<InputField>();
        playernameText = bg.Find("chaname/shuru/Text").GetComponent<Text>();
 
        bangBtn = bg.Find("bangBtn").GetComponent<Button>();  
        bangBtn.onClick.AddListener(onClickBang);
    }

    override public void OnShow(params object[] args)
    {

    }

    private void onClickBang()
    {
        Logger.Log("onClickBang ...........");
        

        if( string.IsNullOrEmpty(zhanghaoIF.text) || string.IsNullOrEmpty(playernameIF.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }    

        C2S_ReplaceAcc pb = new C2S_ReplaceAcc();
        pb.Account1 = zhanghaoIF.text;
        pb.Account2 = playernameIF.text;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_REPLACEACC,pb);
    }
  
    public void OnBangAcc(S2C_ReplaceAcc _pb)
    {
        if (_pb.Ret == 0)
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"绑定成功");
        } 
        else
        {
            if (_pb.Ret == 1)
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"绑定失败,找不到平台账号");
            }
            if (_pb.Ret == 2)
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"绑定失败,找不到游客账号");
            }            
            else
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"绑定失败" + _pb.Ret);    
            }              
        }        
    }
    
}
