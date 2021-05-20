using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum MSGID
{
    // common
    MSG_SS2CL_ERRORCODE = 2000,     //错误码

    MSG_GT2SS_CONNECTCLOSE = 1001,      //gate判断断开client连接
    MSG_SS2GT_DOCONNECTCLOSE = 2001,      //发送gate踢掉客户端连接

    MSG_CL2PHP_GMLOGINACCOUNT          = 1801,    //GM账号登陆
    MSG_PHP2DB_GMLOGINACCOUNT            = 801,
    MSG_DB2PHP_GMLOGINACCOUNT            = 802,
    MSG_PHP2CL_GMLOGINACCOUNT          = 2801,    //GM账号登陆

    MSG_CL2PHP_QUERYUSERINFO           = 1812,    //GM查询玩家信息
    MSG_PHP2CL_QUERYUSERINFO           = 2812,    //GM查询玩家信息

    MSG_CL2PHP_SENDMONEY               = 1815,    //GM直接发送货币
    MSG_PHP2CL_SENDMONEY               = 2815,    //GM直接发送货币

    MSG_CL2PHP_SENDMAIL                 = 1820,    //GM发送邮件
    MSG_PHP2CL_SENDMAIL                = 2820,    //GM发送邮件


}

