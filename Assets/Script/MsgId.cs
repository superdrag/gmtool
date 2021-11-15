using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum MSGID
{
    // common
    MSG_CL2GT_SOCKETHIT  = 1999,
    MSG_GT2CL_SOCKETHIT  = 2999,

    MSG_SS2CL_ERRORCODE = 2000,     //错误码

    MSG_GT2SS_CONNECTCLOSE = 1001,      //gate判断断开client连接
    MSG_SS2GT_DOCONNECTCLOSE = 2001,      //发送gate踢掉客户端连接

    MSG_SS2CL_SHUTDOWN                = 2002,      //准备关闭服务器
    MSG_SS2CL_RELOGINOFFLINE          = 2003,      //你的帐号在另外设备登录，被踢下线
    MSG_SS2CL_FORCEOFFLINE            = 2004,      //强制被踢下线

    MSG_CL2PHP_GMLOGINACCOUNT          = 1801,    //GM账号登陆
    MSG_PHP2DB_GMLOGINACCOUNT            = 801,
    MSG_DB2PHP_GMLOGINACCOUNT            = 802,
    MSG_PHP2CL_GMLOGINACCOUNT          = 2801,    //GM账号登陆

    MSG_CL2PHP_GMACCOUNTMGR               = 1802,    //[[GM账号管理]]  
    MSG_PHP2CL_GMACCOUNTMGR               = 2802,    //[[GM账号管理]]  



    MSG_CL2PHP_QUERYUSERINFO           = 1812,    //GM查询玩家信息
    MSG_PHP2CL_QUERYUSERINFO           = 2812,    //GM查询玩家信息

    MSG_CL2PHP_SENDMONEY               = 1815,    //GM直接发送货币
    MSG_PHP2CL_SENDMONEY               = 2815,    //GM直接发送货币

    MSG_CL2PHP_SENDMAIL                 = 1820,    //GM发送邮件
    MSG_PHP2CL_SENDMAIL                 = 2820,    //GM发送邮件

    MSG_CL2PHP_QUERYALLMAIL              = 1821,    //[[GM查询最近全部邮件]]  
    MSG_PHP2CL_QUERYALLMAIL              = 2821,    //[[GM查询最近全部邮件]]  

    MSG_CL2PHP_DELETEMAIL                 = 1822,    //[[GM撤销邮件]]  
    MSG_PHP2CL_DELETEMAIL                 = 2822,    //[[GM撤销邮件]]  

    MSG_CL2PHP_MODMAIL                    = 1823,    //[[GM修改邮件]]
    MSG_PHP2CL_MODMAIL                    = 2823,    //[[GM修改邮件]]

   
    MSG_CL2PHP_GMCOMMAND                  = 1831,   
    MSG_PHP2CL_GMCOMMAND                  = 2831,    

    MSG_CL2PHP_GMPAYDATA                  = 1861,    
    MSG_PHP2CL_GMPAYDATA                  = 2861,    

    MSG_CL2PHP_GMPAYREPAIR                = 1862,    
    MSG_PHP2CL_GMPAYREPAIR                = 2862,  

    MSG_CL2PHP_QUERYNORMALINFO            = 1865,    
    MSG_PHP2CL_QUERYNORMALINFO            = 2865,    

    MSG_CL2PHP_QUERYTASKMAIN              = 1871,    //--[[主线任务查询]] 
    MSG_PHP2CL_QUERYTASKMAIN              = 2871,    //--[[主线任务查询]]  



}

