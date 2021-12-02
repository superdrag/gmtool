
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,name=a2,icon=a3,description=a4,source=a5,type=a6,use=a7,eff=a8,order=a9,relation_id=a10,initial=a11,}
end
LuaConfig["ItemConfig"] = {
[1001] = New(1001,"item_name_10001","Currency/currency_turbo01","description_name_10001","source_name_10001","exp_time",0,30,0,0,0),
[1008] = New(1008,"item_name_10002","Currency/currency_turbo02","description_name_10002","source_name_10002","exp_time",0,60,0,0,0),
[1009] = New(1009,"item_name_10003","Currency/currency_turbo03","description_name_10003","source_name_10003","exp_time",0,120,0,0,0),
[1010] = New(1010,"item_name_10004","Currency/currency_turbo04","description_name_10004","source_name_10004","exp_time",0,300,0,0,0),
[1011] = New(1011,"item_name_10005","Currency/currency_turbo05","description_name_10005","source_name_10005","exp_time",0,600,0,0,0),
[1002] = New(1002,"item_name_10006","Currency/currency_box01","description_name_10006","source_name_10006","gift_box",1,0,0,102,0),
[1003] = New(1003,"item_name_10007","Currency/currency_box02","description_name_10007","source_name_10007","gift_box",1,0,0,103,0),
[1004] = New(1004,"item_name_10008","Currency/currency_box03","description_name_10008","source_name_10008","gift_box",1,0,0,104,0),
[1005] = New(1005,"item_name_10009","Currency/currency_voucher01","description_name_10009","source_name_10009","ex_coupon",0,0,0,0,0),
[1006] = New(1006,"item_name_10010","Currency/currency_voucher02","description_name_10010","source_name_10010","ex_coupon",0,0,0,0,0),
[1007] = New(1007,"item_name_10011","Currency/currency_voucher03","description_name_10011","source_name_10011","ex_coupon",0,0,0,0,0),
[2001] = New(2001,"item_name_2001","Currency/currency_train001","description_name_2001","source_name_2001","exp",1,200,4,0,0),
[2002] = New(2002,"item_name_2002","Currency/currency_train002","description_name_2002","source_name_2002","exp",1,500,3,0,0),
[2003] = New(2003,"item_name_2003","Currency/currency_train003","description_name_2003","source_name_2003","exp",1,2000,2,0,0),
[2004] = New(2004,"item_name_2004","Currency/currency_train004","description_name_2004","source_name_2004","exp",1,5000,1,0,0),
[3001] = New(3001,"item_name_3001","Currency/currency_card01","description_name_3001","source_name_3001","random_card",0,0,0,50001,0),
[3002] = New(3002,"item_name_3002","Currency/currency_card02","description_name_3002","source_name_3002","random_card",0,0,0,50002,0),
[3003] = New(3003,"item_name_3003","Currency/currency_card03","description_name_3003","source_name_3003","random_card",0,0,0,50003,0),
[3004] = New(3004,"item_name_3004","Currency/currency_card04","description_name_3004","source_name_3004","random_card",0,0,0,50004,0),
[4001] = New(4001,"item_name_3005","Currency/currency_turbo03","description_name_3005","description_name_3005","hourglass",0,0,5,0,0),
}
end