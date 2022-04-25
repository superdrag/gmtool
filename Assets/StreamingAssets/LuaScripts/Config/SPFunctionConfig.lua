
do
local function New(a0,a1,a2,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)
	return {id=a0,module=a1,name=a2,modulecolor=a4,unlock=a5,desc=a6,functions=a7,parm=a8,fun_desc=a9,role_icon=a10,function_icon=a11,functionsummary_icon=a12,dialog=a13,unlockicon=a14,price=a15,roleID=a16,birthPoint=a17,}
end
LuaConfig["SPFunctionConfig"] = {
[41002] = New(41002,5001,"name_41001",1,{{"user_layering",0,},},"describe_41001","noads",nil,"SPFunction_describe_41001","Shop01/title_PrivilegedNPC01","Shop/F_att_advertisement","Shop/F_att_advertisement","dialogue_41001","Shop01/title_PrivilegedNPC01",10,121001,"-4.338;0;4.509"),
[42001] = New(42001,5008,"name_42001",2,{{"user_layering",1,},},"describe_42001","investor",nil,"SPFunction_describe_42001","Shop01/title_PrivilegedNPC06","Shop/F_att_investor","Shop/F_att_investor","dialogue_42001","Shop01/title_PrivilegedNPC06",20,112003,""),
[43001] = New(43001,5005,"name_43001",2,{{"user_layering",1,},},"describe_43001","tour_guide_num",{90,},"SPFunction_describe_43001","Shop01/title_PrivilegedNPC03","Shop/F_att_time01","Shop/F_att_time02","dialogue_43001","Shop01/title_PrivilegedNPC03",7,123001,"4.03;0;87"),
[44001] = New(44001,5002,"name_44001",1,{{"user_layering",0,},},"describe_44001","on-hook",{6,},"SPFunction_describe_44001","Shop01/title_PrivilegedNPC04","Shop/F_att_Administration01","Shop/F_att_Administration02","dialogue_44001","Shop01/title_PrivilegedNPC04",2,118001,"20.37;0;15.36"),
[45001] = New(45001,5004,"name_45001",1,{{"user_layering",0,},},"describe_45001","autoexpel",{0.5,},"SPFunction_describe_45001","Shop01/title_PrivilegedNPC02","Shop/F_att_Finance01","Shop/F_att_Finance02","dialogue_45001","Shop01/title_PrivilegedNPC02",3,120001,"9.03;0;-2.01"),
[46001] = New(46001,5006,"name_46001",2,{{"user_layering",1,},},"describe_46001","convert",{0.2,},"SPFunction_describe_46001","Shop01/title_PrivilegedNPC08","Shop/F_att_propaganda01","Shop/F_att_propaganda02","dialogue_46001","Shop01/title_PrivilegedNPC08",5,122001,"-1.9;0;-6.247"),
[47001] = New(47001,5003,"name_47001",1,{{"user_layering",0,},},"describe_47001","autoclean",{0.1,},"SPFunction_describe_47001","Shop01/title_PrivilegedNPC05","Shop/F_att_time01","Shop/F_att_time02","dialogue_47001","Shop01/title_PrivilegedNPC05",2,119001,"16.03;0;22.99"),
[48001] = New(48001,5007,"name_48001",2,{{"user_layering",1,},},"describe_48001","rate",{1,},"SPFunction_describe_48001","Shop01/title_PrivilegedNPC07","Shop/F_att_craftsman01","Shop/F_att_craftsman02","dialogue_48001","Shop01/title_PrivilegedNPC07",10,124001,""),
[49001] = New(49001,5009,"name_49001",2,{{"user_layering",0,},},"describe_49001","sax",{40,20,},"SPFunction_describe_49001","Shop01/title_PrivilegedNPC09","Leaflet/I_title_horn02","","dialogue_49001","Shop01/title_PrivilegedNPC09",2,0,""),
[41101] = New(41101,5010,"name_41101",1,{{"user_layering",0,},},"describe_49001","armoredcar",nil,"SPFunction_describe_41101","Shop01/title_PrivilegedNPC10","Leaflet/I_title_horn02","","dialogue_41101","Shop01/title_PrivilegedNPC10",2,114017,""),
}
end