
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18)
	return {id=a0,id_next=a1,quantity=a2,stars=a3,type=a4,mask=a5,target=a6,icon=a7,img=a8,extra_conditions=a9,extra_word=a10,functions=a11,model=a12,initial_debris=a13,scenepath=a14,unlockPoint=a15,detailsPoint=a16,name=a17,rotation=a18,}
end
LuaConfig["CardAchieveConfig"] = {
[101001] = New(101001,101002,8,1,1,"普通卡牌(豆腐店)",{{"ordinary",},},"Function/function_card1","Achieve/Img_TofuShop_Lv1",nil,"",{{"facility_use_pp_add",2.55,},},"Build/Other/Special/TofuShop01/TofuShop_Lv1.prefab","Build/Other/Special/TofuShop01/Truck_TofuShop01.prefab","TofuShop01","70.27;1.5;8","68.75;4.5;9.64","Tips_CardAchieve_101","0;106;0"),
[101002] = New(101002,101003,8,3,1,"普通卡牌(豆腐店)",{{"ordinary",},},"Function/function_card1","Achieve/Img_TofuShop_Lv2",nil,"",{{"facility_use_pp_add",5,},},"Build/Other/Special/TofuShop01/TofuShop_Lv2.prefab","","","","68.75;5.5;9.64","Tips_CardAchieve_101",""),
[101003] = New(101003,101004,9,5,1,"普通卡牌(豆腐店)",{{"ordinary",},},"Function/function_card1","Achieve/Img_TofuShop_Lv3",nil,"",{{"facility_use_pp_add",7.3,},},"Build/Other/Special/TofuShop01/TofuShop_Lv3.prefab","","","","68.75;5.5;9.64","Tips_CardAchieve_101",""),
[101004] = New(101004,101005,9,7,1,"普通卡牌(豆腐店)",{{"ordinary",},},"Function/function_card1","Achieve/Img_TofuShop_Lv4",nil,"",{{"facility_use_pp_add",9.5,},},"Build/Other/Special/TofuShop01/TofuShop_Lv4.prefab","","","","68.75;5.5;9.64","Tips_CardAchieve_101",""),
[101005] = New(101005,0,9,9,1,"普通卡牌(豆腐店)",{{"ordinary",},},"Function/function_card1","Achieve/Img_TofuShop_Lv4",nil,"",{{"facility_use_pp_add",11.55,},},"Build/Other/Special/TofuShop01/TofuShop_Lv4.prefab","","","","68.75;5.5;9.64","Tips_CardAchieve_101",""),
[102001] = New(102001,102002,7,1,1,"稀有卡牌(咖啡馆)",{{"rare",},},"Function/function_card2","Achieve/Img_Coffee_Lv1",nil,"",{{"all_earnings_pp_add",2.55,},{"bitcoin_addition_pp_add",3.75,},},"Build/Other/Special/Coffee/Coffee_Lv1.prefab","Build/Other/Special/Coffee/Truck_Coffee.prefab","Coffee","-1.97;1.5;-28.88","-1.97;4.3;-28.88","Tips_CardAchieve_102","0;150;0"),
[102002] = New(102002,102003,8,3,1,"稀有卡牌(咖啡馆)",{{"rare",},},"Function/function_card2","Achieve/Img_Coffee_Lv2",nil,"",{{"all_earnings_pp_add",4.6,},{"bitcoin_addition_pp_add",6.75,},},"Build/Other/Special/Coffee/Coffee_Lv2.prefab","","","","-1.97;4.3;-28.88","Tips_CardAchieve_102",""),
[102003] = New(102003,102004,8,5,1,"稀有卡牌(咖啡馆)",{{"rare",},},"Function/function_card2","Achieve/Img_Coffee_Lv3",nil,"",{{"all_earnings_pp_add",6.1,},{"bitcoin_addition_pp_add",9,},},"Build/Other/Special/Coffee/Coffee_Lv3.prefab","","","","-1.97;4.3;-28.88","Tips_CardAchieve_102",""),
[102004] = New(102004,102005,9,7,1,"稀有卡牌(咖啡馆)",{{"rare",},},"Function/function_card2","Achieve/Img_Coffee_Lv3",nil,"",{{"all_earnings_pp_add",7.1,},{"bitcoin_addition_pp_add",10.5,},},"Build/Other/Special/Coffee/Coffee_Lv3.prefab","","","","-1.97;4.3;-28.88","Tips_CardAchieve_102",""),
[102005] = New(102005,0,9,9,1,"稀有卡牌(咖啡馆)",{{"rare",},},"Function/function_card2","Achieve/Img_Coffee_Lv3",nil,"",{{"all_earnings_pp_add",7.6,},{"bitcoin_addition_pp_add",11.25,},},"Build/Other/Special/Coffee/Coffee_Lv3.prefab","","","","-1.97;4.3;-28.88","Tips_CardAchieve_102",""),
[103001] = New(103001,103002,5,1,1,"史诗卡牌(警察局)",{{"epic",},},"Function/function_card3","Achieve/Img_Police_Lv1",nil,"",{{"teamCE_pp_add",4.65,},{"all_earnings_pp_add",4.55,},},"Build/Other/Special/Police01/Police_Lv1.prefab","Build/Other/Special/Police01/Truck_Police.prefab","Police01","52;1.5;-28.5","52;3.2;-28.5","Tips_CardAchieve_103","0;130;0"),
[103002] = New(103002,103003,6,3,1,"史诗卡牌(警察局)",{{"epic",},},"Function/function_card3","Achieve/Img_Police_Lv2",nil,"",{{"teamCE_pp_add",8.75,},{"all_earnings_pp_add",8.55,},},"Build/Other/Special/Police01/Police_Lv2.prefab","","","","51.7;4;-27.82","Tips_CardAchieve_103",""),
[103003] = New(103003,103004,7,5,1,"史诗卡牌(警察局)",{{"epic",},},"Function/function_card3","Achieve/Img_Police_Lv3",nil,"",{{"teamCE_pp_add",12.25,},{"all_earnings_pp_add",11.95,},},"Build/Other/Special/Police01/Police_Lv3.prefab","","","","51.7;4;-27.82","Tips_CardAchieve_103",""),
[103004] = New(103004,103005,8,7,1,"史诗卡牌(警察局)",{{"epic",},},"Function/function_card3","Achieve/Img_Police_Lv4",nil,"",{{"teamCE_pp_add",15.15,},{"all_earnings_pp_add",14.8,},},"Build/Other/Special/Police01/Police_Lv4.prefab","","","","51.7;4;-27.82","Tips_CardAchieve_103",""),
[103005] = New(103005,0,9,9,1,"史诗卡牌(警察局)",{{"epic",},},"Function/function_card3","Achieve/Img_Police_Lv4",nil,"",{{"teamCE_pp_add",17.5,},{"all_earnings_pp_add",17.05,},},"Build/Other/Special/Police01/Police_Lv4.prefab","","","","51.7;4;-27.82","Tips_CardAchieve_103",""),
[104001] = New(104001,104002,2,1,1,"传说卡牌(博物馆)",{{"legend",},},"Function/function_card4","Achieve/Img_Museum_Lv1",nil,"",{{"teamCE_pp_add",6.3,},{"bitcoin_addition_pp_add",9.15,},},"Build/Other/Special/Museum/Museum_Lv1.prefab","Build/Other/Special/Museum/Truck_Museum.prefab","Museum","-36.55;1.5;87.05","-35.81;5.5;87.67","Tips_CardAchieve_104","0;320;0"),
[104002] = New(104002,104003,2,3,1,"传说卡牌(博物馆)",{{"legend",},},"Function/function_card4","Achieve/Img_Museum_Lv2",nil,"",{{"teamCE_pp_add",11.7,},{"bitcoin_addition_pp_add",17,},},"Build/Other/Special/Museum/Museum_Lv2.prefab","","","","-35.81;6.1;87.67","Tips_CardAchieve_104",""),
[104003] = New(104003,104004,3,5,1,"传说卡牌(博物馆)",{{"legend",},},"Function/function_card4","Achieve/Img_Museum_Lv3",nil,"",{{"teamCE_pp_add",16.2,},{"bitcoin_addition_pp_add",23.5,},},"Build/Other/Special/Museum/Museum_Lv3.prefab","","","","-35.81;6.1;87.67","Tips_CardAchieve_104",""),
[104004] = New(104004,104005,3,7,1,"传说卡牌(博物馆)",{{"legend",},},"Function/function_card4","Achieve/Img_Museum_Lv3",nil,"",{{"teamCE_pp_add",19.8,},{"bitcoin_addition_pp_add",28.7,},},"Build/Other/Special/Museum/Museum_Lv3.prefab","","","","-35.81;6.1;87.67","Tips_CardAchieve_104",""),
[104005] = New(104005,0,3,9,1,"传说卡牌(博物馆)",{{"legend",},},"Function/function_card4","Achieve/Img_Museum_Lv3",nil,"",{{"teamCE_pp_add",22.5,},{"bitcoin_addition_pp_add",32.6,},},"Build/Other/Special/Museum/Museum_Lv3.prefab","","","","-35.81;6.1;87.67","Tips_CardAchieve_104",""),
[105001] = New(105001,105002,5,1,2,"啦啦队(独栋别墅)",{{"cheerleader",},},"Build/att_Cheerleading","Achieve/Img_Bungalow04_Lv1",nil,"",{{"all_earnings_pp_add",1.8,},},"Build/Other/Special/Bungalow04/Bungalow04_Lv1.prefab","Build/Other/Special/Bungalow04/Truck_Bungalow04.prefab","Bungalow04","69.18;1.5;22.88","69.18;4.6;24","Tips_CardAchieve_105","0;152;0"),
[105002] = New(105002,105003,5,3,2,"啦啦队(独栋别墅)",{{"cheerleader",},},"Build/att_Cheerleading","Achieve/Img_Bungalow04_Lv2",nil,"",{{"all_earnings_pp_add",3.3,},},"Build/Other/Special/Bungalow04/Bungalow04_Lv2.prefab","","","","69.18;6;24","Tips_CardAchieve_105",""),
[105003] = New(105003,105004,5,5,2,"啦啦队(独栋别墅)",{{"cheerleader",},},"Build/att_Cheerleading","Achieve/Img_Bungalow04_Lv3",nil,"",{{"all_earnings_pp_add",4.5,},},"Build/Other/Special/Bungalow04/Bungalow04_Lv3.prefab","","","","69.18;6;24","Tips_CardAchieve_105",""),
[105004] = New(105004,105005,5,7,2,"啦啦队(独栋别墅)",{{"cheerleader",},},"Build/att_Cheerleading","Achieve/Img_Bungalow04_Lv4",nil,"",{{"all_earnings_pp_add",5.1,},},"Build/Other/Special/Bungalow04/Bungalow04_Lv4.prefab","","","","69.18;6;24","Tips_CardAchieve_105",""),
[105005] = New(105005,0,5,9,2,"啦啦队(独栋别墅)",{{"cheerleader",},},"Build/att_Cheerleading","Achieve/Img_Bungalow04_Lv4",nil,"",{{"all_earnings_pp_add",5.4,},},"Build/Other/Special/Bungalow04/Bungalow04_Lv4.prefab","","","","69.18;6;24","Tips_CardAchieve_105",""),
[106001] = New(106001,106002,5,1,0,"指定服务员(甜甜圈店)",{{3002,2002,1001,1005,1013,},},"","Achieve/Img_Snackery_Lv1",nil,"",{{"course_timecons_pp_sub",6,},},"Build/Other/Special/Snackery/Snackery_Lv1.prefab","Build/Other/Special/Snackery/Truck_Snackery.prefab","Snackery","70.47;1.5;-26.8","70.47;3.6;-27.3","Tips_CardAchieve_106","0;162;0"),
[106002] = New(106002,106003,5,3,0,"指定服务员(甜甜圈店)",{{3002,2002,1001,1005,1013,},},"","Achieve/Img_Snackery_Lv2",nil,"",{{"course_timecons_pp_sub",11,},},"Build/Other/Special/Snackery/Snackery_Lv2.prefab","","","","70.47;4;-27.3","Tips_CardAchieve_106",""),
[106003] = New(106003,106004,5,5,0,"指定服务员(甜甜圈店)",{{3002,2002,1001,1005,1013,},},"","Achieve/Img_Snackery_Lv3",nil,"",{{"course_timecons_pp_sub",15,},},"Build/Other/Special/Snackery/Snackery_Lv3.prefab","","","","70.47;4;-27.3","Tips_CardAchieve_106",""),
[106004] = New(106004,106005,5,7,0,"指定服务员(甜甜圈店)",{{3002,2002,1001,1005,1013,},},"","Achieve/Img_Snackery_Lv3",nil,"",{{"course_timecons_pp_sub",18,},},"Build/Other/Special/Snackery/Snackery_Lv3.prefab","","","","70.47;4;-27.3","Tips_CardAchieve_106",""),
[106005] = New(106005,0,5,9,0,"指定服务员(甜甜圈店)",{{3002,2002,1001,1005,1013,},},"","Achieve/Img_Snackery_Lv3",nil,"",{{"course_timecons_pp_sub",20,},},"Build/Other/Special/Snackery/Snackery_Lv3.prefab","","","","70.47;4;-27.3","Tips_CardAchieve_106",""),
[107001] = New(107001,107002,5,2,2,"修理工(公寓)",{{"repairman",},},"Build/att_repairman","Achieve/Img_Bungalow02_Lv1",nil,"",{{"championships_profit_pp_add",6,},},"Build/Other/Special/Bungalow02/Bungalow02_Lv1.prefab","Build/Other/Special/Bungalow02/Truck_Bungalow02.prefab","Bungalow02","-10.936;1.5;-28.739","-10.936;5;-28.739","Tips_CardAchieve_107","0;65;0"),
[107002] = New(107002,107003,5,4,2,"修理工(公寓)",{{"repairman",},},"Build/att_repairman","Achieve/Img_Bungalow02_Lv2",nil,"",{{"championships_profit_pp_add",11,},},"Build/Other/Special/Bungalow02/Bungalow02_Lv2.prefab","","","","-10.936;5;-28.739","Tips_CardAchieve_107",""),
[107003] = New(107003,107004,5,6,2,"修理工(公寓)",{{"repairman",},},"Build/att_repairman","Achieve/Img_Bungalow02_Lv3",nil,"",{{"championships_profit_pp_add",15,},},"Build/Other/Special/Bungalow02/Bungalow02_Lv3.prefab","","","","-10.936;5;-28.739","Tips_CardAchieve_107",""),
[107004] = New(107004,107005,5,8,2,"修理工(公寓)",{{"repairman",},},"Build/att_repairman","Achieve/Img_Bungalow02_Lv3",nil,"",{{"championships_profit_pp_add",18,},},"Build/Other/Special/Bungalow02/Bungalow02_Lv3.prefab","","","","-10.936;5;-28.739","Tips_CardAchieve_107",""),
[107005] = New(107005,0,5,10,2,"修理工(公寓)",{{"repairman",},},"Build/att_repairman","Achieve/Img_Bungalow02_Lv3",nil,"",{{"championships_profit_pp_add",20,},},"Build/Other/Special/Bungalow02/Bungalow02_Lv3.prefab","","","","-10.936;5;-28.739","Tips_CardAchieve_107",""),
[108001] = New(108001,108002,1,2,2,"您知道安利吗？(汽车旅馆)",{{"salesman",},},"Build/att_sale","Achieve/Img_Motel_Lv1",nil,"",{{"all_earnings_pp_add",5.25,},},"Build/Other/Special/Motel/Motel_Lv1.prefab","Build/Other/Special/Motel/Truck_Motel.prefab","Motel","-59.38;1.6;-27.88","-60.66;3;-26.74","Tips_CardAchieve_108","0;195;0"),
[108002] = New(108002,108003,1,4,2,"您知道安利吗？(汽车旅馆)",{{"salesman",},},"Build/att_sale","Achieve/Img_Motel_Lv2",nil,"",{{"all_earnings_pp_add",8.65,},},"Build/Other/Special/Motel/Motel_Lv2.prefab","","","","-60.66;3;-26.74","Tips_CardAchieve_108",""),
[108003] = New(108003,108004,2,6,2,"您知道安利吗？(汽车旅馆)",{{"salesman",},},"Build/att_sale","Achieve/Img_Motel_Lv3",nil,"",{{"all_earnings_pp_add",11.4,},},"Build/Other/Special/Motel/Motel_Lv3.prefab","","","","-60.66;3;-26.74","Tips_CardAchieve_108",""),
[108004] = New(108004,108005,2,8,2,"您知道安利吗？(汽车旅馆)",{{"salesman",},},"Build/att_sale","Achieve/Img_Motel_Lv3",nil,"",{{"all_earnings_pp_add",13.5,},},"Build/Other/Special/Motel/Motel_Lv3.prefab","","","","-60.66;3;-26.74","Tips_CardAchieve_108",""),
[108005] = New(108005,0,2,10,2,"您知道安利吗？(汽车旅馆)",{{"salesman",},},"Build/att_sale","Achieve/Img_Motel_Lv3",nil,"",{{"all_earnings_pp_add",14.95,},},"Build/Other/Special/Motel/Motel_Lv3.prefab","","","","-60.66;3;-26.74","Tips_CardAchieve_108",""),
[109001] = New(109001,109002,1,2,2,"经理(金融中心)",{{"manager",},},"Build/att_manager","Achieve/Img_Banking_Lv1",nil,"",{{"lambor_addition_pp_add",9,},},"Build/Other/Special/Banking/Banking_Lv1.prefab","Build/Other/Special/Banking/Truck_Banking.prefab","Banking","76.75;1.5;19.85","77.51;4;20.54","Tips_CardAchieve_109","0;145;0"),
[109002] = New(109002,109003,1,4,2,"经理(金融中心)",{{"manager",},},"Build/att_manager","Achieve/Img_Banking_Lv2",nil,"",{{"lambor_addition_pp_add",16.5,},},"Build/Other/Special/Banking/Banking_Lv2.prefab","","","","77.51;4;20.54","Tips_CardAchieve_109",""),
[109003] = New(109003,109004,1,6,2,"经理(金融中心)",{{"manager",},},"Build/att_manager","Achieve/Img_Banking_Lv3",nil,"",{{"lambor_addition_pp_add",22.5,},},"Build/Other/Special/Banking/Banking_Lv3.prefab","","","","77.51;4;20.54","Tips_CardAchieve_109",""),
[109004] = New(109004,109005,1,8,2,"经理(金融中心)",{{"manager",},},"Build/att_manager","Achieve/Img_Banking_Lv4",nil,"",{{"lambor_addition_pp_add",27,},},"Build/Other/Special/Banking/Banking_Lv4.prefab","","","","77.51;4;20.54","Tips_CardAchieve_109",""),
[109005] = New(109005,0,1,10,2,"经理(金融中心)",{{"manager",},},"Build/att_manager","Achieve/Img_Banking_Lv4",nil,"",{{"lambor_addition_pp_add",30,},},"Build/Other/Special/Banking/Banking_Lv4.prefab","","","","77.51;4;20.54","Tips_CardAchieve_109",""),
[110001] = New(110001,110002,4,2,0,"科幻风球员(书店)",{{3013, 2007,2011,2017,2009,2018,1030,},},"","Achieve/Img_Bookshop_Lv1",nil,"",{{"facility_upcost_pp_sub",3,},},"Build/Other/Special/Bookshop/Bookshop_Lv1.prefab","Build/Other/Special/Bookshop/Truck_Bookshop.prefab","Bookshop","-54.95;1.5;23.35","-56.75;3.8;23.35","Tips_CardAchieve_110","0;155;0"),
[110002] = New(110002,110003,4,4,0,"科幻风球员(书店)",{{3013, 2007,2011,2017,2009,2018,1030,},},"","Achieve/Img_Bookshop_Lv2",nil,"",{{"facility_upcost_pp_sub",5.5,},},"Build/Other/Special/Bookshop/Bookshop_Lv2.prefab","","","","-56.75;3.8;23.35","Tips_CardAchieve_110",""),
[110003] = New(110003,110004,4,6,0,"科幻风球员(书店)",{{3013, 2007,2011,2017,2009,2018,1030,},},"","Achieve/Img_Bookshop_Lv3",nil,"",{{"facility_upcost_pp_sub",7.5,},},"Build/Other/Special/Bookshop/Bookshop_Lv3.prefab","","","","-56.75;3.8;23.35","Tips_CardAchieve_110",""),
[110004] = New(110004,110005,4,8,0,"科幻风球员(书店)",{{3013, 2007,2011,2017,2009,2018,1030,},},"","Achieve/Img_Bookshop_Lv4",nil,"",{{"facility_upcost_pp_sub",9,},},"Build/Other/Special/Bookshop/Bookshop_Lv4.prefab","","","","-56.75;5.5;23.35","Tips_CardAchieve_110",""),
[110005] = New(110005,0,4,10,0,"科幻风球员(书店)",{{3013, 2007,2011,2017,2009,2018,1030,},},"","Achieve/Img_Bookshop_Lv4",nil,"",{{"facility_upcost_pp_sub",10,},},"Build/Other/Special/Bookshop/Bookshop_Lv4.prefab","","","","-56.75;5.5;23.35","Tips_CardAchieve_110",""),
[111001] = New(111001,111002,3,2,2,"秘书(医院)",{{"secretary",},},"Build/att_secretary","Achieve/Img_Hospital_Lv1",{{"purchase",42001,},},"Achieve_extra_factor_115001",{{"bitcoin_addition_pp_add",7.8,},},"Build/Other/Special/Hospital/Hospital_Lv1.prefab","Build/Other/Special/Hospital/Truck_Hospital.prefab","Hospital","-36.27;1.6;-28.59","-36.43;5;-27.94","Tips_CardAchieve_111","0;78;0"),
[111002] = New(111002,111003,3,4,2,"秘书(医院)",{{"secretary",},},"Build/att_secretary","Achieve/Img_Hospital_Lv2",{{"purchase",42001,},},"Achieve_extra_factor_115001",{{"bitcoin_addition_pp_add",14.3,},},"Build/Other/Special/Hospital/Hospital_Lv2.prefab","","","","-36.43;5;-27.94","Tips_CardAchieve_111",""),
[111003] = New(111003,111004,3,6,2,"秘书(医院)",{{"secretary",},},"Build/att_secretary","Achieve/Img_Hospital_Lv3",{{"purchase",42001,},},"Achieve_extra_factor_115001",{{"bitcoin_addition_pp_add",19.5,},},"Build/Other/Special/Hospital/Hospital_Lv3.prefab","","","","-36.43;5;-27.94","Tips_CardAchieve_111",""),
[111004] = New(111004,111005,3,8,2,"秘书(医院)",{{"secretary",},},"Build/att_secretary","Achieve/Img_Hospital_Lv3",{{"purchase",42001,},},"Achieve_extra_factor_115001",{{"bitcoin_addition_pp_add",23.4,},},"Build/Other/Special/Hospital/Hospital_Lv3.prefab","","","","-36.43;5;-27.94","Tips_CardAchieve_111",""),
[111005] = New(111005,0,3,10,2,"秘书(医院)",{{"secretary",},},"Build/att_secretary","Achieve/Img_Hospital_Lv3",{{"purchase",42001,},},"Achieve_extra_factor_115001",{{"bitcoin_addition_pp_add",26,},},"Build/Other/Special/Hospital/Hospital_Lv3.prefab","","","","-36.43;5;-27.94","Tips_CardAchieve_111",""),
[112001] = New(112001,112002,5,2,2,"离柜不负责(加油站)",{{"cashier",},},"Build/att_cashier","Achieve/Img_GasStation_Lv1",nil,"",{{"facility_use_pp_add",8.35,},},"Build/Other/Special/GasStation01/GasStation_Lv1.prefab","Build/Other/Special/GasStation01/Truck_GasStation01.prefab","GasStation01","72.73;1.5;-7.34","73;4;-5.34","Tips_CardAchieve_112","0;0;0"),
[112002] = New(112002,112003,5,4,2,"离柜不负责(加油站)",{{"cashier",},},"Build/att_cashier","Achieve/Img_GasStation_Lv2",nil,"",{{"facility_use_pp_add",16.4,},},"Build/Other/Special/GasStation01/GasStation_Lv2.prefab","","","","73;4;-5.34","Tips_CardAchieve_112",""),
[112003] = New(112003,112004,5,6,2,"离柜不负责(加油站)",{{"cashier",},},"Build/att_cashier","Achieve/Img_GasStation_Lv3",nil,"",{{"facility_use_pp_add",24.1,},},"Build/Other/Special/GasStation01/GasStation_Lv3.prefab","","","","73;4;-5.34","Tips_CardAchieve_112",""),
[112004] = New(112004,112005,5,8,2,"离柜不负责(加油站)",{{"cashier",},},"Build/att_cashier","Achieve/Img_GasStation_Lv4",nil,"",{{"facility_use_pp_add",31.45,},},"Build/Other/Special/GasStation01/GasStation_Lv4.prefab","","","","73;4;-5.34","Tips_CardAchieve_112",""),
[112005] = New(112005,0,5,10,2,"离柜不负责(加油站)",{{"cashier",},},"Build/att_cashier","Achieve/Img_GasStation_Lv4",nil,"",{{"facility_use_pp_add",38.5,},},"Build/Other/Special/GasStation01/GasStation_Lv4.prefab","","","","73;4;-5.34","Tips_CardAchieve_112",""),
[113001] = New(113001,113002,5,2,2,"教练我想学棒球(购物中心)",{{"coach",},},"Build/att_CourseCoach","Achieve/Img_Shop_Lv1",nil,"",{{"course_up_pp_sub",4.5,},},"Build/Other/Special/Shop/Shop_Lv1.prefab","Build/Other/Special/Shop/Truck_Shop.prefab","Shop","-55.64;1.5;59.5","-57.34;5.5;63.45","Tips_CardAchieve_113","0;93;0"),
[113002] = New(113002,113003,6,4,2,"教练我想学棒球(购物中心)",{{"coach",},},"Build/att_CourseCoach","Achieve/Img_Shop_Lv2",nil,"",{{"course_up_pp_sub",8.25,},},"Build/Other/Special/Shop/Shop_Lv2.prefab","","","","-57.34;5.5;63.45","Tips_CardAchieve_113",""),
[113003] = New(113003,113004,7,6,2,"教练我想学棒球(购物中心)",{{"coach",},},"Build/att_CourseCoach","Achieve/Img_Shop_Lv3",nil,"",{{"course_up_pp_sub",11.25,},},"Build/Other/Special/Shop/Shop_Lv3.prefab","","","","-57.34;6;63.45","Tips_CardAchieve_113",""),
[113004] = New(113004,113005,8,8,2,"教练我想学棒球(购物中心)",{{"coach",},},"Build/att_CourseCoach","Achieve/Img_Shop_Lv3",nil,"",{{"course_up_pp_sub",13.5,},},"Build/Other/Special/Shop/Shop_Lv3.prefab","","","","-57.34;6;63.45","Tips_CardAchieve_113",""),
[113005] = New(113005,0,8,10,2,"教练我想学棒球(购物中心)",{{"coach",},},"Build/att_CourseCoach","Achieve/Img_Shop_Lv3",nil,"",{{"course_up_pp_sub",15,},},"Build/Other/Special/Shop/Shop_Lv3.prefab","","","","-57.34;6;63.45","Tips_CardAchieve_113",""),
[114001] = New(114001,114002,5,2,0,"黑暗生物(酒吧)",{{3011,3008,3002,2019,2013,2005,1022,1027,},},"","Achieve/Img_Bar_Lv1",nil,"",{{"cafe_profit_pp_add",6,},},"Build/Other/Special/Bar/Bar_Lv1.prefab","Build/Other/Special/Bar/Truck_Bar.prefab","Bar","36.22;1.5;86.63","34.16;4.5;86.85","Tips_CardAchieve_114","0;115;0"),
[114002] = New(114002,114003,5,4,0,"黑暗生物(酒吧)",{{3011,3008,3002,2019,2013,2005,1022,1027,},},"","Achieve/Img_Bar_Lv2",nil,"",{{"cafe_profit_pp_add",11,},},"Build/Other/Special/Bar/Bar_Lv2.prefab","","","","34.16;4.5;86.85","Tips_CardAchieve_114",""),
[114003] = New(114003,114004,5,6,0,"黑暗生物(酒吧)",{{3011,3008,3002,2019,2013,2005,1022,1027,},},"","Achieve/Img_Bar_Lv3",nil,"",{{"cafe_profit_pp_add",15,},},"Build/Other/Special/Bar/Bar_Lv3.prefab","","","","34.16;4.5;86.85","Tips_CardAchieve_114",""),
[114004] = New(114004,114005,5,8,0,"黑暗生物(酒吧)",{{3011,3008,3002,2019,2013,2005,1022,1027,},},"","Achieve/Img_Bar_Lv4",nil,"",{{"cafe_profit_pp_add",18,},},"Build/Other/Special/Bar/Bar_Lv4.prefab","","","","34.16;5.8;86.85","Tips_CardAchieve_114",""),
[114005] = New(114005,0,5,10,0,"黑暗生物(酒吧)",{{3011,3008,3002,2019,2013,2005,1022,1027,},},"","Achieve/Img_Bar_Lv4",nil,"",{{"cafe_profit_pp_add",20,},},"Build/Other/Special/Bar/Bar_Lv4.prefab","","","","34.16;5.8;86.85","Tips_CardAchieve_114",""),
[115001] = New(115001,115002,6,2,0,"先生慢走(电影院)",{{4005,3013,2017,2005,1014,1017,},},"","Achieve/Img_Cinema_Lv1",nil,"",{{"onhook_gain_pp_add",6,},},"Build/Other/Special/Cinema/Cinema_Lv1.prefab","Build/Other/Special/Cinema/Truck_Cinema.prefab","Cinema","-57.4;1.5;37","-57.75;5.8;37.3","Tips_CardAchieve_115","0;0;0"),
[115002] = New(115002,115003,6,4,0,"先生慢走(电影院)",{{4005,3013,2017,2005,1014,1017,},},"","Achieve/Img_Cinema_Lv2",nil,"",{{"onhook_gain_pp_add",11,},},"Build/Other/Special/Cinema/Cinema_Lv2.prefab","","","","-57.75;5.8;37.3","Tips_CardAchieve_115",""),
[115003] = New(115003,115004,6,6,0,"先生慢走(电影院)",{{4005,3013,2017,2005,1014,1017,},},"","Achieve/Img_Cinema_Lv3",nil,"",{{"onhook_gain_pp_add",15,},},"Build/Other/Special/Cinema/Cinema_Lv3.prefab","","","","-57.75;5.8;37.3","Tips_CardAchieve_115",""),
[115004] = New(115004,115005,6,8,0,"先生慢走(电影院)",{{4005,3013,2017,2005,1014,1017,},},"","Achieve/Img_Cinema_Lv4",nil,"",{{"onhook_gain_pp_add",18,},},"Build/Other/Special/Cinema/Cinema_Lv4.prefab","","","","-57.75;5.8;37.3","Tips_CardAchieve_115",""),
[115005] = New(115005,0,6,10,0,"先生慢走(电影院)",{{4005,3013,2017,2005,1014,1017,},},"","Achieve/Img_Cinema_Lv4",nil,"",{{"onhook_gain_pp_add",20,},},"Build/Other/Special/Cinema/Cinema_Lv4.prefab","","","","-57.75;5.8;37.3","Tips_CardAchieve_115",""),
[116001] = New(116001,116002,5,2,0,"动物朋友(奢侈品店)",{{3005,3006,2002,2010,2016,1008,1004,1016,1021,},},"","Achieve/Img_Luxuries_Lv1",nil,"",{{"all_value_up_pp_add",3,},},"Build/Other/Special/Luxuries/Luxuries_Lv1.prefab","Build/Other/Special/Luxuries/Truck_Luxuries.prefab","Luxuries","-57.3;1.5;45.35","-57.3;5.5;45.35","Tips_CardAchieve_116","0;100;0"),
[116002] = New(116002,116003,5,4,0,"动物朋友(奢侈品店)",{{3005,3006,2002,2010,2016,1008,1004,1016,1021,},},"","Achieve/Img_Luxuries_Lv2",nil,"",{{"all_value_up_pp_add",5.5,},},"Build/Other/Special/Luxuries/Luxuries_Lv2.prefab","","","","-57.3;5.5;45.35","Tips_CardAchieve_116",""),
[116003] = New(116003,116004,5,6,0,"动物朋友(奢侈品店)",{{3005,3006,2002,2010,2016,1008,1004,1016,1021,},},"","Achieve/Img_Luxuries_Lv3",nil,"",{{"all_value_up_pp_add",7.5,},},"Build/Other/Special/Luxuries/Luxuries_Lv3.prefab","","","","-57.3;5.5;45.35","Tips_CardAchieve_116",""),
[116004] = New(116004,116005,5,8,0,"动物朋友(奢侈品店)",{{3005,3006,2002,2010,2016,1008,1004,1016,1021,},},"","Achieve/Img_Luxuries_Lv3",nil,"",{{"all_value_up_pp_add",9,},},"Build/Other/Special/Luxuries/Luxuries_Lv3.prefab","","","","-57.3;5.5;45.35","Tips_CardAchieve_116",""),
[116005] = New(116005,0,5,10,0,"动物朋友(奢侈品店)",{{3005,3006,2002,2010,2016,1008,1004,1016,1021,},},"","Achieve/Img_Luxuries_Lv3",nil,"",{{"all_value_up_pp_add",10,},},"Build/Other/Special/Luxuries/Luxuries_Lv3.prefab","","","","-57.3;5.5;45.35","Tips_CardAchieve_116",""),
[117001] = New(117001,117002,2,2,0,"神话时代(教堂)",{{4001,3005,3010,3012,3001,3015,},},"","Achieve/Img_Church_Lv1",nil,"",{{"sports_facilitie_pp_add",6,},},"Build/Other/Special/Church/Church_Lv1.prefab","Build/Other/Special/Church/Truck_Church.prefab","Church","-57;1.5;14.739","-56.9;5.5;15.15","Tips_CardAchieve_117","0;150;0"),
[117002] = New(117002,117003,2,4,0,"神话时代(教堂)",{{4001,3005,3010,3012,3001,3015,},},"","Achieve/Img_Church_Lv2",nil,"",{{"sports_facilitie_pp_add",11,},},"Build/Other/Special/Church/Church_Lv2.prefab","","","","-56.9;5.5;15.15","Tips_CardAchieve_117",""),
[117003] = New(117003,117004,3,6,0,"神话时代(教堂)",{{4001,3005,3010,3012,3001,3015,},},"","Achieve/Img_Church_Lv3",nil,"",{{"sports_facilitie_pp_add",15,},},"Build/Other/Special/Church/Church_Lv3.prefab","","","","-56.9;5.5;15.15","Tips_CardAchieve_117",""),
[117004] = New(117004,117005,3,8,0,"神话时代(教堂)",{{4001,3005,3010,3012,3001,3015,},},"","Achieve/Img_Church_Lv4",nil,"",{{"sports_facilitie_pp_add",18,},},"Build/Other/Special/Church/Church_Lv4.prefab","","","","-56.9;5.5;15.15","Tips_CardAchieve_117",""),
[117005] = New(117005,0,3,10,0,"神话时代(教堂)",{{4001,3005,3010,3012,3001,3015,},},"","Achieve/Img_Church_Lv4",nil,"",{{"sports_facilitie_pp_add",20,},},"Build/Other/Special/Church/Church_Lv4.prefab","","","","-56.9;5.5;15.15","Tips_CardAchieve_117",""),
[118001] = New(118001,118002,6,2,2,"时间管理大师(便利店)",{{"admin",},},"Build/att_administrators","Achieve/Img_GroceryStore_Lv1",nil,"",{{"exp_pp_add",4.5,},},"Build/Other/Special/GroceryStore/GroceryStore_Lv1.prefab","Build/Other/Special/GroceryStore/Truck_GroceryStore.prefab","GroceryStore","70;1.5;17.5","68.5;3.9;18.6","Tips_CardAchieve_118","0;93;0"),
[118002] = New(118002,118003,6,4,2,"时间管理大师(便利店)",{{"admin",},},"Build/att_administrators","Achieve/Img_GroceryStore_Lv2",nil,"",{{"exp_pp_add",8.25,},},"Build/Other/Special/GroceryStore/GroceryStore_Lv2.prefab","","","","68.5;3.9;18.6","Tips_CardAchieve_118",""),
[118003] = New(118003,118004,6,6,2,"时间管理大师(便利店)",{{"admin",},},"Build/att_administrators","Achieve/Img_GroceryStore_Lv3",nil,"",{{"exp_pp_add",11.25,},},"Build/Other/Special/GroceryStore/GroceryStore_Lv3.prefab","","","","68.5;5;18.6","Tips_CardAchieve_118",""),
[118004] = New(118004,118005,6,8,2,"时间管理大师(便利店)",{{"admin",},},"Build/att_administrators","Achieve/Img_GroceryStore_Lv3",nil,"",{{"exp_pp_add",13.5,},},"Build/Other/Special/GroceryStore/GroceryStore_Lv3.prefab","","","","68.5;5;18.6","Tips_CardAchieve_118",""),
[118005] = New(118005,0,6,10,2,"时间管理大师(便利店)",{{"admin",},},"Build/att_administrators","Achieve/Img_GroceryStore_Lv3",nil,"",{{"exp_pp_add",15,},},"Build/Other/Special/GroceryStore/GroceryStore_Lv3.prefab","","","","68.5;5;18.6","Tips_CardAchieve_118",""),
}
end