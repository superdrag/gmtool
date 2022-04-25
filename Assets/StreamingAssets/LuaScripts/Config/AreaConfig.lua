
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22)
	return {id=a0,name=a2,desc=a3,icon=a4,unlock=a5,cost=a6,unlock_time=a7,init_level=a8,prefabPath=a9,room=a10,buildPoint=a11,bubble_permanent=a12,profitPoint=a13,unlockPoint=a14,bubbleQuick=a15,scenePath=a16,initial_debris=a17,build_debris=a18,prefabPath_wall_Lv0=a19,prefabPath_ground_Lv0=a20,prefabPath_wall_Lv1=a21,prefabPath_ground_Lv1=a22,}
end
LuaConfig["AreaConfig"] = {
[101] = New(101,"build_title_name_10004","build_title_name_10004","Room/title_zone01",{["vpcard"]=0,},{["cash"]=0,},0,1,"",{100101,100201,100601,100401,100901,100501,101101,100701,101001,100801,101301,102601,101201,102701,102901,102801,},"10515",0,{-4.139,0.633,0.633,},nil,nil,"","","","","","",""),
[102] = New(102,"build_title_name_10005","room_des_030","Room/title_zone02",{["vpcard"]=3000,},{["cash"]=200000,},0,0,"",{101401,101601,101501,101901,101801,101701,},"13078",0,nil,{{35.87,2,24,},1,},{{35.87,2,24,},1,},"B_Area","Build/Truck/Lv0/TruckB_Lv0.prefab","Build/Truck/Lv1/TruckB_Lv1.prefab","Build/Wall/Lv0/W_Barea_Lv0.prefab","Build/Ground/Lv0/G_Barea_Lv0.prefab","Build/Wall/Lv1/W_B_Area_Lv1.prefab","Build/Ground/Lv1/G_BArea_Lv1.prefab"),
[103] = New(103,"build_title_name_10007","room_des_031","Room/title_zone03",{["baller"]=9,},{["cash"]=100000,},0,0,"",{102001,102101,},"15926",1,{12.03,1.44,102,},{{-2.18,0,96,},1,},{{-2.18,0,96,},1,},"Dreamcourt","","","","","",""),
[104] = New(104,"build_title_name_10006","room_des_032","Room/title_zone04",{["vpcard"]=38000,},{["cash"]=300000,},0,0,"",{102201,102301,102401,102501,},"11301",0,{37.75,4,4.84,},{{40.58,2,3.37,},1,},{{40.58,2,3.37,},1,},"C_Area","Build/Truck/Lv0/TruckC_Lv0.prefab","Build/Truck/Lv1/TruckC_Lv1.prefab","","","",""),
}
end