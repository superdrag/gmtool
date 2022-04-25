
do
local function New(a0,a2,a3,a4,a5)
	return {id=a0,days_text=a2,days=a3,reward=a4,icon=a5,}
end
LuaConfig["SignConfig"] = {
[1001] = New(1001,"sign_text_1001",1,{{"Currency","Hamburger",5,},},"Menu/att_hamburger"),
[1002] = New(1002,"sign_text_1002",2,{{"Card",2017,1,},},"Player/tachie_player3017_4"),
[1003] = New(1003,"sign_text_1003",3,{{"Card",13002,1,},},"Architecture/tachie_build1200101_0"),
[1004] = New(1004,"sign_text_1004",4,{{"Currency","leaflet3",2,},},"Currency/currency_oil"),
[1005] = New(1005,"sign_text_1005",5,{{"Item",2003,5,},},"Currency/currency_oil"),
[1006] = New(1006,"sign_text_1006",6,{{"Currency","diamond",300,},},"Currency/currency_oil"),
[1007] = New(1007,"sign_text_1007",7,{{"Card",4005,1,},},"Player/tachie_player3004_4"),
}
end