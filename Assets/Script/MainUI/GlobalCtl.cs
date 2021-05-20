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
    }

    public void MSG_PHP2CL_SENDMONEY(MsgPack msg)
    {        
        S2C_GMSendMoney _pb = msg.UnpackProtoBuf<S2C_GMSendMoney>( new S2C_GMSendMoney() );
    }    



}
