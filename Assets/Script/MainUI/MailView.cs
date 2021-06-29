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

    public Transform Content;


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

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        C2S_GMQueryAllMail pb = new C2S_GMQueryAllMail();
        pb.Type = 1;
        pb.Account = "";
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYALLMAIL,pb);  
    }

    private void onClickQuery(GameObject go)
    {
        if( go.name == "allBtn" )
        {
            C2S_GMQueryAllMail pb = new C2S_GMQueryAllMail();
            pb.Type = 1;
            pb.Account = "";
            NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYALLMAIL,pb);  
        }
    }

    private void onClickNewMail(GameObject go)
    {
        UIMgr.ShowUI( VIEWID.MailSend, 1 );
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");
    } 

    
    public void ClearMailItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    public void AddMailItem(MailItem mail)
    {                
        mail.view.SetParent(Content);
        mail.view.transform.localScale = Vector3.one;
        mail.Show();
    }
}
