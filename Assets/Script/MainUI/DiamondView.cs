using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using Net;
using PPhp;
using PBase;
using LocalData;

public class DiamondView : View
{
    private static DiamondView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;
   
    public static DiamondView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new DiamondView();
            }
            return ins;
        }
    }

    private DiamondView()
    {
        Logger.Log("DiamondView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/DiamondView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        Content = bg.Find("Scroll View/Viewport/Content");
        //dataText = Content.Find("Text").GetComponent<Text>();      
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        //rect.sizeDelta = new Vector2(0, (float)RecordModel.Instance.coreList.Count * (float)73.6 );


    }

    override public void DoClickQuery()
    {
        SetDataText();
    }

    override public void DoClickExport()
    {

    }   

    public void AddItem(DiaData data)
    {               
        DiamondItem item = new DiamondItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(data);          
    }

    public void AddItemTitle()
    {               
        DiamondItem item = new DiamondItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.SetTitle();      
    }

    public void ClearAllItem()
    {
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }    

    public void SetDataText()
    {
        ClearAllItem();
        AddItemTitle();

        List<KeyValuePair<int,DiaData>> lst = new List<KeyValuePair<int,DiaData>>(RecordModel.useDiamondDict);
　　　　 lst.Sort(delegate(KeyValuePair<int,DiaData> s1, KeyValuePair<int,DiaData> s2)  
　　　　　　{
　　　　　　　　return s1.Key.CompareTo(s2.Key);
　　　　　　});        


        foreach (var item in lst)
        {
            AddItem(item.Value);
        }

        Logger.Log("SetDataTex " + RecordModel.useDiamondDict.Count);
              
    }

}
