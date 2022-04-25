
do
local function New(a0,a2,a3,a4,a5,a6,a7)
	return {id=a0,weight=a2,quality=a3,time_limit=a4,number=a5,dia_weight=a6,image=a7,}
end
LuaConfig["TimeLimitMainTaskConfig"] = {
[101] = New(101,45,"ordinary",120,3,0,"C_RGBA/panel_Timelimit01"),
[102] = New(102,35,"senior",90,3,5,"C_RGBA/panel_Timelimit02"),
[103] = New(103,15,"perfect",60,3,25,"C_RGBA/panel_Timelimit03"),
[104] = New(104,5,"epic",30,3,70,"C_RGBA/panel_Timelimit04"),
}
end