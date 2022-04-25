
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,tab=a1,condition=a2,mark=a3,max=a4,reward=a5,}
end
LuaConfig["DrawRebateConfig"] = {
[101] = New(101,"horn",30,30,0,{{"Currency","leaflet2",1,},{"Currency","Hamburger",1,},{"Item",4001,1,},}),
[102] = New(102,"horn",55,85,0,{{"Currency","leaflet2",1,},{"Currency","Hamburger",2,},{"Item",4001,2,},}),
[103] = New(103,"horn",100,185,0,{{"Currency","leaflet2",2,},{"Currency","Hamburger",2,},{"Item",4001,2,},}),
[104] = New(104,"horn",180,365,0,{{"Currency","leaflet2",3,},{"Currency","Hamburger",2,},{"Item",4001,2,},}),
[105] = New(105,"horn",325,690,0,{{"Currency","leaflet2",4,},{"Currency","Hamburger",3,},{"Item",4001,3,},}),
[106] = New(106,"horn",585,1275,0,{{"Currency","leaflet2",5,},{"Currency","Hamburger",3,},{"Item",4001,3,},}),
[107] = New(107,"horn",1055,2330,0,{{"Currency","leaflet2",6,},{"Currency","Hamburger",3,},{"Item",4001,3,},}),
[108] = New(108,"horn",1900,4230,0,{{"Currency","leaflet2",7,},{"Currency","Hamburger",4,},{"Item",4001,4,},}),
[109] = New(109,"horn",3420,7650,0,{{"Currency","leaflet2",8,},{"Currency","Hamburger",4,},{"Item",4001,4,},}),
[110] = New(110,"horn",6160,13810,1,{{"Currency","leaflet2",9,},{"Currency","Hamburger",5,},{"Item",4001,5,},}),
[201] = New(201,"newspaper",5,5,0,{{"Item",2001,10,},{"Currency","diamond",10,},}),
[202] = New(202,"newspaper",10,15,0,{{"Currency","leaflet3",1,},{"Item",2001,10,},{"Currency","diamond",10,},}),
[203] = New(203,"newspaper",15,30,0,{{"Currency","leaflet3",1,},{"Item",2001,10,},{"Currency","diamond",10,},}),
[204] = New(204,"newspaper",20,50,0,{{"Currency","leaflet3",1,},{"Item",2001,10,},{"Currency","diamond",20,},}),
[205] = New(205,"newspaper",25,75,0,{{"Currency","leaflet3",2,},{"Item",2001,10,},{"Currency","diamond",20,},}),
[206] = New(206,"newspaper",35,110,0,{{"Currency","leaflet3",2,},{"Item",2001,10,},{"Currency","diamond",20,},}),
[207] = New(207,"newspaper",45,155,0,{{"Currency","leaflet3",2,},{"Item",2001,10,},{"Currency","diamond",30,},}),
[208] = New(208,"newspaper",55,210,0,{{"Currency","leaflet3",3,},{"Item",2001,10,},{"Currency","diamond",30,},}),
[209] = New(209,"newspaper",75,285,0,{{"Currency","leaflet3",3,},{"Item",2001,10,},{"Currency","diamond",30,},}),
[210] = New(210,"newspaper",100,385,1,{{"Currency","leaflet3",5,},{"Item",2001,10,},{"Currency","diamond",50,},}),
[301] = New(301,"broadcast",1,1,0,{{"Currency","leaflet2",1,},{"Currency","shop_card",100,},{"Item",3005,1,},}),
[302] = New(302,"broadcast",2,3,0,{{"Currency","leaflet2",2,},{"Currency","shop_card",100,},{"Item",3003,1,},}),
[303] = New(303,"broadcast",3,6,0,{{"Currency","leaflet2",4,},{"Currency","shop_card",100,},{"Item",3003,2,},}),
[304] = New(304,"broadcast",5,11,0,{{"Currency","leaflet2",8,},{"Currency","shop_card",100,},{"Item",3004,1,},}),
[305] = New(305,"broadcast",7,18,0,{{"Currency","leaflet2",10,},{"Currency","shop_card",100,},{"Item",3004,1,},}),
[306] = New(306,"broadcast",10,28,0,{{"Currency","leaflet2",15,},{"Currency","shop_card",100,},{"Item",3004,2,},}),
[307] = New(307,"broadcast",15,43,0,{{"Currency","leaflet2",20,},{"Currency","shop_card",100,},{"Item",3004,2,},}),
[308] = New(308,"broadcast",20,63,0,{{"Currency","leaflet2",25,},{"Currency","shop_card",100,},{"Item",3004,2,},}),
[309] = New(309,"broadcast",25,88,0,{{"Currency","leaflet2",30,},{"Currency","shop_card",100,},{"Item",3004,3,},}),
[310] = New(310,"broadcast",35,123,1,{{"Currency","leaflet2",35,},{"Currency","shop_card",100,},{"Item",3004,5,},}),
}
end