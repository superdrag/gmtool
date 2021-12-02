
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,name=a2,icon=a3,condition=a4,user_layer=a5,type=a6,limit=a7,duration=a8,repetitive=a9,reward=a10,price=a11,}
end
LuaConfig["ActivityGiftConfig"] = {
[70001] = New(70001,"shop_name_10006","Menu/idle_GiftBag02",{{"vpcard_count",500,},},0,"payment",1,-1,false,{{"Card",12001,1,},{"Currency","leaflet3",5,},{"Currency","diamond",200,},{"Currency","TimeMachine",3600,},},0),
[71001] = New(71001,"shop_name_10001","Shop01/tag01gift",{{"vpcard_count",500,},},0,"tiro",1,28800,false,{{"Card",4001,1,},{"Currency","cash",110000,},{"Currency","leaflet2",10,},{"Currency","Hamburger",5,},{"Item",4001,5,},{"Currency","leaflet3",3,},},1),
[72001] = New(72001,"shop_name_10002","Shop01/tag01gift",{{"first_win_game",110003,},},0,"league",1,28800,false,{{"Card",4003,1,},{"Card",3002,3,},{"Card",2012,10,},{"Card",1002,15,},{"Currency","TimeMachine",86400,},{"Item",2001,20,},},1),
[72002] = New(72002,"shop_name_10002","Shop01/tag01gift",{{"first_win_game",110003,},},1,"league",1,28800,false,{{"Card",4003,5,},{"Card",4004,5,},{"Card",3002,15,},{"Card",2012,30,},{"Currency","TimeMachine",172800,},{"Item",2002,30,},},5),
[73001] = New(73001,"shop_name_10003","Shop01/tag01gift",{{"vpcard_count",4500,},},0,"value",1,28800,false,{{"Card",14001,1,},{"Card",13001,3,},{"Card",13002,3,},{"Card",12001,11,},{"Card",12002,11,},{"Card",11001,15,},},1),
[73002] = New(73002,"shop_name_10003","Shop01/tag01gift",{{"vpcard_count",4500,},},1,"value",1,28800,false,{{"Card",14001,11,},{"Card",13001,15,},{"Card",13002,15,},{"Card",12001,30,},{"Card",12002,30,},{"Card",11001,30,},},5),
[73003] = New(73003,"shop_name_10003","Shop01/tag01gift",{{"vpcard_count",4500,},},2,"value",1,28800,false,{{"Card",14001,26,},{"Card",13001,30,},{"Card",13002,30,},{"Card",12001,45,},{"Card",12002,45,},{"Card",11001,45,},},10),
[74001] = New(74001,"shop_name_10004","Shop01/tag01gift",{{"vpcard_count",1100,},},0,"hot",1,28800,false,{{"Currency","leaflet3",2,},{"Currency","leaflet2",10,},{"Currency","TimeMachine",86400,},{"Currency","diamond",100,},{"Currency","Hamburger",5,},{"Item",4001,5,},},1),
[74002] = New(74002,"shop_name_10004","Shop01/tag01gift",{{"vpcard_count",1100,},},1,"hot",1,28800,false,{{"Currency","leaflet3",12,},{"Currency","leaflet2",50,},{"Currency","TimeMachine",86400,},{"Currency","diamond",860,},{"Currency","Hamburger",15,},{"Item",4001,10,},},5),
[74003] = New(74003,"shop_name_10004","Shop01/tag01gift",{{"vpcard_count",1100,},},2,"hot",1,28800,false,{{"Currency","leaflet3",25,},{"Currency","leaflet2",100,},{"Currency","TimeMachine",86400,},{"Currency","diamond",1800,},{"Currency","Hamburger",25,},{"Item",4001,25,},},10),
[75001] = New(75001,"shop_name_10005","Shop01/tag01gift",{{"season_start",},},0,"season",1,28800,false,{{"Currency","silica",100,},{"Currency","resin",100,},{"Currency","alloy",100,},{"Item",2001,20,},{"Item",2002,10,},{"Item",2003,5,},},1),
[75002] = New(75002,"shop_name_10005","Shop01/tag01gift",{{"season_start",},},1,"season",1,28800,false,{{"Currency","silica",320,},{"Currency","resin",320,},{"Currency","alloy",320,},{"Item",2001,70,},{"Item",2002,40,},{"Item",2003,20,},},5),
[75003] = New(75003,"shop_name_10005","Shop01/tag01gift",{{"season_start",},},2,"season",1,28800,false,{{"Currency","silica",650,},{"Currency","resin",650,},{"Currency","alloy",650,},{"Item",2001,200,},{"Item",2002,100,},{"Item",2003,60,},},10),
}
end