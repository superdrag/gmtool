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

public class TaskView : View
{
    private static TaskView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private Text dataText;
    public Transform Content;
   
    public static TaskView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new TaskView();
            }
            return ins;
        }
    }

    private TaskView()
    {
        Logger.Log("TaskView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/TaskView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        Content = bg.Find("Scroll View/Viewport/Content");
        dataText = Content.Find("Text").GetComponent<Text>();      
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
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYTASKMAIN,pb);  
    }

    override public void DoClickExport()
    {

    }   

    public void AddItem(QueryTaskData taskData)
    {               
        TaskItem item = new TaskItem();
        item.Create();
        item.view.SetParent(Content);
        item.view.transform.localScale = Vector3.one;
        item.Show(taskData);
        // RectTransform rect = Content.transform.GetComponent<RectTransform>();
        // rect.sizeDelta = new Vector2(0, (float)itemNum * (float)73.6 );            
    }

    public void SetDataText(Dictionary<int,int> dict)
    {
        Logger.Log("SetDataTex " + dict.Count);

        Logger.Log("SetDataTex22 " + dict[10002]);

        int index = 1;
        foreach (var item in dict)
        {
            QueryTaskData data = new QueryTaskData();
            data.taskId = item.Key;
            data.curNum = item.Value;
            data.lostNum = index;
            data.percent = "22%";
            GlobalModel.taskDataDict.Add(data.taskId,data);
            index ++;
        }

        foreach (var item in GlobalModel.taskDataDict)
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
