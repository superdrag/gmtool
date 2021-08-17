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
using pbc = global::Google.Protobuf.Collections;

public class GMAccNewView : View
{
    private static GMAccNewView ins = null;

    private Button sendBtn;
    private Button closeBtn;
    private Button delBtn;
    private InputField accountText;
    private InputField passwdText;  
    private InputField nameText;
    private Dropdown rankChoose;
    private Text rankText;
    private int curRank;

    

    public static GMAccNewView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GMAccNewView();
            }
            return ins;
        }
    }

    private GMAccNewView()
    {
        Logger.Log("GMAccNewView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/GMAccNewView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        Transform btns = viewRoot.Find("bg/btns");

        sendBtn = btns.Find("sendBtn").GetComponent<Button>();  
        sendBtn.onClick.AddListener(onClickSend); 

        closeBtn = btns.Find("closeBtn").GetComponent<Button>();  
        closeBtn.onClick.AddListener(onClickClose);    

        delBtn = btns.Find("delBtn").GetComponent<Button>();  
        delBtn.onClick.AddListener(onClickDel);                             

        accountText = bg.Find("account/InputField").GetComponent<InputField>();      
        passwdText = bg.Find("passwd/InputField").GetComponent<InputField>();
        nameText = bg.Find("name/InputField").GetComponent<InputField>();

        rankChoose = bg.Find("rank/Dropdown").GetComponent<Dropdown>();
        rankText = bg.Find("rank/Dropdown/Label").GetComponent<Text>();
        rankChoose.onValueChanged.AddListener( onDropDownHandle );
        
    }

    override public void OnShow(params object[] args)
    {        
        if ((int)args[0] == 1)
        {
            accountText.text = ""; 
            passwdText.text = "";
            nameText.text = "";
            curRank = 1;
            //rankText.text = rankNameDict[curRank];
        }
        else if ((int)args[0] == 2)
        {            
            // for (int i = 0; i < args.Length; i++)
            // {
            //     Debug.Log("1111111111 "+args[i].ToString());
            // }
            pbc::MapField<string, string> data = (pbc::MapField<string, string>)(args[1]);
            accountText.text = data["user"];
            nameText.text = data["nickName"];
            curRank = Convert.ToInt32(data["permission"]);            
            //rankText.text = rankNameDict[curRank];
        }

        rankChoose.ClearOptions();
        Dropdown.OptionData od1 = new Dropdown.OptionData();
        od1.text = GlobalModel.rankNameDict[1];
        Dropdown.OptionData od2 = new Dropdown.OptionData();
        od2.text =  GlobalModel.rankNameDict[2];
        Dropdown.OptionData od3 = new Dropdown.OptionData();
        od3.text =  GlobalModel.rankNameDict[9];  

        rankChoose.options.Add(od1);      
        rankChoose.options.Add(od2);
        rankChoose.options.Add(od3);

        rankText.text = GlobalModel.rankNameDict[curRank];
    }

    private void onClickSend()
    {
        Logger.Log("onClickSend ...........");

        if( String.IsNullOrEmpty(accountText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号为空");
            return;
        }

        if( String.IsNullOrEmpty(passwdText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"密码错误");
            return;
        }        

        C2S_GMAccountMgr pb = new C2S_GMAccountMgr();
        pb.Type = (int)MOD_TYPE.ADD;
        pb.Account = accountText.text;
        pb.Passwd = passwdText.text;
        pb.Nickname = nameText.text;
        pb.Permission = curRank;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMACCOUNTMGR,pb);          
    } 

    private void onClickDel()
    {
        C2S_GMAccountMgr pb = new C2S_GMAccountMgr();
        pb.Type = (int)MOD_TYPE.DEL;
        pb.Account = accountText.text;
        pb.Nickname = nameText.text;
        pb.Permission = curRank;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMACCOUNTMGR,pb); 
        onClickClose();
    }    

    private void onClickClose()
    {
        UIMgr.HideUI(VIEWID.GMAccNew);
        UIMgr.RefreshUI(VIEWID.GMAcc);
    }

    private void onDropDownHandle(int index)
    {
        Debug.Log("onDropDownHandle "+index);
        if (index == 0)
        {
            curRank = 1;
        }
        else if (index == 1)
        {
            curRank = 2;
        }
        else if (index == 2)
        {
            curRank = 9;
        }                
    }

}
