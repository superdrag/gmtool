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

    private List<Button> btnList = new List<Button>();

    private List<VIEWID> switchViewList = new List<VIEWID>();

    int curIndex;

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

        Button chongzhiBtn = viewRoot.Find("chongzhi").GetComponent<Button>();  
        Button hexinBtn = viewRoot.Find("hexin").GetComponent<Button>();
        Button youjianBtn = viewRoot.Find("youjian").GetComponent<Button>();

        Button paydataBtn = viewRoot.Find("paydata").GetComponent<Button>();
        Button limitBtn = viewRoot.Find("limit").GetComponent<Button>();
        Button gmaccBtn = viewRoot.Find("gmacc").GetComponent<Button>();
        Button recordBtn = viewRoot.Find("record").GetComponent<Button>();
        Button saveBtn = viewRoot.Find("save").GetComponent<Button>();
        Button funcBtn = viewRoot.Find("func").GetComponent<Button>();

        EventTriggerListener.Get(chongzhiBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(hexinBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(youjianBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(paydataBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(limitBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(gmaccBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(recordBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(saveBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(funcBtn.gameObject).onClick = OnBtnEvent;

        btnList.Add(hexinBtn);
        btnList.Add(chongzhiBtn);
        btnList.Add(youjianBtn);
        btnList.Add(paydataBtn);
        btnList.Add(limitBtn);
        btnList.Add(gmaccBtn);
        btnList.Add(recordBtn);
        btnList.Add(saveBtn);
        btnList.Add(funcBtn);

        switchViewList.Add(VIEWID.BLANK);
        switchViewList.Add(VIEWID.Mail);
        switchViewList.Add(VIEWID.MailSend);
        switchViewList.Add(VIEWID.Recharge);
        switchViewList.Add(VIEWID.CoreView);
        switchViewList.Add(VIEWID.Limit);
        switchViewList.Add(VIEWID.LimitNew);
        switchViewList.Add(VIEWID.PayView);
        switchViewList.Add(VIEWID.GMAcc);
        switchViewList.Add(VIEWID.GMAccNew);
        switchViewList.Add(VIEWID.RecordView);
        switchViewList.Add(VIEWID.SaveView);
        switchViewList.Add(VIEWID.FuncView);

        curIndex = 1;
    }

    override public void OnShow(params object[] args)
    {
        Logger.Log("OnShow.........this.curIndex "+this.curIndex);

        for (int i = 0; i < switchViewList.Count; i++)
        {
             UIMgr.HideUI(switchViewList[i]); 
        }

        if( this.curIndex == 1 )
        {
            curViewId = VIEWID.CoreView;
        }        
        else if( this.curIndex == 2 )
        {
            curViewId = VIEWID.Recharge;
        }
        else if( this.curIndex == 3 )
        {
            curViewId = VIEWID.Mail;
        }    
        else if( this.curIndex == 4 )
        {
            curViewId = VIEWID.PayView;
        } 
        else if( this.curIndex == 5 )
        {
            curViewId = VIEWID.Limit;
        }         
        else if( this.curIndex == 6 )
        {
            curViewId = VIEWID.GMAcc;
        }     
        else if( this.curIndex == 7 )
        {
            curViewId = VIEWID.RecordView;
        }  
        else if( this.curIndex == 8)
        {
            curViewId = VIEWID.SaveView;
        }   
        else if( this.curIndex == 9)
        {
            curViewId = VIEWID.FuncView;
        }                                                     
        else
        {
            curViewId = VIEWID.BLANK;
        }

        UIMgr.ShowUI(curViewId);

        foreach (var item in btnList)
        {
            Image img = item.GetComponent<Image>();
            UIHelper.SetColor(img,"255/255/255/255");
        }
        UIHelper.SetColor(btnList[this.curIndex-1].GetComponent<Image>(),"0/167/255/255");

    }

    private void OnBtnEvent(GameObject go)
    {
        Logger.Log("OnBtnEvent click go.........."+go.name);
        
        for (int i = 0; i < btnList.Count; i++)
        {
            if( btnList[i].name == go.name )
            {
                curIndex = i + 1;
                Logger.Log("OnBtnEvent click index.........."+curIndex);
                break;
            }
        }

        UIMgr.RefreshUI(VIEWID.MENU);           
    }

 

}
