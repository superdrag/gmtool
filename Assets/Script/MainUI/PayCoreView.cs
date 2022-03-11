using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class PayCoreView : View
{
    private static PayCoreView ins = null;

    private Button queryBtn;
    private InputField beginDateText;
    private InputField endDateText;
    public PayCoreItem titleItem;
    public List<PayCoreItem> dataItemList = new List<PayCoreItem>();
    private Transform bg;
    public Transform Content;


    public static PayCoreView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new PayCoreView();
            }
            return ins;
        }
    }

    private PayCoreView()
    {
        Logger.Log("PayCoreView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/PayCoreView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");

        //coreItem = bg.Find("PayCoreItem");
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);
        ShowTitle();

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)RecordModel.coreList.Count * (float)73.6 );

        int startIndex = RecordModel.coreList.Count - 9; //开始为倒数9天
        if (startIndex < 0)
        {
            startIndex = 0;
        }
        UIMgr.GetUI<TitleView>(VIEWID.TITLE).SetInitDate(startIndex,0);
    }

    public void ShowTitle()
    {
        titleItem = new PayCoreItem();
        titleItem.Create();
        titleItem.view.SetParent(bg);

        RectTransform rect = titleItem.view.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(648,-39);

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
        PayCoreItem coreItem = new PayCoreItem();
        coreItem.Create();
        coreItem.view.SetParent(Content);
        coreItem.view.transform.localScale = Vector3.one;

        coreItem.view.GetComponent<RectTransform>().localPosition = new Vector3( coreItem.view.GetComponent<RectTransform>().localPosition.x, coreItem.view.GetComponent<RectTransform>().localPosition.y, 0 );

        coreItem.Show(dayIndex);
        
        dataItemList.Add(coreItem);

        //Logger.Log("AddCoreItem....",dayIndex,coreItem.view.GetComponent<RectTransform>().anchoredPosition);
    }

    override public void DoClickQuery()
    {
        //Debug.Log("DoClickQuery core");
        // string curCountry = TitleView.country;
        // Logger.Log("1111111111111 "+ curCountry);
        RecordModel.analyseAllCoreData(TitleView.country,TitleView.platform);

        ClearCoreItem();
        
        for (int i = 0; i < RecordModel.coreList.Count; i++)
        {
            if (RecordModel.coreList[i].timetv >= TitleView.startTime && RecordModel.coreList[i].timetv <= TitleView.endTime)
            {
                 AddCoreItem(i); 
            }           
        }
        //Debug.Log("DoClickQuery core end");
    }

    override public void DoClickExport()
    {
        for (int i = 0; i < titleItem.infoList.Count; i++)
        {
            titleData.Add( titleItem.infoList[i].text.ToString());     
        }   

        for (int index = 0; index < dataItemList.Count; index++)
        {
            List<string> _date = new List<string>();
            for (int i = 0; i < dataItemList[index].infoList.Count; i++)
            {
                _date.Add( dataItemList[index].infoList[i].text.ToString());     
            }    
            itemDataList.Add(_date);
        }

        GFunc.ExportExcel("付费LTV",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();      
    }       
}
