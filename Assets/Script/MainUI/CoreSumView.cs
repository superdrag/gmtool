using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class CoreSumView : View
{
    private static CoreSumView ins = null;

    private Button queryBtn;
    private InputField beginDateText;
    private InputField endDateText;

    public Transform Content;

    public Transform coreSumItem;
    public Transform coreSumItemBg;

    public List<Text> infoList = new List<Text>();

    public static CoreSumView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new CoreSumView();
            }
            return ins;
        }
    }

    private CoreSumView()
    {
        Logger.Log("CoreSumView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/CoreSumView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");
        coreSumItem = bg.Find("CoreSumItem");
        coreSumItemBg = bg.Find("CoreSumItem/bg");

        for (int i = 0; i < coreSumItemBg.childCount; i++)
        {
            infoList.Add(coreSumItemBg.GetChild(i).GetComponent<Text>());
        }

    }

    override public void OnShow(params object[] args)
    {        
        List<int> list = RecordModel.coreSumList;        

        for (int i = 0; i < list.Count; i++)
        {
            infoList[i].text = list[i].ToString(); 
        }
    }

    override public void DoClickQuery()
    {
        // ClearCoreItem();
        // for (int i = 0; i < RecordModel.coreList.Count; i++)
        // {
        //     if (RecordModel.coreList[i].timetv >= TitleView.startTime && RecordModel.coreList[i].timetv <= TitleView.endTime)
        //     {
        //          AddCoreItem(i); 
        //     }           
        // }
    }

    override public void DoClickExport()
    {

    }       

    public void ClearCoreItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    
}
