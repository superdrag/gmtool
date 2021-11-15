using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class GMAccItem
{
    public PB_ParamStrDict rstData;
    public Transform view;
    public Button editBtn;
    public List<Text> infoList = new List<Text>();

    public int port;

    public string ip;

    public int index;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/GMAccItem").transform;
        
        Transform bg = view.Find("bg");
        Transform data = view.Find("bg/data");

        for (int i = 0; i < data.childCount; i++)
        {
            infoList.Add(data.GetChild(i).GetComponent<Text>());
        }
        //infoList.Add(view.Find("bg/data/status").GetComponent<Text>());

        editBtn = view.Find("bg/editBtn").GetComponent<Button>();
        editBtn.onClick.AddListener(onClickEdit);     
    }

    public void Show()
    {
        infoList[0].text = rstData.Dict["user"];
        infoList[1].text = rstData.Dict["nickName"];
        infoList[2].text = GlobalModel.rankNameDict[  Convert.ToInt32(rstData.Dict["permission"]) ];
        infoList[3].text = rstData.Dict["registTime"];
        infoList[4].text = rstData.Dict["creator"];    

        infoList[3].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[3].text) ).ToString(); 
    }

    private void onClickEdit()
    {    
        Logger.Log("editBtn click..........");
        UIMgr.ShowUI( VIEWID.GMAccNew, 2, rstData.Dict );
    }
 

}
