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

public class GuideView : View
{
    private static GuideView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;

    public GuideItem titleItem;
    public List<GuideItem> dataItemList = new List<GuideItem>(); 

   
    public static GuideView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GuideView();
            }
            return ins;
        }
    }

    private GuideView()
    {
        Logger.Log("GuideView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/GuideView").transform;
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

        List<QueryTaskData> showDataList = new List<QueryTaskData>();
        foreach (var item in GlobalModel.guideTaskCfg)
        {
            QueryTaskData _data = new QueryTaskData();
            _data.taskId = item.Value.taskId;
            _data.taskName = item.Value.name;
            _data.sortId = item.Value.sortId;
            showDataList.Add(_data);
        }
        showDataList.Sort( (x,y) => x.sortId.CompareTo(y.sortId));

        Logger.Warn("guide showDataList.Count  ",showDataList.Count,RecordModel.accDataDict.Count);
        
        int sumUser = 0;

        foreach (var item in RecordModel.accDataDict)
        {                
            if (item.Value.guideTaskList.Count > 0)
            {
//                Logger.Log("000000000000000 ",item.Value.guideTaskList.Count);
                if (item.Value.newReg == true)
                {       
                    sumUser++;
                    for (int i = 0; i < item.Value.guideTaskList.Count; i++)
                    {
                        int hasGuideId = item.Value.guideTaskList[i];
                        for (int j = 0; j < showDataList.Count; j++)
                        {
                            QueryTaskData sd = showDataList[j];
                            if (sd.taskId == hasGuideId)
                            {
                                sd.curNum++;

                                if( i == item.Value.guideTaskList.Count - 1 ) //停留
                                {
                                    //sd.lostNum++;
                                    if (GFunc.GetTimeStamp() - item.Value.lastLoginTime >= 7*24*3600 )
                                    {
                                        sd.lostNum++;
                                    }                                
                                }
                                else
                                {
                                    sd.finishNum++;  
                                }                                
                            }
                        } 
                    }   
                }                  
            }
        }

        for (int i = 0; i < showDataList.Count - 1; i++)
        {
           QueryTaskData sd = showDataList[i];
           sd.percent = sd.finishNum*1.0 / sd.curNum * 100.0;
        }

        for (int i = 0; i < showDataList.Count - 1; i++)
        {
           QueryTaskData sd = showDataList[i];
           QueryTaskData next_sd = showDataList[i+1];
           sd.percent2 = (sd.curNum - next_sd.curNum)*1.0 / sumUser * 100.0;
        }

        for (int i = 0; i < showDataList.Count; i++)
        {
           QueryTaskData sd = showDataList[i];
           sd.percent3 = sd.lostNum*1.0 / sumUser * 100.0;
        }        

        for (int i = 0; i < showDataList.Count; i++)
        {
            AddItem(showDataList[i]); 
        }

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)dataItemList.Count * (float)73.6 );    
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

        GFunc.ExportExcel("新手引导",titleData,itemDataList);

        titleData.Clear();
        itemDataList.Clear();
    }   

    public void AddItem(QueryTaskData taskData)
    {               
        GuideItem item = new GuideItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(taskData); 

        dataItemList.Add(item);          
    }

    public void AddItemTitle()
    {               
        GuideItem item = new GuideItem();
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
