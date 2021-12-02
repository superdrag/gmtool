
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)
	return {id=a0,name=a1,free_cd=a2,stacklimit=a3,ads_max=a4,tourist=a5,tourist_ex=a6,price=a7,reward_num=a8,reward_ordinary=a9,ordinary_weight=a10,reward_rare=a11,rare_weight=a12,reward_epic=a13,epic_weight=a14,reward_legend=a15,legend_weight=a16,mg=a17,}
end
LuaConfig["LeafletConfig"] = {
[101] = New(101,"报纸",20,3,10,15,20,{"Currency","leaflet2",1,},{{0,1,},{90,10,},},10001,6383,11001,2553,12001,1064,13001,0,10),
[102] = New(102,"广播",1410,1,0,30,40,{"Currency","leaflet3",1,},{{5,6,7,8,},{100,100,100,100,},},20001,7166,21001,2034,22001,700,23001,100,10),
}
end