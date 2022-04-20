using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class CheatView : View
{
    private static CheatView ins = null;

    public Transform Content;

    private Transform bg;

    public CheatItem titleItem;

    public List<CheatItem> itemsList = new List<CheatItem>();

    public int itemNum = 0;

    public static CheatView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new CheatView();
            }
            return ins;
        }
    }

    private CheatView()
    {
        Logger.Log("CheatView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/CheatView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        ShowTitle();
        ClearItem();
    
    }

    private void ClearItem()
    {
        itemsList.Clear();
        itemNum = 0;
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
            Logger.Warn("dddddddddddddddddddddddd " + i);
        }
    }

    override public void DoClickQuery(int start, int end)
    {
        //Logger.Log("11111111111111111111111");
        ClearItem();
        itemNum = 0;

        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        for (int i = 0; i < RecordModel.cheatList.Count; i++)
        {
            string[] s = RecordModel.cheatList[i];
            AddItem(s);
        }

        Logger.Log("11111111111111111111111  "  + itemsList.Count);
        

        GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.BLACKUSER,66);       
    }

    public void ShowTitle()
    {
        titleItem = new CheatItem();
        titleItem.Create();
        titleItem.view.SetParent(bg);

        RectTransform rect = titleItem.view.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(648,-39);

        titleItem.view.transform.localScale = Vector3.one;
        titleItem.SetTitle();     
    }

    public void AddItem(string[] s)
    {
        CheatItem item = new CheatItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(s); 

        itemsList.Add(item);
        itemNum++;

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );              
    }

    public void SetStataData(Dictionary<string,int> dict)
    {
        for (int i = 0; i < itemsList.Count; i++)
        {
            if ( dict.ContainsKey(itemsList[i].GetAccount() ) )
            {
                itemsList[i].SetState();
            }
            
        }
    }
    


    override public void DoClickExport()
    {
        for (int i = 0; i < titleItem.infoList.Count; i++)
        {
            titleData.Add( titleItem.infoList[i].text.ToString());     
        }   

        for (int index = 0; index < itemsList.Count; index++)
        {
            List<string> _date = new List<string>();
            for (int i = 0; i < itemsList[index].infoList.Count; i++)
            {
                string member = itemsList[index].infoList[i].text;
                member = member.Replace('*',',');
                _date.Add( member);     
            }    
            itemDataList.Add(_date);
        }

        GFunc.ExportExcel("作弊信息",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();        
    }  
}
