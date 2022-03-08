using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Net;
//using Google.Protobuf;

/// 平台
public enum SDKPlatform
{
    NONE = 0,
    LOCAL = 1,
    WEIXIN_ANDROID = 2,
}

/// 对话框类型
public enum UI_DIALOG_TYPE
{
    NONE = 0,
    ALERT = 1,
    CONFIRM = 2,
}


public enum DIA_EVENT
{
    EVENT_DRAW_CARD               = 101,   //抽卡
    EVENT_UNLOCK_AREA             = 102,   //快速解锁区域
    EVENT_UNLOCK_ROOM             = 103,   //快速解锁房间
    EVENT_BUY_BATTLE_PASS         = 104,   //购买战斗通行证
    EVENT_BUY_BATTLE_PASS_LEVEL   = 105,   //购买战斗通行证等级
    EVENT_SHOP_GIFTPACK           = 106,   //商城钻石礼包
    EVENT_UPGRADE_FACILIY         = 107,   //快速升级设备
    EVENT_BUY_LEAFLET3            = 108,   //钻石购买抽卡收音机
    EVENT_BUY_BUYSHOPRANDCARD     = 109,   //购买商城随机卡牌
    EVENT_BUY_CASH                = 110,   //购买商城钞票
    EVENT_ROOMPOSUNLOCK           = 111,   //房间坑位解锁
    EVENT_HOOKCD                  = 112,   //挂机训练清CD
    EVENT_SETNICKNAME             = 113,   //改名字


    EVENT_DIAMOND_HANDUP              = 201,   //挂机收益翻倍领取
    EVENT_DIAMOND_SHOPGIFT            = 202,   //商城礼包购买
    EVENT_DIAMOND_ARENALEAGUECD       = 203,   //竞技场秒联赛CD
    EVENT_DIAMOND_SETNAME             = 204,   //改名
    EVENT_DIAMOND_ARENAWATCHER        = 205,   //竞技场观众补满
    EVENT_DIAMOND_ROOMBUILDCD         = 206,   //秒房间建造CD
    EVENT_DIAMOND_BUYRADIO            = 207,   //购买收音机
    EVENT_DIAMOND_BUYPASSLEVEL        = 208,   //通行证等级购买    
}


public enum RES_TYPE
{
    NONE = 0,
    GAMEOBJECT = 1,
    SPRITE = 2,
    TEXT = 3,
    AUDIO = 4,
    MESH = 5,
    VIDEO = 6
}

public enum PHP_COMMAMD
{
    NONE = 0,
    BLACKUSER = 102,
    RECORED_OPERATE = 103,
    CLIENTSAVE = 105,
    DELETESAVE = 106,
    RESTART = 110,
    SHUTDOWN = 111,
    STOPSERVER = 112,
    TICKOFF    = 113, //踢所有下线
    MODTIME = 115,
    UPCONFIG = 116,  
    QUERYTIME = 117,
    DRAWCARD = 118,
    RECORD = 119,
    CLEANDB = 120,
}

public enum PHP_QUERY
{
    NONE = 0,
    PLAYERDATA = 1000,
    BLACKUSER = 1001,
    GMACCLIST = 1002,
    RECORED_OPERATE = 1003,
    CLIENTSAVELIST      = 1005, //客户端存档查询
    CLIENTSAVEDATA      = 1006, //客户端存档查询    
    MAINTASK            = 1007, //主线任务查询
    PAYGIFT             = 1008, //礼包付费统计 
    VIPCARD             = 1009,  
}

public enum MOD_TYPE
{
    ADD = 1,
    DEL = 2,
    UPATE = 3,
}



public class GData
{
    public static int MSG_SEND_MINID = 1000;
    public static int MSG_SEND_MAXID = 1999;
    public static int MSG_RECV_MINID = 2000;
    public static int MSG_RECV_MAXID = 2999;

    public static int INVALID_POS = -1;

    //游戏名称
    public static string AppName = "gmtool";

    public static bool DebugMode = false;

    //PC测试模式 会用到C盘目录资源模拟热更新
    public static bool DebugHotFix = false;

    public static string ResABExName = ".bundle";
    
    /// 当前平台
    public static SDKPlatform sdkPlatform = SDKPlatform.LOCAL;
    
    //服务器版本号
    public static string ServerVer = "1.0.0.1";
    /// 登录ip
    public static string LoginIP = "";
    
    /// 登录端口
    public static int LoginPort = 0;

    public static string LoginSign = "";

    public static string LoginGateIP = "";

    public static int LoginGatePort = 0;

    public static int LoginGateTime = 0;

    /// 登录用户名
    public static string OpenId = "";

    public static string Unionid = "";

    public static int RoleId = 0;

    /// 登录密码
    public static string LoginPwd = "";
    
    /// 角色id
    public static string PhoneMac = "";

    ///
    public static string NickName = "";

    /// 头像Url
    public static string HeadIcon = "http://picture.youth.cn/xwjx/201705/W020170506391821287688.png";




}




