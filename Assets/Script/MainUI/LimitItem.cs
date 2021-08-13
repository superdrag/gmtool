using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class LimitItem
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
        view = ResMgr.CreateGo("Prefab/LimitItem").transform;
        editBtn = view.Find("bg/editBtn").GetComponent<Button>();
        infoList.Add(view.Find("bg/data/account").GetComponent<Text>()); 
        infoList.Add(view.Find("bg/data/start").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/end").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/reason").GetComponent<Text>());
        infoList.Add(view.Find("bg/data/gmacc").GetComponent<Text>());
        //infoList.Add(view.Find("bg/data/status").GetComponent<Text>());

        editBtn.onClick.AddListener(OnBtnClick);     
    }

    public void Show()
    {
        infoList[0].text = rstData.Dict["account"];
        infoList[1].text = rstData.Dict["startTime"];
        infoList[2].text = rstData.Dict["endTime"];
        infoList[3].text = rstData.Dict["reason"];
        infoList[4].text = rstData.Dict["gmAccount"];
        
        infoList[1].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[1].text) ).ToString(); 
        infoList[2].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[2].text) ).ToString();
    }

    private void OnBtnClick()
    {    
        Logger.Log("editBtn click..........");
        UIMgr.ShowUI( VIEWID.LimitNew, 2, rstData.Dict["account"],rstData.Dict["reason"] );
    }
 

}
