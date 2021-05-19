using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Net;
using PBase;
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
    }


    //------------------------------------ HANDLE MSG

    public void MSG_PHP2CL_GMLOGINACCOUNT(MsgPack msg)
    {
        //S2C_Login _pb = S2C_Login.Parser.ParseFrom(msg.GetStream());
    
        S2C_GMLogin _pb = msg.UnpackProtoBuf<S2C_GMLogin>( new S2C_GMLogin() );

        if( _pb.Ret != 0 )
        {
            Logger.Error("account or passwd fail! " + _pb.Acount);
            return;
        }
        
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
            send_msg_loginaccount();
        }
        else
        {
            NetMgr.NetClose();
            Logger.Error("connect login fail ret", ret);
        }
    }

    private void send_msg_loginaccount()
    {
        Logger.Log("send_msg_loginaccount ...........", GData.OpenId, GData.Unionid);
        C2S_GMLogin pb = new C2S_GMLogin();
        pb.Acount = "admin";
        pb.Passwd = "123456";
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMLOGINACCOUNT, pb);
    }



}
