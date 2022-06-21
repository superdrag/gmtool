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

public class AdsView : View
{
    private static AdsView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;

    public AdsItem titleItem;
    public List<AdsItem> dataItemList = new List<AdsItem>();    
   
    public static AdsView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new AdsView();
            }
            return ins;
        }
    }

    private AdsView()
    {
        Logger.Log("AdsView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/AdsView").transform;
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

    override public void OnHide()
    {
        GlobalModel.taskDataDict.Clear();
        ClearAllItem();        
    }


    override public void DoClickQuery(int start, int end)
    {

        GlobalModel.taskDataDict.Clear();
        ClearAllItem();

        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        //Logger.Log("111111111111111111111111 "+_pb.Data.Count);
        AddItemTitle();

        List<QueryTaskData> showDataList = new List<QueryTaskData>();

        for (int i = 0; i < 10; i++)
        {
            QueryTaskData _data = new QueryTaskData();
            _data.taskId = i+1;
            _data.taskId2 = _data.taskId;
            showDataList.Add(_data);
        }

        for (int i = 0; i < 9; i++)
        {
            QueryTaskData _data = new QueryTaskData();
            _data.taskId = (i + 1) * 10 + 1;
            _data.taskId2 = _data.taskId + 9;
            showDataList.Add(_data);
        }

        QueryTaskData _datam = new QueryTaskData();
        _datam.taskId = 101;
        _datam.taskId2 = 9999999;
        showDataList.Add(_datam);

        showDataList.Sort( (x,y) => x.taskId.CompareTo(y.taskId));

        Logger.Warn("vip showDataList.Count  ",showDataList.Count,RecordModel.accDataDict.Count);
        
        //for (int i = 0; i < showDataList.Count -1; i++)
        //{
        //    showDataList[i].taskId2 = showDataList[i+1].taskId;
        //}

        int sumUser = 0;
        foreach (var item in RecordModel.accDataDict)
        {           
            int _ads = item.Value.adsNum;            
            if (_ads > 0)
            {
                //Logger.Log("000000000000000",hasTask);
                if (item.Value.newReg == true)
                {       
                    for (int i = 0; i < showDataList.Count; i++)
                    {
                        QueryTaskData sd = showDataList[i];                     
                        if (_ads >= sd.taskId && _ads <= sd.taskId2)
                        {
                            sd.curNum += 1;
                        }
                    }
                }                  
            }
        }    

        for (int i = 0; i < showDataList.Count; i++)
        {
            AddItem(showDataList[i]); 
        }

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)dataItemList.Count * (float)73.6 );                

        //Logger.Log("SetDataTex sumacc " + _pb.Sumacc);
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

        GFunc.ExportExcel("广告数据",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();
    }   

    public void AddItem(QueryTaskData taskData)
    {               
        AdsItem item = new AdsItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(taskData); 

        dataItemList.Add(item);
    }

    public void AddItemTitle()
    {               
        AdsItem item = new AdsItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.SetTitle(); 

        titleItem = item; 
        dataItemList.Add(item);    
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

}
