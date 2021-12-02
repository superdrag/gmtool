
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9)
	return {id=a0,Good=a2,Normal=a3,Bad=a4,Worst=a5,icon=a6,name=a7,desc=a8,order=a9,}
end
LuaConfig["RoomEffectConfig"] = {
["cleanliness"] = New("cleanliness",{0.1,"60-70",4,"5-5",},{0.2,"50-60",4,"5-5",},{0.3,"40-50",4,"5-5",},{0.4,"30-40",4,"5-5",},"BasicFunctions/RoomBuff0002","Roomvalue_name_cleanliness","Roomvalue_desc_cleanliness",1),
["safety"] = New("safety",{1,"150-250",1,},{1,"120-150",1,},{1,"120-150",2,},{1,"90-120",3,},"BasicFunctions/RoomBuff0001","Roomvalue_name_safety","Roomvalue_desc_safety",2),
["upkeep"] = New("upkeep",{0.0001,},{0.0005,},{0.003,},{0.004,},"BasicFunctions/RoomBuff0004","Roomvalue_name_upkeep","Roomvalue_desc_upkeep",3),
["SQI"] = New("SQI",{0.8,},{1,},{1.2,},{1.4,},"BasicFunctions/RoomBuff0003","Roomvalue_name_SQI","Roomvalue_desc_SQI",4),
["ardor"] = New("ardor",{5,},{3,},{1,},{0,},"BasicFunctions/RoomBuff0006","Roomvalue_name_ardor","Roomvalue_desc_ardor",5),
["consume"] = New("consume",{0,},{0.015,},{0.004,},{0.006,},"BasicFunctions/RoomBuff0005","Roomvalue_name_consume","Roomvalue_desc_consume",6),
["gross"] = New("gross",{2,},{1.5,},{1,},{0.8,},"","","",0),
}
end