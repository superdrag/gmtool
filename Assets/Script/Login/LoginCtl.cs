using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Net;
using PBase;
using PClient;


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
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_LN2CL_GATEIPANDPORT, msg_ln2cl_gateipandport);
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_WD2CL_BACKROLEINITDATA, msg_wd2cl_backroleinitdata);
    }


    //------------------------------------ HANDLE MSG

    public void msg_ln2cl_gateipandport(MsgPack msg)
    {
        //S2C_Login _pb = S2C_Login.Parser.ParseFrom(msg.GetStream());
    
        S2C_Login _pb = msg.UnpackProtoBuf<S2C_Login>( new S2C_Login() );

        NetMgr.NetClose();

        GData.RoleId = _pb.Accdbid;
        GData.LoginGateIP = _pb.ServerIp;
        GData.LoginGatePort = _pb.Port;
        GData.LoginSign = _pb.Sign;
        GData.LoginGateTime = _pb.Time;
        NetMgr.NetConnect(_pb.ServerIp, _pb.Port, OnConnectGateCallBack);
    }

    public void OnConnectGateCallBack(int ret)
    {                
        if (ret == 0)
        {
            Logger.Log("On Connect Gate OK");

            C2S_GetUserInfo pb = new C2S_GetUserInfo();
            
            pb.Openid = GData.OpenId;
            pb.Accdbid = GData.RoleId;
            pb.Name = GData.NickName;
            pb.Sign = GData.LoginSign;
            pb.Time = GData.LoginGateTime;
            pb.Version = GData.ServerVer;
            NetMgr.SendMsg(MSGID.MSG_CL2GT_LOGINGATE, pb);

            //for (int i = 0; i < 10; i++)
            //{
            //    NetMgr.SendMsg(MSGID.MSG_CL2GT_SOCKETHIT);
            //    NetMgr.SendMsg((MSGID)11401);
            //}           

            //GetUserInfoC2S pb = new GetUserInfoC2S();
            //NetMgr.SendMsgProto<GetUserInfoC2S>(MSGID.MSG_CL2GT_LOGINGATE, pb);
        }
        else
        {
            Logger.Log("On Connect Gate Fail");
        }
    }

    public void msg_wd2cl_backroleinitdata(MsgPack msg)
    {
        S2C_GetUserInfo _pb = msg.UnpackProtoBuf<S2C_GetUserInfo>( new S2C_GetUserInfo() );
    
        Logger.Log("login success ok !!!!!! .....", _pb.UserName);

        UIMgr.HideUI(VIEWID.LOGIN);

        Logger.Log("SwitchSceneToHall..........");

        //HallCtl.SencePreLoad( () =>
        //        {            
        //            ScenceMgr.SwitchSence(SCENE_INDEX.HALL);
        //        }
        //    );        
    }


    // ------------------------------ SEND MSG

    public void start_connect_loginserver(string ip,int port)
    {
     
        NetMgr.NetConnect(ip, port, OnConnectCallBack);
    }

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
        C2S_Login pb = new C2S_Login();
        pb.Openid = GData.OpenId;
        pb.Unionid = GData.Unionid;
        pb.Name = GData.NickName;
        pb.Psw = GData.LoginPwd;
        pb.Version = GData.ServerVer;
        pb.ImageUrl = GData.HeadIcon;
        pb.Sex = 2;

        NetMgr.SendMsg(MSGID.MSG_CL2LN_LOGINACCOUNT, pb);
    }



}
