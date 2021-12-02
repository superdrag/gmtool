
do
local function New(a0,a2,a3,a4,a5)
	return {id=a0,module=a2,order=a3,icon=a4,name=a5,}
end
LuaConfig["ShopConfig"] = {
[401] = New(401,{4001,4002,},1,"Shop01/tag01gift","shop_name_10003"),
[501] = New(501,{5001,5002,5003,5004,5005,5006,5007,5008,5009,},2,"Shop01/tag02crown","mode_name_privilege"),
[601] = New(601,{6001,},3,"Shop01/tag03card","shop_name_6001"),
[701] = New(701,{7001,},4,"Shop01/tag04cash","shop_name_7001"),
[801] = New(801,{8001,},5,"Shop01/tag05diamond","shop_name_8001"),
}
end