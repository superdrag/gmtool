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
        //NetMgr.RegisterMsgHandler((int)MSGID.MSG_SS2CL_ERRORCODE, MSG_SS2CL_ERRORCODE, new S2C_ErrorCode());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYUSERINFO, MSG_PHP2CL_QUERYUSERINFO,new S2C_GMQUERYUSERINFO());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_SENDMONEY, MSG_PHP2CL_SENDMONEY,new S2C_GMSendMoney());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_SENDMAIL, MSG_PHP2CL_SENDMAIL,new S2C_GMSendMail());

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYALLMAIL, MSG_PHP2CL_QUERYALLMAIL,new S2C_GMQueryAllMail());

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_DELETEMAIL, MSG_PHP2CL_DELETEMAIL,new S2C_GMDeleteMail());
        

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMCOMMAND, MSG_PHP2CL_GMCOMMAND,new S2C_GMCommand());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMPAYDATA, MSG_PHP2CL_GMPAYDATA,new S2C_GMPayData());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMPAYREPAIR, MSG_PHP2CL_GMPAYREPAIR,new S2C_GMPayRepair());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYNORMALINFO, MSG_PHP2CL_QUERYNORMALINFO,new S2C_GMQueryNormalInfo());  
        
    }

    public void MSG_SS2CL_ERRORCODE(MsgPack msg)
    {    
        //S2C_ErrorCode _pb = msg.UnpackProtoBuf<S2C_ErrorCode>(new S2C_ErrorCode());
       // Logger.Error("ErrorCode :",_pb.Errcode);

        //DialogViewSingle.Instance.ShowErrorCode((ERROR_CODE)_pb.Errcode);
    }
    //------------------------------------ HANDLE MSG

    public void MSG_PHP2CL_QUERYUSERINFO(MsgPack msg)
    {        
        S2C_GMQUERYUSERINFO _pb = msg.UnpackProtoBuf<S2C_GMQUERYUSERINFO>( new S2C_GMQUERYUSERINFO() );

        if(_pb.Ret != 0)
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"找不到用户信息");
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
            UIMgr.ShowUI(VIEWID.ALERTINFO, "充值失败");
            return;
        }
        
        UIMgr.ShowUI(VIEWID.ALERTINFO,"充值成功");        
        Logger.Log("MSG_PHP2CL_SENDMONEY "+_pb.Account);
    }    


    public void MSG_PHP2CL_SENDMAIL(MsgPack msg)
    {        
        S2C_GMSendMail _pb = msg.UnpackProtoBuf<S2C_GMSendMail>( new S2C_GMSendMail() );
        if( _pb.Ret != 0 )
        {            
            UIMgr.ShowUI(VIEWID.ALERTINFO,"发送邮件失败");
            return;
        }

        UIMgr.ShowUI(VIEWID.ALERTINFO,"发送邮件成功数量:"+_pb.Finish);        
    } 

    public void MSG_PHP2CL_QUERYALLMAIL(MsgPack msg)
    {        
        S2C_GMQueryAllMail _pb = msg.UnpackProtoBuf<S2C_GMQueryAllMail>( new S2C_GMQueryAllMail() );

        MailView mailView = (MailView)UIMgr.GetUI(VIEWID.Mail) ;
        mailView.ClearMailItem();
        for (int i = 0; i < _pb.Maillist.Count; i++)
        {
            PB_MailItemEx mail =  _pb.Maillist[i];
            MailItem mailItem = new MailItem();
            mailItem.mailData = mail;
            mailItem.Create();

            mailView.AddMailItem( mailItem );
        }
    } 

    public void MSG_PHP2CL_DELETEMAIL(MsgPack msg)
    {
        S2C_GMDeleteMail _pb = msg.UnpackProtoBuf<S2C_GMDeleteMail>( new S2C_GMDeleteMail() );
        if (_pb.Ret == 0)
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"撤回邮件成功");
        } 
        else
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"撤回邮件失败");
        }
    }

    public void MSG_PHP2CL_GMCOMMAND(MsgPack msg)
    {
        S2C_GMCommand _pb = msg.UnpackProtoBuf<S2C_GMCommand>( new S2C_GMCommand() );
        if (_pb.Ret == 0)
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"执行成功"+ _pb.Acclist.Count+"个");
        } 
        else
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"执行失败");
            return;
        }

        if(_pb.Commandid ==(int)PHP_COMMAMD.BLACKUSER)
        {
            
        }
    }


    public void MSG_PHP2CL_QUERYNORMALINFO(MsgPack msg)
    {
        S2C_GMQueryNormalInfo _pb = msg.UnpackProtoBuf<S2C_GMQueryNormalInfo>( new S2C_GMQueryNormalInfo() );
        if (_pb.Ret == 0)
        {
            //UIMgr.ShowUI(VIEWID.ALERTINFO,"查询成功");
        } 
        else
        {
            //UIMgr.ShowUI(VIEWID.ALERTINFO,"查询失败");
            return;
        }

        if (_pb.Querytype == (int)PHP_QUERY.BLACKUSER)
        {
            LimitView view = (LimitView)UIMgr.GetUI(VIEWID.Limit) ;
            view.ClearItem();

            for (int i = 0; i < _pb.Result.Count; i++)
            {
                PB_ParamStrList rst =  _pb.Result[i];
                LimitItem item = new LimitItem();
                item.rstData = rst;
                item.Create();

                view.AddItem( item );
            }            
        }
    }

    public void MSG_PHP2CL_GMPAYDATA(MsgPack msg)
    {
        S2C_GMPayData _pb = msg.UnpackProtoBuf<S2C_GMPayData>( new S2C_GMPayData() );

        PayView payView = UIMgr.GetUI<PayView>(VIEWID.PayView);
        payView.AddItem( _pb );
    }
        

    public static void MSG_PHP2CL_GMPAYREPAIR(MsgPack msg)
    {
        S2C_GMPayRepair _pb = msg.UnpackProtoBuf<S2C_GMPayRepair>( new S2C_GMPayRepair() );        

        PayView payView = UIMgr.GetUI<PayView>(VIEWID.PayView);

        payView.SetItem(_pb);
    }


