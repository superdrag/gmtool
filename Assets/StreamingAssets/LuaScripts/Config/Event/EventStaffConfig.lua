LuaConfig["Event/EventStaffConfig"] = 
{
	[40000] = 
	{
		id = 40000,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "40002",
	},
	[49999] = 
	{
		id = 49999,
		eventType = "shift",
		eventArg = "10232",
		endInvoke = "41007",
	},
	[40001] = 
	{
		id = 40001,
		eventType = "serial",
		eventArg = "w_10291/w_10332/w_10295",
		endInvoke = "40000",
	},
	[40002] = 
	{
		id = 40002,
		eventType = "select_free_point",
		eventArg = "10293/10227/10189/10153/10188",
		endInvoke = "40003/40006/40009/40012/40015/",
	},
	[40003] = 
	{
		id = 40003,
		eventType = "use_point",
		eventArg = "10293",
		endInvoke = "40004",
	},
	[40004] = 
	{
		id = 40004,
		eventType = "walk",
		eventArg = "10293",
		endInvoke = "40005",
	},
	[40005] = 
	{
		id = 40005,
		eventType = "animation",
		eventArg = "Idle/600",
		endInvoke = "",
	},
	[40006] = 
	{
		id = 40006,
		eventType = "use_point",
		eventArg = "10227",
		endInvoke = "40007",
	},
	[40007] = 
	{
		id = 40007,
		eventType = "walk",
		eventArg = "10227",
		endInvoke = "40008",
	},
	[40008] = 
	{
		id = 40008,
		eventType = "animation",
		eventArg = "Idle/600",
		endInvoke = "",
	},
	[40009] = 
	{
		id = 40009,
		eventType = "use_point",
		eventArg = "10189",
		endInvoke = "40010",
	},
	[40010] = 
	{
		id = 40010,
		eventType = "walk",
		eventArg = "10189",
		endInvoke = "40011",
	},
	[40011] = 
	{
		id = 40011,
		eventType = "animation",
		eventArg = "Idle/600",
		endInvoke = "",
	},
	[40012] = 
	{
		id = 40012,
		eventType = "use_point",
		eventArg = "10153",
		endInvoke = "40013",
	},
	[40013] = 
	{
		id = 40013,
		eventType = "walk",
		eventArg = "10153",
		endInvoke = "40014",
	},
	[40014] = 
	{
		id = 40014,
		eventType = "animation",
		eventArg = "Idle/600",
		endInvoke = "",
	},
	[40015] = 
	{
		id = 40015,
		eventType = "use_point",
		eventArg = "10188",
		endInvoke = "40016",
	},
	[40016] = 
	{
		id = 40016,
		eventType = "walk",
		eventArg = "10188",
		endInvoke = "40017",
	},
	[40017] = 
	{
		id = 40017,
		eventType = "animation",
		eventArg = "Idle/600",
		endInvoke = "",
	},
	[40018] = 
	{
		id = 40018,
		eventType = "relay_reset",
		eventArg = "41007",
		endInvoke = "40001",
	},
	[40019] = 
	{
		id = 40019,
		eventType = "chase",
		eventArg = "",
		endInvoke = "40020",
	},
	[40020] = 
	{
		id = 40020,
		eventType = "check_self_int",
		eventArg = "baoan=1/2/3/4/5",
		endInvoke = "42001/43001/44001/45001/46001",
	},
	[41001] = 
	{
		id = 41001,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "41007",
	},
	[41007] = 
	{
		id = 41007,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101001/101201;16/16/16/16/16",
		endInvoke = "42001/43001/44001/45001/46001/",
	},
	[42001] = 
	{
		id = 42001,
		eventType = "walk",
		eventArg = "10737",
		endInvoke = "42002",
	},
	[42002] = 
	{
		id = 42002,
		eventType = "room_access",
		eventArg = "100201/1",
		endInvoke = "42005",
	},
	[42003] = 
	{
		id = 42003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;3",
		endInvoke = "",
	},
	[42004] = 
	{
		id = 42004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[42005] = 
	{
		id = 42005,
		eventType = "set_self_int",
		eventArg = "baoan=1",
		endInvoke = "42006",
	},
	[42006] = 
	{
		id = 42006,
		eventType = "random",
		eventArg = "16/16/16/4",
		endInvoke = "42007/42009/42011/42013",
	},
	[42007] = 
	{
		id = 42007,
		eventType = "serial",
		eventArg = "w_10706/44004/w_14796/42004/w_10559/42003",
		endInvoke = "42008",
	},
	[42008] = 
	{
		id = 42008,
		eventType = "serial",
		eventArg = "w_10454/42004/w_10376/42003",
		endInvoke = "42006",
	},
	[42009] = 
	{
		id = 42009,
		eventType = "serial",
		eventArg = "w_14868/42004/w_13740/42003",
		endInvoke = "42010",
	},
	[42010] = 
	{
		id = 42010,
		eventType = "serial",
		eventArg = "w_13670/42004/w_14657/42003",
		endInvoke = "42006",
	},
	[42011] = 
	{
		id = 42011,
		eventType = "serial",
		eventArg = "w_10457/42004/w_10527/42003",
		endInvoke = "42012",
	},
	[42012] = 
	{
		id = 42012,
		eventType = "serial",
		eventArg = "w_10527/42004/w_10601/42003",
		endInvoke = "42006",
	},
	[42013] = 
	{
		id = 42013,
		eventType = "serial",
		eventArg = "w_10672/42004",
		endInvoke = "42014",
	},
	[42014] = 
	{
		id = 42014,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "42015",
	},
	[42015] = 
	{
		id = 42015,
		eventType = "select_unlock_room",
		eventArg = "100901/101301/101001/101201;16/16/16/16/16",
		endInvoke = "43001/44001/45001/46001/42001",
	},
	[43001] = 
	{
		id = 43001,
		eventType = "walk",
		eventArg = "10580",
		endInvoke = "43002",
	},
	[43002] = 
	{
		id = 43002,
		eventType = "room_access",
		eventArg = "100901/1",
		endInvoke = "43005",
	},
	[43003] = 
	{
		id = 43003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;3",
		endInvoke = "",
	},
	[43004] = 
	{
		id = 43004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[43005] = 
	{
		id = 43005,
		eventType = "set_self_int",
		eventArg = "baoan=2",
		endInvoke = "43006",
	},
	[43006] = 
	{
		id = 43006,
		eventType = "random",
		eventArg = "16/16/16/4",
		endInvoke = "43007/43009/43011/43013",
	},
	[43007] = 
	{
		id = 43007,
		eventType = "serial",
		eventArg = "w_10544/43004/w_10579/43003/w_10576/43004",
		endInvoke = "43008",
	},
	[43008] = 
	{
		id = 43008,
		eventType = "serial",
		eventArg = "w_10577/43003/w_10470/43004",
		endInvoke = "43006",
	},
	[43009] = 
	{
		id = 43009,
		eventType = "serial",
		eventArg = "w_10349/43003/w_13907/43004",
		endInvoke = "43010",
	},
	[43010] = 
	{
		id = 43010,
		eventType = "serial",
		eventArg = "w_13689/43003/w_13835/43004",
		endInvoke = "43006",
	},
	[43011] = 
	{
		id = 43011,
		eventType = "serial",
		eventArg = "w_14048/43003/w_10389/43004",
		endInvoke = "43012",
	},
	[43012] = 
	{
		id = 43012,
		eventType = "serial",
		eventArg = "w_10504/43003/w_10613/43004",
		endInvoke = "43006",
	},
	[43013] = 
	{
		id = 43013,
		eventType = "serial",
		eventArg = "w_10652/43003",
		endInvoke = "43014",
	},
	[43014] = 
	{
		id = 43014,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "43015",
	},
	[43015] = 
	{
		id = 43015,
		eventType = "select_unlock_room",
		eventArg = "100201/101301/101001/101201;16/16/16/16/16",
		endInvoke = "42001/44001/45001/46001/43001",
	},
	[44001] = 
	{
		id = 44001,
		eventType = "walk",
		eventArg = "12688",
		endInvoke = "44002",
	},
	[44002] = 
	{
		id = 44002,
		eventType = "room_access",
		eventArg = "101301/1",
		endInvoke = "44005",
	},
	[44003] = 
	{
		id = 44003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;3",
		endInvoke = "",
	},
	[44004] = 
	{
		id = 44004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[44005] = 
	{
		id = 44005,
		eventType = "set_self_int",
		eventArg = "baoan=3",
		endInvoke = "44006",
	},
	[44006] = 
	{
		id = 44006,
		eventType = "random",
		eventArg = "16/16/16/4",
		endInvoke = "44007/44009/44011/44013",
	},
	[44007] = 
	{
		id = 44007,
		eventType = "serial",
		eventArg = "w_12668/44004/w_12647/42004",
		endInvoke = "44008",
	},
	[44008] = 
	{
		id = 44008,
		eventType = "serial",
		eventArg = "w_12635/44004/w_12625/42004",
		endInvoke = "44006",
	},
	[44009] = 
	{
		id = 44009,
		eventType = "serial",
		eventArg = "w_12639/44004/w_12641/42004",
		endInvoke = "44010",
	},
	[44010] = 
	{
		id = 44010,
		eventType = "serial",
		eventArg = "w_12653/44004/w_12672/42004",
		endInvoke = "44006",
	},
	[44011] = 
	{
		id = 44011,
		eventType = "serial",
		eventArg = "w_12689/44004/w_12678/42004",
		endInvoke = "44012",
	},
	[44012] = 
	{
		id = 44012,
		eventType = "serial",
		eventArg = "w_12658/44004/w_12676/42004",
		endInvoke = "44006",
	},
	[44013] = 
	{
		id = 44013,
		eventType = "serial",
		eventArg = "w_12692/44004",
		endInvoke = "44014",
	},
	[44014] = 
	{
		id = 44014,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "44015",
	},
	[44015] = 
	{
		id = 44015,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101001/101201;16/16/16/16/16",
		endInvoke = "42001/43001/45001/46001/44001",
	},
	[45001] = 
	{
		id = 45001,
		eventType = "walk",
		eventArg = "11612",
		endInvoke = "45002",
	},
	[45002] = 
	{
		id = 45002,
		eventType = "room_access",
		eventArg = "101001/1",
		endInvoke = "45005",
	},
	[45003] = 
	{
		id = 45003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;3",
		endInvoke = "",
	},
	[45004] = 
	{
		id = 45004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[45005] = 
	{
		id = 45005,
		eventType = "set_self_int",
		eventArg = "baoan=4",
		endInvoke = "45006",
	},
	[45006] = 
	{
		id = 45006,
		eventType = "random",
		eventArg = "16/16/16/4",
		endInvoke = "45007/45008/45009",
	},
	[45007] = 
	{
		id = 45007,
		eventType = "serial",
		eventArg = "w_11599/44004/w_11597/45004",
		endInvoke = "45006",
	},
	[45008] = 
	{
		id = 45008,
		eventType = "serial",
		eventArg = "w_11617/44004",
		endInvoke = "45006",
	},
	[45009] = 
	{
		id = 45009,
		eventType = "serial",
		eventArg = "w_11637/45004",
		endInvoke = "45010",
	},
	[45010] = 
	{
		id = 45010,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "45011",
	},
	[45011] = 
	{
		id = 45011,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101201;16/16/16/16/16",
		endInvoke = "42001/43001/44001/46001/45001",
	},
	[46001] = 
	{
		id = 46001,
		eventType = "walk",
		eventArg = "10985",
		endInvoke = "46002",
	},
	[46002] = 
	{
		id = 46002,
		eventType = "room_access",
		eventArg = "101201/1",
		endInvoke = "46005",
	},
	[46003] = 
	{
		id = 46003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;3",
		endInvoke = "",
	},
	[46004] = 
	{
		id = 46004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[46005] = 
	{
		id = 46005,
		eventType = "set_self_int",
		eventArg = "baoan=5",
		endInvoke = "46006",
	},
	[46006] = 
	{
		id = 46006,
		eventType = "random",
		eventArg = "16/16/16",
		endInvoke = "46007/46008/46009",
	},
	[46007] = 
	{
		id = 46007,
		eventType = "serial",
		eventArg = "w_11013/44004/w_11014/46004",
		endInvoke = "46009",
	},
	[46008] = 
	{
		id = 46008,
		eventType = "serial",
		eventArg = "w_11040/44004/w_11039/46004",
		endInvoke = "46009",
	},
	[46009] = 
	{
		id = 46009,
		eventType = "serial",
		eventArg = "w_11030/44004",
		endInvoke = "46010",
	},
	[46010] = 
	{
		id = 46010,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "46011",
	},
	[46011] = 
	{
		id = 46011,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101001;16/16/16/16/16",
		endInvoke = "42001/43001/44001/45001/46001",
	},
	[50000] = 
	{
		id = 50000,
		eventType = "walk",
		eventArg = "11858",
		endInvoke = "50002",
	},
	[50001] = 
	{
		id = 50001,
		eventType = "shift",
		eventArg = "11858",
		endInvoke = "50002",
	},
	[50002] = 
	{
		id = 50002,
		eventType = "select_point_by_facility",
		eventArg = "105001#11762/105002#11843/105003#11864;11848/105004#11840",
		endInvoke = "50003/50007/50011/50015/50019/50023",
	},
	[50003] = 
	{
		id = 50003,
		eventType = "walk",
		eventArg = "11762",
		endInvoke = "50004",
	},
	[50004] = 
	{
		id = 50004,
		eventType = "movefacilitypoint",
		eventArg = "105001/use1",
		endInvoke = "50005",
	},
	[50005] = 
	{
		id = 50005,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "50006",
	},
	[50006] = 
	{
		id = 50006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "50023",
	},
	[50007] = 
	{
		id = 50007,
		eventType = "walk",
		eventArg = "11843",
		endInvoke = "50008",
	},
	[50008] = 
	{
		id = 50008,
		eventType = "movefacilitypoint",
		eventArg = "105002/use1",
		endInvoke = "50009",
	},
	[50009] = 
	{
		id = 50009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "50010",
	},
	[50010] = 
	{
		id = 50010,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "50023",
	},
	[50011] = 
	{
		id = 50011,
		eventType = "walk",
		eventArg = "11864",
		endInvoke = "50012",
	},
	[50012] = 
	{
		id = 50012,
		eventType = "shiftfacilitypoint",
		eventArg = "105003/use1",
		endInvoke = "50013",
	},
	[50013] = 
	{
		id = 50013,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "50014",
	},
	[50014] = 
	{
		id = 50014,
		eventType = "animation_random",
		eventArg = "Sit;16;60",
		endInvoke = "50023",
	},
	[50015] = 
	{
		id = 50015,
		eventType = "walk",
		eventArg = "11848",
		endInvoke = "50016",
	},
	[50016] = 
	{
		id = 50016,
		eventType = "shiftfacilitypoint",
		eventArg = "105003/use2",
		endInvoke = "50017",
	},
	[50017] = 
	{
		id = 50017,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "50018",
	},
	[50018] = 
	{
		id = 50018,
		eventType = "animation_random",
		eventArg = "Sit;16;60",
		endInvoke = "50023",
	},
	[50019] = 
	{
		id = 50019,
		eventType = "walk",
		eventArg = "11864",
		endInvoke = "50020",
	},
	[50020] = 
	{
		id = 50020,
		eventType = "movefacilitypoint",
		eventArg = "105004/use1",
		endInvoke = "50021",
	},
	[50021] = 
	{
		id = 50021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "50022",
	},
	[50022] = 
	{
		id = 50022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "50023",
	},
	[50023] = 
	{
		id = 50023,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "50026/50027/50028/50029",
	},
	[50024] = 
	{
		id = 50024,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;10",
		endInvoke = "",
	},
	[50025] = 
	{
		id = 50025,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[50026] = 
	{
		id = 50026,
		eventType = "serial",
		eventArg = "w_11762/50024",
		endInvoke = "50002",
	},
	[50027] = 
	{
		id = 50027,
		eventType = "serial",
		eventArg = "w_11857/50024",
		endInvoke = "50002",
	},
	[50028] = 
	{
		id = 50028,
		eventType = "serial",
		eventArg = "w_11846/50024",
		endInvoke = "50002",
	},
	[50029] = 
	{
		id = 50029,
		eventType = "serial",
		eventArg = "w_11854/50024",
		endInvoke = "50002",
	},
	[51001] = 
	{
		id = 51001,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "51002/51003",
	},
	[51002] = 
	{
		id = 51002,
		eventType = "animation",
		eventArg = "Repair/3/useto",
		endInvoke = "",
	},
	[51003] = 
	{
		id = 51003,
		eventType = "freefacilitypoint",
		eventArg = "",
		endInvoke = "",
	},
	[60000] = 
	{
		id = 60000,
		eventType = "shift",
		eventArg = "10927",
		endInvoke = "61001",
	},
	[60001] = 
	{
		id = 60001,
		eventType = "walk",
		eventArg = "10909",
		endInvoke = "60002",
	},
	[60002] = 
	{
		id = 60002,
		eventType = "select_point_by_facility",
		eventArg = "106001#13727;14272/106002#14415;14343/106003#10910;10893;10877/106004#10929;10913;10896/106005#10930;14411/106006#14342/106007#14413/106008#14271",
		endInvoke = "60003/60007/60011/60015/60019/60023/60027/60031/60035/60039/60043/60047/60051/60055/60059/60063",
	},
	[60003] = 
	{
		id = 60003,
		eventType = "walk",
		eventArg = "13727",
		endInvoke = "60004",
	},
	[60004] = 
	{
		id = 60004,
		eventType = "movefacilitypoint",
		eventArg = "106001/use1",
		endInvoke = "60005",
	},
	[60005] = 
	{
		id = 60005,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60006",
	},
	[60006] = 
	{
		id = 60006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60007] = 
	{
		id = 60007,
		eventType = "walk",
		eventArg = "14272",
		endInvoke = "60008",
	},
	[60008] = 
	{
		id = 60008,
		eventType = "movefacilitypoint",
		eventArg = "106001/use2",
		endInvoke = "60009",
	},
	[60009] = 
	{
		id = 60009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60010",
	},
	[60010] = 
	{
		id = 60010,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60011] = 
	{
		id = 60011,
		eventType = "walk",
		eventArg = "14415",
		endInvoke = "60012",
	},
	[60012] = 
	{
		id = 60012,
		eventType = "shiftfacilitypoint",
		eventArg = "106002/use1",
		endInvoke = "60013",
	},
	[60013] = 
	{
		id = 60013,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60014",
	},
	[60014] = 
	{
		id = 60014,
		eventType = "animation_random",
		eventArg = "Sit;16;60",
		endInvoke = "60063",
	},
	[60015] = 
	{
		id = 60015,
		eventType = "walk",
		eventArg = "14343",
		endInvoke = "60016",
	},
	[60016] = 
	{
		id = 60016,
		eventType = "shiftfacilitypoint",
		eventArg = "106002/use2",
		endInvoke = "60017",
	},
	[60017] = 
	{
		id = 60017,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60018",
	},
	[60018] = 
	{
		id = 60018,
		eventType = "animation_random",
		eventArg = "Sit;16;60",
		endInvoke = "60063",
	},
	[60019] = 
	{
		id = 60019,
		eventType = "walk",
		eventArg = "10910",
		endInvoke = "60020",
	},
	[60020] = 
	{
		id = 60020,
		eventType = "movefacilitypoint",
		eventArg = "106003/use1",
		endInvoke = "60021",
	},
	[60021] = 
	{
		id = 60021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60022",
	},
	[60022] = 
	{
		id = 60022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60023] = 
	{
		id = 60023,
		eventType = "walk",
		eventArg = "10893",
		endInvoke = "60024",
	},
	[60024] = 
	{
		id = 60024,
		eventType = "movefacilitypoint",
		eventArg = "106003/use2",
		endInvoke = "60025",
	},
	[60025] = 
	{
		id = 60025,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60026",
	},
	[60026] = 
	{
		id = 60026,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60027] = 
	{
		id = 60027,
		eventType = "walk",
		eventArg = "10877",
		endInvoke = "60028",
	},
	[60028] = 
	{
		id = 60028,
		eventType = "movefacilitypoint",
		eventArg = "106003/use3",
		endInvoke = "60029",
	},
	[60029] = 
	{
		id = 60029,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60030",
	},
	[60030] = 
	{
		id = 60030,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60031] = 
	{
		id = 60031,
		eventType = "walk",
		eventArg = "10929",
		endInvoke = "60032",
	},
	[60032] = 
	{
		id = 60032,
		eventType = "movefacilitypoint",
		eventArg = "106004/use1",
		endInvoke = "60033",
	},
	[60033] = 
	{
		id = 60033,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60034",
	},
	[60034] = 
	{
		id = 60034,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60035] = 
	{
		id = 60035,
		eventType = "walk",
		eventArg = "10913",
		endInvoke = "60036",
	},
	[60036] = 
	{
		id = 60036,
		eventType = "movefacilitypoint",
		eventArg = "106004/use2",
		endInvoke = "60037",
	},
	[60037] = 
	{
		id = 60037,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60038",
	},
	[60038] = 
	{
		id = 60038,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60039] = 
	{
		id = 60039,
		eventType = "walk",
		eventArg = "10896",
		endInvoke = "60040",
	},
	[60040] = 
	{
		id = 60040,
		eventType = "movefacilitypoint",
		eventArg = "106004/use3",
		endInvoke = "60041",
	},
	[60041] = 
	{
		id = 60041,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60042",
	},
	[60042] = 
	{
		id = 60042,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60043] = 
	{
		id = 60043,
		eventType = "walk",
		eventArg = "10930",
		endInvoke = "60044",
	},
	[60044] = 
	{
		id = 60044,
		eventType = "movefacilitypoint",
		eventArg = "106005/use1",
		endInvoke = "60045",
	},
	[60045] = 
	{
		id = 60045,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60046",
	},
	[60046] = 
	{
		id = 60046,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60047] = 
	{
		id = 60047,
		eventType = "walk",
		eventArg = "14411",
		endInvoke = "60048",
	},
	[60048] = 
	{
		id = 60048,
		eventType = "movefacilitypoint",
		eventArg = "106005/use2",
		endInvoke = "60049",
	},
	[60049] = 
	{
		id = 60049,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60050",
	},
	[60050] = 
	{
		id = 60050,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60051] = 
	{
		id = 60051,
		eventType = "walk",
		eventArg = "14342",
		endInvoke = "60052",
	},
	[60052] = 
	{
		id = 60052,
		eventType = "movefacilitypoint",
		eventArg = "106006/use1",
		endInvoke = "60053",
	},
	[60053] = 
	{
		id = 60053,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60054",
	},
	[60054] = 
	{
		id = 60054,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60055] = 
	{
		id = 60055,
		eventType = "walk",
		eventArg = "14413",
		endInvoke = "60056",
	},
	[60056] = 
	{
		id = 60056,
		eventType = "movefacilitypoint",
		eventArg = "106007/use1",
		endInvoke = "60057",
	},
	[60057] = 
	{
		id = 60057,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60058",
	},
	[60058] = 
	{
		id = 60058,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60059] = 
	{
		id = 60059,
		eventType = "walk",
		eventArg = "14271",
		endInvoke = "60060",
	},
	[60060] = 
	{
		id = 60060,
		eventType = "movefacilitypoint",
		eventArg = "106007/use1",
		endInvoke = "60061",
	},
	[60061] = 
	{
		id = 60061,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "60062",
	},
	[60062] = 
	{
		id = 60062,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "60063",
	},
	[60063] = 
	{
		id = 60063,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "60066/60067/60068/60069",
	},
	[60064] = 
	{
		id = 60064,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;10",
		endInvoke = "",
	},
	[60065] = 
	{
		id = 60065,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;5",
		endInvoke = "",
	},
	[60066] = 
	{
		id = 60066,
		eventType = "serial",
		eventArg = "w_14414/60065",
		endInvoke = "60002",
	},
	[60067] = 
	{
		id = 60067,
		eventType = "serial",
		eventArg = "w_10927/60065",
		endInvoke = "60002",
	},
	[60068] = 
	{
		id = 60068,
		eventType = "serial",
		eventArg = "w_14340/60065",
		endInvoke = "60002",
	},
	[60069] = 
	{
		id = 60069,
		eventType = "serial",
		eventArg = "w_10926/60065",
		endInvoke = "60002",
	},
	[61001] = 
	{
		id = 61001,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "62003/62001",
	},
	[62001] = 
	{
		id = 62001,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101001/101301/101201;16/16/16/16/16",
		endInvoke = "63001/64001/65001/66001/67001/",
	},
	[62002] = 
	{
		id = 62002,
		eventType = "relay_reset",
		eventArg = "",
		endInvoke = "60001",
	},
	[62003] = 
	{
		id = 62003,
		eventType = "freefacilitypoint",
		eventArg = "",
		endInvoke = "",
	},
	[63001] = 
	{
		id = 63001,
		eventType = "room_access",
		eventArg = "100201/1",
		endInvoke = "63002",
	},
	[63002] = 
	{
		id = 63002,
		eventType = "walk",
		eventArg = "10773",
		endInvoke = "63003",
	},
	[63003] = 
	{
		id = 63003,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63032",
	},
	[63004] = 
	{
		id = 63004,
		eventType = "walk",
		eventArg = "13742",
		endInvoke = "63005",
	},
	[63005] = 
	{
		id = 63005,
		eventType = "check_rubbish",
		eventArg = "13742",
		endInvoke = "63006/63003",
	},
	[63006] = 
	{
		id = 63006,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63007",
	},
	[63007] = 
	{
		id = 63007,
		eventType = "clean_rubbish",
		eventArg = "13742",
		endInvoke = "63003",
	},
	[63008] = 
	{
		id = 63008,
		eventType = "walk",
		eventArg = "10342",
		endInvoke = "63009",
	},
	[63009] = 
	{
		id = 63009,
		eventType = "check_rubbish",
		eventArg = "10342",
		endInvoke = "63010/63003",
	},
	[63010] = 
	{
		id = 63010,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63011",
	},
	[63011] = 
	{
		id = 63011,
		eventType = "clean_rubbish",
		eventArg = "10342",
		endInvoke = "63003",
	},
	[63012] = 
	{
		id = 63012,
		eventType = "walk",
		eventArg = "13670",
		endInvoke = "63013",
	},
	[63013] = 
	{
		id = 63013,
		eventType = "check_rubbish",
		eventArg = "13670",
		endInvoke = "63014/63003",
	},
	[63014] = 
	{
		id = 63014,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63015",
	},
	[63015] = 
	{
		id = 63015,
		eventType = "clean_rubbish",
		eventArg = "13670",
		endInvoke = "63003",
	},
	[63016] = 
	{
		id = 63016,
		eventType = "walk",
		eventArg = "10525",
		endInvoke = "63017",
	},
	[63017] = 
	{
		id = 63017,
		eventType = "check_rubbish",
		eventArg = "10525",
		endInvoke = "63018/63003",
	},
	[63018] = 
	{
		id = 63018,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63019",
	},
	[63019] = 
	{
		id = 63019,
		eventType = "clean_rubbish",
		eventArg = "10525",
		endInvoke = "63003",
	},
	[63020] = 
	{
		id = 63020,
		eventType = "walk",
		eventArg = "10636",
		endInvoke = "63021",
	},
	[63021] = 
	{
		id = 63021,
		eventType = "check_rubbish",
		eventArg = "10636",
		endInvoke = "63022/63003",
	},
	[63022] = 
	{
		id = 63022,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63023",
	},
	[63023] = 
	{
		id = 63023,
		eventType = "clean_rubbish",
		eventArg = "10636",
		endInvoke = "63003",
	},
	[63024] = 
	{
		id = 63024,
		eventType = "walk",
		eventArg = "10674",
		endInvoke = "63025",
	},
	[63025] = 
	{
		id = 63025,
		eventType = "check_rubbish",
		eventArg = "10674",
		endInvoke = "63026/63003",
	},
	[63026] = 
	{
		id = 63026,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63027",
	},
	[63027] = 
	{
		id = 63027,
		eventType = "clean_rubbish",
		eventArg = "10674",
		endInvoke = "63003",
	},
	[63028] = 
	{
		id = 63028,
		eventType = "walk",
		eventArg = "13741",
		endInvoke = "63029",
	},
	[63029] = 
	{
		id = 63029,
		eventType = "check_rubbish",
		eventArg = "13741",
		endInvoke = "63030/63003",
	},
	[63030] = 
	{
		id = 63030,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "63031",
	},
	[63031] = 
	{
		id = 63031,
		eventType = "clean_rubbish",
		eventArg = "13741",
		endInvoke = "63003",
	},
	[63032] = 
	{
		id = 63032,
		eventType = "random",
		eventArg = "16/16/16/16/16/16/16/16",
		endInvoke = "63033/63039/63045/63051/63057/63064/63070/63075",
	},
	[63033] = 
	{
		id = 63033,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63034",
	},
	[63034] = 
	{
		id = 63034,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63035",
	},
	[63035] = 
	{
		id = 63035,
		eventType = "walk",
		eventArg = "10738",
		endInvoke = "63036",
	},
	[63036] = 
	{
		id = 63036,
		eventType = "walk",
		eventArg = "10707",
		endInvoke = "63037",
	},
	[63037] = 
	{
		id = 63037,
		eventType = "walk",
		eventArg = "10672",
		endInvoke = "63038",
	},
	[63038] = 
	{
		id = 63038,
		eventType = "walk",
		eventArg = "10637",
		endInvoke = "63039",
	},
	[63039] = 
	{
		id = 63039,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63040",
	},
	[63040] = 
	{
		id = 63040,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63041",
	},
	[63041] = 
	{
		id = 63041,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "63042",
	},
	[63042] = 
	{
		id = 63042,
		eventType = "walk",
		eventArg = "10560",
		endInvoke = "63043",
	},
	[63043] = 
	{
		id = 63043,
		eventType = "walk",
		eventArg = "10527",
		endInvoke = "63044",
	},
	[63044] = 
	{
		id = 63044,
		eventType = "walk",
		eventArg = "10496",
		endInvoke = "63045",
	},
	[63045] = 
	{
		id = 63045,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63046",
	},
	[63046] = 
	{
		id = 63046,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63047",
	},
	[63047] = 
	{
		id = 63047,
		eventType = "walk",
		eventArg = "10457",
		endInvoke = "63048",
	},
	[63048] = 
	{
		id = 63048,
		eventType = "walk",
		eventArg = "14654",
		endInvoke = "63049",
	},
	[63049] = 
	{
		id = 63049,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "63050",
	},
	[63050] = 
	{
		id = 63050,
		eventType = "walk",
		eventArg = "10338",
		endInvoke = "63051",
	},
	[63051] = 
	{
		id = 63051,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63052",
	},
	[63052] = 
	{
		id = 63052,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63053",
	},
	[63053] = 
	{
		id = 63053,
		eventType = "walk",
		eventArg = "14868",
		endInvoke = "63054",
	},
	[63054] = 
	{
		id = 63054,
		eventType = "walk",
		eventArg = "14939",
		endInvoke = "63055",
	},
	[63055] = 
	{
		id = 63055,
		eventType = "walk",
		eventArg = "14869",
		endInvoke = "63056",
	},
	[63056] = 
	{
		id = 63056,
		eventType = "walk",
		eventArg = "13740",
		endInvoke = "63057",
	},
	[63057] = 
	{
		id = 63057,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63058",
	},
	[63058] = 
	{
		id = 63058,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63059",
	},
	[63059] = 
	{
		id = 63059,
		eventType = "walk",
		eventArg = "14516",
		endInvoke = "63060",
	},
	[63060] = 
	{
		id = 63060,
		eventType = "walk",
		eventArg = "14867",
		endInvoke = "63061",
	},
	[63061] = 
	{
		id = 63061,
		eventType = "walk",
		eventArg = "14940",
		endInvoke = "63062",
	},
	[63062] = 
	{
		id = 63062,
		eventType = "walk",
		eventArg = "13670",
		endInvoke = "63063",
	},
	[63063] = 
	{
		id = 63063,
		eventType = "walk",
		eventArg = "14656",
		endInvoke = "63064",
	},
	[63064] = 
	{
		id = 63064,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63065",
	},
	[63065] = 
	{
		id = 63065,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "63066",
	},
	[63066] = 
	{
		id = 63066,
		eventType = "walk",
		eventArg = "14655",
		endInvoke = "63067",
	},
	[63067] = 
	{
		id = 63067,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "63068",
	},
	[63068] = 
	{
		id = 63068,
		eventType = "walk",
		eventArg = "10376",
		endInvoke = "63069",
	},
	[63069] = 
	{
		id = 63069,
		eventType = "walk",
		eventArg = "10415",
		endInvoke = "63070",
	},
	[63070] = 
	{
		id = 63070,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63071",
	},
	[63071] = 
	{
		id = 63071,
		eventType = "walk",
		eventArg = "10414",
		endInvoke = "63072",
	},
	[63072] = 
	{
		id = 63072,
		eventType = "walk",
		eventArg = "10454",
		endInvoke = "63073",
	},
	[63073] = 
	{
		id = 63073,
		eventType = "walk",
		eventArg = "10493",
		endInvoke = "63074",
	},
	[63074] = 
	{
		id = 63074,
		eventType = "walk",
		eventArg = "10524",
		endInvoke = "63075",
	},
	[63075] = 
	{
		id = 63075,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63076",
	},
	[63076] = 
	{
		id = 63076,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "63077",
	},
	[63077] = 
	{
		id = 63077,
		eventType = "walk",
		eventArg = "10598",
		endInvoke = "63078",
	},
	[63078] = 
	{
		id = 63078,
		eventType = "walk",
		eventArg = "10636",
		endInvoke = "63079",
	},
	[63079] = 
	{
		id = 63079,
		eventType = "walk",
		eventArg = "14796",
		endInvoke = "63080",
	},
	[63080] = 
	{
		id = 63080,
		eventType = "select_rubbish",
		eventArg = "13742/10342/13670/10525/10636/10674/13741",
		endInvoke = "63004/63008/63012/63016/63020/63024/63028/63081",
	},
	[63081] = 
	{
		id = 63081,
		eventType = "walk",
		eventArg = "10706",
		endInvoke = "63032",
	},
	[63082] = 
	{
		id = 63082,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "63083",
	},
	[63083] = 
	{
		id = 63083,
		eventType = "select_unlock_room",
		eventArg = "100901/101001/101301/101201;16/16/16/16",
		endInvoke = "64001/65001/66001/67001/63032",
	},
	[64001] = 
	{
		id = 64001,
		eventType = "room_access",
		eventArg = "100901/1",
		endInvoke = "64002",
	},
	[64002] = 
	{
		id = 64002,
		eventType = "walk",
		eventArg = "10653",
		endInvoke = "64003",
	},
	[64003] = 
	{
		id = 64003,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64032",
	},
	[64004] = 
	{
		id = 64004,
		eventType = "walk",
		eventArg = "13765",
		endInvoke = "64005",
	},
	[64005] = 
	{
		id = 64005,
		eventType = "check_rubbish",
		eventArg = "13765",
		endInvoke = "64006/64003",
	},
	[64006] = 
	{
		id = 64006,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64007",
	},
	[64007] = 
	{
		id = 64007,
		eventType = "clean_rubbish",
		eventArg = "13765",
		endInvoke = "64003",
	},
	[64008] = 
	{
		id = 64008,
		eventType = "walk",
		eventArg = "13977",
		endInvoke = "64009",
	},
	[64009] = 
	{
		id = 64009,
		eventType = "check_rubbish",
		eventArg = "13977",
		endInvoke = "64010",
	},
	[64010] = 
	{
		id = 64010,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64011",
	},
	[64011] = 
	{
		id = 64011,
		eventType = "clean_rubbish",
		eventArg = "13977",
		endInvoke = "64003",
	},
	[64012] = 
	{
		id = 64012,
		eventType = "walk",
		eventArg = "10428",
		endInvoke = "64013",
	},
	[64013] = 
	{
		id = 64013,
		eventType = "check_rubbish",
		eventArg = "10428",
		endInvoke = "64014/64003",
	},
	[64014] = 
	{
		id = 64014,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64015",
	},
	[64015] = 
	{
		id = 64015,
		eventType = "clean_rubbish",
		eventArg = "10428",
		endInvoke = "64003",
	},
	[64016] = 
	{
		id = 64016,
		eventType = "walk",
		eventArg = "10577",
		endInvoke = "64017",
	},
	[64017] = 
	{
		id = 64017,
		eventType = "check_rubbish",
		eventArg = "10577",
		endInvoke = "64018/64003",
	},
	[64018] = 
	{
		id = 64018,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64019",
	},
	[64019] = 
	{
		id = 64019,
		eventType = "clean_rubbish",
		eventArg = "10577",
		endInvoke = "64003",
	},
	[64020] = 
	{
		id = 64020,
		eventType = "walk",
		eventArg = "10685",
		endInvoke = "64021",
	},
	[64021] = 
	{
		id = 64021,
		eventType = "check_rubbish",
		eventArg = "10685",
		endInvoke = "64022/64003",
	},
	[64022] = 
	{
		id = 64022,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64023",
	},
	[64023] = 
	{
		id = 64023,
		eventType = "clean_rubbish",
		eventArg = "10685",
		endInvoke = "64003",
	},
	[64024] = 
	{
		id = 64024,
		eventType = "walk",
		eventArg = "10578",
		endInvoke = "64025",
	},
	[64025] = 
	{
		id = 64025,
		eventType = "check_rubbish",
		eventArg = "10578",
		endInvoke = "64026/64003",
	},
	[64026] = 
	{
		id = 64026,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64027",
	},
	[64027] = 
	{
		id = 64027,
		eventType = "clean_rubbish",
		eventArg = "10578",
		endInvoke = "64003",
	},
	[64028] = 
	{
		id = 64028,
		eventType = "walk",
		eventArg = "10544",
		endInvoke = "64029",
	},
	[64029] = 
	{
		id = 64029,
		eventType = "check_rubbish",
		eventArg = "10544",
		endInvoke = "64030/64003",
	},
	[64030] = 
	{
		id = 64030,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "64031",
	},
	[64031] = 
	{
		id = 64031,
		eventType = "clean_rubbish",
		eventArg = "10544",
		endInvoke = "64003",
	},
	[64032] = 
	{
		id = 64032,
		eventType = "random",
		eventArg = "16/16/16/16/16",
		endInvoke = "64033/64039/64045/64051/64057",
	},
	[64033] = 
	{
		id = 64033,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64034",
	},
	[64034] = 
	{
		id = 64034,
		eventType = "animation",
		eventArg = "Idle/0.5",
		endInvoke = "64035",
	},
	[64035] = 
	{
		id = 64035,
		eventType = "walk",
		eventArg = "10620",
		endInvoke = "64036",
	},
	[64036] = 
	{
		id = 64036,
		eventType = "walk",
		eventArg = "10652",
		endInvoke = "64037",
	},
	[64037] = 
	{
		id = 64037,
		eventType = "walk",
		eventArg = "10686",
		endInvoke = "64038",
	},
	[64038] = 
	{
		id = 64038,
		eventType = "walk",
		eventArg = "10685",
		endInvoke = "64039",
	},
	[64039] = 
	{
		id = 64039,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64040",
	},
	[64040] = 
	{
		id = 64040,
		eventType = "animation",
		eventArg = "Idle/0.5",
		endInvoke = "64041",
	},
	[64041] = 
	{
		id = 64041,
		eventType = "walk",
		eventArg = "10648",
		endInvoke = "64042",
	},
	[64042] = 
	{
		id = 64042,
		eventType = "walk",
		eventArg = "10615",
		endInvoke = "64043",
	},
	[64043] = 
	{
		id = 64043,
		eventType = "walk",
		eventArg = "11856",
		endInvoke = "64044",
	},
	[64044] = 
	{
		id = 64044,
		eventType = "walk",
		eventArg = "10536",
		endInvoke = "64045",
	},
	[64045] = 
	{
		id = 64045,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64046",
	},
	[64046] = 
	{
		id = 64046,
		eventType = "animation",
		eventArg = "Idle/0.5",
		endInvoke = "64047",
	},
	[64047] = 
	{
		id = 64047,
		eventType = "walk",
		eventArg = "10501",
		endInvoke = "64048",
	},
	[64048] = 
	{
		id = 64048,
		eventType = "walk",
		eventArg = "10473",
		endInvoke = "64049",
	},
	[64049] = 
	{
		id = 64049,
		eventType = "walk",
		eventArg = "10429",
		endInvoke = "64050",
	},
	[64050] = 
	{
		id = 64050,
		eventType = "walk",
		eventArg = "10430",
		endInvoke = "64051",
	},
	[64051] = 
	{
		id = 64051,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64052",
	},
	[64052] = 
	{
		id = 64052,
		eventType = "animation",
		eventArg = "Idle/0.5",
		endInvoke = "64053",
	},
	[64053] = 
	{
		id = 64053,
		eventType = "walk",
		eventArg = "10432",
		endInvoke = "64054",
	},
	[64054] = 
	{
		id = 64054,
		eventType = "walk",
		eventArg = "10475",
		endInvoke = "64055",
	},
	[64055] = 
	{
		id = 64055,
		eventType = "walk",
		eventArg = "10508",
		endInvoke = "64056",
	},
	[64056] = 
	{
		id = 64056,
		eventType = "walk",
		eventArg = "10544",
		endInvoke = "64057",
	},
	[64057] = 
	{
		id = 64057,
		eventType = "select_rubbish",
		eventArg = "13765/13977/10428/10577/10685/10578/10544",
		endInvoke = "64004/64008/64012/64016/64020/64024/64028/64058",
	},
	[64058] = 
	{
		id = 64058,
		eventType = "animation",
		eventArg = "Idle/0.5",
		endInvoke = "64032",
	},
	[64059] = 
	{
		id = 64059,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "64060",
	},
	[64060] = 
	{
		id = 64060,
		eventType = "select_unlock_room",
		eventArg = "100201/101001/101301/101201;16/16/16/16",
		endInvoke = "63001/65001/66001/67001/64032",
	},
	[65001] = 
	{
		id = 65001,
		eventType = "room_access",
		eventArg = "101001/1",
		endInvoke = "65002",
	},
	[65002] = 
	{
		id = 65002,
		eventType = "walk",
		eventArg = "11684",
		endInvoke = "65003",
	},
	[65003] = 
	{
		id = 65003,
		eventType = "select_rubbish",
		eventArg = "11646/11590/11598/11559/11605/11706/11649/11673",
		endInvoke = "65004/65008/65012/65016/65020/65024/65028/65032/65036",
	},
	[65004] = 
	{
		id = 65004,
		eventType = "walk",
		eventArg = "11646",
		endInvoke = "65005",
	},
	[65005] = 
	{
		id = 65005,
		eventType = "check_rubbish",
		eventArg = "11646",
		endInvoke = "65006/65003",
	},
	[65006] = 
	{
		id = 65006,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65007",
	},
	[65007] = 
	{
		id = 65007,
		eventType = "clean_rubbish",
		eventArg = "11646",
		endInvoke = "65003",
	},
	[65008] = 
	{
		id = 65008,
		eventType = "walk",
		eventArg = "11590",
		endInvoke = "65009",
	},
	[65009] = 
	{
		id = 65009,
		eventType = "check_rubbish",
		eventArg = "11590",
		endInvoke = "65010/65003",
	},
	[65010] = 
	{
		id = 65010,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65011",
	},
	[65011] = 
	{
		id = 65011,
		eventType = "clean_rubbish",
		eventArg = "11590",
		endInvoke = "65003",
	},
	[65012] = 
	{
		id = 65012,
		eventType = "walk",
		eventArg = "11598",
		endInvoke = "65013",
	},
	[65013] = 
	{
		id = 65013,
		eventType = "check_rubbish",
		eventArg = "11598",
		endInvoke = "65014/65003",
	},
	[65014] = 
	{
		id = 65014,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65015",
	},
	[65015] = 
	{
		id = 65015,
		eventType = "clean_rubbish",
		eventArg = "11598",
		endInvoke = "65003",
	},
	[65016] = 
	{
		id = 65016,
		eventType = "walk",
		eventArg = "11559",
		endInvoke = "65017",
	},
	[65017] = 
	{
		id = 65017,
		eventType = "check_rubbish",
		eventArg = "11559",
		endInvoke = "65018/65003",
	},
	[65018] = 
	{
		id = 65018,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65019",
	},
	[65019] = 
	{
		id = 65019,
		eventType = "clean_rubbish",
		eventArg = "11559",
		endInvoke = "65003",
	},
	[65020] = 
	{
		id = 65020,
		eventType = "walk",
		eventArg = "11605",
		endInvoke = "65021",
	},
	[65021] = 
	{
		id = 65021,
		eventType = "check_rubbish",
		eventArg = "11605",
		endInvoke = "65022/65003",
	},
	[65022] = 
	{
		id = 65022,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65023",
	},
	[65023] = 
	{
		id = 65023,
		eventType = "clean_rubbish",
		eventArg = "11605",
		endInvoke = "65003",
	},
	[65024] = 
	{
		id = 65024,
		eventType = "walk",
		eventArg = "11706",
		endInvoke = "65025",
	},
	[65025] = 
	{
		id = 65025,
		eventType = "check_rubbish",
		eventArg = "11706",
		endInvoke = "65026/65003",
	},
	[65026] = 
	{
		id = 65026,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65027",
	},
	[65027] = 
	{
		id = 65027,
		eventType = "clean_rubbish",
		eventArg = "11706",
		endInvoke = "65003",
	},
	[65028] = 
	{
		id = 65028,
		eventType = "walk",
		eventArg = "11649",
		endInvoke = "65029",
	},
	[65029] = 
	{
		id = 65029,
		eventType = "check_rubbish",
		eventArg = "11649",
		endInvoke = "65030/65003",
	},
	[65030] = 
	{
		id = 65030,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65031",
	},
	[65031] = 
	{
		id = 65031,
		eventType = "clean_rubbish",
		eventArg = "11649",
		endInvoke = "65003",
	},
	[65032] = 
	{
		id = 65032,
		eventType = "walk",
		eventArg = "11673",
		endInvoke = "65033",
	},
	[65033] = 
	{
		id = 65033,
		eventType = "check_rubbish",
		eventArg = "11673",
		endInvoke = "65034/65003",
	},
	[65034] = 
	{
		id = 65034,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "65035",
	},
	[65035] = 
	{
		id = 65035,
		eventType = "clean_rubbish",
		eventArg = "11673",
		endInvoke = "65003",
	},
	[65036] = 
	{
		id = 65036,
		eventType = "random",
		eventArg = "16/16/16/16/16",
		endInvoke = "65037/65038/65039/65040/65041",
	},
	[65037] = 
	{
		id = 65037,
		eventType = "walk",
		eventArg = "11626",
		endInvoke = "65003",
	},
	[65038] = 
	{
		id = 65038,
		eventType = "walk",
		eventArg = "11605",
		endInvoke = "65003",
	},
	[65039] = 
	{
		id = 65039,
		eventType = "walk",
		eventArg = "11584",
		endInvoke = "65003",
	},
	[65040] = 
	{
		id = 65040,
		eventType = "walk",
		eventArg = "11597",
		endInvoke = "65003",
	},
	[65041] = 
	{
		id = 65041,
		eventType = "walk",
		eventArg = "11611",
		endInvoke = "65003",
	},
	[65042] = 
	{
		id = 65042,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "65043",
	},
	[65043] = 
	{
		id = 65043,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101201;16/16/16/16",
		endInvoke = "63001/64001/66001/67001/65032",
	},
	[66001] = 
	{
		id = 66001,
		eventType = "room_access",
		eventArg = "101301/1",
		endInvoke = "66002",
	},
	[66002] = 
	{
		id = 66002,
		eventType = "walk",
		eventArg = "12696",
		endInvoke = "66003",
	},
	[66003] = 
	{
		id = 66003,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66004] = 
	{
		id = 66004,
		eventType = "walk",
		eventArg = "12681",
		endInvoke = "66005",
	},
	[66005] = 
	{
		id = 66005,
		eventType = "check_rubbish",
		eventArg = "12681",
		endInvoke = "66006/66003",
	},
	[66006] = 
	{
		id = 66006,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66007",
	},
	[66007] = 
	{
		id = 66007,
		eventType = "clean_rubbish",
		eventArg = "12681",
		endInvoke = "66003",
	},
	[66008] = 
	{
		id = 66008,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "66009",
	},
	[66009] = 
	{
		id = 66009,
		eventType = "check_rubbish",
		eventArg = "12642",
		endInvoke = "66010/66003",
	},
	[66010] = 
	{
		id = 66010,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66011",
	},
	[66011] = 
	{
		id = 66011,
		eventType = "clean_rubbish",
		eventArg = "12642",
		endInvoke = "66003",
	},
	[66012] = 
	{
		id = 66012,
		eventType = "walk",
		eventArg = "12649",
		endInvoke = "66013",
	},
	[66013] = 
	{
		id = 66013,
		eventType = "check_rubbish",
		eventArg = "12649",
		endInvoke = "66014/66003",
	},
	[66014] = 
	{
		id = 66014,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66015",
	},
	[66015] = 
	{
		id = 66015,
		eventType = "clean_rubbish",
		eventArg = "12649",
		endInvoke = "66003",
	},
	[66016] = 
	{
		id = 66016,
		eventType = "walk",
		eventArg = "12635",
		endInvoke = "66017",
	},
	[66017] = 
	{
		id = 66017,
		eventType = "check_rubbish",
		eventArg = "12635",
		endInvoke = "66018/66003",
	},
	[66018] = 
	{
		id = 66018,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66019",
	},
	[66019] = 
	{
		id = 66019,
		eventType = "clean_rubbish",
		eventArg = "12635",
		endInvoke = "66003",
	},
	[66020] = 
	{
		id = 66020,
		eventType = "walk",
		eventArg = "12648",
		endInvoke = "66021",
	},
	[66021] = 
	{
		id = 66021,
		eventType = "check_rubbish",
		eventArg = "12648",
		endInvoke = "66022/66003",
	},
	[66022] = 
	{
		id = 66022,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66023",
	},
	[66023] = 
	{
		id = 66023,
		eventType = "clean_rubbish",
		eventArg = "12648",
		endInvoke = "66003",
	},
	[66024] = 
	{
		id = 66024,
		eventType = "walk",
		eventArg = "12606",
		endInvoke = "66025",
	},
	[66025] = 
	{
		id = 66025,
		eventType = "check_rubbish",
		eventArg = "12606",
		endInvoke = "66026/66003",
	},
	[66026] = 
	{
		id = 66026,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "66027",
	},
	[66027] = 
	{
		id = 66027,
		eventType = "clean_rubbish",
		eventArg = "12606",
		endInvoke = "66003",
	},
	[66028] = 
	{
		id = 66028,
		eventType = "walk",
		eventArg = "12695",
		endInvoke = "66029",
	},
	[66029] = 
	{
		id = 66029,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66030] = 
	{
		id = 66030,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "66031",
	},
	[66031] = 
	{
		id = 66031,
		eventType = "walk",
		eventArg = "12687",
		endInvoke = "66032",
	},
	[66032] = 
	{
		id = 66032,
		eventType = "walk",
		eventArg = "12686",
		endInvoke = "66033",
	},
	[66033] = 
	{
		id = 66033,
		eventType = "walk",
		eventArg = "12685",
		endInvoke = "66034",
	},
	[66034] = 
	{
		id = 66034,
		eventType = "walk",
		eventArg = "12675",
		endInvoke = "66035",
	},
	[66035] = 
	{
		id = 66035,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66036] = 
	{
		id = 66036,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "66037",
	},
	[66037] = 
	{
		id = 66037,
		eventType = "walk",
		eventArg = "12674",
		endInvoke = "66038",
	},
	[66038] = 
	{
		id = 66038,
		eventType = "walk",
		eventArg = "12665",
		endInvoke = "66039",
	},
	[66039] = 
	{
		id = 66039,
		eventType = "walk",
		eventArg = "12656",
		endInvoke = "66040",
	},
	[66040] = 
	{
		id = 66040,
		eventType = "walk",
		eventArg = "12637",
		endInvoke = "66041",
	},
	[66041] = 
	{
		id = 66041,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66042] = 
	{
		id = 66042,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "66043",
	},
	[66043] = 
	{
		id = 66043,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "66044",
	},
	[66044] = 
	{
		id = 66044,
		eventType = "walk",
		eventArg = "12639",
		endInvoke = "66045",
	},
	[66045] = 
	{
		id = 66045,
		eventType = "walk",
		eventArg = "12660",
		endInvoke = "66046",
	},
	[66046] = 
	{
		id = 66046,
		eventType = "walk",
		eventArg = "12641",
		endInvoke = "66047",
	},
	[66047] = 
	{
		id = 66047,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66048] = 
	{
		id = 66048,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "66049",
	},
	[66049] = 
	{
		id = 66049,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "66050",
	},
	[66050] = 
	{
		id = 66050,
		eventType = "walk",
		eventArg = "12653",
		endInvoke = "66051",
	},
	[66051] = 
	{
		id = 66051,
		eventType = "walk",
		eventArg = "12663",
		endInvoke = "66052",
	},
	[66052] = 
	{
		id = 66052,
		eventType = "walk",
		eventArg = "12672",
		endInvoke = "66053",
	},
	[66053] = 
	{
		id = 66053,
		eventType = "select_rubbish",
		eventArg = "12681/12642/12649/12635/12648/12606",
		endInvoke = "66004/66008/66012/66016/66020/66024/66028",
	},
	[66054] = 
	{
		id = 66054,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "66028",
	},
	[66055] = 
	{
		id = 66055,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "66056",
	},
	[66056] = 
	{
		id = 66056,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101001/101201;16/16/16/16/16",
		endInvoke = "63001/64001/65001/67001/66032",
	},
	[67001] = 
	{
		id = 67001,
		eventType = "room_access",
		eventArg = "101201/1",
		endInvoke = "67002",
	},
	[67002] = 
	{
		id = 67002,
		eventType = "walk",
		eventArg = "10969",
		endInvoke = "67003",
	},
	[67003] = 
	{
		id = 67003,
		eventType = "select_rubbish",
		eventArg = "11025/11057/11039/11060/11016",
		endInvoke = "67004/67008/67012/67016/67020/67024",
	},
	[67004] = 
	{
		id = 67004,
		eventType = "walk",
		eventArg = "11025",
		endInvoke = "67005",
	},
	[67005] = 
	{
		id = 67005,
		eventType = "check_rubbish",
		eventArg = "11025",
		endInvoke = "67006/67003",
	},
	[67006] = 
	{
		id = 67006,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "67007",
	},
	[67007] = 
	{
		id = 67007,
		eventType = "clean_rubbish",
		eventArg = "11025",
		endInvoke = "67003",
	},
	[67008] = 
	{
		id = 67008,
		eventType = "walk",
		eventArg = "11057",
		endInvoke = "67009",
	},
	[67009] = 
	{
		id = 67009,
		eventType = "check_rubbish",
		eventArg = "11057",
		endInvoke = "670010/67003",
	},
	[67010] = 
	{
		id = 67010,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "67011",
	},
	[67011] = 
	{
		id = 67011,
		eventType = "clean_rubbish",
		eventArg = "11057",
		endInvoke = "67003",
	},
	[67012] = 
	{
		id = 67012,
		eventType = "walk",
		eventArg = "11039",
		endInvoke = "67013",
	},
	[67013] = 
	{
		id = 67013,
		eventType = "check_rubbish",
		eventArg = "11039",
		endInvoke = "67014/67003",
	},
	[67014] = 
	{
		id = 67014,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "67015",
	},
	[67015] = 
	{
		id = 67015,
		eventType = "clean_rubbish",
		eventArg = "11039",
		endInvoke = "67003",
	},
	[67016] = 
	{
		id = 67016,
		eventType = "walk",
		eventArg = "11060",
		endInvoke = "67017",
	},
	[67017] = 
	{
		id = 67017,
		eventType = "check_rubbish",
		eventArg = "11060",
		endInvoke = "67018/67003",
	},
	[67018] = 
	{
		id = 67018,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "67019",
	},
	[67019] = 
	{
		id = 67019,
		eventType = "clean_rubbish",
		eventArg = "11060",
		endInvoke = "67003",
	},
	[67020] = 
	{
		id = 67020,
		eventType = "walk",
		eventArg = "11016",
		endInvoke = "67021",
	},
	[67021] = 
	{
		id = 67021,
		eventType = "check_rubbish",
		eventArg = "11016",
		endInvoke = "67022/67003",
	},
	[67022] = 
	{
		id = 67022,
		eventType = "animation",
		eventArg = "Clean//useto",
		endInvoke = "67023",
	},
	[67023] = 
	{
		id = 67023,
		eventType = "clean_rubbish",
		eventArg = "11016",
		endInvoke = "67003",
	},
	[67024] = 
	{
		id = 67024,
		eventType = "random",
		eventArg = "16/16/16/16/16",
		endInvoke = "67025/67026/67027/67028/67029",
	},
	[67025] = 
	{
		id = 67025,
		eventType = "walk",
		eventArg = "11000",
		endInvoke = "67003",
	},
	[67026] = 
	{
		id = 67026,
		eventType = "walk",
		eventArg = "11042",
		endInvoke = "67003",
	},
	[67027] = 
	{
		id = 67027,
		eventType = "walk",
		eventArg = "11048",
		endInvoke = "67003",
	},
	[67028] = 
	{
		id = 67028,
		eventType = "walk",
		eventArg = "11037",
		endInvoke = "67003",
	},
	[67029] = 
	{
		id = 67029,
		eventType = "walk",
		eventArg = "11014",
		endInvoke = "67003",
	},
	[67030] = 
	{
		id = 67030,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "63083",
	},
	[67031] = 
	{
		id = 67031,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101001/101301;16/16/16/16",
		endInvoke = "63001/64001/65001/66001/67032",
	},
	[70000] = 
	{
		id = 70000,
		eventType = "shift",
		eventArg = "10393",
		endInvoke = "71002",
	},
	[70001] = 
	{
		id = 70001,
		eventType = "walk",
		eventArg = "10510",
		endInvoke = "70002",
	},
	[70002] = 
	{
		id = 70002,
		eventType = "select_point_by_facility",
		eventArg = "107001#14113;14112/107002#14406;14477/107003#10509/107004#10392/107005#14263",
		endInvoke = "70003/70007/70011/70015/70019/70023/70027/",
	},
	[70003] = 
	{
		id = 70003,
		eventType = "walk",
		eventArg = "14113",
		endInvoke = "70004",
	},
	[70004] = 
	{
		id = 70004,
		eventType = "movefacilitypoint",
		eventArg = "107001/use1",
		endInvoke = "70005",
	},
	[70005] = 
	{
		id = 70005,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70006",
	},
	[70006] = 
	{
		id = 70006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70007",
	},
	[70007] = 
	{
		id = 70007,
		eventType = "walk",
		eventArg = "14112",
		endInvoke = "70008",
	},
	[70008] = 
	{
		id = 70008,
		eventType = "movefacilitypoint",
		eventArg = "107001/use2",
		endInvoke = "70009",
	},
	[70009] = 
	{
		id = 70009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70010",
	},
	[70010] = 
	{
		id = 70010,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70011",
	},
	[70011] = 
	{
		id = 70011,
		eventType = "walk",
		eventArg = "14406",
		endInvoke = "70012",
	},
	[70012] = 
	{
		id = 70012,
		eventType = "movefacilitypoint",
		eventArg = "107002/use1",
		endInvoke = "70013",
	},
	[70013] = 
	{
		id = 70013,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70014",
	},
	[70014] = 
	{
		id = 70014,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70015",
	},
	[70015] = 
	{
		id = 70015,
		eventType = "walk",
		eventArg = "14477",
		endInvoke = "70016",
	},
	[70016] = 
	{
		id = 70016,
		eventType = "movefacilitypoint",
		eventArg = "107002/use2",
		endInvoke = "70017",
	},
	[70017] = 
	{
		id = 70017,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70018",
	},
	[70018] = 
	{
		id = 70018,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70019",
	},
	[70019] = 
	{
		id = 70019,
		eventType = "walk",
		eventArg = "10509",
		endInvoke = "70020",
	},
	[70020] = 
	{
		id = 70020,
		eventType = "movefacilitypoint",
		eventArg = "107003/use1",
		endInvoke = "70021",
	},
	[70021] = 
	{
		id = 70021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70022",
	},
	[70022] = 
	{
		id = 70022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70023",
	},
	[70023] = 
	{
		id = 70023,
		eventType = "walk",
		eventArg = "10392",
		endInvoke = "70024",
	},
	[70024] = 
	{
		id = 70024,
		eventType = "movefacilitypoint",
		eventArg = "107004/use1",
		endInvoke = "70025",
	},
	[70025] = 
	{
		id = 70025,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70026",
	},
	[70026] = 
	{
		id = 70026,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70027",
	},
	[70027] = 
	{
		id = 70027,
		eventType = "walk",
		eventArg = "14263",
		endInvoke = "70028",
	},
	[70028] = 
	{
		id = 70028,
		eventType = "movefacilitypoint",
		eventArg = "107005/use1",
		endInvoke = "70029",
	},
	[70029] = 
	{
		id = 70029,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "70030",
	},
	[70030] = 
	{
		id = 70030,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "70002",
	},
	[71001] = 
	{
		id = 71001,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101001/101201;16/16/16/16/16",
		endInvoke = "72001/73001/74001/75001/76001/",
	},
	[71002] = 
	{
		id = 71002,
		eventType = "freefacilitypoint",
		eventArg = "",
		endInvoke = "71001",
	},
	[71003] = 
	{
		id = 71003,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "",
	},
	[71004] = 
	{
		id = 71004,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "",
	},
	[71005] = 
	{
		id = 71005,
		eventType = "collectcash",
		eventArg = "3/true",
		endInvoke = "",
	},
	[71006] = 
	{
		id = 71006,
		eventType = "serial_end",
		eventArg = "",
		endInvoke = "",
	},
	[71007] = 
	{
		id = 71007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "",
	},
	[72001] = 
	{
		id = 72001,
		eventType = "walk",
		eventArg = "10759",
		endInvoke = "72002",
	},
	[72002] = 
	{
		id = 72002,
		eventType = "walk",
		eventArg = "10678",
		endInvoke = "72003",
	},
	[72003] = 
	{
		id = 72003,
		eventType = "walk",
		eventArg = "10743",
		endInvoke = "72004",
	},
	[72004] = 
	{
		id = 72004,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72005/72007",
	},
	[72005] = 
	{
		id = 72005,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72006",
	},
	[72006] = 
	{
		id = 72006,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72007",
	},
	[72007] = 
	{
		id = 72007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72008",
	},
	[72008] = 
	{
		id = 72008,
		eventType = "walk",
		eventArg = "10642",
		endInvoke = "72009",
	},
	[72009] = 
	{
		id = 72009,
		eventType = "walk",
		eventArg = "10565",
		endInvoke = "72010",
	},
	[72010] = 
	{
		id = 72010,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72011/72013",
	},
	[72011] = 
	{
		id = 72011,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72012",
	},
	[72012] = 
	{
		id = 72012,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72013",
	},
	[72013] = 
	{
		id = 72013,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72014",
	},
	[72014] = 
	{
		id = 72014,
		eventType = "walk",
		eventArg = "10677",
		endInvoke = "72015",
	},
	[72015] = 
	{
		id = 72015,
		eventType = "walk",
		eventArg = "10742",
		endInvoke = "72016",
	},
	[72016] = 
	{
		id = 72016,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72017/72019",
	},
	[72017] = 
	{
		id = 72017,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72018",
	},
	[72018] = 
	{
		id = 72018,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72019",
	},
	[72019] = 
	{
		id = 72019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72020",
	},
	[72020] = 
	{
		id = 72020,
		eventType = "walk",
		eventArg = "10641",
		endInvoke = "72021",
	},
	[72021] = 
	{
		id = 72021,
		eventType = "walk",
		eventArg = "10564",
		endInvoke = "72022",
	},
	[72022] = 
	{
		id = 72022,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72023/72025",
	},
	[72023] = 
	{
		id = 72023,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72024",
	},
	[72024] = 
	{
		id = 72024,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72025",
	},
	[72025] = 
	{
		id = 72025,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72026",
	},
	[72026] = 
	{
		id = 72026,
		eventType = "walk",
		eventArg = "10680",
		endInvoke = "72027",
	},
	[72027] = 
	{
		id = 72027,
		eventType = "walk",
		eventArg = "10745",
		endInvoke = "72028",
	},
	[72028] = 
	{
		id = 72028,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72029/72031",
	},
	[72029] = 
	{
		id = 72029,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72030",
	},
	[72030] = 
	{
		id = 72030,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72031",
	},
	[72031] = 
	{
		id = 72031,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72032",
	},
	[72032] = 
	{
		id = 72032,
		eventType = "walk",
		eventArg = "10644",
		endInvoke = "72033",
	},
	[72033] = 
	{
		id = 72033,
		eventType = "walk",
		eventArg = "10567",
		endInvoke = "72034",
	},
	[72034] = 
	{
		id = 72034,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72035/72037",
	},
	[72035] = 
	{
		id = 72035,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72036",
	},
	[72036] = 
	{
		id = 72036,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72037",
	},
	[72037] = 
	{
		id = 72037,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72038",
	},
	[72038] = 
	{
		id = 72038,
		eventType = "walk",
		eventArg = "10681",
		endInvoke = "72039",
	},
	[72039] = 
	{
		id = 72039,
		eventType = "walk",
		eventArg = "10747",
		endInvoke = "72040",
	},
	[72040] = 
	{
		id = 72040,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72041/72043",
	},
	[72041] = 
	{
		id = 72041,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72042",
	},
	[72042] = 
	{
		id = 72042,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72043",
	},
	[72043] = 
	{
		id = 72043,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72044",
	},
	[72044] = 
	{
		id = 72044,
		eventType = "walk",
		eventArg = "10645",
		endInvoke = "72045",
	},
	[72045] = 
	{
		id = 72045,
		eventType = "walk",
		eventArg = "10569",
		endInvoke = "72046",
	},
	[72046] = 
	{
		id = 72046,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "72047/72049",
	},
	[72047] = 
	{
		id = 72047,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "72048",
	},
	[72048] = 
	{
		id = 72048,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "72049",
	},
	[72049] = 
	{
		id = 72049,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "72002",
	},
	[72050] = 
	{
		id = 72050,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "72051",
	},
	[72051] = 
	{
		id = 72051,
		eventType = "select_unlock_room",
		eventArg = "100901/101301/101001/101201;16/16/16/16",
		endInvoke = "73001/74001/75001/76001/72001",
	},
	[73001] = 
	{
		id = 73001,
		eventType = "walk",
		eventArg = "10619",
		endInvoke = "73002",
	},
	[73002] = 
	{
		id = 73002,
		eventType = "walk",
		eventArg = "10470",
		endInvoke = "73003",
	},
	[73003] = 
	{
		id = 73003,
		eventType = "walk",
		eventArg = "10467",
		endInvoke = "73004",
	},
	[73004] = 
	{
		id = 73004,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73005/73007",
	},
	[73005] = 
	{
		id = 73005,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73006",
	},
	[73006] = 
	{
		id = 73006,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73007",
	},
	[73007] = 
	{
		id = 73007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73008",
	},
	[73008] = 
	{
		id = 73008,
		eventType = "walk",
		eventArg = "10386",
		endInvoke = "73009",
	},
	[73009] = 
	{
		id = 73009,
		eventType = "walk",
		eventArg = "10383",
		endInvoke = "73010",
	},
	[73010] = 
	{
		id = 73010,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73011/73013",
	},
	[73011] = 
	{
		id = 73011,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73012",
	},
	[73012] = 
	{
		id = 73012,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73013",
	},
	[73013] = 
	{
		id = 73013,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73014",
	},
	[73014] = 
	{
		id = 73014,
		eventType = "walk",
		eventArg = "13978",
		endInvoke = "73015",
	},
	[73015] = 
	{
		id = 73015,
		eventType = "walk",
		eventArg = "14051",
		endInvoke = "73016",
	},
	[73016] = 
	{
		id = 73016,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73017/73019",
	},
	[73017] = 
	{
		id = 73017,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73018",
	},
	[73018] = 
	{
		id = 73018,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73019",
	},
	[73019] = 
	{
		id = 73019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73020",
	},
	[73020] = 
	{
		id = 73020,
		eventType = "walk",
		eventArg = "13765",
		endInvoke = "73021",
	},
	[73021] = 
	{
		id = 73021,
		eventType = "walk",
		eventArg = "13838",
		endInvoke = "73022",
	},
	[73022] = 
	{
		id = 73022,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73023/73025",
	},
	[73023] = 
	{
		id = 73023,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73024",
	},
	[73024] = 
	{
		id = 73024,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73025",
	},
	[73025] = 
	{
		id = 73025,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73026",
	},
	[73026] = 
	{
		id = 73026,
		eventType = "walk",
		eventArg = "13764",
		endInvoke = "73027",
	},
	[73027] = 
	{
		id = 73027,
		eventType = "walk",
		eventArg = "13762",
		endInvoke = "73028",
	},
	[73028] = 
	{
		id = 73028,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73029/73031",
	},
	[73029] = 
	{
		id = 73029,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73030",
	},
	[73030] = 
	{
		id = 73030,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73031",
	},
	[73031] = 
	{
		id = 73031,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73032",
	},
	[73032] = 
	{
		id = 73032,
		eventType = "walk",
		eventArg = "13906",
		endInvoke = "73033",
	},
	[73033] = 
	{
		id = 73033,
		eventType = "walk",
		eventArg = "13975",
		endInvoke = "73034",
	},
	[73034] = 
	{
		id = 73034,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73035/73037",
	},
	[73035] = 
	{
		id = 73035,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73036",
	},
	[73036] = 
	{
		id = 73036,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73037",
	},
	[73037] = 
	{
		id = 73037,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73038",
	},
	[73038] = 
	{
		id = 73038,
		eventType = "walk",
		eventArg = "14119",
		endInvoke = "73039",
	},
	[73039] = 
	{
		id = 73039,
		eventType = "walk",
		eventArg = "10351",
		endInvoke = "73040",
	},
	[73040] = 
	{
		id = 73040,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "73041/73043",
	},
	[73041] = 
	{
		id = 73041,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "73042",
	},
	[73042] = 
	{
		id = 73042,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "73043",
	},
	[73043] = 
	{
		id = 73043,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "73002",
	},
	[73044] = 
	{
		id = 73044,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "73045",
	},
	[73045] = 
	{
		id = 73045,
		eventType = "select_unlock_room",
		eventArg = "100201/101301/101001/101201;16/16/16/16",
		endInvoke = "72001/74001/75001/76001/73001",
	},
	[74001] = 
	{
		id = 74001,
		eventType = "walk",
		eventArg = "12701",
		endInvoke = "74002",
	},
	[74002] = 
	{
		id = 74002,
		eventType = "walk",
		eventArg = "12509",
		endInvoke = "74003",
	},
	[74003] = 
	{
		id = 74003,
		eventType = "walk",
		eventArg = "12510",
		endInvoke = "74004",
	},
	[74004] = 
	{
		id = 74004,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "74005/74007",
	},
	[74005] = 
	{
		id = 74005,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "74006",
	},
	[74006] = 
	{
		id = 74006,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "74007",
	},
	[74007] = 
	{
		id = 74007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "74008",
	},
	[74008] = 
	{
		id = 74008,
		eventType = "walk",
		eventArg = "12519",
		endInvoke = "74009",
	},
	[74009] = 
	{
		id = 74009,
		eventType = "walk",
		eventArg = "12520",
		endInvoke = "74010",
	},
	[74010] = 
	{
		id = 74010,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "74011/74013",
	},
	[74011] = 
	{
		id = 74011,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "74012",
	},
	[74012] = 
	{
		id = 74012,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "74013",
	},
	[74013] = 
	{
		id = 74013,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "74014",
	},
	[74014] = 
	{
		id = 74014,
		eventType = "walk",
		eventArg = "12513",
		endInvoke = "74015",
	},
	[74015] = 
	{
		id = 74015,
		eventType = "walk",
		eventArg = "12515",
		endInvoke = "74016",
	},
	[74016] = 
	{
		id = 74016,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "74017/74019",
	},
	[74017] = 
	{
		id = 74017,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "74018",
	},
	[74018] = 
	{
		id = 74018,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "74019",
	},
	[74019] = 
	{
		id = 74019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "74020",
	},
	[74020] = 
	{
		id = 74020,
		eventType = "walk",
		eventArg = "12528",
		endInvoke = "74021",
	},
	[74021] = 
	{
		id = 74021,
		eventType = "walk",
		eventArg = "12529",
		endInvoke = "74022",
	},
	[74022] = 
	{
		id = 74022,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "74023/74025",
	},
	[74023] = 
	{
		id = 74023,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "74024",
	},
	[74024] = 
	{
		id = 74024,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "74025",
	},
	[74025] = 
	{
		id = 74025,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "74002",
	},
	[74026] = 
	{
		id = 74026,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "74027",
	},
	[74027] = 
	{
		id = 74027,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101001/101201;16/16/16/16",
		endInvoke = "72001/73001/75001/76001/74001",
	},
	[75001] = 
	{
		id = 75001,
		eventType = "walk",
		eventArg = "11721",
		endInvoke = "75002",
	},
	[75002] = 
	{
		id = 75002,
		eventType = "walk",
		eventArg = "11597",
		endInvoke = "75003",
	},
	[75003] = 
	{
		id = 75003,
		eventType = "walk",
		eventArg = "11586",
		endInvoke = "75004",
	},
	[75004] = 
	{
		id = 75004,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "75005/75007",
	},
	[75005] = 
	{
		id = 75005,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "75006",
	},
	[75006] = 
	{
		id = 75006,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "75007",
	},
	[75007] = 
	{
		id = 75007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "75008",
	},
	[75008] = 
	{
		id = 75008,
		eventType = "walk",
		eventArg = "11595",
		endInvoke = "75009",
	},
	[75009] = 
	{
		id = 75009,
		eventType = "walk",
		eventArg = "11620",
		endInvoke = "75010",
	},
	[75010] = 
	{
		id = 75010,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "75011/75013",
	},
	[75011] = 
	{
		id = 75011,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "75012",
	},
	[75012] = 
	{
		id = 75012,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "75013",
	},
	[75013] = 
	{
		id = 75013,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "75014",
	},
	[75014] = 
	{
		id = 75014,
		eventType = "walk",
		eventArg = "11604",
		endInvoke = "75015",
	},
	[75015] = 
	{
		id = 75015,
		eventType = "walk",
		eventArg = "11593",
		endInvoke = "75016",
	},
	[75016] = 
	{
		id = 75016,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "75017/75019",
	},
	[75017] = 
	{
		id = 75017,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "75018",
	},
	[75018] = 
	{
		id = 75018,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "75019",
	},
	[75019] = 
	{
		id = 75019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "75020",
	},
	[75020] = 
	{
		id = 75020,
		eventType = "walk",
		eventArg = "11637",
		endInvoke = "75021",
	},
	[75021] = 
	{
		id = 75021,
		eventType = "walk",
		eventArg = "11628",
		endInvoke = "75022",
	},
	[75022] = 
	{
		id = 75022,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "75023/75025",
	},
	[75023] = 
	{
		id = 75023,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "75024",
	},
	[75024] = 
	{
		id = 75024,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "75025",
	},
	[75025] = 
	{
		id = 75025,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "75002",
	},
	[75026] = 
	{
		id = 75026,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "75027",
	},
	[75027] = 
	{
		id = 75027,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101201;16/16/16/16",
		endInvoke = "72001/73001/74001/76001/75001",
	},
	[76001] = 
	{
		id = 76001,
		eventType = "walk",
		eventArg = "10969",
		endInvoke = "76002",
	},
	[76002] = 
	{
		id = 76002,
		eventType = "walk",
		eventArg = "11059",
		endInvoke = "76003",
	},
	[76003] = 
	{
		id = 76003,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76004/76006",
	},
	[76004] = 
	{
		id = 76004,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76005",
	},
	[76005] = 
	{
		id = 76005,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76006",
	},
	[76006] = 
	{
		id = 76006,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76007",
	},
	[76007] = 
	{
		id = 76007,
		eventType = "walk",
		eventArg = "11069",
		endInvoke = "76008",
	},
	[76008] = 
	{
		id = 76008,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76009/76011",
	},
	[76009] = 
	{
		id = 76009,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76010",
	},
	[76010] = 
	{
		id = 76010,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76011",
	},
	[76011] = 
	{
		id = 76011,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76012",
	},
	[76012] = 
	{
		id = 76012,
		eventType = "walk",
		eventArg = "11081",
		endInvoke = "76013",
	},
	[76013] = 
	{
		id = 76013,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76014/76016",
	},
	[76014] = 
	{
		id = 76014,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76015",
	},
	[76015] = 
	{
		id = 76015,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76016",
	},
	[76016] = 
	{
		id = 76016,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76017",
	},
	[76017] = 
	{
		id = 76017,
		eventType = "walk",
		eventArg = "11094",
		endInvoke = "76018",
	},
	[76018] = 
	{
		id = 76018,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76019/76021",
	},
	[76019] = 
	{
		id = 76019,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76020",
	},
	[76020] = 
	{
		id = 76020,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76021",
	},
	[76021] = 
	{
		id = 76021,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76022",
	},
	[76022] = 
	{
		id = 76022,
		eventType = "walk",
		eventArg = "11099",
		endInvoke = "76023",
	},
	[76023] = 
	{
		id = 76023,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76024/76026",
	},
	[76024] = 
	{
		id = 76024,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76025",
	},
	[76025] = 
	{
		id = 76025,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76026",
	},
	[76026] = 
	{
		id = 76026,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76027",
	},
	[76027] = 
	{
		id = 76027,
		eventType = "walk",
		eventArg = "11061",
		endInvoke = "76028",
	},
	[76028] = 
	{
		id = 76028,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76029/76031",
	},
	[76029] = 
	{
		id = 76029,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76030",
	},
	[76030] = 
	{
		id = 76030,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76031",
	},
	[76031] = 
	{
		id = 76031,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76032",
	},
	[76032] = 
	{
		id = 76032,
		eventType = "walk",
		eventArg = "11071",
		endInvoke = "76033",
	},
	[76033] = 
	{
		id = 76033,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76034/76036",
	},
	[76034] = 
	{
		id = 76034,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76035",
	},
	[76035] = 
	{
		id = 76035,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76036",
	},
	[76036] = 
	{
		id = 76036,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76037",
	},
	[76037] = 
	{
		id = 76037,
		eventType = "walk",
		eventArg = "11083",
		endInvoke = "76038",
	},
	[76038] = 
	{
		id = 76038,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76039/76041",
	},
	[76039] = 
	{
		id = 76039,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76040",
	},
	[76040] = 
	{
		id = 76040,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76041",
	},
	[76041] = 
	{
		id = 76041,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76042",
	},
	[76042] = 
	{
		id = 76042,
		eventType = "walk",
		eventArg = "11926",
		endInvoke = "76043",
	},
	[76043] = 
	{
		id = 76043,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76044/76046",
	},
	[76044] = 
	{
		id = 76044,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76045",
	},
	[76045] = 
	{
		id = 76045,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76046",
	},
	[76046] = 
	{
		id = 76046,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76047",
	},
	[76047] = 
	{
		id = 76047,
		eventType = "walk",
		eventArg = "11040",
		endInvoke = "76048",
	},
	[76048] = 
	{
		id = 76048,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "76049/76051",
	},
	[76049] = 
	{
		id = 76049,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "76050",
	},
	[76050] = 
	{
		id = 76050,
		eventType = "collectcash",
		eventArg = "5/true",
		endInvoke = "76051",
	},
	[76051] = 
	{
		id = 76051,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "76002",
	},
	[76052] = 
	{
		id = 76052,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "76053",
	},
	[76053] = 
	{
		id = 76053,
		eventType = "select_unlock_room",
		eventArg = "100201/100901/101301/101001;16/16/16/16",
		endInvoke = "72001/73001/74001/75001/76001",
	},
	[80000] = 
	{
		id = 80000,
		eventType = "shift",
		eventArg = "13970",
		endInvoke = "82001",
	},
	[80001] = 
	{
		id = 80001,
		eventType = "walk",
		eventArg = "13897",
		endInvoke = "80002",
	},
	[80002] = 
	{
		id = 80002,
		eventType = "select_point_by_facility",
		eventArg = "108001#13626;13625;13971/108002#14250/108003#13898/108004#13969/108005#13897;13826;13827",
		endInvoke = "80003/80007/80011/80015/80019/80023/80027/80031/80035/",
	},
	[80003] = 
	{
		id = 80003,
		eventType = "walk",
		eventArg = "13626",
		endInvoke = "80004",
	},
	[80004] = 
	{
		id = 80004,
		eventType = "movefacilitypoint",
		eventArg = "108001/use1",
		endInvoke = "80005",
	},
	[80005] = 
	{
		id = 80005,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80006",
	},
	[80006] = 
	{
		id = 80006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80007",
	},
	[80007] = 
	{
		id = 80007,
		eventType = "walk",
		eventArg = "13625",
		endInvoke = "80008",
	},
	[80008] = 
	{
		id = 80008,
		eventType = "movefacilitypoint",
		eventArg = "108001/use3",
		endInvoke = "80009",
	},
	[80009] = 
	{
		id = 80009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80010",
	},
	[80010] = 
	{
		id = 80010,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80011",
	},
	[80011] = 
	{
		id = 80011,
		eventType = "walk",
		eventArg = "13971",
		endInvoke = "80012",
	},
	[80012] = 
	{
		id = 80012,
		eventType = "movefacilitypoint",
		eventArg = "108001/use4",
		endInvoke = "80013",
	},
	[80013] = 
	{
		id = 80013,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80014",
	},
	[80014] = 
	{
		id = 80014,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80015",
	},
	[80015] = 
	{
		id = 80015,
		eventType = "walk",
		eventArg = "14250",
		endInvoke = "80016",
	},
	[80016] = 
	{
		id = 80016,
		eventType = "movefacilitypoint",
		eventArg = "108002/use1",
		endInvoke = "80017",
	},
	[80017] = 
	{
		id = 80017,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80018",
	},
	[80018] = 
	{
		id = 80018,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80019",
	},
	[80019] = 
	{
		id = 80019,
		eventType = "walk",
		eventArg = "13898",
		endInvoke = "80020",
	},
	[80020] = 
	{
		id = 80020,
		eventType = "movefacilitypoint",
		eventArg = "108003/use1",
		endInvoke = "80021",
	},
	[80021] = 
	{
		id = 80021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80022",
	},
	[80022] = 
	{
		id = 80022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80023",
	},
	[80023] = 
	{
		id = 80023,
		eventType = "walk",
		eventArg = "13969",
		endInvoke = "80024",
	},
	[80024] = 
	{
		id = 80024,
		eventType = "movefacilitypoint",
		eventArg = "108004/use1",
		endInvoke = "80025",
	},
	[80025] = 
	{
		id = 80025,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80026",
	},
	[80026] = 
	{
		id = 80026,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80027",
	},
	[80027] = 
	{
		id = 80027,
		eventType = "walk",
		eventArg = "13897",
		endInvoke = "80028",
	},
	[80028] = 
	{
		id = 80028,
		eventType = "movefacilitypoint",
		eventArg = "108005/use1",
		endInvoke = "80029",
	},
	[80029] = 
	{
		id = 80029,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80030",
	},
	[80030] = 
	{
		id = 80030,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80031",
	},
	[80031] = 
	{
		id = 80031,
		eventType = "walk",
		eventArg = "13826",
		endInvoke = "80032",
	},
	[80032] = 
	{
		id = 80032,
		eventType = "movefacilitypoint",
		eventArg = "108005/use2",
		endInvoke = "80033",
	},
	[80033] = 
	{
		id = 80033,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80034",
	},
	[80034] = 
	{
		id = 80034,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80035",
	},
	[80035] = 
	{
		id = 80035,
		eventType = "walk",
		eventArg = "13827",
		endInvoke = "80036",
	},
	[80036] = 
	{
		id = 80036,
		eventType = "movefacilitypoint",
		eventArg = "108005/use3",
		endInvoke = "80037",
	},
	[80037] = 
	{
		id = 80037,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "80038",
	},
	[80038] = 
	{
		id = 80038,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle;16/16/16/32;60",
		endInvoke = "80002",
	},
	[81001] = 
	{
		id = 81001,
		eventType = "",
		eventArg = "",
		endInvoke = "",
	},
	[81002] = 
	{
		id = 81002,
		eventType = "relay_reset",
		eventArg = "82001",
		endInvoke = "80001",
	},
	[82001] = 
	{
		id = 82001,
		eventType = "freefacilitypoint",
		eventArg = "",
		endInvoke = "82002",
	},
	[82002] = 
	{
		id = 82002,
		eventType = "select_unlock_room",
		eventArg = "100201/101301/100901;16/16/16",
		endInvoke = "83001/85001/84001/",
	},
	[83001] = 
	{
		id = 83001,
		eventType = "room_access",
		eventArg = "100201/1",
		endInvoke = "83002",
	},
	[83002] = 
	{
		id = 83002,
		eventType = "walk",
		eventArg = "10759",
		endInvoke = "83003",
	},
	[83003] = 
	{
		id = 83003,
		eventType = "random",
		eventArg = "16/16/16/16/16/16/16/16",
		endInvoke = "83004/83009/83014/83019/83024/83029/83034/83039",
	},
	[83004] = 
	{
		id = 83004,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83005",
	},
	[83005] = 
	{
		id = 83005,
		eventType = "walk",
		eventArg = "10707",
		endInvoke = "83006",
	},
	[83006] = 
	{
		id = 83006,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83007",
	},
	[83007] = 
	{
		id = 83007,
		eventType = "walk",
		eventArg = "10637",
		endInvoke = "83008",
	},
	[83008] = 
	{
		id = 83008,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83009",
	},
	[83009] = 
	{
		id = 83009,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83010",
	},
	[83010] = 
	{
		id = 83010,
		eventType = "walk",
		eventArg = "10560",
		endInvoke = "83011",
	},
	[83011] = 
	{
		id = 83011,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83012",
	},
	[83012] = 
	{
		id = 83012,
		eventType = "walk",
		eventArg = "10494",
		endInvoke = "83013",
	},
	[83013] = 
	{
		id = 83013,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83014",
	},
	[83014] = 
	{
		id = 83014,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83015",
	},
	[83015] = 
	{
		id = 83015,
		eventType = "walk",
		eventArg = "10456",
		endInvoke = "83016",
	},
	[83016] = 
	{
		id = 83016,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83017",
	},
	[83017] = 
	{
		id = 83017,
		eventType = "walk",
		eventArg = "10460",
		endInvoke = "83018",
	},
	[83018] = 
	{
		id = 83018,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83019",
	},
	[83019] = 
	{
		id = 83019,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83020",
	},
	[83020] = 
	{
		id = 83020,
		eventType = "walk",
		eventArg = "10459",
		endInvoke = "83021",
	},
	[83021] = 
	{
		id = 83021,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83022",
	},
	[83022] = 
	{
		id = 83022,
		eventType = "walk",
		eventArg = "10462",
		endInvoke = "83023",
	},
	[83023] = 
	{
		id = 83023,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83024",
	},
	[83024] = 
	{
		id = 83024,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83025",
	},
	[83025] = 
	{
		id = 83025,
		eventType = "walk",
		eventArg = "10463",
		endInvoke = "83026",
	},
	[83026] = 
	{
		id = 83026,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83027",
	},
	[83027] = 
	{
		id = 83027,
		eventType = "walk",
		eventArg = "10462",
		endInvoke = "83028",
	},
	[83028] = 
	{
		id = 83028,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83029",
	},
	[83029] = 
	{
		id = 83029,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83030",
	},
	[83030] = 
	{
		id = 83030,
		eventType = "walk",
		eventArg = "10459",
		endInvoke = "83031",
	},
	[83031] = 
	{
		id = 83031,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83032",
	},
	[83032] = 
	{
		id = 83032,
		eventType = "walk",
		eventArg = "10460",
		endInvoke = "83033",
	},
	[83033] = 
	{
		id = 83033,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83034",
	},
	[83034] = 
	{
		id = 83034,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83035",
	},
	[83035] = 
	{
		id = 83035,
		eventType = "walk",
		eventArg = "10456",
		endInvoke = "83036",
	},
	[83036] = 
	{
		id = 83036,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83037",
	},
	[83037] = 
	{
		id = 83037,
		eventType = "walk",
		eventArg = "10494",
		endInvoke = "83038",
	},
	[83038] = 
	{
		id = 83038,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83039",
	},
	[83039] = 
	{
		id = 83039,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83040",
	},
	[83040] = 
	{
		id = 83040,
		eventType = "walk",
		eventArg = "10560",
		endInvoke = "83041",
	},
	[83041] = 
	{
		id = 83041,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "83042",
	},
	[83042] = 
	{
		id = 83042,
		eventType = "walk",
		eventArg = "10707",
		endInvoke = "83043",
	},
	[83043] = 
	{
		id = 83043,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "83044",
	},
	[83044] = 
	{
		id = 83044,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "83005",
	},
	[83045] = 
	{
		id = 83045,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "83046",
	},
	[83046] = 
	{
		id = 83046,
		eventType = "select_unlock_room",
		eventArg = "101301/100901;16/16",
		endInvoke = "85001/84001/83001",
	},
	[84001] = 
	{
		id = 84001,
		eventType = "room_access",
		eventArg = "101301/1",
		endInvoke = "84002",
	},
	[84002] = 
	{
		id = 84002,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "84003",
	},
	[84003] = 
	{
		id = 84003,
		eventType = "random",
		eventArg = "16/16/16/16/16",
		endInvoke = "84004/84009/84014/84019/84024",
	},
	[84004] = 
	{
		id = 84004,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84005",
	},
	[84005] = 
	{
		id = 84005,
		eventType = "walk",
		eventArg = "12640",
		endInvoke = "84006",
	},
	[84006] = 
	{
		id = 84006,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84007",
	},
	[84007] = 
	{
		id = 84007,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "84008",
	},
	[84008] = 
	{
		id = 84008,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "84009",
	},
	[84009] = 
	{
		id = 84009,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84010",
	},
	[84010] = 
	{
		id = 84010,
		eventType = "walk",
		eventArg = "12646",
		endInvoke = "84011",
	},
	[84011] = 
	{
		id = 84011,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84012",
	},
	[84012] = 
	{
		id = 84012,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "84013",
	},
	[84013] = 
	{
		id = 84013,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "84014",
	},
	[84014] = 
	{
		id = 84014,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84015",
	},
	[84015] = 
	{
		id = 84015,
		eventType = "walk",
		eventArg = "12640",
		endInvoke = "84016",
	},
	[84016] = 
	{
		id = 84016,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84017",
	},
	[84017] = 
	{
		id = 84017,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "84018",
	},
	[84018] = 
	{
		id = 84018,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "84019",
	},
	[84019] = 
	{
		id = 84019,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84020",
	},
	[84020] = 
	{
		id = 84020,
		eventType = "walk",
		eventArg = "12640",
		endInvoke = "84021",
	},
	[84021] = 
	{
		id = 84021,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84022",
	},
	[84022] = 
	{
		id = 84022,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "84023",
	},
	[84023] = 
	{
		id = 84023,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84024",
	},
	[84024] = 
	{
		id = 84024,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84025",
	},
	[84025] = 
	{
		id = 84025,
		eventType = "walk",
		eventArg = "12646",
		endInvoke = "84026",
	},
	[84026] = 
	{
		id = 84026,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "84027",
	},
	[84027] = 
	{
		id = 84027,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "84028",
	},
	[84028] = 
	{
		id = 84028,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "84029",
	},
	[84029] = 
	{
		id = 84029,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "84002",
	},
	[84030] = 
	{
		id = 84030,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "84031",
	},
	[84031] = 
	{
		id = 84031,
		eventType = "select_unlock_room",
		eventArg = "100201/100901;16/16",
		endInvoke = "83001/84001/85001",
	},
	[85001] = 
	{
		id = 85001,
		eventType = "room_access",
		eventArg = "100901/1",
		endInvoke = "85002",
	},
	[85002] = 
	{
		id = 85002,
		eventType = "walk",
		eventArg = "10577",
		endInvoke = "85003",
	},
	[85003] = 
	{
		id = 85003,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "85004/85009/85014/85019",
	},
	[85004] = 
	{
		id = 85004,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "85005",
	},
	[85005] = 
	{
		id = 85005,
		eventType = "walk",
		eventArg = "10504",
		endInvoke = "85006",
	},
	[85006] = 
	{
		id = 85006,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "85007",
	},
	[85007] = 
	{
		id = 85007,
		eventType = "walk",
		eventArg = "10503",
		endInvoke = "85008",
	},
	[85008] = 
	{
		id = 85008,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "85009",
	},
	[85009] = 
	{
		id = 85009,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "85010",
	},
	[85010] = 
	{
		id = 85010,
		eventType = "walk",
		eventArg = "10472",
		endInvoke = "85011",
	},
	[85011] = 
	{
		id = 85011,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "85012",
	},
	[85012] = 
	{
		id = 85012,
		eventType = "walk",
		eventArg = "10429",
		endInvoke = "85013",
	},
	[85013] = 
	{
		id = 85013,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "85014",
	},
	[85014] = 
	{
		id = 85014,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "85015",
	},
	[85015] = 
	{
		id = 85015,
		eventType = "walk",
		eventArg = "10504",
		endInvoke = "85016",
	},
	[85016] = 
	{
		id = 85016,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "85017",
	},
	[85017] = 
	{
		id = 85017,
		eventType = "walk",
		eventArg = "10577",
		endInvoke = "85018",
	},
	[85018] = 
	{
		id = 85018,
		eventType = "animation",
		eventArg = "Service/3/useto",
		endInvoke = "85019",
	},
	[85019] = 
	{
		id = 85019,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "85020",
	},
	[85020] = 
	{
		id = 85020,
		eventType = "walk",
		eventArg = "10504",
		endInvoke = "85021",
	},
	[85021] = 
	{
		id = 85021,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "85022",
	},
	[85022] = 
	{
		id = 85022,
		eventType = "walk",
		eventArg = "10503",
		endInvoke = "85023",
	},
	[85023] = 
	{
		id = 85023,
		eventType = "animation",
		eventArg = "Service/5/useto",
		endInvoke = "85024",
	},
	[85024] = 
	{
		id = 85024,
		eventType = "produce_cash_room",
		eventArg = "",
		endInvoke = "85002",
	},
	[85025] = 
	{
		id = 85025,
		eventType = "room_access",
		eventArg = "100401/1",
		endInvoke = "85026",
	},
	[85026] = 
	{
		id = 85026,
		eventType = "select_unlock_room",
		eventArg = "100201/101301;16/16",
		endInvoke = "83001/85001/84001",
	},
	[90000] = 
	{
		id = 90000,
		eventType = "shift",
		eventArg = "10948",
		endInvoke = "",
	},
	[90001] = 
	{
		id = 90001,
		eventType = "walk",
		eventArg = "10948",
		endInvoke = "",
	},
	[90002] = 
	{
		id = 90002,
		eventType = "setint",
		eventArg = "salesman=0",
		endInvoke = "90001",
	},
	[91001] = 
	{
		id = 91001,
		eventType = "serial",
		eventArg = "w_10489/10052",
		endInvoke = "91002",
	},
	[91002] = 
	{
		id = 91002,
		eventType = "setint",
		eventArg = "salesman=1",
		endInvoke = "91003",
	},
	[91003] = 
	{
		id = 91003,
		eventType = "animation",
		eventArg = "Dance/600",
		endInvoke = "91003",
	},
	[92001] = 
	{
		id = 92001,
		eventType = "serial",
		eventArg = "w_13812/10052",
		endInvoke = "92002",
	},
	[92002] = 
	{
		id = 92002,
		eventType = "setint",
		eventArg = "salesman=1",
		endInvoke = "92003",
	},
	[92003] = 
	{
		id = 92003,
		eventType = "animation",
		eventArg = "Dance/600",
		endInvoke = "92003",
	},
	[1018001] = 
	{
		id = 1018001,
		eventType = "shiftfacilitypoint",
		eventArg = "101002/use1",
		endInvoke = "1018002",
	},
	[1018002] = 
	{
		id = 1018002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018003",
	},
	[1018003] = 
	{
		id = 1018003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018002",
	},
	[1018101] = 
	{
		id = 1018101,
		eventType = "shiftfacilitypoint",
		eventArg = "101002/use2",
		endInvoke = "1018102",
	},
	[1018102] = 
	{
		id = 1018102,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018103",
	},
	[1018103] = 
	{
		id = 1018103,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018102",
	},
	[1018201] = 
	{
		id = 1018201,
		eventType = "shiftfacilitypoint",
		eventArg = "101002/use3",
		endInvoke = "1018202",
	},
	[1018202] = 
	{
		id = 1018202,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018203",
	},
	[1018203] = 
	{
		id = 1018203,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/128/32;30",
		endInvoke = "1018202",
	},
	[1001001] = 
	{
		id = 1001001,
		eventType = "shift",
		eventArg = "10834",
		endInvoke = "1001002",
	},
	[1001002] = 
	{
		id = 1001002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPad;16/16/16/16/128;10",
		endInvoke = "1001003",
	},
	[1001003] = 
	{
		id = 1001003,
		eventType = "walk",
		eventArg = "10830",
		endInvoke = "1001004",
	},
	[1001004] = 
	{
		id = 1001004,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPad;16/16/16/16/128;10",
		endInvoke = "1001005",
	},
	[1001005] = 
	{
		id = 1001005,
		eventType = "walk",
		eventArg = "10830",
		endInvoke = "1001002",
	},
	[1002000] = 
	{
		id = 1002000,
		eventType = "shift",
		eventArg = "10759",
		endInvoke = "",
	},
	[1002001] = 
	{
		id = 1002001,
		eventType = "walk",
		eventArg = "10759",
		endInvoke = "1002002",
	},
	[1002002] = 
	{
		id = 1002002,
		eventType = "random",
		eventArg = "32/32/16/16/16/4/4/1",
		endInvoke = "1002003/1002010/1002017/1002024/1002031/1002039/1002047/1002055",
	},
	[1002003] = 
	{
		id = 1002003,
		eventType = "walk",
		eventArg = "10759",
		endInvoke = "1002004",
	},
	[1002004] = 
	{
		id = 1002004,
		eventType = "walk",
		eventArg = "10738",
		endInvoke = "1002005",
	},
	[1002005] = 
	{
		id = 1002005,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002006/1002007",
	},
	[1002006] = 
	{
		id = 1002006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002007",
	},
	[1002007] = 
	{
		id = 1002007,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002008",
	},
	[1002008] = 
	{
		id = 1002008,
		eventType = "walk",
		eventArg = "10707",
		endInvoke = "1002009",
	},
	[1002009] = 
	{
		id = 1002009,
		eventType = "walk",
		eventArg = "10672",
		endInvoke = "1002010",
	},
	[1002010] = 
	{
		id = 1002010,
		eventType = "walk",
		eventArg = "10637",
		endInvoke = "1002011",
	},
	[1002011] = 
	{
		id = 1002011,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "1002012",
	},
	[1002012] = 
	{
		id = 1002012,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002013/1002014",
	},
	[1002013] = 
	{
		id = 1002013,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002014",
	},
	[1002014] = 
	{
		id = 1002014,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002015",
	},
	[1002015] = 
	{
		id = 1002015,
		eventType = "walk",
		eventArg = "10560",
		endInvoke = "1002016",
	},
	[1002016] = 
	{
		id = 1002016,
		eventType = "walk",
		eventArg = "10527",
		endInvoke = "1002017",
	},
	[1002017] = 
	{
		id = 1002017,
		eventType = "walk",
		eventArg = "10496",
		endInvoke = "1002018",
	},
	[1002018] = 
	{
		id = 1002018,
		eventType = "walk",
		eventArg = "10457",
		endInvoke = "1002019",
	},
	[1002019] = 
	{
		id = 1002019,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002020/1002021",
	},
	[1002020] = 
	{
		id = 1002020,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002021",
	},
	[1002021] = 
	{
		id = 1002021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002022",
	},
	[1002022] = 
	{
		id = 1002022,
		eventType = "walk",
		eventArg = "14654",
		endInvoke = "1002023",
	},
	[1002023] = 
	{
		id = 1002023,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "1002024",
	},
	[1002024] = 
	{
		id = 1002024,
		eventType = "walk",
		eventArg = "10338",
		endInvoke = "1002025",
	},
	[1002025] = 
	{
		id = 1002025,
		eventType = "walk",
		eventArg = "14868",
		endInvoke = "1002026",
	},
	[1002026] = 
	{
		id = 1002026,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002027/1002028",
	},
	[1002027] = 
	{
		id = 1002027,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002028",
	},
	[1002028] = 
	{
		id = 1002028,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002029",
	},
	[1002029] = 
	{
		id = 1002029,
		eventType = "walk",
		eventArg = "14939",
		endInvoke = "1002030",
	},
	[1002030] = 
	{
		id = 1002030,
		eventType = "walk",
		eventArg = "14869",
		endInvoke = "1002031",
	},
	[1002031] = 
	{
		id = 1002031,
		eventType = "walk",
		eventArg = "13740",
		endInvoke = "1002032",
	},
	[1002032] = 
	{
		id = 1002032,
		eventType = "walk",
		eventArg = "14516",
		endInvoke = "1002033",
	},
	[1002033] = 
	{
		id = 1002033,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002034/1002035",
	},
	[1002034] = 
	{
		id = 1002034,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002035",
	},
	[1002035] = 
	{
		id = 1002035,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002036",
	},
	[1002036] = 
	{
		id = 1002036,
		eventType = "walk",
		eventArg = "14867",
		endInvoke = "1002037",
	},
	[1002037] = 
	{
		id = 1002037,
		eventType = "walk",
		eventArg = "14940",
		endInvoke = "1002038",
	},
	[1002038] = 
	{
		id = 1002038,
		eventType = "walk",
		eventArg = "13670",
		endInvoke = "1002039",
	},
	[1002039] = 
	{
		id = 1002039,
		eventType = "walk",
		eventArg = "14656",
		endInvoke = "1002040",
	},
	[1002040] = 
	{
		id = 1002040,
		eventType = "walk",
		eventArg = "14655",
		endInvoke = "1002041",
	},
	[1002041] = 
	{
		id = 1002041,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002042/1002043",
	},
	[1002042] = 
	{
		id = 1002042,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002043",
	},
	[1002043] = 
	{
		id = 1002043,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002044",
	},
	[1002044] = 
	{
		id = 1002044,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "1002045",
	},
	[1002045] = 
	{
		id = 1002045,
		eventType = "walk",
		eventArg = "10376",
		endInvoke = "1002046",
	},
	[1002046] = 
	{
		id = 1002046,
		eventType = "walk",
		eventArg = "10415",
		endInvoke = "1002047",
	},
	[1002047] = 
	{
		id = 1002047,
		eventType = "walk",
		eventArg = "10414",
		endInvoke = "1002048",
	},
	[1002048] = 
	{
		id = 1002048,
		eventType = "walk",
		eventArg = "10454",
		endInvoke = "1002049",
	},
	[1002049] = 
	{
		id = 1002049,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002050/1002051",
	},
	[1002050] = 
	{
		id = 1002050,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002051",
	},
	[1002051] = 
	{
		id = 1002051,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002052",
	},
	[1002052] = 
	{
		id = 1002052,
		eventType = "walk",
		eventArg = "10493",
		endInvoke = "1002053",
	},
	[1002053] = 
	{
		id = 1002053,
		eventType = "walk",
		eventArg = "10524",
		endInvoke = "1002054",
	},
	[1002054] = 
	{
		id = 1002054,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "1002055",
	},
	[1002055] = 
	{
		id = 1002055,
		eventType = "walk",
		eventArg = "10598",
		endInvoke = "1002056",
	},
	[1002056] = 
	{
		id = 1002056,
		eventType = "walk",
		eventArg = "10636",
		endInvoke = "1002057",
	},
	[1002057] = 
	{
		id = 1002057,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1002058/1002059",
	},
	[1002058] = 
	{
		id = 1002058,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1002059",
	},
	[1002059] = 
	{
		id = 1002059,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1002060",
	},
	[1002060] = 
	{
		id = 1002060,
		eventType = "walk",
		eventArg = "14796",
		endInvoke = "1002061",
	},
	[1002061] = 
	{
		id = 1002061,
		eventType = "walk",
		eventArg = "10706",
		endInvoke = "1002002",
	},
	[1003001] = 
	{
		id = 1003001,
		eventType = "shift",
		eventArg = "13741",
		endInvoke = "1003003",
	},
	[1003002] = 
	{
		id = 1003002,
		eventType = "walk",
		eventArg = "13741",
		endInvoke = "1003003",
	},
	[1003003] = 
	{
		id = 1003003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003004",
	},
	[1003004] = 
	{
		id = 1003004,
		eventType = "random",
		eventArg = "32/32/16/16/16/4/4/1",
		endInvoke = "1003005/1003012/1003019/1003026/1003033/1003041/1003049/1003057",
	},
	[1003005] = 
	{
		id = 1003005,
		eventType = "walk",
		eventArg = "10759",
		endInvoke = "1003006",
	},
	[1003006] = 
	{
		id = 1003006,
		eventType = "walk",
		eventArg = "10738",
		endInvoke = "1003007",
	},
	[1003007] = 
	{
		id = 1003007,
		eventType = "walk",
		eventArg = "10707",
		endInvoke = "1003008",
	},
	[1003008] = 
	{
		id = 1003008,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003009/1003010",
	},
	[1003009] = 
	{
		id = 1003009,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003010",
	},
	[1003010] = 
	{
		id = 1003010,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003011",
	},
	[1003011] = 
	{
		id = 1003011,
		eventType = "walk",
		eventArg = "10672",
		endInvoke = "1003012",
	},
	[1003012] = 
	{
		id = 1003012,
		eventType = "walk",
		eventArg = "10637",
		endInvoke = "1003013",
	},
	[1003013] = 
	{
		id = 1003013,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "1003014",
	},
	[1003014] = 
	{
		id = 1003014,
		eventType = "walk",
		eventArg = "10560",
		endInvoke = "1003015",
	},
	[1003015] = 
	{
		id = 1003015,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003016/1003017",
	},
	[1003016] = 
	{
		id = 1003016,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003017",
	},
	[1003017] = 
	{
		id = 1003017,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003018",
	},
	[1003018] = 
	{
		id = 1003018,
		eventType = "walk",
		eventArg = "10527",
		endInvoke = "1003019",
	},
	[1003019] = 
	{
		id = 1003019,
		eventType = "walk",
		eventArg = "10496",
		endInvoke = "1003020",
	},
	[1003020] = 
	{
		id = 1003020,
		eventType = "walk",
		eventArg = "10457",
		endInvoke = "1003021",
	},
	[1003021] = 
	{
		id = 1003021,
		eventType = "walk",
		eventArg = "14654",
		endInvoke = "1003022",
	},
	[1003022] = 
	{
		id = 1003022,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003023/1003024",
	},
	[1003023] = 
	{
		id = 1003023,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003024",
	},
	[1003024] = 
	{
		id = 1003024,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003025",
	},
	[1003025] = 
	{
		id = 1003025,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "1003026",
	},
	[1003026] = 
	{
		id = 1003026,
		eventType = "walk",
		eventArg = "10338",
		endInvoke = "1003027",
	},
	[1003027] = 
	{
		id = 1003027,
		eventType = "walk",
		eventArg = "14868",
		endInvoke = "1003028",
	},
	[1003028] = 
	{
		id = 1003028,
		eventType = "walk",
		eventArg = "14939",
		endInvoke = "1003029",
	},
	[1003029] = 
	{
		id = 1003029,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003030/1003031",
	},
	[1003030] = 
	{
		id = 1003030,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003031",
	},
	[1003031] = 
	{
		id = 1003031,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003032",
	},
	[1003032] = 
	{
		id = 1003032,
		eventType = "walk",
		eventArg = "14869",
		endInvoke = "1003033",
	},
	[1003033] = 
	{
		id = 1003033,
		eventType = "walk",
		eventArg = "13740",
		endInvoke = "1003034",
	},
	[1003034] = 
	{
		id = 1003034,
		eventType = "walk",
		eventArg = "14516",
		endInvoke = "1003035",
	},
	[1003035] = 
	{
		id = 1003035,
		eventType = "walk",
		eventArg = "14867",
		endInvoke = "1003036",
	},
	[1003036] = 
	{
		id = 1003036,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003037/1003038",
	},
	[1003037] = 
	{
		id = 1003037,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003038",
	},
	[1003038] = 
	{
		id = 1003038,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003039",
	},
	[1003039] = 
	{
		id = 1003039,
		eventType = "walk",
		eventArg = "14940",
		endInvoke = "1003040",
	},
	[1003040] = 
	{
		id = 1003040,
		eventType = "walk",
		eventArg = "13670",
		endInvoke = "1003041",
	},
	[1003041] = 
	{
		id = 1003041,
		eventType = "walk",
		eventArg = "14656",
		endInvoke = "1003042",
	},
	[1003042] = 
	{
		id = 1003042,
		eventType = "walk",
		eventArg = "14655",
		endInvoke = "1003043",
	},
	[1003043] = 
	{
		id = 1003043,
		eventType = "walk",
		eventArg = "14657",
		endInvoke = "1003044",
	},
	[1003044] = 
	{
		id = 1003044,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003045/1003046",
	},
	[1003045] = 
	{
		id = 1003045,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003046",
	},
	[1003046] = 
	{
		id = 1003046,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003047",
	},
	[1003047] = 
	{
		id = 1003047,
		eventType = "walk",
		eventArg = "10376",
		endInvoke = "1003048",
	},
	[1003048] = 
	{
		id = 1003048,
		eventType = "walk",
		eventArg = "10415",
		endInvoke = "1003049",
	},
	[1003049] = 
	{
		id = 1003049,
		eventType = "walk",
		eventArg = "10414",
		endInvoke = "1003050",
	},
	[1003050] = 
	{
		id = 1003050,
		eventType = "walk",
		eventArg = "10454",
		endInvoke = "1003051",
	},
	[1003051] = 
	{
		id = 1003051,
		eventType = "walk",
		eventArg = "10493",
		endInvoke = "1003052",
	},
	[1003052] = 
	{
		id = 1003052,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003053/1003054",
	},
	[1003053] = 
	{
		id = 1003053,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003054",
	},
	[1003054] = 
	{
		id = 1003054,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003055",
	},
	[1003055] = 
	{
		id = 1003055,
		eventType = "walk",
		eventArg = "10524",
		endInvoke = "1003056",
	},
	[1003056] = 
	{
		id = 1003056,
		eventType = "walk",
		eventArg = "10599",
		endInvoke = "1003057",
	},
	[1003057] = 
	{
		id = 1003057,
		eventType = "walk",
		eventArg = "10598",
		endInvoke = "1003058",
	},
	[1003058] = 
	{
		id = 1003058,
		eventType = "walk",
		eventArg = "10636",
		endInvoke = "1003059",
	},
	[1003059] = 
	{
		id = 1003059,
		eventType = "walk",
		eventArg = "14796",
		endInvoke = "1003060",
	},
	[1003060] = 
	{
		id = 1003060,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1003061/1003062",
	},
	[1003061] = 
	{
		id = 1003061,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1003062",
	},
	[1003062] = 
	{
		id = 1003062,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1003063",
	},
	[1003063] = 
	{
		id = 1003063,
		eventType = "walk",
		eventArg = "10706",
		endInvoke = "1003002",
	},
	[1004000] = 
	{
		id = 1004000,
		eventType = "shift",
		eventArg = "10653",
		endInvoke = "1004001",
	},
	[1004001] = 
	{
		id = 1004001,
		eventType = "walk",
		eventArg = "10653",
		endInvoke = "1004002",
	},
	[1004002] = 
	{
		id = 1004002,
		eventType = "random",
		eventArg = "64/32/16/8",
		endInvoke = "1004003/1004010/1004017/1004024",
	},
	[1004003] = 
	{
		id = 1004003,
		eventType = "walk",
		eventArg = "10653",
		endInvoke = "1004004",
	},
	[1004004] = 
	{
		id = 1004004,
		eventType = "walk",
		eventArg = "10620",
		endInvoke = "1004005",
	},
	[1004005] = 
	{
		id = 1004005,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1004006/1004007",
	},
	[1004006] = 
	{
		id = 1004006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1004007",
	},
	[1004007] = 
	{
		id = 1004007,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1004008",
	},
	[1004008] = 
	{
		id = 1004008,
		eventType = "walk",
		eventArg = "10652",
		endInvoke = "1004009",
	},
	[1004009] = 
	{
		id = 1004009,
		eventType = "walk",
		eventArg = "10686",
		endInvoke = "1004010",
	},
	[1004010] = 
	{
		id = 1004010,
		eventType = "walk",
		eventArg = "10685",
		endInvoke = "1004011",
	},
	[1004011] = 
	{
		id = 1004011,
		eventType = "walk",
		eventArg = "10648",
		endInvoke = "1004012",
	},
	[1004012] = 
	{
		id = 1004012,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1004013/1004014",
	},
	[1004013] = 
	{
		id = 1004013,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1004014",
	},
	[1004014] = 
	{
		id = 1004014,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1004015",
	},
	[1004015] = 
	{
		id = 1004015,
		eventType = "walk",
		eventArg = "10615",
		endInvoke = "1004016",
	},
	[1004016] = 
	{
		id = 1004016,
		eventType = "walk",
		eventArg = "11856",
		endInvoke = "1004017",
	},
	[1004017] = 
	{
		id = 1004017,
		eventType = "walk",
		eventArg = "10536",
		endInvoke = "1004018",
	},
	[1004018] = 
	{
		id = 1004018,
		eventType = "walk",
		eventArg = "10501",
		endInvoke = "1004019",
	},
	[1004019] = 
	{
		id = 1004019,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1004020/1004021",
	},
	[1004020] = 
	{
		id = 1004020,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1004021",
	},
	[1004021] = 
	{
		id = 1004021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1004022",
	},
	[1004022] = 
	{
		id = 1004022,
		eventType = "walk",
		eventArg = "10473",
		endInvoke = "1004023",
	},
	[1004023] = 
	{
		id = 1004023,
		eventType = "walk",
		eventArg = "10429",
		endInvoke = "1004024",
	},
	[1004024] = 
	{
		id = 1004024,
		eventType = "walk",
		eventArg = "10430",
		endInvoke = "1004025",
	},
	[1004025] = 
	{
		id = 1004025,
		eventType = "walk",
		eventArg = "10432",
		endInvoke = "1004026",
	},
	[1004026] = 
	{
		id = 1004026,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1004027/1004028",
	},
	[1004027] = 
	{
		id = 1004027,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1004028",
	},
	[1004028] = 
	{
		id = 1004028,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1004029",
	},
	[1004029] = 
	{
		id = 1004029,
		eventType = "walk",
		eventArg = "10475",
		endInvoke = "1004030",
	},
	[1004030] = 
	{
		id = 1004030,
		eventType = "walk",
		eventArg = "10508",
		endInvoke = "1004002",
	},
	[1005001] = 
	{
		id = 1005001,
		eventType = "shift",
		eventArg = "10652",
		endInvoke = "1005002",
	},
	[1005002] = 
	{
		id = 1005002,
		eventType = "walk",
		eventArg = "10652",
		endInvoke = "1005003",
	},
	[1005003] = 
	{
		id = 1005003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1005004",
	},
	[1005004] = 
	{
		id = 1005004,
		eventType = "random",
		eventArg = "64/32/16/8",
		endInvoke = "1005005/1005012/1005019/1005026",
	},
	[1005005] = 
	{
		id = 1005005,
		eventType = "walk",
		eventArg = "10653",
		endInvoke = "1005006",
	},
	[1005006] = 
	{
		id = 1005006,
		eventType = "walk",
		eventArg = "10620",
		endInvoke = "1005007",
	},
	[1005007] = 
	{
		id = 1005007,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1005008/1005009",
	},
	[1005008] = 
	{
		id = 1005008,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1005009",
	},
	[1005009] = 
	{
		id = 1005009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1005010",
	},
	[1005010] = 
	{
		id = 1005010,
		eventType = "walk",
		eventArg = "10652",
		endInvoke = "1005011",
	},
	[1005011] = 
	{
		id = 1005011,
		eventType = "walk",
		eventArg = "10686",
		endInvoke = "1005012",
	},
	[1005012] = 
	{
		id = 1005012,
		eventType = "walk",
		eventArg = "10685",
		endInvoke = "1005013",
	},
	[1005013] = 
	{
		id = 1005013,
		eventType = "walk",
		eventArg = "10648",
		endInvoke = "1005014",
	},
	[1005014] = 
	{
		id = 1005014,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1005015/1005016",
	},
	[1005015] = 
	{
		id = 1005015,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1005016",
	},
	[1005016] = 
	{
		id = 1005016,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1005017",
	},
	[1005017] = 
	{
		id = 1005017,
		eventType = "walk",
		eventArg = "10615",
		endInvoke = "1005018",
	},
	[1005018] = 
	{
		id = 1005018,
		eventType = "walk",
		eventArg = "11856",
		endInvoke = "1005019",
	},
	[1005019] = 
	{
		id = 1005019,
		eventType = "walk",
		eventArg = "10536",
		endInvoke = "1005020",
	},
	[1005020] = 
	{
		id = 1005020,
		eventType = "walk",
		eventArg = "10501",
		endInvoke = "1005021",
	},
	[1005021] = 
	{
		id = 1005021,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1005022/1005023",
	},
	[1005022] = 
	{
		id = 1005022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1005023",
	},
	[1005023] = 
	{
		id = 1005023,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1005024",
	},
	[1005024] = 
	{
		id = 1005024,
		eventType = "walk",
		eventArg = "10473",
		endInvoke = "1005025",
	},
	[1005025] = 
	{
		id = 1005025,
		eventType = "walk",
		eventArg = "10429",
		endInvoke = "1005026",
	},
	[1005026] = 
	{
		id = 1005026,
		eventType = "walk",
		eventArg = "10430",
		endInvoke = "1005027",
	},
	[1005027] = 
	{
		id = 1005027,
		eventType = "walk",
		eventArg = "10432",
		endInvoke = "1005028",
	},
	[1005028] = 
	{
		id = 1005028,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1005029/1005030",
	},
	[1005029] = 
	{
		id = 1005029,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1005030",
	},
	[1005030] = 
	{
		id = 1005030,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1005031",
	},
	[1005031] = 
	{
		id = 1005031,
		eventType = "walk",
		eventArg = "10475",
		endInvoke = "1005032",
	},
	[1005032] = 
	{
		id = 1005032,
		eventType = "walk",
		eventArg = "10508",
		endInvoke = "1005002",
	},
	[1006001] = 
	{
		id = 1006001,
		eventType = "shiftfacilitypoint",
		eventArg = "110007/use1",
		endInvoke = "1006002",
	},
	[1006002] = 
	{
		id = 1006002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/16/32;30",
		endInvoke = "1006002",
	},
	[1007001] = 
	{
		id = 1007001,
		eventType = "shiftfacilitypoint",
		eventArg = "110007/use2",
		endInvoke = "1007002",
	},
	[1007002] = 
	{
		id = 1007002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/16/32;30",
		endInvoke = "1007002",
	},
	[1008001] = 
	{
		id = 1008001,
		eventType = "shift",
		eventArg = "12695",
		endInvoke = "1008002",
	},
	[1008002] = 
	{
		id = 1008002,
		eventType = "random",
		eventArg = "64/32/16/8",
		endInvoke = "1008003/1008010/1008017/1008024",
	},
	[1008003] = 
	{
		id = 1008003,
		eventType = "walk",
		eventArg = "12695",
		endInvoke = "1008004",
	},
	[1008004] = 
	{
		id = 1008004,
		eventType = "walk",
		eventArg = "12687",
		endInvoke = "1008005",
	},
	[1008005] = 
	{
		id = 1008005,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1008006/1008007",
	},
	[1008006] = 
	{
		id = 1008006,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1008007",
	},
	[1008007] = 
	{
		id = 1008007,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1008008",
	},
	[1008008] = 
	{
		id = 1008008,
		eventType = "walk",
		eventArg = "12686",
		endInvoke = "1008009",
	},
	[1008009] = 
	{
		id = 1008009,
		eventType = "walk",
		eventArg = "12685",
		endInvoke = "1008010",
	},
	[1008010] = 
	{
		id = 1008010,
		eventType = "walk",
		eventArg = "12675",
		endInvoke = "1008011",
	},
	[1008011] = 
	{
		id = 1008011,
		eventType = "walk",
		eventArg = "12674",
		endInvoke = "1008012",
	},
	[1008012] = 
	{
		id = 1008012,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1008013/1008014",
	},
	[1008013] = 
	{
		id = 1008013,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1008014",
	},
	[1008014] = 
	{
		id = 1008014,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1008015",
	},
	[1008015] = 
	{
		id = 1008015,
		eventType = "walk",
		eventArg = "12665",
		endInvoke = "1008016",
	},
	[1008016] = 
	{
		id = 1008016,
		eventType = "walk",
		eventArg = "12656",
		endInvoke = "1008017",
	},
	[1008017] = 
	{
		id = 1008017,
		eventType = "walk",
		eventArg = "12637",
		endInvoke = "1008018",
	},
	[1008018] = 
	{
		id = 1008018,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "1008019",
	},
	[1008019] = 
	{
		id = 1008019,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1008020/1008021",
	},
	[1008020] = 
	{
		id = 1008020,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1008021",
	},
	[1008021] = 
	{
		id = 1008021,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1008022",
	},
	[1008022] = 
	{
		id = 1008022,
		eventType = "walk",
		eventArg = "12639",
		endInvoke = "1008023",
	},
	[1008023] = 
	{
		id = 1008023,
		eventType = "walk",
		eventArg = "12640",
		endInvoke = "1008024",
	},
	[1008024] = 
	{
		id = 1008024,
		eventType = "walk",
		eventArg = "12641",
		endInvoke = "1008025",
	},
	[1008025] = 
	{
		id = 1008025,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "1008026",
	},
	[1008026] = 
	{
		id = 1008026,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1008027/1008028",
	},
	[1008027] = 
	{
		id = 1008027,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Guide;16/16/16/128/32;5",
		endInvoke = "1008028",
	},
	[1008028] = 
	{
		id = 1008028,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1008029",
	},
	[1008029] = 
	{
		id = 1008029,
		eventType = "walk",
		eventArg = "12653",
		endInvoke = "1008030",
	},
	[1008030] = 
	{
		id = 1008030,
		eventType = "walk",
		eventArg = "12663",
		endInvoke = "1008002",
	},
	[1009001] = 
	{
		id = 1009001,
		eventType = "shift",
		eventArg = "12687",
		endInvoke = "1009002",
	},
	[1009002] = 
	{
		id = 1009002,
		eventType = "walk",
		eventArg = "12687",
		endInvoke = "1009003",
	},
	[1009003] = 
	{
		id = 1009003,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1009004",
	},
	[1009004] = 
	{
		id = 1009004,
		eventType = "random",
		eventArg = "64/32/16/8",
		endInvoke = "1009005/1009012/1009019/1009026",
	},
	[1009005] = 
	{
		id = 1009005,
		eventType = "walk",
		eventArg = "12695",
		endInvoke = "1009006",
	},
	[1009006] = 
	{
		id = 1009006,
		eventType = "walk",
		eventArg = "12687",
		endInvoke = "1009007",
	},
	[1009007] = 
	{
		id = 1009007,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1009008/1009009",
	},
	[1009008] = 
	{
		id = 1009008,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1009009",
	},
	[1009009] = 
	{
		id = 1009009,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1009010",
	},
	[1009010] = 
	{
		id = 1009010,
		eventType = "walk",
		eventArg = "12686",
		endInvoke = "1009011",
	},
	[1009011] = 
	{
		id = 1009011,
		eventType = "walk",
		eventArg = "12685",
		endInvoke = "1009012",
	},
	[1009012] = 
	{
		id = 1009012,
		eventType = "walk",
		eventArg = "12675",
		endInvoke = "1009013",
	},
	[1009013] = 
	{
		id = 1009013,
		eventType = "walk",
		eventArg = "12674",
		endInvoke = "1009014",
	},
	[1009014] = 
	{
		id = 1009014,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1009015/1009016",
	},
	[1009015] = 
	{
		id = 1009015,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1009016",
	},
	[1009016] = 
	{
		id = 1009016,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1009017",
	},
	[1009017] = 
	{
		id = 1009017,
		eventType = "walk",
		eventArg = "12665",
		endInvoke = "1009018",
	},
	[1009018] = 
	{
		id = 1009018,
		eventType = "walk",
		eventArg = "12656",
		endInvoke = "1009019",
	},
	[1009019] = 
	{
		id = 1009019,
		eventType = "walk",
		eventArg = "12637",
		endInvoke = "1009020",
	},
	[1009020] = 
	{
		id = 1009020,
		eventType = "walk",
		eventArg = "12638",
		endInvoke = "1009021",
	},
	[1009021] = 
	{
		id = 1009021,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1009022/1009023",
	},
	[1009022] = 
	{
		id = 1009022,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1009023",
	},
	[1009023] = 
	{
		id = 1009023,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1009024",
	},
	[1009024] = 
	{
		id = 1009024,
		eventType = "walk",
		eventArg = "12639",
		endInvoke = "1009025",
	},
	[1009025] = 
	{
		id = 1009025,
		eventType = "walk",
		eventArg = "12640",
		endInvoke = "1009026",
	},
	[1009026] = 
	{
		id = 1009026,
		eventType = "walk",
		eventArg = "12641",
		endInvoke = "1009027",
	},
	[1009027] = 
	{
		id = 1009027,
		eventType = "walk",
		eventArg = "12642",
		endInvoke = "1009028",
	},
	[1009028] = 
	{
		id = 1009028,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "1009029/1009030",
	},
	[1009029] = 
	{
		id = 1009029,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1009030",
	},
	[1009030] = 
	{
		id = 1009030,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1009031",
	},
	[1009031] = 
	{
		id = 1009031,
		eventType = "walk",
		eventArg = "12653",
		endInvoke = "1009032",
	},
	[1009032] = 
	{
		id = 1009032,
		eventType = "walk",
		eventArg = "12663",
		endInvoke = "1009002",
	},
	[1010001] = 
	{
		id = 1010001,
		eventType = "shift",
		eventArg = "13671",
		endInvoke = "1010002",
	},
	[1010002] = 
	{
		id = 1010002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/16/32;30",
		endInvoke = "1010002",
	},
	[1011001] = 
	{
		id = 1011001,
		eventType = "shiftfacilitypoint",
		eventArg = "114001/use5",
		endInvoke = "1011002",
	},
	[1011002] = 
	{
		id = 1011002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1011002",
	},
	[1012001] = 
	{
		id = 1012001,
		eventType = "shiftfacilitypoint",
		eventArg = "115001/use5",
		endInvoke = "1012002",
	},
	[1012002] = 
	{
		id = 1012002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1012002",
	},
	[1013001] = 
	{
		id = 1013001,
		eventType = "shiftfacilitypoint",
		eventArg = "116001/use2",
		endInvoke = "1013002",
	},
	[1013002] = 
	{
		id = 1013002,
		eventType = "animation_random",
		eventArg = "Sit;16;10",
		endInvoke = "1013002",
	},
	[1014001] = 
	{
		id = 1014001,
		eventType = "shift",
		eventArg = "13500",
		endInvoke = "1014002",
	},
	[1014002] = 
	{
		id = 1014002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1014002",
	},
	[1015001] = 
	{
		id = 1015001,
		eventType = "shiftfacilitypoint",
		eventArg = "118001/use1",
		endInvoke = "1015002",
	},
	[1015002] = 
	{
		id = 1015002,
		eventType = "animation_random",
		eventArg = "Sit;16;10",
		endInvoke = "1015002",
	},
	[1016001] = 
	{
		id = 1016001,
		eventType = "shiftfacilitypoint",
		eventArg = "119001/use1",
		endInvoke = "1016002",
	},
	[1016002] = 
	{
		id = 1016002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/StandPC;16/16/16/16/32;30",
		endInvoke = "1016002",
	},
	[1017001] = 
	{
		id = 1017001,
		eventType = "shift",
		eventArg = "",
		endInvoke = "1017002",
	},
	[1017002] = 
	{
		id = 1017002,
		eventType = "animation_random",
		eventArg = "Stretched/StandGlance/Nodded/Idle/Greet;8/8/8/128/32;10",
		endInvoke = "1017002",
	},
}