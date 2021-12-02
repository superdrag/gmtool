
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordResourceConfig = 
{
["cash_name"] = New("cash_name","钞票","Cash","鈔票","紙幣","다이아몬드","wordresourceconfig"),
["diamond_name"] = New("diamond_name","钻石","Diamond","鑽石","ダイヤモンド","평가","wordresourceconfig"),
["vpcard_name"] = New("vpcard_name","游客好评","Praise","評價","評価","전단","wordresourceconfig"),
["leaflet_name"] = New("leaflet_name","喇叭","Trumpet","傳單","チラシ","경험","wordresourceconfig"),
["exp_name"] = New("exp_name","经验值","Experience value","經驗值","経験","","wordresourceconfig"),
}
TableMerge(WordConfig,WordResourceConfig)
end