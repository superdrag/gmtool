
do
local function New(a0,a1)
	return {id=a0,time=a1,}
end
LuaConfig["PointTimeConfig"] = {
["af_logo_first"] = New("af_logo_first","3/5/7"),
["af_hot_update_first"] = New("af_hot_update_first","3/5/7/15/30/60/120/300"),
["af_start_first"] = New("af_start_first","3/5/7"),
["af_connect_first"] = New("af_connect_first","3/5/7/15/30/60"),
["af_download_first"] = New("af_download_first","3/5/7/15/30/60/120/300"),
["af_load_first"] = New("af_load_first","3/5/7/15/30/60"),
["af_batting_first"] = New("af_batting_first","12/30/60"),
}
end