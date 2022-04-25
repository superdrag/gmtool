
do
local function New(a0,a2,a3,a4)
	return {id=a0,animatName=a2,leftHandTool=a3,rightHandTool=a4,}
end
LuaConfig["HandToolConfig"] = {
["1001"] = New("1001","Drink","","Role/Other/F_Cup"),
["1002"] = New("1002","Walk3","","Role/Other/Phone"),
["1003"] = New("1003","StandPad","","Role/Other/Pad"),
["2001"] = New("2001","Attack","","Role/Other/Baton"),
["2002"] = New("2002","Clean","","Role/Other/Cleaner"),
["2003"] = New("2003","Repair","","Role/Other/M_wrench"),
["2004"] = New("2004","Repair","","Role/Other/F_wrench"),
["2005"] = New("2005","Waiter_Walk","","Role/Other/Plate"),
["2006"] = New("2006","StandPad","","Role/Other/Pad"),
["2007"] = New("2007","Batting","","LessonEquip/bat"),
["2008"] = New("2008","Pitching","","LessonEquip/BM_Ball_1"),
["3001"] = New("3001","Walk","","Role/Other/Stick"),
["3002"] = New("3002","Sit","","Role/Other/Stick"),
["3003"] = New("3003","Idle","","Role/Other/Stick"),
["3004"] = New("3004","Dance","","Role/Other/Golf"),
}
end