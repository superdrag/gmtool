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
    SHUTDWON = 101,
    BLACKUSER = 102,
    RECORED_OPERATE = 103,
    CLIENTSAVE = 105,
}

public enum PHP_QUERY
{
    NONE = 0,
    BLACKUSER = 1001,
    GMACCLIST = 1002,
    RECORED_OPERATE = 1003,
    CLIENTSAVELIST      = 1005, //客户端存档查询
    CLIENTSAVEDATA      = 1006, //客户端存档查询    
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
    public static string AppName = "kyclient";

    public static bool ReleaseMode = false;

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




