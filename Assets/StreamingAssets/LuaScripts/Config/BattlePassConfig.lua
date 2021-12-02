
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,lv=a1,pay_reward=a2,free_reward=a3,exp=a4,rare=a5,}
end
LuaConfig["BattlePassConfig"] = {
[10000] = New(10000,0,"Entrance",{{"Currency","exp",50,},},100,"none"),
[10001] = New(10001,1,"Chest;101;1",{{"Currency","shop_card",50,},},100,"none"),
[10002] = New(10002,2,"Currency;diamond;50",{{"Currency","plastic",50,},},100,"none"),
[10003] = New(10003,3,"Currency;diamond;100",{{"Currency","wood",50,},},100,"none"),
[10004] = New(10004,4,"Currency;diamond;150",{{"Currency","honor",50,},},100,"none"),
[10005] = New(10005,5,"Chest;102;1",{{"Currency","diamond",50,},},100,"none"),
[10006] = New(10006,6,"Currency;diamond;50",{{"Currency","fabric",50,},},100,"none"),
[10007] = New(10007,7,"Currency;diamond;100",{{"Currency","silica",50,},},100,"none"),
[10008] = New(10008,8,"Currency;diamond;150",{{"Currency","leather",50,},},100,"none"),
[10009] = New(10009,9,"Currency;diamond;200",{{"Currency","iron",50,},},100,"none"),
[10010] = New(10010,10,"Player;3001;1",{{"Currency","diamond",100,},},100,"yes"),
[10011] = New(10011,11,"Currency;diamond;100",{{"Currency","nylon",100,},},100,"none"),
[10012] = New(10012,12,"Currency;diamond;150",{{"Currency","resin",100,},},100,"none"),
[10013] = New(10013,13,"Currency;diamond;200",{{"Currency","alloy",100,},},100,"none"),
[10014] = New(10014,14,"Currency;diamond;250",{{"Currency","carbonfiber",100,},},100,"none"),
[10015] = New(10015,15,"Chest;103;1",{{"Currency","diamond",150,},},100,"none"),
[10016] = New(10016,16,"Currency;diamond;100",{{"Currency","powdrink",150,},},100,"none"),
[10017] = New(10017,17,"Currency;diamond;150",{{"Currency","calcium",150,},},100,"none"),
[10018] = New(10018,18,"Currency;diamond;200",{{"Currency","protein",150,},},100,"none"),
[10019] = New(10019,19,"Currency;diamond;250",{{"Currency","eff_tablet",150,},},100,"none"),
[10020] = New(10020,20,"Player;4001;1",{{"Currency","diamond",200,},},100,"yes"),
[10021] = New(10021,21,"Currency;diamond;150",{{"Currency","lecithin",200,},},100,"none"),
[10022] = New(10022,22,"Currency;diamond;200",{{"Currency","fish_oil",200,},},100,"none"),
[10023] = New(10023,23,"Currency;diamond;250",{{"Currency","lecithin",200,},},100,"none"),
[10024] = New(10024,24,"Currency;diamond;300",{{"Currency","additives1",200,},},100,"none"),
[10025] = New(10025,25,"Currency;diamond;350",{{"Currency","diamond",250,},},100,"none"),
[10026] = New(10026,26,"Currency;diamond;400",{{"Currency","additives2",250,},},100,"none"),
[10027] = New(10027,27,"Currency;diamond;450",{{"Currency","voucher1",250,},},100,"none"),
[10028] = New(10028,28,"Currency;diamond;500",{{"Currency","additives3",250,},},100,"none"),
[10029] = New(10029,29,"Currency;diamond;600",{{"Currency","exp",250,},},100,"none"),
[10030] = New(10030,30,"Currency;BattlePass;1",{{"Currency","diamond",500,},},100,"yes"),
}
end