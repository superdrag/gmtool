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

public class VipView : View
{
    private static VipView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;

    public VipItem titleItem;
    public List<VipItem> dataItemList = new List<VipItem>();    
   
    public static VipView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new VipView();
            }
            return ins;
        }
    }

    private VipView()
    {
        Logger.Log("VipView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/VipView").transform;
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

        GlobalModel.taskDataDict.Clear();
        ClearAllItem();

        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);

        //Logger.Log("111111111111111111111111 "+_pb.Data.Count);
        AddItemTitle();

        // List<KeyValuePair<int,TaskCfg>> lst = new List<KeyValuePair<int,TaskCfg>>(GlobalModel.mainTaskCfg);

        // lst.Sort(delegate(KeyValuePair<int,TaskCfg> s1, KeyValuePair<int,TaskCfg> s2)  
        // {
        //         return s1.Key.CompareTo(s2.Key);
        // }
        // );

        List<QueryTaskData> showDataList = new List<QueryTaskData>();

        foreach (var item in GlobalModel.vipCfg)
        {
            QueryTaskData _data = new QueryTaskData();
            _data.taskId = item.Key;
            showDataList.Add(_data);
        }
        showDataList.Sort( (x,y) => x.taskId.CompareTo(y.taskId));

        Logger.Warn("vip showDataList.Count  ",showDataList.Count,RecordModel.accDataDict.Count);
        
        for (int i = 0; i < showDataList.Count -1; i++)
        {
            showDataList[i].taskId2 = showDataList[i+1].taskId;
        }

        int sumUser = 0;
        foreach (var item in RecordModel.accDataDict)
        {           
            int hasVip = item.Value.vipcard;            
            if (hasVip > 0)
            {
                //Logger.Log("000000000000000",hasTask);
                if (item.Value.newReg == true)
                {       
                    sumUser++;   
                    //Logger.Log("11111111111111111111111111 "+item.Key);
                    for (int i = 0; i < showDataList.Count-1; i++)
                    {
                        QueryTaskData sd = showDataList[i];
                        QueryTaskData next_sd = showDataList[i+1];
                        if (hasVip >= sd.taskId && hasVip <= next_sd.taskId)
                        {
                            //Logger.Log("222222222222222222222222222222 "+sd.taskId);
                            sd.curNum++;
                            if (GFunc.GetTimeStamp() - item.Value.lastLoginTime >= 7*24*3600 )
                            {
                                sd.lostNum++;
                            }                             
                        }
                    }
                }                  
            }
        }

        for (int i = 0; i < showDataList.Count; i++)
        {
           QueryTaskData sd = showDataList[i];
           sd.percent = sd.lostNum*1.0 / sumUser * 100.0;
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

        GFunc.ExportExcel("VIPCARD",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();
    }   

    public void AddItem(QueryTaskData taskData)
    {               
        VipItem item = new VipItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(taskData); 

        dataItemList.Add(item);
    }

    public void AddItemTitle()
    {               
        VipItem item = new VipItem();
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
