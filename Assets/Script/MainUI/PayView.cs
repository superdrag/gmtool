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

    public Transform TitleNote;

    private Button chaxunBtn;
    private InputField zhanghaoIF;
    private Text zhanghaoText;

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

        TitleNote = bg.Find("title");

        chaxunBtn = bg.Find("chaxun/cha").GetComponent<Button>();  
        chaxunBtn.onClick.AddListener(onClickCha); 
        zhanghaoIF = bg.Find("chaxun/shuru").GetComponent<InputField>();
        zhanghaoText = bg.Find("chaxun/shuru/Text").GetComponent<Text>();

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

    override public void DoClickQuery(int start, int end)
    {
        itemNum = 0;
        ClearItem();
        GlobalCtl.MSG_CL2PHP_GMPAYDATA("");
    }

    private void onClickCha()
    {
        Logger.Log("onClickCha ...........");
      
        if( string.IsNullOrEmpty(zhanghaoIF.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }

        itemNum = 0;
        ClearItem();  
        GlobalCtl.MSG_CL2PHP_GMPAYDATA(zhanghaoIF.text);
    }

    override public void DoClickExport()
    {
        for (int i = 0; i < TitleNote.childCount; i++)
        {
            Text txt = TitleNote.GetChild(i).GetComponent<Text>();
            titleData.Add(txt.text.ToString());
        }

        for (int index = 0; index < PayItemsList.Count; index++)
        {
            List<string> _date = new List<string>();
            for (int i = 0; i < PayItemsList[index].infoList.Count; i++)
            {
                if (PayItemsList[index].infoList[i])
                {
                    _date.Add( PayItemsList[index].infoList[i].text.ToString());     
                }                
            }    
            itemDataList.Add(_date);
        }

        GFunc.ExportExcel("支付订单",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();        
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
