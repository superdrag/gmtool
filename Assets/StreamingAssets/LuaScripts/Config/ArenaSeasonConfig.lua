
do
local function New(a0,a1,a2)
	return {id=a0,ranki_interval=a1,reward=a2,}
end
LuaConfig["ArenaSeasonConfig"] = {
[1] = New(1,"1,10",{["diamond"]=10,["cash"]=200,["plastic"]=10,}),
[2] = New(2,"11,50",{["diamond"]=10,["cash"]=200,["plastic"]=11,}),
[3] = New(3,"51,100",{["diamond"]=10,["cash"]=200,["plastic"]=12,}),
[4] = New(4,"101,500",{["diamond"]=10,["cash"]=200,["plastic"]=13,}),
[5] = New(5,"501,5000",{["diamond"]=10,["cash"]=200,["plastic"]=14,}),
[6] = New(6,"5001,10000",{["diamond"]=10,["cash"]=200,["plastic"]=15,}),
[7] = New(7,"10001,30000",{["diamond"]=10,["cash"]=200,["plastic"]=16,}),
}
end