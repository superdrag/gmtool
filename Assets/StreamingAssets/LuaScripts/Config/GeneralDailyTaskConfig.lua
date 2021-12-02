
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	return {id=a0,progress=a2,maximum=a3,name=a4,desc=a5,reward=a6,unlock_vpcard=a7,disapear_vpcard=a8,not_received_icon=a9,received_icon=a10,}
end
LuaConfig["GeneralDailyTaskConfig"] = {
[100] = New(100,20,0,"dailytask_name_10000","",1001,0,99999999,"BasicFunctions/G_title_active01_on","BasicFunctions/G_title_active01_off"),
[101] = New(101,60,0,"dailytask_name_10000","",1011,0,99999999,"BasicFunctions/G_title_active01_on","BasicFunctions/G_title_active01_off"),
[102] = New(102,100,0,"dailytask_name_10000","",1021,0,99999999,"BasicFunctions/G_title_active02_on","BasicFunctions/G_title_active02_off"),
}
end