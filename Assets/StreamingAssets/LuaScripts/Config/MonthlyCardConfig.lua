
do
local function New(a0,a2,a3,a4,a5,a6,a7)
	return {id=a0,icon=a2,reward=a3,ruration_reward=a4,privilege=a5,price=a6,ruration=a7,}
end
LuaConfig["MonthlyCardConfig"] = {
[60001] = New(60001,"",{{"Currency","diamond",360,},},{{"Currency","diamond",120,},},"autocollection",3,30),
[60002] = New(60002,"",{{"Currency","diamond",800,},},{{"Currency","diamond",400,},},"AI",10,-1),
}
end