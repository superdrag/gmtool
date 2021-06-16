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

    private Button allBtn;
    private Button serverBtn;
    private Button personalBtn;
    private Button newMailBtn;
    private InputField accText;


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

        allBtn = bg.Find("btnGroup/allBtn").GetComponent<Button>();  
        serverBtn = bg.Find("btnGroup/serverBtn").GetComponent<Button>();  
        personalBtn = bg.Find("btnGroup/personalBtn").GetComponent<Button>();  
        EventTriggerListener.Get(allBtn.gameObject).onClick = onClickQuery;
        EventTriggerListener.Get(serverBtn.gameObject).onClick = onClickQuery;
        EventTriggerListener.Get(personalBtn.gameObject).onClick = onClickQuery;

        newMailBtn = bg.Find("btnGroup/newMailBtn").GetComponent<Button>();  
        EventTriggerListener.Get(newMailBtn.gameObject).onClick = onClickNewMail;


        accText = bg.Find("btnGroup/InputField").GetComponent<InputField>();
    }

    override public void OnShow()
    {        

    }

    private void onClickQuery(GameObject go)
    {

    }

    private void onClickNewMail(GameObject go)
    {
        UIMgr.ShowUI( VIEWID.MailSend );
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");


       
    } 


}
