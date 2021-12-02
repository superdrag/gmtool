
do
local function New(a0,a1)
	return {id=a0,name=a1,}
end
LuaConfig["GoodsConfig"] = {
[31001] = New(31001,"战斗通行证"),
[31002] = New(31002,"通行证等级1"),
[31003] = New(31003,"通行证等级2"),
[31004] = New(31004,"通行证等级3"),
[32001] = New(32001,"基金"),
}
end