
do
local function New(a0,a2,a3,a4,a5,a6)
	return {id=a0,title=a2,reward=a3,icon=a4,price=a5,cash_num=a6,}
end
LuaConfig["TimeJumpConfig"] = {
[70001] = New(70001,"1小时时间跳跃",{{"currency","TimeMachine",3600,},},"Shop01/title_cash01",{{"Currency","diamond",50,},},20),
[70002] = New(70002,"6小时时间跳跃",{{"currency","TimeMachine",21600,},},"Shop01/title_cash02",{{"Currency","diamond",200,},},50),
[70003] = New(70003,"24小时时间跳跃",{{"currency","TimeMachine",86400,},},"Shop01/title_cash03",{{"Currency","diamond",500,},},100),
}
end