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

        queryBtn = bg.Find("btnGroup/queryBtn").GetComponent<Button>();  
        EventTriggerListener.Get(queryBtn.gameObject).onClick = onClickQuery;

        beginDateText = bg.Find("btnGroup/InputField").GetComponent<InputField>();
        endDateText = bg.Find("btnGroup/InputField2").GetComponent<InputField>();

        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        onClickQuery(queryBtn.gameObject);
    }

    public void ClearCoreItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    private void onClickQuery(GameObject go)
    {
        ClearCoreItem();
        for (int i = 0; i < RecordModel.Instance.coreList.Count; i++)
        {
            AddCoreItem(i);
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
}
