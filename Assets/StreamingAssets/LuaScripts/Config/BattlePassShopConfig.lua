
do
local function New(a0,a1,a2,a3)
	return {id=a0,content=a1,price=a2,limit=a3,}
end
LuaConfig["BattlePassShopConfig"] = {
[10101] = New(10101,{"Card",4006,1,},150,-1),
[10102] = New(10102,{"Card",4007,1,},150,-1),
[10103] = New(10103,{"Card",4008,1,},150,-1),
}
end