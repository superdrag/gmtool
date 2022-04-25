
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9)
	return {id=a0,sort=a2,title=a3,type=a4,target=a5,progress=a6,reward=a7,guide=a8,unlock_vpcard=a9,}
end
LuaConfig["BigTaskConfig"] = {
[10001] = New(10001,1,"BigTask_title001","unlock_area","103","1",{["diamond"]=500,},3001,0),
[10002] = New(10002,2,"BigTask_title002","win_league_level","110006","1",{["diamond"]=500,},1601,0),
[10003] = New(10003,3,"BigTask_title003","Nplayers_Nlevel","15","9",{["diamond"]=500,},0,0),
[10004] = New(10004,4,"BigTask_title004","unlock_room","101301","1",{["diamond"]=500,},2001,0),
[10005] = New(10005,5,"BigTask_title005","unlock_area","104","1",{["diamond"]=500,},3201,0),
[10006] = New(10006,6,"BigTask_title006","equipment_level","3","1",{["diamond"]=500,},0,0),
[10007] = New(10007,7,"BigTask_title007","unlock_room","102003","3",{["diamond"]=500,},4101,0),
[10008] = New(10008,8,"BigTask_title008","Nplayers_Nlevel","35","9",{["diamond"]=500,},0,0),
[10009] = New(10009,9,"BigTask_title009","win_league_level","190020","1",{["diamond"]=500,},1601,0),
[10010] = New(10010,10,"BigTask_title010","unlock_room","102701","1",{["diamond"]=500,},2001,0),
[10011] = New(10011,11,"BigTask_title011","win_league_level","290020","1",{["diamond"]=500,},1601,0),
[10012] = New(10012,12,"BigTask_title012","unlock_room","102901","1",{["diamond"]=500,},2001,0),
[10013] = New(10013,13,"BigTask_title013","win_league_level","390020","1",{["diamond"]=500,},1601,0),
[10014] = New(10014,14,"BigTask_title014","unlock_room","102005","5",{["diamond"]=500,},4101,0),
[10015] = New(10015,15,"BigTask_title015","win_league_level","490022","1",{["diamond"]=500,},1601,0),
}
end