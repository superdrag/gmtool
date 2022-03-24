using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class LimitView : View
{
    private static LimitView ins = null;

    private Button newBtn;
    private InputField accText;

    public Transform Content;


    public static LimitView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new LimitView();
            }
            return ins;
        }
    }

    private LimitView()
    {
        Logger.Log("LimitView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/LimitView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        newBtn = bg.Find("btnGroup/newBtn").GetComponent<Button>();  
        EventTriggerListener.Get(newBtn.gameObject).onClick = onClickNew;

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        ClearItem();        
    }

    private void onClickNew(GameObject go)
    {
        UIMgr.ShowUI( VIEWID.LimitNew, 1 );
    }

    override public void DoClickQuery(int start, int end)
    {
        ClearItem();
        GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.BLACKUSER,66);
    }
    
    public void ClearItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    public void AddItem(LimitItem item)
    {                
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show();
    }
}
