using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class BlankView : View
{
    private static BlankView ins = null;

    public static BlankView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new BlankView();
            }
            return ins;
        }
    }

    private BlankView()
    {
        
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/BlankView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  
    }

    override public void OnShow()
    {

    }
}
