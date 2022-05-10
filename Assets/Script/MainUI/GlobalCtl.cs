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

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_SS2CL_RELOGINOFFLINE, MSG_SS2CL_RELOGINOFFLINE,null);

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMACCOUNTMGR, MSG_PHP2CL_GMACCOUNTMGR,new S2C_GMAccountMgr());

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYUSERINFO, MSG_PHP2CL_QUERYUSERINFO,new S2C_GMQUERYUSERINFO());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_SENDMONEY, MSG_PHP2CL_SENDMONEY,new S2C_GMSendMoney());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_SENDMAIL, MSG_PHP2CL_SENDMAIL,new S2C_GMSendMail());

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYALLMAIL, MSG_PHP2CL_QUERYALLMAIL,new S2C_GMQueryAllMail());

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_DELETEMAIL, MSG_PHP2CL_DELETEMAIL,new S2C_GMDeleteMail());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_MODMAIL, MSG_PHP2CL_MODMAIL,new S2C_GMModMail());
        

        

        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMCOMMAND, MSG_PHP2CL_GMCOMMAND,new S2C_GMCommand());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMPAYDATA, MSG_PHP2CL_GMPAYDATA,new S2C_GMPayData());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_GMPAYREPAIR, MSG_PHP2CL_GMPAYREPAIR,new S2C_GMPayRepair());
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYNORMALINFO, MSG_PHP2CL_QUERYNORMALINFO,new S2C_GMQueryNormalInfo()); 
        NetMgr.RegisterMsgHandler((int)MSGID.MSG_PHP2CL_QUERYTASKMAIN, MSG_PHP2CL_QUERYTASKMAIN,new S2C_GMQueryTaskMain()); 
         
        
    }

    public void MSG_SS2CL_ERRORCODE(MsgPack msg)
    {    
        //S2C_ErrorCode _pb = msg.UnpackProtoBuf<S2C_ErrorCode>(new S2C_ErrorCode());
       // Logger.Error("ErrorCode :",_pb.Errcode);

        //DialogViewSingle.Instance.ShowErrorCode((ERROR_CODE)_pb.Errcode);
    }

    public void MSG_SS2CL_RELOGINOFFLINE(MsgPack msg)
    {    
        NetMgr.NetClose();
        UIMgr.ShowUI(VIEWID.ALERTINFO," 已与服务器断开,你的账号在其他设备登录");
    }

    //------------------------------------ HANDLE MSG


    public void MSG_PHP2CL_GMACCOUNTMGR(MsgPack msg)
    {
        S2C_GMAccountMgr _pb = msg.UnpackProtoBuf<S2C_GMAccountMgr>( new S2C_GMAccountMgr() );
        UIMgr.ShowNoticeRet(_pb.Ret);
    }

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
        // S2C_GMSendMoney _pb = msg.UnpackProtoBuf<S2C_GMSendMoney>( new S2C_GMSendMoney() );
        // if( _pb.Ret != 0 )
        // {            
        //     UIMgr.ShowUI(VIEWID.ALERTINFO, "充值失败");
        //     return;
        // }
        
        // UIMgr.ShowUI(VIEWID.ALERTINFO,"充值成功");        
        // Logger.Log("MSG_PHP2CL_SENDMONEY "+_pb.Account);
    }    

    //审批回调
    public void MSG_PHP2CL_SENDMAIL(MsgPack msg)
    {        
        S2C_GMSendMail _pb = msg.UnpackProtoBuf<S2C_GMSendMail>( new S2C_GMSendMail() );

        if (_pb.Ret == 0)
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"审核邮件成功" + _pb.Finish  + "封");
        } 
        else
        {
            if (_pb.Ret == (int)ERROR_CODE.ERROR_NOTRANK)
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"审核邮件失败:权限不足");
            }
            else
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"审核邮件失败:"+_pb.Ret);
            }            
        }

        UIMgr.GetUI(VIEWID.Mail).OnShow();
    } 

    //发送回调
    public void MSG_PHP2CL_MODMAIL(MsgPack msg)
    {        
        S2C_GMSendMail _pb = msg.UnpackProtoBuf<S2C_GMSendMail>( new S2C_GMSendMail() );

        //UIMgr.ShowNoticeRet(_pb.Ret);

        if (_pb.Ret == 0)
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"成功发送邮件,待审核");
        } 
        else
        {
            if (_pb.Ret == (int)ERROR_CODE.ERROR_NOTRANK)
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"发送邮件失败:权限不足");
            }
            else
            {
                UIMgr.ShowUI(VIEWID.ALERTINFO,"发送邮件失败");
            }            
        }

        UIMgr.GetUI(VIEWID.Mail).OnShow();
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
        
        //UIMgr.GetUI(VIEWID.Mail).OnShow(_pb.Type); 
    } 

    public void MSG_PHP2CL_DELETEMAIL(MsgPack msg)
    {
        S2C_GMDeleteMail _pb = msg.UnpackProtoBuf<S2C_GMDeleteMail>( new S2C_GMDeleteMail() );
        UIMgr.ShowNoticeRet(_pb.Ret);
        UIMgr.GetUI(VIEWID.Mail).OnShow();
    }



    public void MSG_PHP2CL_GMCOMMAND(MsgPack msg)
    {
        S2C_GMCommand _pb = msg.UnpackProtoBuf<S2C_GMCommand>( new S2C_GMCommand() );
        UIMgr.ShowNoticeRet(_pb.Ret);

        if(_pb.Commandid ==(int)PHP_COMMAMD.QUERYTIME)
        {
             FuncView view = (FuncView)UIMgr.GetUI(VIEWID.FuncView) ;
             view.onQueryServerTime(System.Convert.ToInt32(_pb.Params[0]) );
        }
        else if(_pb.Commandid ==(int)PHP_COMMAMD.DRAWCARD)
        {
              CardView view = (CardView)UIMgr.GetUI(VIEWID.CardView);
              view.SetDataText(_pb);
        }
    }


    public void MSG_PHP2CL_QUERYNORMALINFO(MsgPack msg)
    {
        S2C_GMQueryNormalInfo _pb = msg.UnpackProtoBuf<S2C_GMQueryNormalInfo>( new S2C_GMQueryNormalInfo() );
        if (_pb.Ret == 0)
        {
            //UIMgr.ShowUI(VIEWID.ALERTINFO,"查询成功");
        } 
        else if( _pb.Ret == 1 )
        {
            UIMgr.ShowUI(VIEWID.ALERTINFO,"查询无数据");
            return;
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

            Dictionary<string,int> accDict = new Dictionary<string, int>();

            for (int i = 0; i < _pb.Result.Count; i++)
            {
                PB_ParamStrDict rst =  _pb.Result[i];
                LimitItem item = new LimitItem();
                item.rstData = rst;
                item.Create();

                view.AddItem( item );

                accDict[rst.Dict["account"]] = 1;
            } 

            CheatView cView = (CheatView)UIMgr.GetUI(VIEWID.CheatView) ;   
            cView.SetStataData(accDict);

        }
        else if (_pb.Querytype == (int)PHP_QUERY.GMACCLIST)
        {
            GMAccView view = (GMAccView)UIMgr.GetUI(VIEWID.GMAcc) ;
            view.ClearItem();

            for (int i = 0; i < _pb.Result.Count; i++)
            {
                PB_ParamStrDict rst =  _pb.Result[i];
                GMAccItem item = new GMAccItem();
                item.rstData = rst;
                item.Create();

                view.AddItem( item );
            }     
        }
        else if (_pb.Querytype == (int)PHP_QUERY.RECORED_OPERATE)
        {
            RecordView view = (RecordView)UIMgr.GetUI(VIEWID.RecordView) ;

            for (int i = 0; i < _pb.Result.Count; i++)
            {
                PB_ParamStrDict rst =  _pb.Result[i];
                view.AddItem( rst );
            }     
        }       
        else if (_pb.Querytype == (int)PHP_QUERY.CLIENTSAVELIST)
        {
            SaveView view = (SaveView)UIMgr.GetUI(VIEWID.SaveView) ;

            for (int i = 0; i < _pb.Result.Count; i++)
            {
                PB_ParamStrDict rst =  _pb.Result[i];
                view.AddDropData(rst);
            }     
        }     
        else if (_pb.Querytype == (int)PHP_QUERY.CLIENTSAVEDATA)
        {
            SaveView view = (SaveView)UIMgr.GetUI(VIEWID.SaveView) ;
            view.SetDataText(_pb.Result[0].Dict["file"],_pb.Result[0].Dict["data"]); 
        }
        else if (_pb.Querytype == (int)PHP_QUERY.PAYGIFT)
        {
            PayGiftView view = (PayGiftView)UIMgr.GetUI(VIEWID.PayGiftView) ;
            view.SetDataText(_pb); 
        }  
        else if (_pb.Querytype == (int)PHP_QUERY.PLAYERDATA)
        {
            RechargeView view = (RechargeView)UIMgr.GetUI(VIEWID.Recharge) ;
            view.SetDataText(_pb); 
        }   
        else if (_pb.Querytype == (int)PHP_QUERY.RANKLIS)
        {
            // RankView view = (RankView)UIMgr.GetUI(VIEWID.RankView) ;
            // view.AddItem(_pb); 
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

        UIMgr.ShowNoticeRet(_pb.Ret);

        PayView payView = UIMgr.GetUI<PayView>(VIEWID.PayView);

        payView.SetItem(_pb);
    }

    public static void MSG_PHP2CL_QUERYTASKMAIN(MsgPack msg)
    {
        S2C_GMQueryTaskMain _pb = msg.UnpackProtoBuf<S2C_GMQueryTaskMain>( new S2C_GMQueryTaskMain() );  

        if (_pb.Type == 1)
        {
            // GuideView view = UIMgr.GetUI<GuideView>(VIEWID.GuideView);  
            // Dictionary<int,int> dict = new Dictionary<int,int>(); 
            // view.SetDataText(_pb);            
        }
        else if (_pb.Type == 2)
        {
            // TaskView view = UIMgr.GetUI<TaskView>(VIEWID.TaskView);  

            // view.SetDataText(_pb);
        }
        else if (_pb.Type == 3)
        {
            // VipView view = UIMgr.GetUI<VipView>(VIEWID.VipView);  
            // Dictionary<int,int> dict = new Dictionary<int,int>(); 
            // view.SetDataText(_pb);
        }
        
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


    public static void MSG_CL2PHP_GMCOMMAND(string acclist, int commandId, params string[] paramlist)
    {
        C2S_GMCommand pb = new C2S_GMCommand();

        pb.Commandid = commandId;

        string[] slist = acclist.Split(',');
        for (int i = 0; i < slist.Length; i++)
        {
            pb.Acclist.Add(slist[i]);
        } 
        
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
