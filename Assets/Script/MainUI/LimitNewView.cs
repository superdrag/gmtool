using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using Net;
using PPhp;
using PBase;

public class LimitNewView : View
{
    private static LimitNewView ins = null;

    private Button sendBtn;
    private Text sendBtnTxt;
    private Button closeBtn;
    private Text closeBtnTxt;
    private InputField timeText;
    private InputField reasonText;  
    private InputField accountText;

    public static LimitNewView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new LimitNewView();
            }
            return ins;
        }
    }

    private LimitNewView()
    {
        Logger.Log("LimitNewView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/LimitNewView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        sendBtn = bg.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickSend); 
 
        closeBtn = bg.Find("closeBtn").GetComponent<Button>();  
        closeBtn.onClick.AddListener(onClickClose);               

        accountText = bg.Find("acclist/InputField").GetComponent<InputField>();      
        timeText = bg.Find("time/InputField").GetComponent<InputField>();
        reasonText = bg.Find("reason/InputField").GetComponent<InputField>();
    }

    override public void OnShow(params object[] args)
    {        
        if ((int)args[0] == 1)  //新建
        {
            accountText.text = ""; 
            timeText.text = "7";
            reasonText.text = "作弊";
        }
        else if ((int)args[0] == 2) //编辑
        {
            accountText.text = args[1].ToString();
            timeText.text = "0";
            reasonText.text = args[2].ToString();
        }
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");

        if( String.IsNullOrEmpty(accountText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号为空");
            return;
        }

        int passDay = int.Parse(timeText.text);
        if( passDay < 0 )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"天数错误");
            return;
        }

        GlobalCtl.MSG_CL2PHP_GMCOMMAND( accountText.text, (int)PHP_COMMAMD.BLACKUSER, timeText.text,reasonText.text,LoginModel.Instance.Account );
    } 

    private void onClickClose()
    {
        UIMgr.HideUI(VIEWID.LimitNew);
        UIMgr.RefreshUI(VIEWID.Limit);
    }



}
