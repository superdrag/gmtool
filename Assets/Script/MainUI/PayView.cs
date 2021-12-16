using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class PayView : View
{
    private static PayView ins = null;

    public Transform Content;

    public List<PayItem> PayItemsList = new List<PayItem>();

    public int itemNum = 0;

    public static PayView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new PayView();
            }
            return ins;
        }
    }

    private PayView()
    {
        Logger.Log("PayView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/PayView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        
    }

    public void ClearItem()
    {
        PayItemsList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    override public void DoClickQuery()
    {
        itemNum = 0;
        ClearItem();
        GlobalCtl.MSG_CL2PHP_GMPAYDATA("");
    }

    override public void DoClickExport()
    {

    }  


    public void AddItem(S2C_GMPayData pb)
    {               
        if (pb.Paynum <= 0)
        {
            return;
        }
        PayItem item = new PayItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.pbData = pb;
        item.Show();
        PayItemsList.Add(item);

        itemNum += 1;

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );            
    }

    public void SetItem(S2C_GMPayRepair pb)
    {               
        for (int i = 0; i < PayItemsList.Count; i++)
        {
            PayItem item = PayItemsList[i];
            if (item.pbData.Payorder == pb.Payorder)
            {
                item.pbData.State = pb.Ret;
                item.Show();
                break;
            } 
        }
    }    
    
}
