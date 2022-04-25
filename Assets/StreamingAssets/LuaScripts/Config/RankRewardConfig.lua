
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,ranking=a1,daily_reward=a2,final_reward=a3,daily_reward_show=a4,final_reward_show=a5,}
end
LuaConfig["RankRewardConfig"] = {
[1] = New(1,1,"Currency;diamond;120","Card;4003;55/Rankbuilding;10001;1",{{"Currency","diamond",120,},},{{"Card",4003,55,},{"Rankbuilding",10001,1,},}),
[2] = New(2,3,"Currency;diamond;110","Card;4003;50/Rankbuilding;10002;1",{{"Currency","diamond",110,},},{{"Card",4003,50,},{"Rankbuilding",10002,1,},}),
[3] = New(3,10,"Currency;diamond;100","Card;4003;45/Rankbuilding;10003;1",{{"Currency","diamond",100,},},{{"Card",4003,45,},{"Rankbuilding",10003,1,},}),
[4] = New(4,20,"Currency;diamond;90","Card;4003;40",{{"Currency","diamond",90,},},{{"Card",4003,40,},}),
[5] = New(5,50,"Currency;diamond;80","Card;4003;30",{{"Currency","diamond",80,},},{{"Card",4003,30,},}),
}
end