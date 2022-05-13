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
    private Button copyBtn;

    public S2C_GMPayData pbData;

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

        copyBtn = bg.Find("btnCopy").GetComponent<Button>(); 
        EventTriggerListener.Get(copyBtn.gameObject).onClick = onClickCopy;        
    }

    public void Show()
    {
        infoList[0].text = pbData.Platfrom.ToString(); 
        infoList[1].text = pbData.Country.ToString(); 
        infoList[2].text = pbData.Payorder.ToString(); 
        infoList[3].text = pbData.Account.ToString();
        infoList[4].text = GFunc.ToShopName(pbData.Payid);
        //infoList[4].text = pbData.Payid.ToString();
        infoList[5].text = GFunc.US2Cent(pbData.Paynum);
        infoList[6].text = pbData.Paytime.ToString(); //time

        if (pbData.State == 0)
        {
            infoList[7].text = "成功"; 
        }
        else
        {
            infoList[7].text = "失败:"+pbData.State; 
        }
        
        if (pbData.State == 0)
        {
            repairBtn.gameObject.SetActive(false);
        }
        else
        {
            repairBtn.gameObject.SetActive(true);
        }
        infoList[6].text = GFunc.TimeStamp2DateTime(Convert.ToInt32(infoList[6].text) ).ToString(); 
    }

    private void onClickRepair(GameObject go)
    {
        C2S_GMPayRepair pb = new C2S_GMPayRepair();
        pb.Payid = pbData.Payid;
        pb.Account = pbData.Account;
        pb.Paycode = pbData.Paycode;
        pb.Payorder = pbData.Payorder;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMPAYREPAIR,pb);  
    }

    private void onClickCopy(GameObject go)
    {
        GUIUtility.systemCopyBuffer = infoList[3].text;
    }    

}
