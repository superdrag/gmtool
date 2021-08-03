using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class PayItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    private Button repairBtn;

    public string payCode;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/PayItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }

        repairBtn = bg.Find("Button").GetComponent<Button>(); 
        EventTriggerListener.Get(repairBtn.gameObject).onClick = onClickRepair;
    }

    public void Show(S2C_GMPayData pb)
    {
        payCode = pb.Paycode;

        infoList[0].text = pb.Platfrom.ToString(); 
        infoList[1].text = pb.Country.ToString(); 
        infoList[2].text = pb.Orderid.ToString(); 
        infoList[3].text = pb.Account.ToString();
        infoList[4].text = pb.Payid.ToString(); 
        infoList[5].text = pb.Paynum.ToString(); 
        infoList[6].text = pb.Paytime.ToString(); 
        infoList[7].text = pb.State.ToString(); 

        if ( pb.State == 0)
        {
            repairBtn.gameObject.SetActive(false);
        }
        else
        {
            repairBtn.gameObject.SetActive(true);
        }

    }

    private void onClickRepair(GameObject go)
    {
        // C2S_GMPayRepair pb = new C2S_GMPayRepair();
        // pb.Account = account;
        // NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMPAYDATA,pb);  
    }

}
