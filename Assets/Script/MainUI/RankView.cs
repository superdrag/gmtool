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

    public List<RankItem> PayItemsList = new List<RankItem>();

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

        Transform bg = viewRoot.Find("bg");

        Content = bg.Find("Scroll View/Viewport/Content");

        TitleNote = bg.Find("title");
    }

    override public void OnShow(params object[] args)
    {        
        
    }

    public void ClearItem()
    {
        PayItemsList.Clear();
        for (int i = 0; i < Content.childCount; i++)
        {
            Transform obj = Content.GetChild(i);
            GameObject.Destroy(obj.gameObject);
        }
    }

    override public void DoClickQuery()
    {
        itemNum = 0;
        ClearItem();
        GlobalCtl.MSG_CL2PHP_QUERYNORMALINFO("",(int)PHP_QUERY.RANKLIS,999);
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

    public void SetItem(S2C_GMPayRepair pb)
    {               
        for (int i = 0; i < PayItemsList.Count; i++)
        {
            RankItem item = PayItemsList[i];
            if (item.pbData.Payorder == pb.Payorder)
            {
                item.pbData.State = pb.Ret;
                item.Show();
                break;
            } 
        }
    }    
    
}
