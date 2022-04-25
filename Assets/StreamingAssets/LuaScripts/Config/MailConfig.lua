
do
local function New(a0,a1,a3,a4,a5,a6)
	return {id=a0,type=a1,title=a3,content=a4,annex=a5,valid_time=a6,}
end
LuaConfig["MailConfig"] = {
[1] = New(1,"personal","7DayRank_daily_title","7DayRank_daily_content","",30),
[2] = New(2,"personal","7DayRank_final_title","7DayRank_final_content","",30),
[3] = New(3,"personal","battlepass_reward_title","battlepass_reward_content","",30),
}
end