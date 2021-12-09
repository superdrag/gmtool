using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

public class MenuView : View
{
    private static MenuView ins = null;

    //private List<Button> btnList = new List<Button>();

    //private List<VIEWID> switchViewList = new List<VIEWID>();

    private Dictionary<VIEWID,Button> btnViewDict = new Dictionary<VIEWID, Button>();

    //int curIndex;

    public static VIEWID curViewId;

    public static MenuView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new MenuView();
            }
            return ins;
        }
    }

    private MenuView()
    {
        Logger.Log("MenuView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/MenuView").transform;
        UIHelper.AddChild(UIMgr.UIMenu, viewRoot);  

        Button playerDataBtn = viewRoot.Find("playerdata").GetComponent<Button>();  
        Button hexinBtn = viewRoot.Find("hexin").GetComponent<Button>();
        Button hexinsumBtn = viewRoot.Find("hexinsum").GetComponent<Button>();
        Button youjianBtn = viewRoot.Find("youjian").GetComponent<Button>();

        Button paydataBtn = viewRoot.Find("paydata").GetComponent<Button>();
        Button limitBtn = viewRoot.Find("limit").GetComponent<Button>();
        Button gmaccBtn = viewRoot.Find("gmacc").GetComponent<Button>();
        Button recordBtn = viewRoot.Find("record").GetComponent<Button>();
        Button saveBtn = viewRoot.Find("save").GetComponent<Button>();
        Button funcBtn = viewRoot.Find("func").GetComponent<Button>();
        Button taskBtn = viewRoot.Find("task").GetComponent<Button>();
        Button paygiftBtn = viewRoot.Find("paygift").GetComponent<Button>();
        Button diamondBtn = viewRoot.Find("diamond").GetComponent<Button>();
        Button cardBtn = viewRoot.Find("card").GetComponent<Button>();
        Button vipBtn = viewRoot.Find("vipcard").GetComponent<Button>();
        Button guideBtn = viewRoot.Find("guide").GetComponent<Button>();

        btnViewDict[VIEWID.Mail] = youjianBtn;
        btnViewDict[VIEWID.CoreView] = hexinBtn;
        btnViewDict[VIEWID.CoreSumView] = hexinsumBtn;
        btnViewDict[VIEWID.Recharge] = playerDataBtn;
        btnViewDict[VIEWID.Limit] = limitBtn;
        btnViewDict[VIEWID.GMAcc] = gmaccBtn;
        btnViewDict[VIEWID.RecordView] = recordBtn;
        btnViewDict[VIEWID.SaveView] = saveBtn;
        btnViewDict[VIEWID.FuncView] = funcBtn;
        btnViewDict[VIEWID.TaskView] = taskBtn;
        btnViewDict[VIEWID.PayView] = paydataBtn;
        btnViewDict[VIEWID.DiamondView] = diamondBtn;
        btnViewDict[VIEWID.CardView] = cardBtn;
        btnViewDict[VIEWID.PayGiftView] = paygiftBtn;
        btnViewDict[VIEWID.VipView] = vipBtn;
        btnViewDict[VIEWID.GuideView] = guideBtn;

        foreach (var item in btnViewDict)
        {
            EventTriggerListener.Get(item.Value.gameObject).onClick = OnBtnEvent;
        }

        curViewId = (VIEWID.CoreView);

        if (GData.DebugMode == false)
        {
            funcBtn.gameObject.SetActive(false);
            cardBtn.gameObject.SetActive(false);
            //gmaccBtn.gameObject.SetActive(false);
        }        

        vipBtn.gameObject.SetActive(false);
        
    }

    override public void OnShow(params object[] args)
    {
        foreach (var item in btnViewDict)
        {
            UIMgr.HideUI(item.Key); 
        }

        UIMgr.ShowUI(curViewId);

        foreach (var item in btnViewDict)
        {
            Image img = item.Value.GetComponent<Image>();
            UIHelper.SetColor(img,"255/255/255/255");
        }
        UIHelper.SetColor(btnViewDict[curViewId].GetComponent<Image>(),"0/167/255/255");
    }

    private void OnBtnEvent(GameObject go)
    {
        Logger.Log("OnBtnEvent click go.........."+go.name);
        
        foreach (var item in btnViewDict)
        {
            if (item.Value.name == go.name)
            {
                curViewId = item.Key;
                Logger.Log("OnBtnEvent click curViewId.........."+curViewId);
                break;
            }
        }

        UIMgr.RefreshUI(VIEWID.MENU);           
    }
}
