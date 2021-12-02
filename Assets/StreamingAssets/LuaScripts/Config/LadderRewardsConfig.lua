
do
local function New(a0,a1,a2)
	return {id=a0,ranki_interval=a1,constant=a2,}
end
LuaConfig["LadderRewardsConfig"] = {
[1] = New(1,"1,10",85293),
[2] = New(2,"11,50",28431),
[3] = New(3,"51,100",9477),
[4] = New(4,"101,500",3159),
[5] = New(5,"501,1000",1053),
[6] = New(6,"1001,5000",351),
[7] = New(7,"5001,10000",117),
[8] = New(8,"10001,30000",39),
[9] = New(9,"30000,50001",13),
}
end