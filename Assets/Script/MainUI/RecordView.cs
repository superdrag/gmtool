using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;
using PBase;

public class RecordView : View
{
    private static RecordView ins = null;

    private Button queryBtn;
    private InputField beginDateText;
    private InputField endDateText;

    public Transform Content;

    public int itemNum = 0;


    public static RecordView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new RecordView();
            }
            return ins;
        }
    }

    private RecordView()
    {
        Logger.Log("RecordView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/RecordView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        queryBtn = bg.Find("btnGroup/queryBtn").GetComponent<Button>();  
        EventTriggerListener.Get(queryBtn.gameObject).onClick = onClickQuery;

        beginDateText = bg.Find("btnGroup/InputField").GetComponent<InputField>();
        endDateText = bg.Find("btnGroup/InputField2").GetComponent<InputField>();

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        onClickQuery(queryBtn.gameObject);
        
        // Transform obj = Content.GetChild(0);
        // RectTransform rect2=obj.GetComponent<RectTransform>();
        // float h = rect2.sizeDelta.y * RecordModel.Instance.operateList.Count;

        // RectTransform rect=Content.GetComponent<RectTransform>();
        // rect.sizeDelta = new Vector2(rect.sizeDelta.x,h);        
    }

    public void ClearItems()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    private void onClickQuery(GameObject go)
    {
        // ClearCoreItem();

        // for (int i = RecordModel.Instance.operateList.Count-1; i >= 0; i--)
        // {
        //     AddCoreItem(i);
        // }
        itemNum = 0;
        ClearItems();
        GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.RECORED_OPERATE,999);

    }

    public void AddItem(PB_ParamStrDict rstData)
    {               
        RecordItem item = new RecordItem();
        item.rstData = rstData;
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show();   

        itemNum += 1;  

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );             
    }
}
