using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class RechargeView : View
{
    private static RechargeView ins = null;

    private Button chaxunBtn;
    private Button chongzhiBtn;

    private Text zhanghaoText;
    private Text shuliangText;

    private Text zhanghaoData;
    private Text idData;
    private Text zhuanshiData;
    private Text chaopiaoData;
    private Text vipData;
    private Text dengluData;
    private Text lixianData;

    public static RechargeView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new RechargeView();
            }
            return ins;
        }
    }

    private RechargeView()
    {
        Logger.Log("RechargeView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/RechargeView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");
        chaxunBtn = bg.Find("chaxun/cha").GetComponent<Button>();  
        chaxunBtn.onClick.AddListener(onClickCha); 
        zhanghaoText = bg.Find("chaxun/shuru/Text").GetComponent<Text>();

        chongzhiBtn = bg.Find("chong/chongzhi").GetComponent<Button>();
        chongzhiBtn.onClick.AddListener(onClickChong);      
        shuliangText = bg.Find("chong/num/Text").GetComponent<Text>();
      
        zhanghaoData = bg.Find("UserInfoView/data/zhanghao").GetComponent<Text>(); 
        idData = bg.Find("UserInfoView/data/id").GetComponent<Text>();
        zhuanshiData = bg.Find("UserInfoView/data/zuanshi").GetComponent<Text>();
        chaopiaoData = bg.Find("UserInfoView/data/chaopiao").GetComponent<Text>();
        vipData = bg.Find("UserInfoView/data/vip").GetComponent<Text>();
        dengluData = bg.Find("UserInfoView/data/denglu").GetComponent<Text>();
        lixianData = bg.Find("UserInfoView/data/lixian").GetComponent<Text>();
    }

    override public void OnShow(params string[] args)
    {
        zhanghaoData.text = GlobalModel.queryUserData.account;
        idData.text = GlobalModel.queryUserData.accDbid.ToString();
        zhuanshiData.text = GlobalModel.queryUserData.diamond.ToString();
        chaopiaoData.text = GlobalModel.queryUserData.cash.ToString();
        vipData.text = GlobalModel.queryUserData.vipcard.ToString();
        dengluData.text = GlobalModel.queryUserData.logintv.ToString();
        lixianData.text = GlobalModel.queryUserData.offlinetv.ToString();
    }

    private void onClickCha()
    {
        Logger.Log("onClickCha ...........");

        if( string.IsNullOrEmpty(zhanghaoText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }

        GlobalCtl.MSG_CL2PHP_QUERYUSERINFO(zhanghaoText.text);
    }

    private void onClickChong()
    {
        if( string.IsNullOrEmpty(zhanghaoText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号不能为空");
            return;
        }

        if( string.IsNullOrEmpty(shuliangText.text) )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"数量不能为空");
            return;
        }

        GlobalCtl.MSG_CL2PHP_SENDMONEY(zhanghaoText.text,1,int.Parse(shuliangText.text));
    }
}
