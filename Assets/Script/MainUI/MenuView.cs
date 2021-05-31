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

    private Button chongzhiBtn;
    private Button hexinBtn;
    private Button youjianBtn;

    private Button daidingBtn1;
    private Button daidingBtn2;
    private Button daidingBtn3;

    private List<Button> btnList = new List<Button>();

    int curIndex;

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

        chongzhiBtn = viewRoot.Find("chongzhi").GetComponent<Button>();  
        hexinBtn = viewRoot.Find("hexin").GetComponent<Button>();
        youjianBtn = viewRoot.Find("youjian").GetComponent<Button>();

        daidingBtn1 = viewRoot.Find("daiding1").GetComponent<Button>();
        daidingBtn2 = viewRoot.Find("daiding2").GetComponent<Button>();
        daidingBtn3 = viewRoot.Find("daiding3").GetComponent<Button>();

        EventTriggerListener.Get(chongzhiBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(hexinBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(youjianBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(daidingBtn1.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(daidingBtn2.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(daidingBtn3.gameObject).onClick = OnBtnEvent;

        btnList.Add(chongzhiBtn);
        btnList.Add(hexinBtn);
        btnList.Add(youjianBtn);
        btnList.Add(daidingBtn1);
        btnList.Add(daidingBtn2);
        btnList.Add(daidingBtn3);

        curIndex = 1;
    }

    override public void OnShow()
    {
        if( this.curIndex == 1 )
        {
            UIMgr.HideUI(VIEWID.BLANK);
            //UIMgr.HideUI(VIEWID.Mail);
            UIMgr.ShowUI(VIEWID.Recharge);
        }
        // if( this.curIndex == 2 )
        // {
        //     UIMgr.HideUI(VIEWID.BLANK);
        //     UIMgr.HideUI(VIEWID.Recharge);
        //     //UIMgr.ShowUI(VIEWID.Mail);
        // }        
        else
        {
            //UIMgr.HideUI(VIEWID.Mail);
            UIMgr.HideUI(VIEWID.Recharge);
            UIMgr.ShowUI(VIEWID.BLANK);
        }

        foreach (var item in btnList)
        {
            Image img = item.GetComponent<Image>();
            UIHelper.SetColor(img,"255/255/255/255");
        }
        UIHelper.SetColor(btnList[this.curIndex-1].GetComponent<Image>(),"0/167/255/255");

    }

    private void OnBtnEvent(GameObject go)
    {
        Logger.Log("OnBtnEvent click.........."+go.name);
        
        if( go.name == "chongzhi" )
        {
            curIndex = 1;
        }
        else if( go.name == "youjian" )
        {
            curIndex = 2;                
        }        
        else if( go.name == "hexin" )
        {
            curIndex = 3;
        }
        else if( go.name == "daiding1" )
        {
            curIndex = 4;   
        }
        else if( go.name == "daiding2" )
        {
            curIndex = 5; 
        }
        else if( go.name == "daiding3" )
        {
            curIndex = 6; 
        }   
        UIMgr.RefreshUI(VIEWID.MENU);           
    }

 

}
