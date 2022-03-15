using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class RankView : View
{
    private static RankView ins = null;

    public Transform Content;

    public Transform TitleNote;

    private Transform bg;

    public RankItem titleItem;

    public List<RankItem> RankItemsList = new List<RankItem>();

    public int itemNum = 0;

    public static RankView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new RankView();
            }
            return ins;
        }
    }

    private RankView()
    {
        Logger.Log("RankView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/RankView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        bg = viewRoot.Find("bg");
        Content = bg.Find("Scroll View/Viewport/Content");
    }

    override public void OnShow(params object[] args)
    {        
        
    }

    public void ClearItem()
    {
        RankItemsList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    override public void DoClickQuery()
    {
        //Logger.Log("11111111111111111111111");
        ClearItem();
        itemNum = 0;

        for (int i = 0; i < RecordModel.coreList.Count; i++)
        {
            if (RecordModel.coreList[i].timetv >= TitleView.startTime && RecordModel.coreList[i].timetv <= TitleView.endTime)
            {
                AddRankItem(i); 
            }           
        }


        // itemNum = 0;
        // ClearItem();
        // GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.RANKLIS,999);
    }

    override public void DoClickExport()
    {
        // for (int i = 0; i < TitleNote.childCount; i++)
        // {
        //     Text txt = TitleNote.GetChild(i).GetComponent<Text>();
        //     titleData.Add(txt.text.ToString());
        // }

        // for (int index = 0; index < PayItemsList.Count; index++)
        // {
        //     List<string> _date = new List<string>();
        //     for (int i = 0; i < PayItemsList[index].infoList.Count; i++)
        //     {
        //         if (PayItemsList[index].infoList[i])
        //         {
        //             _date.Add( PayItemsList[index].infoList[i].text.ToString());     
        //         }                
        //     }    
        //     itemDataList.Add(_date);
        // }

        // GFunc.ExportExcel("支付订单",titleData,itemDataList);

        // titleData.Clear();
        // itemDataList.Clear();        
    }  


    public void ShowTitle()
    {
        titleItem = new RankItem();
        titleItem.Create();
        titleItem.view.SetParent(bg);

        RectTransform rect = titleItem.view.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(648,-39);

        titleItem.view.transform.localScale = Vector3.one;
        titleItem.SetTittle();     
    }

    public void AddRankItem(int dayIndex)
    {
        CoreData dayData = RecordModel.coreList[dayIndex];
        foreach (var item in dayData.rankListDict)
        {
            RankItem itemUI = new RankItem();
            itemUI.Create();
            itemUI.view.SetParent(Content);
            itemUI.view.transform.localScale = Vector3.one;

            itemUI.view.GetComponent<RectTransform>().localPosition = new Vector3( itemUI.view.GetComponent<RectTransform>().localPosition.x, itemUI.view.GetComponent<RectTransform>().localPosition.y, 0 );

            itemUI.Show(item.Value);
            
            RankItemsList.Add(itemUI);

            itemNum += 1;
        }

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)itemNum * (float)120 );        
    }

    public void AddItem(S2C_GMQueryNormalInfo pb)
    {               
        // RankItem item = new RankItem();
        // item.Create();
        // item.view.SetParent(Content);
        // item.view.transform.localScale = Vector3.one;
        // item.pbData = pb;
        // item.Show();
        // PayItemsList.Add(item);

        // itemNum += 1;

        // RectTransform rect = Content.transform.GetComponent<RectTransform>();
        // rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );   


        		// 		pb.mapdata["uid"] = pb_rank.uid
				// pb.mapdata["members"] = pb_rank.members
				// pb.mapdata["createTime"] = pb_rank.createTime
				// pb.mapdata["maxnum"] = pb_rank.maxnum
				// pb.mapdata["rewardtime"] = pb_rank.rewardtime
				// pb.mapdata["rewardcount"] = pb_rank.rewardcount
				// pb.mapdata["addRobotTime"] = pb_rank.addRobotTime
				// pb.mapdata["addRobotInterval"] = pb_rank.addRobotInterval
				// pb.mapdata["endtime"] = pb_rank.endtime				

    }

   
    
}
