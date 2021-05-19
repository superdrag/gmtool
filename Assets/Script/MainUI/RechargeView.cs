using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

public class RechargeView : View
{
    private Button loginBtn;
    private GameObject SeverBtmList;
    private Transform SeverContent;

    private static RechargeView ins = null;

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
    }

    override public void OnShow()
    {

    }

 

}
