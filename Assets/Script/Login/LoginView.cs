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
    private InputField ipInput;
    private InputField portInput;
    private InputField accountInput;

    private GameObject SeverBtmList;
    private GameObject SeverContent;

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

    override public void OnCreateGo(System.Action action)
    {        
        GameObject go = ResMgr.LoadRes<GameObject>("Assets/ResAB/Prefab/Login/LoginView.prefab");
    }

    private void StartConnetServer(string ip,short port)
    {
        NetMgr.NetClose();        
        NetMgr.NetConnect(ip,port,LoginCtl.Instance.OnConnectCallBack);
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
