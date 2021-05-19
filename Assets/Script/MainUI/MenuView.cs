using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

public class MenuView : View
{
    private Button loginBtn;
    private GameObject SeverBtmList;
    private Transform SeverContent;

    private static MenuView ins = null;

    private Button chongzhiBtn;
    private Button hexinBtn;
    private Button youjianBtn;

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
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        chongzhiBtn = viewRoot.Find("chongzhi").GetComponent<Button>();  
        hexinBtn = viewRoot.Find("hexin").GetComponent<Button>();
        youjianBtn = viewRoot.Find("youjian").GetComponent<Button>();

        chongzhiBtn.onClick.AddListener(OnBtnClick);
        //hexinBtn.onClick.AddListener(OnBtnClick);
        //youjianBtn.onClick.AddListener(OnBtnClick);

        curIndex = 1;
    }

    override public void OnShow()
    {
        if( this.curIndex == 1 )
        {
            UIMgr.ShowUI(VIEWID.Recharge);
        }
    }

    private void OnBtnClick()
    {    
        Logger.Log("BtnLogin click..........");
        //ViewRoot.SetActive(false);     

        // if(GData.ReleaseMode == true)
        // {
        //     NotifyObserver(NOTICE_ID.LOGIN_VIEW_GUEST,"39.100.205.143",9101,"qpjob");
        // }
        // else 
        // {
        //     if(ipInput.text == "") ipInput.text = "192.168.0.189";
        //     if(portInput.text == "") portInput.text = "9101";
        //     if(accountInput.text == "") accountInput.text = "unityClient";

        //     NotifyObserver(NOTICE_ID.LOGIN_VIEW_GUEST,ipInput.text,portInput.text,accountInput.text);
        // }
    }
 

}
