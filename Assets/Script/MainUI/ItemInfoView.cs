using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class ItemInfoView : View
{
    private static ItemInfoView ins = null;

    private InputField descIF;
    private Button closeBtn;

    public static ItemInfoView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new ItemInfoView();
            }
            return ins;
        }
    }

    private ItemInfoView()
    {
        Logger.Log("ItemInfoView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/ItemInfoView").transform;
        UIHelper.AddChild(UIMgr.UIPop, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        closeBtn = bg.Find("Button").GetComponent<Button>();
        EventTriggerListener.Get(closeBtn.gameObject).onClick = onClickClose; 

        descIF = bg.Find("Scroll View/Viewport/Content/InputField").GetComponent<InputField>();
    }

    override public void OnShow(params object[] args)
    {
        descIF.text = "";
        if (args.Length > 0)
        {
            descIF.text = args[0].ToString();
        }        
    }

    public void AddItemInfo(string s)
    {
        descIF.text = descIF.text + '\n' + s;        
    }

    private void onClickClose(GameObject go)
    {
        Logger.Log("onClickClose ...........");
        descIF.text = "";
        UIMgr.HideUI(VIEWID.ITEMINFO);
    }

}
