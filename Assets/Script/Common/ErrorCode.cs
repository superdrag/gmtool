using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ERROR_CODE
{
	ERROR_CODE_NONE = 0,
	ERROR_LOGIN_VERSION = 1101,  //版本号不对
	ERROR_LOGIN_NOTACCOUT = 1102,  //账号或密码错误
	ERROR_LOGIN_HASACCOUNT = 1103,  //注册账号失败,已经有账号
	ERROR_LOGIN_REGNOID = 1104,  //注册账号失败,没有创建id
	ERROR_LOGIN_REGERRID = 1105,  //注册账号失败,账号id错误
	ERROR_LOGIN_BUSY = 1106,  //服务器繁忙,请稍后登陆
	ERROR_LOGIN_ACCNAME = 1107,  //账号非法字符
	ERROR_LOGIN_OPENSERVETTIME = 1108,  //开服时间没到
	ERROR_LOGIN_ACCLEN = 1109,  //账号长度错误
	ERROR_LOGIN_SKDFAIL = 1110,  //平台SDK验证失败
	ERROR_LOGIN_PLATFORMID = 1111,  //平台ID错误
	ERROR_LOGIN_HASLOGINLIST = 1112,  //已经在登录队列

	ERROR_NOTRANK             = 1300,  //权限不足
	ERROR_SAVEUPLOAD_FAIL     = 1301,  //存档上传失败
	ERROR_SAVEDOWNLOAD_FAIL   = 1305,  //存档下载失败

	ERROR_PHP_CHECKARGS = 8005,  //php参数错误
};
