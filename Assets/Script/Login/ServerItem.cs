using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

public class ServerItem
{
    public Transform view;
    public Button loginBtn;
    public Text name;

    public int port;

    public string ip;

    public int index;

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/Login/ServerItem").transform;
        loginBtn = view.Find("Button").GetComponent<Button>();
        name = view.Find("Button/Text").GetComponent<Text>(); 

        loginBtn.onClick.AddListener(OnBtnClick);     

        Debug.Log("loginBtn....."+loginBtn);
        Debug.Log("name....."+name);
    }

    public void Show(ServerInfo info)
    {
        ip = info.ip;
        port = info.port;
        name.text = info.name;
        index = info.index;        
    }

    private void OnBtnClick()
    {    
        Logger.Log("BtnLogin click..........");
        LoginCtl.Instance.StartConnetServer(this.ip, this.port);
    }
 

}
