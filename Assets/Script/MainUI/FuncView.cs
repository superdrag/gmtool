using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class FuncView : View
{
    private static FuncView ins = null;

    private Button modTimeBtn;
    private Button queryTimeBtn;
    private InputField modTimeTxt;
    private InputField queryTimeTxt;

    private Button restartBtn;
    private Button shutdownBtn;
    private Button stopBtn;
    private Button upConifgBtn;

    private Button recordBtn;

    public static FuncView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new FuncView();
            }
            return ins;
        }
    }

    private FuncView()
    {
        Logger.Log("FuncView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/FuncView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        Transform modTime = viewRoot.Find("bg/mod_time");

        modTimeBtn = modTime.Find("Button").GetComponent<Button>();
        modTimeBtn.onClick.AddListener(onClickModTiime); 
        queryTimeBtn = modTime.Find("Button2").GetComponent<Button>();
        queryTimeBtn.onClick.AddListener(onClickQueryTiime); 
        modTimeTxt = modTime.Find("InputField").GetComponent<InputField>();
        queryTimeTxt = modTime.Find("InputField2").GetComponent<InputField>();

        restartBtn = bg.Find("restart/Button").GetComponent<Button>();
        restartBtn.onClick.AddListener(onClickRestart); 
        //shutDownBtn = bg.Find("restart/Button").GetComponent<Button>();
        upConifgBtn = bg.Find("update_config/Button").GetComponent<Button>();
        upConifgBtn.onClick.AddListener(onClickUpdateConfig); 

        shutdownBtn = bg.Find("shutdown/Button").GetComponent<Button>();
        shutdownBtn.onClick.AddListener(onClickShutDown); 

        stopBtn = bg.Find("stopserver/Button").GetComponent<Button>();
        stopBtn.onClick.AddListener(onClickStop); 


        recordBtn = bg.Find("record/Button").GetComponent<Button>();
        recordBtn.onClick.AddListener(onClickRecord); 
                
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);

    }

    override public void DoClickQuery()
    {

    }

    override public void DoClickExport()
    {

    }       

    private void onClickModTiime()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.MODTIME, modTimeTxt.text );      
    }

    private void onClickQueryTiime()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.QUERYTIME );     
        //LuaCall.GetMainTaskInfo();
    }    

    private void onClickUpdateConfig()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.UPCONFIG );      
    }

    private void onClickRestart()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.RESTART);      
    }     

    private void onClickShutDown()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.SHUTDOWN);      
    }     
      
    private void onClickStop()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.STOPSERVER);      
    }        

    private void onClickRecord()
    {
        GlobalCtl.MSG_CL2PHP_GMCOMMAND( "gm", (int)PHP_COMMAMD.RECORD);      
    }        


    public void onQueryServerTime(int timetv)
    {
        queryTimeTxt.text = GFunc.Int2DateStr(timetv);
    }  
}
