
do
local function New(a0,a2,a3,a4,a5,a6,a7)
	return {id=a0,title=a2,reward_pool=a3,buymode=a4,times=a5,unlock=a6,iterate=a7,}
end
LuaConfig["CardShopConfig"] = {
[140001] = New(140001,"title_green",40001,"ADS",1,{{"task",1005,},},{1,1,1,1,}),
[140002] = New(140002,"title_green",40002,"Purchase",0,{{"task",1006,},},{1,2,5,10,}),
[140003] = New(140003,"title_green",40003,"Purchase",0,{{"task",1007,},},{1,2,5,10,}),
[140004] = New(140004,"title_green",40002,"Purchase",0,{{"user_layering",2,},{"task",1053,},},{0,0,5,10,}),
[140005] = New(140005,"title_green",40002,"Purchase",0,{{"user_layering",2,},{"task",1053,},},{0,0,5,10,}),
[140006] = New(140006,"title_green",40003,"Purchase",0,{{"user_layering",2,},{"task",1053,},},{0,0,5,10,}),
}
end