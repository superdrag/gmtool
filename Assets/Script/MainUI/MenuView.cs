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

        Button chongzhiBtn = viewRoot.Find("chongzhi").GetComponent<Button>();  
        Button hexinBtn = viewRoot.Find("hexin").GetComponent<Button>();
        Button youjianBtn = viewRoot.Find("youjian").GetComponent<Button>();

        Button youjianbackBtn = viewRoot.Find("daiding1").GetComponent<Button>();
        Button daidingBtn2 = viewRoot.Find("daiding2").GetComponent<Button>();
        Button daidingBtn3 = viewRoot.Find("daiding3").GetComponent<Button>();

        EventTriggerListener.Get(chongzhiBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(hexinBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(youjianBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(youjianbackBtn.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(daidingBtn2.gameObject).onClick = OnBtnEvent;
        EventTriggerListener.Get(daidingBtn3.gameObject).onClick = OnBtnEvent;

        btnList.Add(hexinBtn);
        btnList.Add(chongzhiBtn);
        btnList.Add(youjianBtn);
        btnList.Add(youjianbackBtn);
        btnList.Add(daidingBtn2);
        btnList.Add(daidingBtn3);

        curIndex = 3;
    }

    override public void OnShow(params string[] args)
    {
        Logger.Log("OnShow.........this.curIndex "+this.curIndex);
        if( this.curIndex == 2 )
        {
            UIMgr.HideUI(VIEWID.BLANK);
            UIMgr.HideUI(VIEWID.Mail);
            UIMgr.HideUI(VIEWID.MailSend);
            UIMgr.ShowUI(VIEWID.Recharge);
        }
        else if( this.curIndex == 3 )
        {
            UIMgr.HideUI(VIEWID.BLANK);
            UIMgr.HideUI(VIEWID.Recharge);
            UIMgr.ShowUI(VIEWID.Mail);
        }        
        else
        {
            UIMgr.HideUI(VIEWID.Mail);
            UIMgr.HideUI(VIEWID.MailSend);
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
