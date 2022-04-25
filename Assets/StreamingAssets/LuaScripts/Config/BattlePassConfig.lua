
do
local function New(a0,a1,a2,a3)
	return {id=a0,lv=a1,free_reward=a2,pay_reward=a3,}
end
LuaConfig["BattlePassConfig"] = {
[10001] = New(10001,1,{"Currency","Hamburger",10,},{"Currency","leaflet3",3,}),
[10002] = New(10002,2,{"Currency","BattlePassCoin",20,},{"Currency","BattlePassCoin",150,}),
[10003] = New(10003,3,{"Item",3002,5,},{"Item",3003,10,}),
[10004] = New(10004,4,{"Item",4001,10,},{"Currency","BattlePassCoin",300,}),
[10005] = New(10005,5,{"Currency","BattlePassCoin",20,},{"Item",3002,20,}),
[10006] = New(10006,6,{"Currency","Hamburger",10,},{"Currency","BattlePassCoin",400,}),
[10007] = New(10007,7,{"Currency","BattlePassCoin",20,},{"Item",3003,10,}),
[10008] = New(10008,8,{"Item",3002,5,},{"Currency","BattlePassCoin",500,}),
[10009] = New(10009,9,{"Item",2002,5,},{"Item",3002,20,}),
[10010] = New(10010,10,{"Currency","BattlePassCoin",20,},{"Currency","BattlePassCoin",600,}),
[10011] = New(10011,11,{"Item",4001,10,},{"Currency","leaflet3",3,}),
[10012] = New(10012,12,{"Item",3002,5,},{"Currency","BattlePassCoin",700,}),
[10013] = New(10013,13,{"Currency","BattlePassCoin",20,},{"Item",3002,20,}),
[10014] = New(10014,14,{"Currency","Hamburger",10,},{"Currency","BattlePassCoin",700,}),
[10015] = New(10015,15,{"Item",4001,10,},{"Item",3003,10,}),
[10016] = New(10016,16,{"Item",3002,5,},{"Currency","BattlePassCoin",800,}),
[10017] = New(10017,17,{"Currency","BattlePassCoin",20,},{"Item",3002,20,}),
[10018] = New(10018,18,{"Currency","Hamburger",10,},{"Currency","BattlePassCoin",800,}),
[10019] = New(10019,19,{"Item",4001,10,},{"Item",3003,10,}),
[10020] = New(10020,20,{"Currency","leaflet3",4,},{"Item",5001,1,}),
}
end