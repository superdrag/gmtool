
do
local function New(a0,a1)
	return {key=a0,value=a1,}
end
LuaConfig["ConstConfig"] = {
	["version"] = "0.1.211217",
	["version_chengdu"] = "0.1.220415",
	["version_shenzhen"] = "0.1.220415",
	["account_url_5xgames_test"] = "https://test-baseball-api.5xgames.com",
	["account_url_5xgames"] = "https://baseball-api.5xgames.com",
	["rubbishRoomID"] = "100201/100901/101301/102601/102701/102901",
	["rubbishPointID"] = "13742/10342/13670/10525/10636/10674/13741;13765/13977/10428/10577/10685/10578/10544;12681/12642/12649/12635/12648/12606;12426/12368/12308/12290/12358;11945/11975/11964/12065/12010;12867/12785/12766/12855/12884",
	["rubbishInterval"] = "60,70/40,50/40,50/40,50/40,50/40,50",
	["rubbishProbability"] = "60",
	["rubbishProbability_sp"] = "100",
	["rubbishMaxCount"] = "5/5/5/5/5/5",
	["rubbishVpCardLimit"] = "150/240/480/620/515/21004",
	["rubbishExpelNum"] = "4",
	["rubbishExpelEffect"] = "10/2/100201;10/2/100901;10/2/101301;10/2/102601;10/2/102701;10/2/102901",
	["rubbishModel"] = "Other/RubbishA;Other/RubbishB;Other/RubbishC",
	["queue_max_count"] = "6",
	["queue_point"] = "10401",
	["LanguageOrder"] = "en/jp/de/ru/fr/it/es/pt/cn/tw;English/やまと/Deutsch/Русский/Français/Italiano/Español/Português/简体中文/繁體中文",
	["productionFieldUnlockCondition"] = "5000/6000/8000/10000",
	["productionFieldShopCard"] = "shop_card#100/500/5000/20000",
	["productionFieldDiamond"] = "diamond#10/50/150/1000",
	["equipmentSynthesisProbability"] = "100/100/100/50",
	["recoverySpeedOfBaseMaterial"] = "1",
	["energy"] = "20",
	["plastic"] = "0",
	["wood"] = "0",
	["iron"] = "0",
	["fabric"] = "0",
	["silica"] = "0",
	["leather"] = "0",
	["nylon"] = "0",
	["resin"] = "0",
	["alloy"] = "0",
	["carbonfiber"] = "0",
	["cabinetA"] = "20",
	["cabinetB"] = "20",
	["cabinetC"] = "20",
	["yieldMaxTime"] = "2",
	["mulNeedResources"] = "ios#AD",
	["offlineRateAds"] = "3",
	["offlineRateDia"] = "4",
	["offlineDiaCost"] = "30",
	["bonusConditionMultiple"] = "1.4",
	["Season_Start"] = "1618761600",
	["Season_Duration"] = "604800",
	["Free_Challenges"] = "5",
	["extra_Challenges"] = "10",
	["Ad_Increase_Challenges"] = "1",
	["Free_Sponsor_Common"] = "3",
	["Sponsor_Extra_Cost"] = "5",
	["Base_Cash"] = "400",
	["Base_Diamond"] = "5",
	["giveWayTime"] = "0.2",
	["speedUp_maxpower"] = "100",
	["speedUp_usepower"] = "-12.5",
	["speedUp_addpower"] = "0.1",
	["speedUp_times"] = "6",
	["base_view"] = "500",
	["base_view_eff"] = "33",
	["Practice_rewards_min"] = "2",
	["Practice_rewards_max"] = "4",
	["Initial_Baller"] = "1002;1",
	["initial_DrawCard"] = "1002;2/2016;1/3012;1",
	["second_DrawCard"] = "card;1001;2/card;1003;1/card;1004;2/card;2003;2/card;4002;1/currency;cash;10000/item;2001;1/item;4001;5|card;2004;2/card;1005;1/card;1006;1/card;1009;2/card;4002;1/item;2001;1/currency;shop_card;10|card;1006;2/card;1012;2/card;1013;2/card;2014;2/card;4002;1/currency;cash;20000/currency;shop_card;10|card;1017;2/card;1028;1/card;1029;2/card;1030;2/card;4002;1/currency;cash;5000|card;1005;2/card;1014;2/card;1030;2/card;2018;2/card;4002;1/currency;cash;10000/item;2001;1/item;4001;5",
	["hookADMAX"] = "5",
	["hookADReduceTime"] = "120",
	["PinduoduoHook"] = "1/1.1/1.3",
	["customer_banse"] = "500",
	["base_mas"] = "plastic/wood/iron/fabric/silica/leather/nylon",
	["Sponsor_rewards_min"] = "2",
	["Sponsor_rewards_max"] = "4",
	["Ads_Sponsor_Common"] = "5",
	["BubbleRoom2DBuild_Scale"] = "0.6/0.9",
	["BubbleRoom2DUnlock_Scale"] = "0.6/0.9",
	["BubbleRoom2DFinish_Scale"] = "0.6/0.9",
	["BubbleRoom2DQuick_Scale"] = "0.6/0.9",
	["BubbleRoom2DCash_Scale"] = "0.7/0.9",
	["BubbleBreak_Scale"] = "0.6/0.9",
	["BubbleFatToThin"] = "0.7/1",
	["Hit_Parameter"] = "34/20/45/50/375/400",
	["Cast_Parameter"] = "50/30/30/0/500/400/1.5/50/50",
	["Cast_Unlock"] = "999999",
	["player_limit_level"] = "80",
	["player_ZH"] = "ordinary#1/rare#1.2/epic#1.5/legend#2",
	["EnterTourist_Data"] = "60/9/30",
	["EnterTourist_Data_sp"] = "10/1/0",
	["PlayerSortMode"] = "power/level/star/quality",
	["worldNewsWaitTime"] = "5",
	["BattlePassLv_Exp"] = "100",
	["BattlePassLvOverflowReward"] = "Currency;BattlePassCoin;50",
	["BattlePassBuyLv"] = "1;50/5;250/10;450",
	["BattlePassInterval"] = "1",
	["BattlePassTimeOfDuration"] = "25",
	["BattlePassCost"] = "10",
	["FundCost"] = "10",
	["FundMultiple"] = "20x",
	["LamborghiniBornVpcard"] = "200",
	["Train_Data"] = "2/1",
	["Bus_Data"] = "2/1",
	["Ladder_FailReward"] = "5",
	["Passlv_Bay"] = "1/5/10",
	["Passlv_Cost"] = "100",
	["Passlv_Const"] = "0.98",
	["ArabBoss_Reward"] = "250/350/500/800/1200/2000/3000/4000/5000/6000/8000/10000/12000/15000/20000/25000/30000/40000/50000/63000/70000/78000/85000/93000/110000/120000/132000/145000/160000/175000/190000/220000/250000/300000/350000/400000/450000/500000/550000/600000/650000;600/1000/1800/2800/4400/6600/9200/12200/15800/20200/25000/30400/36400/43000/50400/58400/67000/76400/86400/97200/108600/120800/133800/147400/162000/177200/193200/210000/227600/246000/265200/285200/306200/327800/350400/373800/398200/423400/449400/476200/504000",
	["ArabBoss_ClickTime"] = "10",
	["ArabBoss_ClickIntervalTime"] = "0.3",
	["ArabBoss_CashPileNum"] = "5",
	["VillainNpcPercent"] = "80",
	["ArabBoss_Data"] = "115001/15/950",
	["ArabBoss_Room"] = "100201/100901/101301",
	["VillainNpcPercent_sp"] = "100",
	["EveryVillainNpcPercent"] = "105001/107001/116001;100/50/100",
	["EveryVillainNpcPercent_sp"] = "105001/107001/116001;16/16/16",
	["VillainTask"] = "105001/107001/116001;11000/11000/11000",
	["VillainVpcard"] = "105001/107001/116001;600/1700/2700",
	["EveryVillainNpcRoom"] = "105001/107001/116001;100201-100901-101301-101001-101201-102601-102701-102901/100201-100901-101301-102601-102701-102901/100201-100901-101301",
	["InsModelPecent"] = "10",
	["InsModelTimes"] = "3",
	["InsModelSpeed"] = "10/8",
	["InsModelReward"] = "10",
	["InsModelNoClick"] = "2",
	["InsModelRoomVpcard"] = "100201/100901/101301/102601/102701/102901;1400/1400/36000/36000/36000/36000",
	["InsModelRoomMaxNum"] = "100201/100901/101301/102601/102701/102901;4/4/4/4/4/4",
	["LessonWaitTime"] = "0.5",
	["ClearCD_Mode"] = "0",
	["ClearCD_Mode2"] = "1",
	["InsModelDelayTime"] = "2",
	["InsModelSlow"] = "0.5",
	["horn_range"] = "1",
	["sax_range"] = "20",
	["horn_Max"] = "20",
	["sax_Max"] = "20",
	["horn_ADNum"] = "15",
	["BubbleCountDown"] = "0.8/1.2",
	["cashCollectRadius"] = "2",
	["cashToFacilityRange"] = "1",
	["BubbleFacilityCountDown"] = "0.4/0.5",
	["CombatConstant_Power"] = "0.3",
	["CombatConstant_Defend"] = "0.53",
	["CombatConstant_Speed"] = "0.42",
	["CombatConstant_lucky"] = "0.35",
	["UpgradeMultiple_ordinary"] = "1.09",
	["UpgradeMultiple_rare"] = "1.1",
	["UpgradeMultiple_epic"] = "1.11",
	["UpgradeMultiple_legend"] = "1.12",
	["UpgradeMultiple"] = "1;2;3;4;5;6;7;8;9;10/1;1.2;1.6;2;2.5;3;3.5;4;4.5;5",
	["AIchallenge_Interval"] = "1",
	["AIchallenge_Probability"] = "50",
	["AIchallenge_ProbabilityMAX"] = "100",
	["AIchallenge_ProbabilityMIN"] = "0",
	["AIchallenge_Times"] = "5",
	["AICombat_Interval"] = "0.9/1.1",
	["RealArena_G1_path"] = "Arena/RealArena/RealArena_G1.prefab",
	["RealArena_G2_path"] = "Arena/RealArena/RealArena_G2.prefab",
	["RealArena_G3_path"] = "Arena/RealArena/RealArena_G3.prefab",
	["RealArena_G4_path"] = "Arena/RealArena/RealArena_G4.prefab",
	["RealArena_G5_path"] = "Arena/RealArena/RealArena_G5.prefab",
	["ChangeName_DiamondCost"] = "100",
	["ADreward_Guide"] = "11001",
	["ADIncome_stime"] = "10",
	["ADIncome_beilv"] = "3",
	["ADIncome_timemax"] = "2",
	["ExpBubble"] = "117009/52;2.763;20/1",
	["Arena_Model"] = "RealArena_G1/RealArena_G2/RealArena_G3/RealArena_G4/RealArena_G5",
	["cardbuliding_Intervaltime"] = "1",
	["ClearCD_Free"] = "15",
	["FrameChangeTime"] = "1",
	["leafletSpeedUp"] = "1.3",
	["leafletSpeedTime"] = "10",
	["QueueLimit"] = "350/450;0.2/0.2",
	["HallQueueSpace"] = "0.75/2/0/2",
	["HallQueueType"] = "10443/10401/10363;15/13/11",
	["HallQueueData"] = "10443/10401/10363;-90/-90/-90;6/5/4;0/0/0;18/18/18;-90/-90/-90;19/20/21;-135/-135/-135;5/5/5;-90/-90/-90;22/22/22;-45/-45/-45;5/5/5;-90/-90/-90;27/28/29;180/180/180;67/69/71;140/140/140;25/25/25;110/110/110;5/5/5;140/140/140;5/5/5;90/90/90;63/64/65;50/50/50;17/17/17;90/90/90;23/24/25;45/45/45;5/5/5;0/0/0;40/41/42;-20/-20/-20;20/20/20;-30/-30/-30;22/23/24;-90/-90/-90;53/53/53;-135/-135/-135;5/5/5;-90/-90/-90;23/23/23;-45/-45/-45;5/5/5;-90/-90/-90;54/55/56;-60/-60/-60;4/3/2;-90/-90/-90",
	["QueueBubble"] = "10562/10504/12651/12369/11967/12788/10443/10401/10363/12151/11295;30/30/30/30/30/30/15/15/15/15/15;30/30/30/30/30/30/15/15/15/15/15",
	["StartBubbleData"] = "TouristExpress_1016/TouristExpress_1017/TouristExpress_1018;2/2/2;Bubble/A_title_emoji01-Bubble/A_title_emoji02-Bubble/A_title_emoji02",
	["QueueBubbleData"] = "TouristExpress_1019/TouristExpress_1020/TouristExpress_1021/TouristExpress_1022;2/2/2/2;Bubble/A_title_emoji03-Bubble/A_title_emoji03-Bubble/A_title_emoji03-Bubble/A_title_emoji03;10",
	["WordBubbleData"] = "8/8",
	["arena_y"] = "15/16/20/15/20",
	["arena_z"] = "-35/-40/-45/-40/-50",
	["audience_stage"] = "0/0.33/0.66/1",
	["audience_eff"] = "0.01",
	["FullSeat_eff"] = "20",
	["time_interval"] = "5",
	["guide_disappear"] = "8",
	["BaseBaller_PR"] = "0",
	["BaseBaller_MAX"] = "50000",
	["BaseBaller_Multiple"] = "100",
	["HornRegular_num"] = "20",
	["leaflet_Intervaltime"] = "2",
	["radio_price"] = "100",
	["Fat_Data"] = "5/0.5/2/2/100/700",
	["leaflet_PurLimit"] = "100",
	["BallerEffectTime"] = "20",
	["TimeProtection"] = "2",
	["UnlockTouristWeight"] = "356",
	["DamageTime_Interval"] = "5;10",
	["Damage_Probability"] = "0.01",
	["DamageAmount_Probability_sp"] = "0",
	["DamageAmount_Interval"] = "1;2",
	["DamageAmount_Interval_sp"] = "1;3",
	["CourseDebuff"] = "30",
	["Tourist_CollectCash"] = "1",
	["Tourist_CollectCash_sp"] = "5",
	["Room_Threshold"] = "0.8;0.5;0.3;0/Good;Normal;Bad;Worst/00ffea;87ff1e;ffde00;bf2a2a",
	["Gross_Threshold"] = "0.8;0.5;0.3;0/Good;Normal;Bad;Worst/00ffea;61f81f;ffde00;ef0707",
	["Paid_facilities"] = "60abff",
	["UserLayering"] = "total;0/total;99/total;1999/single;9999",
	["TouristCashPecent"] = "20",
	["Pos_Parameter"] = "100",
	["LeafletRecovery_time"] = "40;0",
	["leafletAcceptPecent"] = "0.95",
	["rechallenge_CD"] = "600",
	["Base_Ce_Championship"] = "10000",
	["season_CD"] = "7200",
	["season_time"] = "86400",
	["rounds_times"] = "3",
	["EnemyDebuff"] = "3",
	["EnemyDebuff_Max"] = "20",
	["DailyTask_num"] = "5",
	["randomLoginBatBaller"] = "3007/3012/3001/1004/3002/2019",
	["newspaper_video"] = "2",
	["newspaper_video_max"] = "3",
	["newspaper_recover_max"] = "72",
	["InsModelAutoClickTime"] = "1",
	["AutoCollectCashInterval"] = "2",
	["AutoSendLeafletTime"] = "1",
	["tipsize"] = "300",
	["HamburgData"] = "60/30",
	["Arena_PlayerAnimation"] = "ArenaBatting/ArenaPitching/ArenaCatching/Nodded/Idle/StandGlance/Nodded/Idle/StandGlance/Nodded",
	["LeisureData"] = "8/13",
	["UnlockEquipDrawings"] = "40101/10101",
	["af_vpcard"] = "230/400/450/600/1000/1200/2000/2500/2700/3000/3500/4000/4500/22650/35000/36000/40000/55000/60000/70000/180000/200000/220000/250000/300000/400000/410000/720000/750000",
	["RollsNumberOfTimes"] = "1/3/5/8/10/12/17/30;3/5/8/10/30/60/120/180",
	["Oceans_Of_People"] = "126001/126002/126003/126004/126005",
	["LimitTaskData"] = "1000/470;490",
	["LimitTask_DiamondNum"] = "100",
	["DrawRebate_Cycle"] = "3",
	["ExpCash"] = "150/5/25",
	["af_CD_MainTask"] = "10006/10023/10041/10053/10109/10139",
	["af_CD_Guide"] = "27010/34010/45010/55010/65010",
	["af_CD_Stage"] = "100002/100005/110006/120008/130010",
	["af_CD_Vpcard"] = "230/450/500/1000/2000/3000",
	["af_CD_Room"] = "100401/100601/100901/100501/102001/101401",
	["rank_total"] = "100",
	["rank_display_number"] = "100",
	["rank_duration"] = "7",
	["rank_publicity"] = "3",
	["AI0_number"] = "10;14",
	["rank_checkout"] = "21;0",
	["MatBossNum"] = "10",
	["yieldInitialValue"] = "500",
	["DrawCard_Parameter"] = "ordinary;80;0.96/rare;90;0.96/epic;80;0.96/legend;45;0.95",
	["Card_Max"] = "220",
	["VPCheat_Value"] = "10000;1;1.1;1.2;1.3/25000;1;1.2;1.4;1.6/50000;1;1.3;1.6;2/100000;1;1.1;1.2;1.3",
	["VPAfter_ban"] = "1000",
	["Bunny_Data"] = "5",
	["MoneyCar_Data"] = "100/50",
	["ArmoredCar_Data"] = "200",
	["ShareData"] = "Currency;diamond;50",
}
end