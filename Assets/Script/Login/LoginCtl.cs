using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Net;
using PPhp;


//using Google.ProtoBuf.MessageExtensions;

public class LoginCtl
{
    private static LoginCtl ins = null;    

    public static LoginCtl Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new LoginCtl();
            }
            return ins;
        }
    }

    public void MsgRegedit()
    {
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMLOGINACCOUNT, MSG_PHP2CL_GMLOGINACCOUNT,new S2C_GMLogin());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_GT2CL_SOCKETHIT, MSG_GT2CL_SOCKETHIT);
    }


    //------------------------------------ HANDLE MSG

    public void MSG_GT2CL_SOCKETHIT(MsgPack msg)
    {

    }

    public void MSG_PHP2CL_GMLOGINACCOUNT(MsgPack msg)
    {
        S2C_GMLogin _pb = msg.UnpackProtoBuf<S2C_GMLogin>( new S2C_GMLogin() );

        if( _pb.Ret == (int)ERROR_CODE.ERROR_LOGIN_VERSION )
        {
            //Logger.Error("account or passwd fail! " + _pb.Account);
            UIMgr.ShowUI(VIEWID.ALERTINFO,"版本错误");
            return;
        }

        if( _pb.Ret == (int)ERROR_CODE.ERROR_LOGIN_NOTACCOUT )
        {
            //Logger.Error("account or passwd fail! " + _pb.Account);
            UIMgr.ShowUI(VIEWID.ALERTINFO,"账号或密码错误");
            return;
        }

        if( _pb.Ret != 0)
        {
            //Logger.Error("account or passwd fail! " + _pb.Account);
            UIMgr.ShowUI(VIEWID.ALERTINFO,"登录错误码：" +  _pb.Ret);
            return;
        }       

        LoginModel.Instance.Account = _pb.Account;
        LoginModel.Instance.Permission = _pb.Permission;

        Logger.Log("login info ",LoginModel.Instance.Account,LoginModel.Instance.Permission);

        ResMgr.Instance.StartAppDownload(OnDownloadFinish);

        Timer.Instance.AddTimer(null,0,10f,0, (tick)=>
            {                    
                 NetMgr.SendMsg(MSGID.MSG_CL2GT_SOCKETHIT);
            }  
            );  
    }

    private void OnDownloadFinish(int ret)
    {
        if (RecordModel.loadFile() == false)
        {
            return;
        }
        UIMgr.HideUI(VIEWID.LOGIN);
        UIMgr.ShowUI(VIEWID.MENU);
        UIMgr.ShowUI(VIEWID.TITLE);
    }

    public void StartConnetServer(string ip,int port)
    {
        NetMgr.NetClose();        
        NetMgr.NetConnect(ip,port,OnConnectCallBack);
    }
    // ------------------------------ SEND MSG

    public void OnConnectCallBack(int ret)
    {
        Logger.Log("OnConnectCallBack...............");
        if (ret == 0)
        {
            Logger.Log("connect login OK ");
            send_msg_loginaccount(LoginView.Instance.zhanghaoIF.text,LoginView.Instance.mimaIF.text);
        }
        else
        {
            NetMgr.NetClose();
            Logger.Error("connect login fail ret", ret);
            UIMgr.ShowUI(VIEWID.ALERTINFO,"连接服务器超时");
        }
    }

    private void send_msg_loginaccount(string account, string passwd)
    {
        Logger.Log("send_msg_loginaccount ...........", GData.OpenId, GData.Unionid);
        C2S_GMLogin pb = new C2S_GMLogin();
        pb.Account = account;
        pb.Passwd = passwd;
        pb.Version = "0.1.2021-12-10";
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMLOGINACCOUNT, pb);
    }



}
