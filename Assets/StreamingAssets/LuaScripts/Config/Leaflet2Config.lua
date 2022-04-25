
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19)
	return {id=a0,name=a1,free_cd=a2,stacklimit=a3,ads_max=a4,tourist=a5,tourist_ex=a6,price=a7,reward_num=a8,item_num=a9,reward_ordinary=a10,ordinary_weight=a11,reward_rare=a12,rare_weight=a13,reward_epic=a14,epic_weight=a15,reward_legend=a16,legend_weight=a17,reward_item=a18,mg=a19,}
end
LuaConfig["Leaflet2Config"] = {
[101] = New(101,"报纸",20,5,10,15,20,{"Currency","leaflet2",1,},{{0,1,},{90,10,},},{{0,0,},{0,0,},},10001,5350,11001,3100,12001,1550,13001,0,24001,10),
[102] = New(102,"广播",1410,1,0,30,40,{"Currency","leaflet3",1,},{{4,5,6,},{100,100,100,},},{{1,2,},{100,100,},},20001,5200,21001,3000,22001,1500,23001,300,24001,10),
}
end