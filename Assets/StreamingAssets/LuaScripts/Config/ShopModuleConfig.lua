
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	return {id=a0,name=a2,icon=a3,title=a4,des_condition=a5,page=a6,order=a7,content=a8,reset=a9,duration=a10,}
end
LuaConfig["ShopModuleConfig"] = {
[1001] = New(1001,"shop_name_1001","","",{{"guide_end",25010,},},"monthlycard",1,nil,"","-1"),
[2001] = New(2001,"shop_name_2001","","",{{"vpcard_count",500,},},"fund",1,nil,"","-1"),
[3001] = New(3001,"shop_name_3001","","",{{"vpcard_count",999999999,},},"battle_pass",1,nil,"","-1"),
[4001] = New(4001,"shop_name_4001","Shop01/tag01gift","Shop01/title_todaybuy",{{"always",},},"gift_package",1,{22001,22007,22003,22004,22005,22006,},"daily",""),
[4002] = New(4002,"shop_name_4002","Shop01/tag01gift_01","Shop01/title_onlyweek",{{"user_layering",1,},},"gift_package",2,{23007,23008,23003,23004,23005,23006,},"weekly",""),
[5001] = New(5001,"name_41001","Shop01/tag02crown","Shop01/title_BestSale",{{"vpcard_count",220,},{"user_layering",0,},},"assistant",4,{41002,},"",""),
[5002] = New(5002,"name_44001","Shop01/tag02crown","Shop01/title_BestSale",{{"always",},},"assistant",1,{44001,},"",""),
[5003] = New(5003,"name_47001","Shop01/tag02crown","Shop01/title_BestSale",{{"unlock_room",100601,},},"assistant",2,{47001,},"",""),
[5004] = New(5004,"name_45001","Shop01/tag02crown","Shop01/title_BestSale",{{"unlock_room",100401,},},"assistant",3,{45001,},"",""),
[5005] = New(5005,"name_43001","Shop01/tag02crown","Shop01/title_BestSale",{{"unlock_room",102001,},},"assistant",6,{43001,},"",""),
[5006] = New(5006,"name_46001","Shop01/tag02crown","Shop01/title_BestSale",{{"vpcard_count",1500,},{"user_layering",1,},},"assistant",5,{46001,},"",""),
[5007] = New(5007,"name_48001","Shop01/tag02crown","Shop01/title_BestSale",{{"unlock_room",102201,},{"user_layering",0,},},"assistant",7,{48001,},"",""),
[5008] = New(5008,"name_42001","Shop01/tag02crown","Shop01/title_BestSale",{{"user_layering",1,},},"assistant",8,{42001,},"",""),
[5009] = New(5009,"name_49001","Shop01/tag02crown","Shop01/title_BestSale",{{"always",},},"assistant",9,{49001,},"",""),
[5010] = New(5010,"name_49001","Shop01/tag02crown","Shop01/title_BestSale",{{"always",},},"assistant",10,{41101,},"",""),
[6001] = New(6001,"shop_name_6001","Shop01/tag03card","Shop01/title_HotSale",{{"vpcard_count",180,},},"cardshop",1,{140001,140002,140003,140004,140005,140006,},"daily",""),
[7001] = New(7001,"shop_name_7001","Shop01/title_cash03","Shop01/title_cash",{{"always",},},"time_machine",1,{70001,70002,70003,},"",""),
[8001] = New(8001,"shop_name_8001","Shop01/tag05diamond","Shop01/title_Diamonds",{{"always",},},"diamond_shop",1,nil,"",""),
[9001] = New(9001,"shop_name_9001","","",{{"vpcard_count",999999999,},},"battle_pass",1,nil,"",""),
[10001] = New(10001,"shop_name_10001","","",{{"vpcard_count",220,},},"flash_Sale",1,{70001,},"","-1"),
[10002] = New(10002,"shop_name_10002","","",{{"vpcard_count",220,},},"flash_Sale",2,{71001,},"","28800"),
[10003] = New(10003,"shop_name_10003","","",{{"vpcard_count",220,},},"flash_Sale",3,{72001,72002,},"","28800"),
[10004] = New(10004,"shop_name_10004","","",{{"vpcard_count",220,},},"flash_Sale",4,{73001,73002,73003,},"","28800"),
[10005] = New(10005,"shop_name_10005","","",{{"vpcard_count",220,},},"flash_Sale",5,{74001,74002,74003,},"","28800"),
[10006] = New(10006,"shop_name_10006","","",{{"vpcard_count",220,},},"flash_Sale",6,{75001,75002,75003,},"SeasonStar","28800"),
[10007] = New(10007,"shop_name_10007","","",{{"vpcard_count",220,},},"flash_Sale",7,{76001,76002,},"","28800"),
[10008] = New(10008,"shop_name_10007","","",{{"vpcard_count",220,},},"flash_Sale",8,{77001,77002,},"","28800"),
[10009] = New(10009,"shop_name_10007","","",{{"vpcard_count",220,},},"flash_Sale",9,{78001,78002,78003,},"","28800"),
}
end