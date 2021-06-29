using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class AlertInfoView : View
{
    private static AlertInfoView ins = null;

    private Text descTx;
    private Button okBtn;

    public static AlertInfoView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new AlertInfoView();
            }
            return ins;
        }
    }

    private AlertInfoView()
    {
        Logger.Log("AlertInfoView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/AlertInfoView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        descTx = bg.Find("desc").GetComponent<Text>();  
        okBtn = bg.Find("ok").GetComponent<Button>();
        EventTriggerListener.Get(okBtn.gameObject).onClick = onClickOk; 
    }

    override public void OnShow(params object[] args)
    {
        descTx.text = args[0].ToString();
    }

    public void ShowAlert(string s)
    {
        descTx.text = s;
    }

    private void onClickOk(GameObject go)
    {
        Logger.Log("onClickOk ...........");
        descTx.text = "";
        UIMgr.HideUI(VIEWID.ALERTINFO);
    }

}
