
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordLeafletUiConfig = 
{
["leaflet_button_10001"] = New("leaflet_button_10001","喇叭 +15","Leaflet +15","傳單 +15","チラシ+15","플라이어 +15","wordleafconfig"),
["leaflet_button_10002"] = New("leaflet_button_10002","门面升级","Facade upgrade","門面升級","ファサードのアップグレード","외관 업그레이드","wordleafconfig"),
}
TableMerge(WordConfig,WordLeafletUiConfig)
end