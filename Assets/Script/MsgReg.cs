using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Net;
using PBase;
using PClient;



public class MsgReg
{
    private static MsgReg ins = null;    

    public static MsgReg Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new MsgReg();
            }
            return ins;
        }
    }

    public void CreateMsgProto(MSGID msgid, out Google.Protobuf.IMessage pb)
    {
        switch(msgid)
        {
            // case MSGID.MSG_LG2CL_DDZ_DEALCARD:
            //     pb = new S2C_DDZ_DealCard();
            //     break; 
            // case MSGID.MSG_LG2CL_DDZ_JOINROOM:
            //     pb = new S2C_DDZ_JoinToRoom();
            //     break; 
            // case MSGID.MSG_LG2CL_DDZ_RECONN:
            //     pb = new S2C_DDZ_Reconnet();
            //     break; 
            default : /* 可选的 */
                pb = null;
                break; 
        }       
    }
    

}
