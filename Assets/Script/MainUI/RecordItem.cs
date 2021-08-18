using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class RecordItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/RecordItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(int index)
    {
        string[] slist = RecordModel.Instance.operateList[index];

        infoList[0].text = slist[0];
        infoList[1].text = slist[2];
        infoList[2].text = slist[3];
        infoList[3].text = slist[4];
        infoList[4].text = slist[5];
        
    }

}
