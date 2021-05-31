using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Net;
using PPhp;
using PBase;

//using Google.ProtoBuf.MessageExtensions;

public class GlobalCtl
{
    private static GlobalCtl ins = null;    

    public static GlobalCtl Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GlobalCtl();
            }
            return ins;
        }
    }

    public void MsgRegedit()
    {
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_SS2CL_ERRORCODE, MSG_SS2CL_ERRORCODE, new S2C_ErrorCode());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYUSERINFO, MSG_PHP2CL_QUERYUSERINFO,new S2C_GMQUERYUSERINFO());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_SENDMONEY, MSG_PHP2CL_SENDMONEY,new S2C_GMSendMoney());
    }

    public void MSG_SS2CL_ERRORCODE(MsgPack msg)
    {    
        S2C_ErrorCode _pb = msg.UnpackProtoBuf<S2C_ErrorCode>(new S2C_ErrorCode());
        Logger.Error("ErrorCode :",_pb.Errcode);

        //DialogViewSingle.Instance.ShowErrorCode((ERROR_CODE)_pb.Errcode);
    }
    //------------------------------------ HANDLE MSG

    public void MSG_PHP2CL_QUERYUSERINFO(MsgPack msg)
    {        
        S2C_GMQUERYUSERINFO _pb = msg.UnpackProtoBuf<S2C_GMQUERYUSERINFO>( new S2C_GMQUERYUSERINFO() );

        if(_pb.Ret != 0)
        {
            GlobalModel.alertInfoData = "找不到用户信息";
            UIMgr.ShowUI(VIEWID.ALERTINFO);
            return;
        }

        GlobalModel.queryUserData.account = _pb.Account;
        GlobalModel.queryUserData.accDbid = _pb.Accdbid;
        GlobalModel.queryUserData.logintv = _pb.Logintv;
        GlobalModel.queryUserData.offlinetv = _pb.Offlinetv;
        GlobalModel.queryUserData.cash = _pb.Cash;
        GlobalModel.queryUserData.diamond = _pb.Diamond;
        GlobalModel.queryUserData.vipcard = _pb.Vipcard;
        UIMgr.RefreshUI(VIEWID.Recharge);
    }

    public void MSG_PHP2CL_SENDMONEY(MsgPack msg)
    {        
        S2C_GMSendMoney _pb = msg.UnpackProtoBuf<S2C_GMSendMoney>( new S2C_GMSendMoney() );
        if( _pb.Ret != 0 )
        {
            GlobalModel.alertInfoData = "充值失败";
            UIMgr.ShowUI(VIEWID.ALERTINFO);
            return;
        }

        GlobalModel.alertInfoData = "充值成功";
        UIMgr.ShowUI(VIEWID.ALERTINFO);        
        Logger.Log("MSG_PHP2CL_SENDMONEY "+_pb.Account);
    }    


////////////////////////////////////////

    public static void MSG_CL2PHP_QUERYUSERINFO(string account)
    {
        C2S_GMQUERYUSERINFO pb = new C2S_GMQUERYUSERINFO();
        pb.Account = account;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYUSERINFO, pb);
    }

    public static void MSG_CL2PHP_SENDMONEY(string account, int type, int num)
    {
        C2S_GMSendMoney pb = new C2S_GMSendMoney();
        pb.Account = account;
        pb.Type = 1;
        pb.Num = num;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_SENDMONEY,pb);  
    }
}
