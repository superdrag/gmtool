
do
local function New(a0,a1,a2)
	return {id=a0,ip=a1,time=a2,}
end
LuaConfig["IPConfig"] = {
[1] = New(1,"111.111.111.111",999),
}
end