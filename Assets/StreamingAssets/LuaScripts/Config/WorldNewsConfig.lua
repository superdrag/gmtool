
do
local function New(a0,a2,a3,a4,a5,a6)
	return {id=a0,icon=a2,title=a3,desc=a4,condition=a5,top_icon=a6,}
end
LuaConfig["WorldNewsConfig"] = {
["1001"] = New("1001","Worldnews/title_room01","worldnews_title_1001","worldnews_describe_1001",{"vpcard_count",20,},"BasicFunctions/title_ArenaUnlocked"),
["1003"] = New("1003","Worldnews/title_room05","worldnews_title_1003","worldnews_describe_1003",{"vpcard_count",2700,},"BasicFunctions/title_ArenaUnlocked"),
["1004"] = New("1004","Worldnews/title_room07","worldnews_title_1002","worldnews_describe_1004",{"vpcard_count",1700,},"BasicFunctions/title_ArenaUnlocked"),
["1006"] = New("1006","Worldnews/title_room03","worldnews_title_1001","worldnews_describe_1006",{"vpcard_count",1400,},"BasicFunctions/title_ArenaUnlocked"),
["1007"] = New("1007","Worldnews/title_room12","worldnews_title_1006","worldnews_describe_1007",{"vpcard_count",400,},"BasicFunctions/title_ArenaUnlocked"),
["1008"] = New("1008","Worldnews/title_room11","worldnews_title_1006","worldnews_describe_1008",{"vpcard_count",1200,},"BasicFunctions/title_ArenaUnlocked"),
["1009"] = New("1009","Worldnews/title_room08","worldnews_title_1006","worldnews_describe_1009",{"vpcard_count",2500,},"BasicFunctions/title_ArenaUnlocked"),
["1010"] = New("1010","Worldnews/title_room10","worldnews_title_1006","worldnews_describe_1010",{"vpcard_count",4500,},"BasicFunctions/title_ArenaUnlocked"),
["1011"] = New("1011","Worldnews/title_room09","worldnews_title_1006","worldnews_describe_1011",{"vpcard_count",2000,},"BasicFunctions/title_ArenaUnlocked"),
}
end