//////////////////////////////////////// 发送

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

    public static void MSG_CL2PHP_SENDMAIL(int type, string accList, string title, string content, string items, int passDay)
    {
        C2S_GMSendMail pb = new C2S_GMSendMail();
        pb.Mailtype = type;
        pb.Acclist = accList;
        PB_MailItem item = new PB_MailItem();
        item.Title = title;
        item.Content = content;
        item.Itemlist = items;
        item.Pasttime = passDay;
        pb.Maildata = item;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_SENDMAIL,pb);  
    }

    public static void MSG_CL2PHP_GMCOMMAND(string acclist, int commandId, params string[] paramlist)
    {
        C2S_GMCommand pb = new C2S_GMCommand();
        string[] slist = acclist.Split(',');
        for (int i = 0; i < slist.Length; i++)
        {
            pb.Acclist.Add(slist[i]);
        } 
        pb.Commandid = commandId;
        for (int i = 0; i < paramlist.Length; i++)
        {
            pb.Params.Add(paramlist[i]);
        } 
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMCOMMAND,pb);  
    }

    public static void MSG_CL2PHP_QUERYNORMALINFO(string account, int queryType, params int[] paramlist)
    {
        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = account;
        pb.Querytype = queryType;
        for (int i = 0; i < paramlist.Length; i++)
        {
            pb.Params.Add(paramlist[i]);
        } 
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);  
    }

    public static void MSG_CL2PHP_GMPAYDATA(string account)
    {
        C2S_GMPayData pb = new C2S_GMPayData();
        pb.Account = account;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMPAYDATA,pb);  
    }

    
}
