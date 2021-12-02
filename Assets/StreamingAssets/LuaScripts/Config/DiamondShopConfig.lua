
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9)
	return {id=a0,comment=a1,type=a2,num=a3,icon=a4,desc=a5,price=a6,tag=a7,percentage=a8,doubled=a9,}
end
LuaConfig["DiamondShopConfig"] = {
[11001] = New(11001,"一把钻石","diamond",60,"Shop01/title_Diamonds01","一把钻石",1,"none",3,200),
[11002] = New(11002,"一小袋宝石","diamond",330,"Shop01/title_Diamonds02","一小袋宝石",5,"none",3,200),
[11003] = New(11003,"一小桶宝石","diamond",820,"Shop01/title_Diamonds03","一小桶宝石",10,"none",3,200),
[11004] = New(11004,"一大桶宝石","diamond",1700,"Shop01/title_Diamonds04","一大桶宝石",20,"bast_deal",2,200),
[11005] = New(11005,"一小车宝石","diamond",4800,"Shop01/title_Diamonds05","一小车宝石",50,"none",2,200),
[11006] = New(11006,"一堆宝石","diamond",10400,"Shop01/title_Diamonds06","一堆宝石",60,"bast_sale",1,200),
}
end