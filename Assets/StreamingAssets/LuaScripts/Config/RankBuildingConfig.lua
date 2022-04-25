
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	return {id=a0,scenePath=a2,prefabPath=a3,name=a4,icon=a5,quality=a6,crown=a7,description=a8,picture=a9,tag=a10,}
end
LuaConfig["RankBuildingConfig"] = {
[10000] = New(10000,"SevenRankBuild","Build/Other/Street/Statue00.prefab","","","","","","",""),
[10001] = New(10001,"SevenRankBuild","Build/Other/Street/Statue01.prefab","rankbuilding_title_01","Currency/currency_rank01","legend","Arena01/att_crown01","rankbuilding_describe_01","Room/title_gold","tip_ranking_limited"),
[10002] = New(10002,"SevenRankBuild","Build/Other/Street/Statue02.prefab","rankbuilding_title_02","Currency/currency_rank02","legend","Arena01/att_crown02","rankbuilding_describe_02","Room/title_silver","tip_ranking_limited"),
[10003] = New(10003,"SevenRankBuild","Build/Other/Street/Statue03.prefab","rankbuilding_title_03","Currency/currency_rank03","legend","Arena01/att_crown03","rankbuilding_describe_03","Room/title_copper ","tip_ranking_limited"),
}
end