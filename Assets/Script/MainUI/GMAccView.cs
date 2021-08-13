using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class GMAccView : View
{
    private static GMAccView ins = null;

    private Button newBtn;
    private InputField accText;

    public Transform Content;


    public static GMAccView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GMAccView();
            }
            return ins;
        }
    }

    private GMAccView()
    {
        Logger.Log("GMAccView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/GMAccView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        newBtn = bg.Find("btnGroup/newBtn").GetComponent<Button>();  
        EventTriggerListener.Get(newBtn.gameObject).onClick = onClickNew;

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        ClearItem();
        GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.GMACCLIST,999);
    }

    private void onClickNew(GameObject go)
    {
        UIMgr.ShowUI( VIEWID.GMAccNew, 1 );
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");
    }
    
    public void ClearItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    public void AddItem(GMAccItem item)
    {                
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show();
    }
}
