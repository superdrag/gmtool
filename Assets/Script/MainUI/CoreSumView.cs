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
    public Transform coreSumTitle;
    

    public List<Text> infoList = new List<Text>();
    public List<Text> titleList = new List<Text>();

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
        coreSumTitle = bg.Find("title");

        for (int i = 0; i < coreSumItemBg.childCount; i++)
        {
            infoList.Add(coreSumItemBg.GetChild(i).GetComponent<Text>());
        }

        for (int i = 0; i < coreSumTitle.childCount; i++)
        {
            titleList.Add(coreSumTitle.GetChild(i).GetComponent<Text>());
        }
    }

    override public void OnShow(params object[] args)
    {        

    }

    private void ShowData()
    {
        List<double> list = RecordModel.coreSumList;        

        infoList[0].text = GFunc.Int2DateTime((int)list[0]).ToString(); 
        infoList[1].text = list[1].ToString(); //总注册
        infoList[2].text = GFunc.US2Cent(list[2]); //总流水
        infoList[3].text = list[3].ToString();  //ads
        infoList[4].text = GFunc.US2Cent(list[4]);  //arpu      

        infoList[5].text =( (float)list[5] / (RecordModel.coreList.Count-1) ).ToString("F2") + "%";                    
        infoList[6].text =( (float)list[6] / (RecordModel.coreList.Count-2) ).ToString("F2") + "%";                    
        infoList[7].text =( (float)list[7] / (RecordModel.coreList.Count-6) ).ToString("F2") + "%";                    
        infoList[8].text =( (float)list[8] / (RecordModel.coreList.Count-13) ).ToString("F2") + "%";                    
        infoList[9].text =( (float)list[9] / (RecordModel.coreList.Count-29) ).ToString("F2") + "%";                    

        infoList[10].text =( (float)list[10] / (RecordModel.coreList.Count-1) ).ToString("F2") + "%";                    
        infoList[11].text =( (float)list[11] / (RecordModel.coreList.Count-2) ).ToString("F2") + "%";                    
        infoList[12].text =( (float)list[12] / (RecordModel.coreList.Count-6) ).ToString("F2") + "%";                    
        infoList[13].text =( (float)list[13] / (RecordModel.coreList.Count-13) ).ToString("F2") + "%";                    
        infoList[14].text =( (float)list[14] / (RecordModel.coreList.Count-29) ).ToString("F2") + "%";                    

        //int day = 1;
        //for (int i = 0; i < list.Count; i++)
        //{
            // if (i >= 5 && i <= 14) //平局留存
            // {
            //     if (RecordModel.coreList.Count-day > 0)
            //     {
            //         infoList[i].text =( (float)list[i] / (RecordModel.coreList.Count-day) ).ToString("F2") + "%";                    
            //     }
            //     day++;
            // }

            // if (i >= 10 && i <= 14)//平局付费留存
            // {
            //     infoList[i].text =( (float)list[i] / (RecordModel.coreList.Count) ).ToString("F2") + "%";
            // }            
        //}
    }

    override public void DoClickQuery(int start, int end)
    {
        RecordModel.resetCoreSumData();        
        RecordModel.analyseAllCoreData(start,end,TitleView.country,TitleView.platform);
        //ClearCoreItem();
        //UIMgr.RefreshUI(VIEWID.CoreSumView);

        ShowData();

    }

    override public void DoClickExport()
    {
#if UNITY_STANDALONE
        ExcelHelper.ExportCoreSum();
#endif
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
