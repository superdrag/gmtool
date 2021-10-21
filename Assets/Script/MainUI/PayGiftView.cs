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

    override public void DoClickQuery()
    {
        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Querytype = (int)PHP_QUERY.PAYGIFT;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);  
    }

    override public void DoClickExport()
    {

    }   

    public void AddItem(string data)
    {               
        PayGiftItem item = new PayGiftItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(data);          
    }

    public void AddItemTitle()
    {               
        PayGiftItem item = new PayGiftItem();
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

    public void SetDataText(S2C_GMQueryNormalInfo _pb)
    {
        ClearAllItem();

        AddItemTitle();
        foreach (var item in _pb.Mapdata)
        {
            AddItem(item.Value);
        }
//         List<KeyValuePair<int,QueryTaskData>> lst = new List<KeyValuePair<int,QueryTaskData>>(GlobalModel.taskDataDict);

// 　　　　 lst.Sort(delegate(KeyValuePair<int,QueryTaskData> s1, KeyValuePair<int,QueryTaskData> s2)  
// 　　　　　　{
// 　　　　　　　　return s1.Key.CompareTo(s2.Key);
// 　　　　　　});

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)_pb.Mapdata.Count * (float)73.6 );                

        //Logger.Log("SetDataTex sumacc " + _pb.Sumacc);             
    }

}
