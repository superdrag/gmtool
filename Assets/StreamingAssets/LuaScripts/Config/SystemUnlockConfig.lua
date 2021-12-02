
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,mark=a1,functions=a2,condition=a3,hide=a4,tips=a5,}
end
LuaConfig["SystemUnlockConfig"] = {
[1001] = New(1001,"竞技场","Arena",{"unlock_area",103,},false,"vpcard达到890后解锁"),
[1002] = New(1002,"菜单","Menu",{"guide_end",15010,},true,""),
[1003] = New(1003,"设置","Setting",{"guide_end",15010,},true,""),
[1004] = New(1004,"游客图鉴","Tourist_Illustration",{"guide_end",15010,},true,""),
[1005] = New(1005,"邮箱","Mail",{"guide_end",15010,},true,""),
[1006] = New(1006,"卡牌图鉴","Card_Illustration",{"facility_upgrade","101007*1",},true,""),
[1007] = New(1007,"锦标赛","Ladder",{"unlock_area",104,},false,"开发中，敬请期待"),
[1008] = New(1008,"人山人海","Multiples",{"vpcard_count",750,},true,""),
[1009] = New(1009,"管理","Management",{"facility_upgrade","101007*1",},true,""),
[1010] = New(1010,"喇叭","Speaker",{"facility_upgrade","101007*1",},true,""),
[1011] = New(1011,"加速","Speed",{"facility_upgrade","101007*1",},true,""),
[1012] = New(1012,"主线任务","Main_Task",{"guide_end",15010,},true,""),
[1013] = New(1013,"每日任务","Daily_Task",{"vpcard_count",350,},true,""),
[1014] = New(1014,"背包","Backpack",{"guide_end",15010,},true,""),
[1015] = New(1015,"赞助","Sponsor",{"vpcard_count",7815,},true,""),
[1016] = New(1016,"员工","Staff",{"facility_upgrade","101007*1",},true,""),
[1017] = New(1017,"内购商城","Shop",{"facility_upgrade","101007*1",},false,""),
[1018] = New(1018,"抽卡","Chest",{"vpcard_count",180,},true,""),
[1019] = New(1019,"球员放置","Employee",{"guide_end",26010,},true,""),
[1020] = New(1020,"游客生成","Tourist_Born",{"guide_end",10010,},false,""),
[1021] = New(1021,"击球游戏解锁","HitGame",{"guide_end",65010,},false,""),
[1022] = New(1022,"房间值管理","RoomValue",{"guide_end",31010,},true,""),
[1023] = New(1023,"竞技场自动战斗","Auto_Battle",{"first_win_game",100005,},false,"通关选拔赛后解锁"),
[1024] = New(1024,"七日登录","Sign",{"vpcard_count",500,},true,""),
[1025] = New(1025,"累计抽卡","DrawRebate",{"guide_end",27010,},true,""),
[1026] = New(1026,"C区域游客生成","EquipTourist",{"guide_end",82010,},false,""),
[1027] = New(1027,"清洁值","cleanliness",{"vpcard_count",230,},false,""),
[1028] = New(1028,"安保值","safety",{"vpcard_count",400,},false,""),
[1029] = New(1029,"修理值","upkeep",{"vpcard_count",1200,},false,""),
[1030] = New(1030,"服务值","SQI",{"vpcard_count",4500,},false,""),
[1031] = New(1031,"销售值","ardor",{"vpcard_count",2000,},false,""),
[1032] = New(1032,"收银值","consume",{"vpcard_count",2500,},false,""),
[1033] = New(1033,"长按经验药水","exp_continued",{"guide_end",71010,},false,""),
[1034] = New(1034,"加速能量补充弹窗","Speed_add",{"guide_end",10010,},false,""),
}
end