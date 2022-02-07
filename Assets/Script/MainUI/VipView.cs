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

    override public void DoClickQuery()
    {
        C2S_GMQueryTaskMain pb = new C2S_GMQueryTaskMain();
        pb.Type = 3;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYTASKMAIN,pb);  
    }

    override public void DoClickExport()
    {

    }   

    public void AddItem(QueryTaskData taskData)
    {               
        VipItem item = new VipItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(taskData);          
    }

    public void AddItemTitle()
    {               
        VipItem item = new VipItem();
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

    public void SetDataText(S2C_GMQueryTaskMain _pb)
    {
        GlobalModel.taskDataDict.Clear();
        ClearAllItem();

        foreach (var item in _pb.Data)
        {
            QueryTaskData data = new QueryTaskData();
            data.taskId = item.Value.Taskid;
            data.curNum = item.Value.Stop;
            data.lostNum = item.Value.Lost;
            //data.percent = (item.Value.Pass * 100).ToString("F2") + "%";
            if (data.curNum > 0)
            {
                double pect = Convert.ToDouble(_pb.Sumacc - data.curNum ) / _pb.Sumacc * 100 ;
                //Logger.Log("1111111111111 " +pect );
                data.percent = pect.ToString("F2") + "%";
            }
            else
            {
                data.percent = "100%";
            }    
    
            GlobalModel.taskDataDict.Add(data.taskId,data);
        }

        List<KeyValuePair<int,QueryTaskData>> lst = new List<KeyValuePair<int,QueryTaskData>>(GlobalModel.taskDataDict);

　　　　 lst.Sort(delegate(KeyValuePair<int,QueryTaskData> s1, KeyValuePair<int,QueryTaskData> s2)  
　　　　　　{
　　　　　　　　return s1.Key.CompareTo(s2.Key);
　　　　　　});

        Logger.Log("SetDataTex " + GlobalModel.taskDataDict.Count);

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(0, (float)GlobalModel.taskDataDict.Count * (float)73.6 );                

        //Logger.Log("SetDataTex sumacc " + _pb.Sumacc);

        AddItemTitle();
        foreach (var item in lst)
        {
            AddItem(item.Value);
        }

        // if (file == "Currency" )
        // {
        //     Currency cy = new Currency();
        //     //byte[] bytes = System.Text.Encoding.Default.GetBytes(s);
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(bytes);
        //     cy.MergeFrom(pbStream);
        //     //Output.Log("unpack pb <--- ",msgid, pb.ToString());
        //     Logger.Log("SetDataTex" + cy.ToString());
        //     dataText.text = cy.ToString();
        // }   
        // if (file == "OwnEquipInfo" )
        // {
        //     OwnEquipInfo cy = new OwnEquipInfo();
        //     //byte[] bytes = System.Text.Encoding.Default.GetBytes(s);
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(bytes);
        //     cy.MergeFrom(pbStream);
        //     //Output.Log("unpack pb <--- ",msgid, pb.ToString());
        //     Logger.Log("SetDataTex" + cy.ToString());
        //     dataText.text = cy.ToString();
        // }                
    }

}