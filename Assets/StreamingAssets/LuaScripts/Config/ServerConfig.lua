
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9)
	return {id=a0,name=a1,platform=a2,test=a3,server_ip=a4,server_port=a5,php=a6,php_login=a7,hotfix=a8,error=a9,}
end
LuaConfig["ServerConfig"] = {
[1] = New(1,"内网","","","192.168.110.45",9101,"http://192.168.110.45/app_server.json","","http://192.168.110.45/client_hotfix/","http://192.168.110.45/client_error/upload_error.php"),
[2] = New(2,"内网2","","","192.168.110.166",9101,"http://192.168.110.166/app_server.json","","http://192.168.110.45/client_hotfix/","http://192.168.110.45/client_error/upload_error.php"),
[3] = New(3,"刘海超","","","192.168.110.40",9101,"http://192.168.110.40/app_server.json","","http://192.168.110.45/client_hotfix/","http://192.168.110.45/client_error/upload_error.php"),
[4] = New(4,"阿里国内测试","","","47.103.81.220",9101,"http://47.103.81.220/app_server.json","http://47.103.81.220/app_login.php","http://47.103.81.220/client_hotfix/","http://47.103.81.220/client_error/upload_error.php"),
[5] = New(5,"阿里海外测试","","","47.88.56.65",9101,"http://47.88.56.65/app_server.json","http://47.88.56.65/app_login.php","http://47.103.81.220/client_hotfix/","http://47.103.81.220/client_error/upload_error.php"),
[6] = New(6,"阿里海外正式服","","","47.254.90.181",9101,"http://47.254.90.181/app_server.json","http://47.254.90.181/app_login.php","http://47.88.56.65/client_hotfix/","http://47.88.56.65/client_error/upload_error.php"),
[7] = New(7,"AWS海外测试","","","54.218.79.84",9101,"http://54.218.79.84/app_server.json","http://54.218.79.84/app_login.php","http://47.103.81.220/client_hotfix/","http://47.103.81.220/client_error/upload_error.php"),
[8] = New(8,"刘海超（外网）","","","150.158.85.139",9101,"http://150.158.85.139/app_server.json","","http://150.158.85.139/client_hotfix/","http://150.158.85.139/client_error/upload_error.php"),
}
end