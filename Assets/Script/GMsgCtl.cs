using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Net;

using PBase;
using PPhp;


using System.IO;
//using Google.ProtoBuf.MessageExtensions;

public class GMsgCtl
{
    private static GMsgCtl ins = null;    

    public static GMsgCtl Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new GMsgCtl();
            }
            return ins;
        }
    }

    public void MsgRegedit()
    {
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_SS2CL_ERRORCODE, msg_ss2cl_errorcode, new S2C_ErrorCode());
    }
    
    public void msg_ss2cl_errorcode(MsgPack msg)
    {    
        S2C_ErrorCode _pb = msg.UnpackProtoBuf<S2C_ErrorCode>(new S2C_ErrorCode());
        Logger.Error("ErrorCode :",_pb.Errcode);

        //DialogViewSingle.Instance.ShowErrorCode((ERROR_CODE)_pb.Errcode);
    }
}
