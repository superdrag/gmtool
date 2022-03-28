using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class RankView : View
{
    private static RankView ins = null;

    public Transform Content;

    private Transform bg;

    public RankItem titleItem;

    public List<RankItem> RankItemsList = new List<RankItem>();

    public int itemNum = 0;

    public static RankView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new RankView();
            }
            return ins;
        }
    }

    private RankView()
    {
        Logger.Log("RankView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/RankView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        ShowTitle();
    }

    public void ClearItem()
    {
        RankItemsList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    override public void DoClickQuery(int start, int end)
    {
        //Logger.Log("11111111111111111111111");
        ClearItem();
        itemNum = 0;

        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        for (int i = 0; i < RecordModel.coreList.Count; i++)
        {
            AddRankItem(i);        
        }

        // itemNum = 0;
        // ClearItem();
        // GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.RANKLIS,999);
    }

    override public void DoClickExport()
    {
        for (int i = 0; i < titleItem.infoList.Count; i++)
        {
            titleData.Add( titleItem.infoList[i].text.ToString());     
        }   

        for (int index = 0; index < RankItemsList.Count; index++)
        {
            List<string> _date = new List<string>();
            for (int i = 0; i < RankItemsList[index].infoList.Count; i++)
            {
                string member = RankItemsList[index].infoList[i].text;
                member = member.Replace('*',',');
                _date.Add( member);     
            }    
            itemDataList.Add(_date);
        }

        GFunc.ExportExcel("排行榜",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();        
    }  


    public void ShowTitle()
    {
        titleItem = new RankItem();
        titleItem.Create();
        titleItem.root.SetParent(bg);

        RectTransform rect = titleItem.root.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(648,-39);

        titleItem.root.transform.localScale = Vector3.one;
        titleItem.SetTittle();     
    }

    public void AddRankItem(int dayIndex)
    {
        List<RankData> rankDataList = new List<RankData>();
        CoreData dayData = RecordModel.coreList[dayIndex];

        int count = 0;
        foreach (var item in dayData.rankListDict)
        {
            RankData rankData = item.Value;

            rankData.daytime = dayData.date;

            RankItem itemUI = new RankItem();
            itemUI.Create();
            itemUI.root.SetParent(Content);
            itemUI.root.transform.localScale = Vector3.one;
            itemUI.SetGoName(rankData.id);

            itemUI.root.GetComponent<RectTransform>().localPosition = new Vector3( itemUI.root.GetComponent<RectTransform>().localPosition.x, itemUI.root.GetComponent<RectTransform>().localPosition.y, 0 );

            itemUI.Show(rankData);
            
            RankItemsList.Add(itemUI);

            itemNum += 1;

            count++;

            if(count == dayData.rankListDict.Count)
            {
                itemUI.ShowLine();
            }
        }

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)76 );        
    }


    
}
