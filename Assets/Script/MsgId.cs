using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum MSGID
{
    // common
    MSG_SS2CL_ERRORCODE = 2000,     //错误码

    MSG_GT2SS_CONNECTCLOSE = 1001,      //gate判断断开client连接
    MSG_SS2GT_DOCONNECTCLOSE = 2001,      //发送gate踢掉客户端连接

    MSG_SS2CL_SHUTDOWN = 2002,     //准备关闭服务器
    MSG_SS2CL_RELOGINKICK = 2003,     //你的帐号在另外设备登录，被踢下线
    MSG_PHP2DB_UPDATEGAMECONFIG = 8003,      //php后台修改配置更新db

    //login
    MSG_CL2LN_LOGINACCOUNT = 1011,     //账号登陆
    //MSG_CL2LN_LOGINREGISTER        = 1012,     //注册账号
    MSG_LN2CL_GATEIPANDPORT = 2011,     //成功登陆返回gate链接信息

    //conn gate
    MSG_CL2GT_LOGINGATE = 1012,     //连接gate验证签名
    MSG_WD2CL_BACKROLEINITDATA = 2012,     //返回角色基本数据,根据返回roomid来确定是join还是reconn

    //room
    MSG_CL2LG_RECONNECT = 1300,     //玩家断线主动重新连接



    




}

