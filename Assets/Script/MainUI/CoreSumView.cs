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

        for (int i = 0; i < list.Count; i++)
        {
            if (i >= 5 && i <= 14)
            {
                infoList[i].text =( (float)list[i] / (RecordModel.coreList.Count-1) ).ToString("F2") + "%";
            }
        }
    }

    override public void DoClickQuery()
    {
        RecordModel.resetCoreSumData();        
        RecordModel.analyseAllCoreData(TitleView.country,TitleView.platform);
        //ClearCoreItem();
        //UIMgr.RefreshUI(VIEWID.CoreSumView);

        ShowData();

    }

    override public void DoClickExport()
    {
        ExcelHelper.ExportCoreSum();
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
