using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

public class LoginView : View
{
    private Button loginBtn;
    private Button cleanBtn;
    private GameObject SeverBtmList;
    private Transform SeverContent;

    public InputField zhanghaoIF;
    public InputField mimaIF;

    public Dropdown dropdown;

    public int curServer = 0;

    private static LoginView ins = null;

    public static LoginView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new LoginView();
            }
            return ins;
        }
    }

    private LoginView()
    {
        Logger.Log("LoginView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/LoginView").transform;
        UIHelper.AddChild(UIMgr.UIBG, viewRoot);

        // SeverContent = viewRoot.transform.Find("bg/serverList/Viewport/Content");

        // SeverContent = viewRoot.transform.Find("bg/serverList/Viewport/Content");

        zhanghaoIF = viewRoot.transform.Find("bg/account/InputField").GetComponent<InputField>();

        mimaIF = viewRoot.transform.Find("bg/passwd/InputField").GetComponent<InputField>();

        loginBtn = viewRoot.transform.Find("bg/Button").GetComponent<Button>();
        loginBtn.onClick.AddListener( OnBtnClick );

        cleanBtn = viewRoot.transform.Find("bg/BtnClean").GetComponent<Button>();
        cleanBtn.onClick.AddListener( OnBtnClickClean );        

        dropdown = viewRoot.transform.Find("bg/Dropdown").GetComponent<Dropdown>();
        dropdown.onValueChanged.AddListener( onDropDownHandle );
    }

    override public void OnShow(params object[] args)
    {
        zhanghaoIF.text = "liuhaichao";
        mimaIF.text = "123456";

        dropdown.ClearOptions();
        foreach (var item in AppConfig.ServerList)
        {           
            if (GData.DebugMode == item.debug)
            {
                Dropdown.OptionData od1 = new Dropdown.OptionData();
                od1.text = item.name;     
                dropdown.options.Add(od1);     
            } 
        }

        //rankText.text = GlobalModel.rankNameDict[curRank];

        // foreach (var item in AppConfig.ServerList)
        // {
        //     ServerItem serverItem = new ServerItem();
        //     serverItem.Create();
        //     serverItem.ip = item.ip;
        //     serverItem.port = item.port;
        //     serverItem.name.text = item.name;
        //     serverItem.index = item.index;
        //     serverItem.record_url = item.record_url;
        //     //serverItem
        //     UIHelper.AddChild(SeverContent,serverItem.view);
        // }
    }

    private void OnBtnClick()
    {            
        //ViewRoot.SetActive(false);     

        ServerInfo sinfo = AppConfig.ServerList[curServer];

        Logger.Log("BtnLogin click.........." + sinfo.ip);
        LoginModel.Instance.record_url = sinfo.record_url;
        LoginCtl.Instance.StartConnetServer(sinfo.ip, sinfo.port);   

        
        UIMgr.SetServTitle(sinfo.name);

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
 
    private void OnBtnClickClean()
    {
        ResMgr.CleanAllRecord();
    }

    private void onDropDownHandle(int index)
    {
        curServer = index;
    }
}
