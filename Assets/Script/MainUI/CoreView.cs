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

    public Transform Content;


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

        Transform bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)RecordModel.coreList.Count * (float)73.6 );
    }

    public void ClearCoreItem()
    {
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
        coreItem.Show(dayIndex);
    }

    override public void DoClickQuery()
    {
        ClearCoreItem();
        for (int i = 0; i < RecordModel.coreList.Count; i++)
        {
            if (RecordModel.coreList[i].timetv >= TitleView.startTime && RecordModel.coreList[i].timetv <= TitleView.endTime)
            {
                 AddCoreItem(i); 
            }           
        }
    }

    override public void DoClickExport()
    {

    }       
}
