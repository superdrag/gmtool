using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

public class AlertMsgView : View
{
    private Button okBtn;
    private Text noticeTxt;
    private static AlertMsgView ins = null;

    public static AlertMsgView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new AlertMsgView();
            }
            return ins;
        }
    }

    private AlertMsgView()
    {
        Logger.Log("AlertMsgView Construct Call");
    }

    override public void OnCreateGo(System.Action action)
    {
        GameObject go = ResMgr.LoadRes<GameObject>("Assets/ResAB/Prefab/Common/AlertMsgView.prefab");
        ViewRoot = UnityEngine.Object.Instantiate(go);
        okBtn = ViewRoot.transform.Find("queding").GetComponent<Button>();
        noticeTxt = ViewRoot.transform.Find("tishi").GetComponent<Text>();
        okBtn.onClick.AddListener(OnOkBtnClick);
        UIHelper.AddChild(UIMgr.UIMain,ViewRoot);
        action();
    }
    private void OnOkBtnClick()
    {    
        Logger.Log("BtnLogin click..........");
        UIMgr.HideUI(VIEWID.DIALOG_ALERT);
    }    

    public void ShowAlertInfo(string info)
    {
        UIMgr.ShowUI(VIEWID.DIALOG_ALERT, 
            ()=> {
                noticeTxt.text = info;
            } 
        );      
    }

 

}
