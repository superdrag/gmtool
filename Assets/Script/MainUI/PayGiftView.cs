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

public class PayGiftView : View
{
    private static PayGiftView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;

    public PayGiftItem titleItem;
    public List<PayGiftItem> dataItemList = new List<PayGiftItem>();      
   
    public static PayGiftView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new PayGiftView();
            }
            return ins;
        }
    }

    private PayGiftView()
    {
        Logger.Log("PayGiftView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/PayGiftView").transform;
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

    override public void DoClickQuery(int start, int end)
    {
        ClearAllItem();

        AddItemTitle();

        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        List<KeyValuePair<int, List<int>>> lst = new List<KeyValuePair<int, List<int>>>(RecordModel.payIdDict);
        lst.Sort(delegate(KeyValuePair<int, List<int>> s1, KeyValuePair<int, List<int>> s2) 
        {
            return s1.Key.CompareTo(s2.Key);
        });


        for (int i = 0; i < lst.Count; i++)
        {
            AddItem(lst[i].Value);
        }

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)dataItemList.Count * (float)73.6 );                

        //GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.BLACKUSER,66);       
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

        GFunc.ExportExcel("商品消费",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();        
    }   

    public void AddItem(List<int> data)
    {               
        PayGiftItem item = new PayGiftItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(data); 

        dataItemList.Add(item);        
    }

    public void AddItemTitle()
    {               
        PayGiftItem item = new PayGiftItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.SetTitle();  

        titleItem = item;
    }

    public void ClearAllItem()
    {
        dataItemList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }    

    public void SetDataText(S2C_GMQueryNormalInfo _pb)
    {
        // ClearAllItem();

        // AddItemTitle();

        // Dictionary<string,int> _dict2 = new Dictionary<string,int>(); 
        // foreach (var item in _pb.Mapdata)
        // {            
        //     _dict2.Add( item.Value,Convert.ToInt32(item.Key));
        // }

        // List<KeyValuePair<string, int>> lst = new List<KeyValuePair<string, int>>(_dict2);
        // lst.Sort(delegate(KeyValuePair<string, int> s1, KeyValuePair<string, int> s2) 
        // {
        //     return s1.Value.CompareTo(s2.Value);
        // });

        // for (int i = 0; i < lst.Count; i++)
        // {
        //     AddItem(lst[i].Key);
        // }

        // RectTransform rect = Content.transform.GetComponent<RectTransform>();
        // rect.sizeDelta = new Vector2(0, (float)_pb.Mapdata.Count * (float)73.6 );                

        //Logger.Log("SetDataTex sumacc " + _pb.Sumacc);             
    }

}
