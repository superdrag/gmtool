
do
local function New(a0,a1,a2,a3)
	return {id=a0,rewardid=a1,interval=a2,reward=a3,}
end
LuaConfig["DailyTaskRewardConfig"] = {
[10001] = New(10001,1001,{0,1000,},{{"Currency","cash",3500,},{"Currency","Hamburger",1,},{"Currency","PassEXP",20,},}),
[10002] = New(10002,1001,{1001,2000,},{{"Currency","cash",5000,},{"Currency","Hamburger",1,},{"Currency","PassEXP",20,},}),
[10003] = New(10003,1001,{2001,5000,},{{"Currency","cash",8000,},{"Currency","Hamburger",1,},{"Currency","PassEXP",20,},}),
[10004] = New(10004,1001,{5001,10000,},{{"Currency","cash",10000,},{"Currency","Hamburger",2,},{"Currency","PassEXP",20,},}),
[10005] = New(10005,1001,{10001,50000,},{{"Currency","cash",20000,},{"Currency","Hamburger",2,},{"Currency","PassEXP",20,},}),
[10006] = New(10006,1001,{50001,100000,},{{"Currency","cash",50000,},{"Currency","Hamburger",3,},{"Currency","PassEXP",20,},}),
[10007] = New(10007,1001,{100001,200000,},{{"Currency","cash",80000,},{"Currency","Hamburger",3,},{"Currency","PassEXP",20,},}),
[10008] = New(10008,1001,{200001,400000,},{{"Currency","cash",100000,},{"Currency","Hamburger",5,},{"Currency","PassEXP",20,},}),
[10009] = New(10009,1001,{400001,500000,},{{"Currency","cash",120000,},{"Currency","Hamburger",5,},{"Currency","PassEXP",20,},}),
[10010] = New(10010,1001,{500001,},{{"Currency","cash",150000,},{"Currency","Hamburger",5,},{"Currency","PassEXP",20,},}),
[11001] = New(11001,1011,{0,1000,},{{"Currency","diamond",30,},{"Item",2001,5,},{"Currency","PassEXP",30,},}),
[11002] = New(11002,1011,{1001,2000,},{{"Currency","diamond",30,},{"Item",2001,5,},{"Currency","PassEXP",30,},}),
[11003] = New(11003,1011,{2001,5000,},{{"Currency","diamond",30,},{"Item",2001,5,},{"Currency","PassEXP",30,},}),
[11004] = New(11004,1011,{5001,10000,},{{"Currency","diamond",30,},{"Item",2001,10,},{"Currency","PassEXP",30,},}),
[11005] = New(11005,1011,{10001,50000,},{{"Currency","diamond",30,},{"Item",2002,8,},{"Currency","PassEXP",30,},}),
[11006] = New(11006,1011,{50001,100000,},{{"Currency","diamond",30,},{"Item",2002,15,},{"Currency","PassEXP",30,},}),
[11007] = New(11007,1011,{100001,200000,},{{"Currency","diamond",30,},{"Item",2002,25,},{"Currency","PassEXP",30,},}),
[11008] = New(11008,1011,{200001,400000,},{{"Currency","diamond",30,},{"Item",2003,10,},{"Currency","PassEXP",30,},}),
[11009] = New(11009,1011,{400001,500000,},{{"Currency","diamond",30,},{"Item",2003,13,},{"Currency","PassEXP",30,},}),
[11010] = New(11010,1011,{500001,},{{"Currency","diamond",30,},{"Item",2003,15,},{"Currency","PassEXP",30,},}),
[12001] = New(12001,1021,{0,1000,},{{"Currency","leaflet3",1,},{"Currency","PassEXP",50,},}),
[12002] = New(12002,1021,{1001,2000,},{{"Currency","leaflet3",1,},{"Currency","PassEXP",50,},}),
[12003] = New(12003,1021,{2001,5000,},{{"Currency","leaflet3",1,},{"Currency","PassEXP",50,},}),
[12004] = New(12004,1021,{5001,10000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",50,},{"Currency","PassEXP",50,},}),
[12005] = New(12005,1021,{10001,50000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",150,},{"Currency","PassEXP",50,},}),
[12006] = New(12006,1021,{50001,100000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",200,},{"Currency","PassEXP",50,},}),
[12007] = New(12007,1021,{100001,200000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",250,},{"Currency","PassEXP",50,},}),
[12008] = New(12008,1021,{200001,400000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",300,},{"Currency","PassEXP",50,},}),
[12009] = New(12009,1021,{400001,500000,},{{"Currency","leaflet3",1,},{"Currency","shop_card",350,},{"Currency","PassEXP",50,},}),
[12010] = New(12010,1021,{500001,},{{"Currency","leaflet3",1,},{"Currency","shop_card",400,},{"Currency","PassEXP",50,},}),
}
end