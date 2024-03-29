using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class CoreView : View
{
    private static CoreView ins = null;

    private Button queryBtn;
    private InputField beginDateText;
    private InputField endDateText;
    public CoreItem titleItem;
    public List<CoreItem> dataItemList = new List<CoreItem>();
    private Transform bg;
    public Transform Content;

    public int itemNum = 0;


    public static CoreView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new CoreView();
            }
            return ins;
        }
    }

    private CoreView()
    {
        Logger.Log("CoreView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/CoreView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");

        //coreItem = bg.Find("CoreItem");
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);
        ShowTitle();

        int startIndex = RecordModel.coreList.Count - 9; //开始为倒数9天
        if (startIndex < 0)
        {
            startIndex = 0;
        }
        UIMgr.GetUI<TitleView>(VIEWID.TITLE).SetInitDate(startIndex,0);
    }

    public void ShowTitle()
    {
        titleItem = new CoreItem();
        titleItem.Create();
        titleItem.view.SetParent(bg);

        RectTransform rect = titleItem.view.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(700,-39);

        titleItem.view.transform.localScale = Vector3.one;
        titleItem.SetTittle();     
    }

    public void ClearCoreItem()
    {
        dataItemList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    public void AddCoreItem(int dayIndex)
    {               
        CoreItem coreItem = new CoreItem();
        coreItem.Create();
        coreItem.view.SetParent(Content);
        coreItem.view.transform.localScale = Vector3.one;

        coreItem.view.GetComponent<RectTransform>().localPosition = new Vector3( coreItem.view.GetComponent<RectTransform>().localPosition.x, coreItem.view.GetComponent<RectTransform>().localPosition.y, 0 );

        coreItem.Show(dayIndex);
        
        dataItemList.Add(coreItem);

        itemNum += 1;

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );        

        //Logger.Log("AddCoreItem....",dayIndex,coreItem.view.GetComponent<RectTransform>().anchoredPosition);
    }

    override public void DoClickQuery(int start, int end)
    {
        //Debug.Log("DoClickQuery core");
        // string curCountry = TitleView.country;
        // Logger.Log("1111111111111 "+ curCountry);
        Logger.Log("title cholse ",start,end);
        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        ClearCoreItem();
        itemNum = 0;
        
        for (int i = 0; i < RecordModel.coreList.Count; i++)
        {
            AddCoreItem(i);       
        }
        //Debug.Log("DoClickQuery core end");
    }

    override public void DoClickExport()
    {
#if UNITY_STANDALONE
        ExcelHelper.ExportCore();
#endif        
    }       
}
