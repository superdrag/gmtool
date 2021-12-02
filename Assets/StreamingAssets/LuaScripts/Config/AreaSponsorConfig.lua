
do
local function New(a0,a1,a2,a3)
	return {id=a0,reward_preview=a1,reward_num=a2,reward_weight=a3,}
end
LuaConfig["AreaSponsorConfig"] = {
[1] = New(1,{"diamond","cash","plastic","wood","fabric","leather","resin","carbonfiber","powdrink","protein",},{{10,50,100,},{200,500,},{10,20,},{10,20,},{200,500,},{10,20,},{10,20,},{10,20,},{50,100,},{10,20,},},{{20,20,10,},{30,30,},{50,50,},{30,30,},{50,50,},{20,10,},{30,30,},{20,10,},{30,30,},{20,10,},}),
[2] = New(2,{"diamond","cash","plastic","iron","silica","nylon","alloy","royaljelly","calcium","eff_tablet",},{{10,50,100,},{200,500,},{10,21,},{10,21,},{200,500,},{10,20,},{10,20,},{10,20,},{50,100,},{10,20,},},{{20,20,10,},{30,30,},{50,50,},{30,30,},{50,50,},{20,10,},{30,30,},{20,10,},{30,30,},{20,10,},}),
}
end