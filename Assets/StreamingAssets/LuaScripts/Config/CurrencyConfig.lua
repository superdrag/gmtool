
do
local function New(a0,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)
	return {id=a0,id_order=a3,icon=a4,name=a5,description=a6,function_des=a7,source=a8,type=a9,order=a10,max=a11,initial=a12,}
end
LuaConfig["CurrencyConfig"] = {
["diamond"] = New("diamond",1,"Currency/currency_gem","currency_name_10001","currency_intro_0001","currency_func_0002","currency_get_0002","",0,9.99999999999999E+17,0),
["cash"] = New("cash",2,"Currency/currency_cash","currency_name_10002","currency_intro_0002","currency_func_0001","currency_get_0001","",0,9.99999999999999E+17,400),
["vpcard"] = New("vpcard",3,"Currency/currency_vpcard","currency_name_10003","currency_intro_0003","currency_func_0001","currency_get","",0,9.99999999999999E+17,10),
["leaflet"] = New("leaflet",4,"Currency/currency_horn","currency_name_10004","currency_intro_0004","currency_name_10004","currency_name_10004","",0,9999999,20),
["leaflet2"] = New("leaflet2",5,"Currency/currency_newspaper","currency_name_10050","currency_intro_0050","currency_name_10004","currency_name_10004","",0,999,5),
["leaflet3"] = New("leaflet3",6,"Currency/currency_radio","currency_name_10051","currency_intro_0051","currency_name_10004","currency_name_10004","",0,999,0),
["exp"] = New("exp",7,"Currency/currency_experience","currency_name_10005","currency_intro_0005","currency_func_0001","currency_get","",0,99999999,0),
["honor"] = New("honor",8,"Currency/currency_coin","currency_name_10006","currency_intro_0006","currency_func_0001","currency_get","",0,99999999,0),
["shop_card"] = New("shop_card",9,"Currency/currency_bitcoin","currency_name_10007","currency_intro_0007","currency_func_0001","currency_get","",0,9.99999999999999E+17,10),
["energy"] = New("energy",10,"Currency/currency_energy","currency_name_10008","currency_intro_0008","currency_func_0001","currency_get","",0,999999,0),
["plastic"] = New("plastic",11,"Currency/currency_plastic01","currency_name_10009","currency_intro_0009","currency_func_0003","currency_get_0003","base",19,999999,50),
["wood"] = New("wood",12,"Currency/currency_wood","currency_name_10010","currency_intro_0009","currency_func_0003","currency_get_0003","base",20,999999,0),
["iron"] = New("iron",13,"Currency/currency_iron","currency_name_10011","currency_intro_0009","currency_func_0003","currency_get_0003","base",21,999999,0),
["fabric"] = New("fabric",14,"Currency/currency_cloth","currency_name_10012","currency_intro_0009","currency_func_0003","currency_get_0003","base",22,999999,0),
["silica"] = New("silica",15,"Currency/currency_silica","currency_name_10013","currency_intro_0010","currency_func_0003","currency_get_0003","base",23,999999,0),
["leather"] = New("leather",16,"Currency/currency_leather","currency_name_10014","currency_intro_0009","currency_func_0003","currency_get_0003","base",24,999999,0),
["nylon"] = New("nylon",17,"Currency/currency_nylon","currency_name_10015","currency_intro_0009","currency_func_0003","currency_get_0003","base",25,999999,0),
["resin"] = New("resin",18,"Currency/currency_resin","currency_name_10016","currency_intro_0010","currency_func_0003","currency_get_0003","base",26,999999,0),
["alloy"] = New("alloy",19,"Currency/currency_alloy","currency_name_10017","currency_intro_0010","currency_func_0003","currency_get_0003","base",27,999999,0),
["carbonfiber"] = New("carbonfiber",20,"Currency/currency_carbon","currency_name_10018","currency_intro_0010","currency_func_0003","currency_get_0003","base",28,999999,0),
["royaljelly"] = New("royaljelly",21,"Currency/currency_royal","currency_name_10019","currency_intro_0019","currency_func_0001","currency_get","",1,999999,0),
["powdrink"] = New("powdrink",22,"Currency/currency_drink","currency_name_10020","currency_intro_0020","currency_func_0001","currency_get","",2,999999,0),
["calcium"] = New("calcium",23,"Currency/currency_ca","currency_name_10021","currency_intro_0021","currency_func_0001","currency_get","",3,999999,0),
["protein"] = New("protein",24,"Currency/currency_powder","currency_name_10022","currency_intro_0022","currency_func_0001","currency_get","",4,999999,0),
["eff_tablet"] = New("eff_tablet",25,"Currency/currency_tablet","currency_name_10023","currency_intro_0023","currency_func_0001","currency_get","",5,999999,0),
["lecithin"] = New("lecithin",26,"Currency/currency_lecithin","currency_name_10024","currency_intro_0024","currency_func_0001","currency_get","",6,999999,0),
["fish_oil"] = New("fish_oil",27,"Currency/currency_oil","currency_name_10025","currency_intro_0025","currency_func_0001","currency_get","",7,999999,0),
["voucher1"] = New("voucher1",31,"Currency/currency_voucher01","currency_name_10029","currency_intro_0029","currency_func_0001","currency_get","",8,999999,0),
["voucher2"] = New("voucher2",32,"Currency/currency_voucher02","currency_name_10030","currency_intro_0030","currency_func_0001","currency_get","",9,999999,0),
["voucher3"] = New("voucher3",33,"Currency/currency_voucher03","currency_name_10031","currency_intro_0031","currency_func_0001","currency_get","",10,999999,0),
["additives1"] = New("additives1",28,"Currency/currency_additives01","currency_name_10026","currency_intro_0026","currency_func_0001","currency_get","",11,999999,0),
["additives2"] = New("additives2",29,"Currency/currency_additives02","currency_name_10027","currency_intro_0027","currency_func_0001","currency_get","",12,999999,0),
["additives3"] = New("additives3",30,"Currency/currency_additives03","currency_name_10028","currency_intro_0028","currency_func_0001","currency_get","",13,999999,0),
["coating"] = New("coating",34,"Currency/currency_coating","currency_name_10032","currency_intro_0032","currency_func_0001","currency_get","senior",14,999999,0),
["s_alloy"] = New("s_alloy",35,"Currency/currency_salloy","currency_name_10033","currency_intro_0033","currency_func_0001","currency_get","senior",15,999999,0),
["nanotube"] = New("nanotube",36,"Currency/currency_nanotube","currency_name_10034","currency_intro_0034","currency_func_0001","currency_get","senior",16,999999,0),
["s_plastic"] = New("s_plastic",37,"Currency/currency_plastic01","currency_name_10035","currency_intro_0035","currency_func_0001","currency_get","senior",17,999999,0),
["platinor"] = New("platinor",38,"Currency/currency_platinum","currency_name_10036","currency_intro_0036","currency_func_0001","currency_get","senior",18,999999,0),
["design"] = New("design",39,"Currency/currency_drawing","currency_name_10037","currency_intro_0037","currency_func_0001","currency_get","",19,999999,0),
["star_frag"] = New("star_frag",40,"Currency/currency_paper","currency_name_10038","currency_intro_0038","currency_func_0001","currency_get","",0,999999,0),
["gold_coin"] = New("gold_coin",41,"Currency/currency_gold","currency_name_10039","currency_intro_0039","currency_func_0001","currency_get","",0,999999,0),
["gemstone"] = New("gemstone",42,"Currency/currency_gem","currency_name_10040","currency_intro_0040","currency_func_0001","currency_get","",0,999999,0),
["BattlePass"] = New("BattlePass",43,"Currency/currency_passport","currency_name_10042","currency_intro_0041","currency_func_0001","currency_get","",0,999999,0),
["PassEXP"] = New("PassEXP",44,"Currency/currency_passportexp","currency_name_10043","currency_intro_0041","currency_func_0001","currency_get","",0,999999,0),
["Activeness"] = New("Activeness",45,"Shop/C_idle_PassCheck","currency_name_10044","currency_intro_0041","currency_func_0001","currency_get","",0,999999,0),
["Rune"] = New("Rune",49,"Currency/currency_additives0202","currency_name_10045","currency_intro_0006","currency_func_0001","currency_get","",0,999999,0),
["refTimes"] = New("refTimes",50,"Currency/currency_additives0202","currency_name_10046","currency_intro_0006","currency_func_0001","currency_get","",0,10,10),
["Cardcash"] = New("Cardcash",51,"Currency/currency_money","currency_name_10002","currency_intro_0002","currency_func_0001","currency_get_0001","",0,0,0),
["HamburgerPower"] = New("HamburgerPower",52,"Currency/currency_passportexp","currency_name_10041","currency_intro_0041","currency_func_0001","currency_get","",0,999999,0),
["Hamburger"] = New("Hamburger",53,"Currency/currency_hamburger","currency_name_10041","currency_intro_0041","currency_func_0001","currency_get","",0,999999,0),
["TimeMachine"] = New("TimeMachine",54,"Currency/currency_cash","currency_name_10032","currency_intro_0032","currency_func_0001","currency_get","TimeJump",0,0,0),
}
end