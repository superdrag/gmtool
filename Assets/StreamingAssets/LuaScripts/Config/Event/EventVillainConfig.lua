LuaConfig["Event/EventVillainConfig"] = 
{
	[100001] = 
	{
		id = 100001,
		eventType = "serial",
		eventArg = "w_13682/w_10038",
		endInvoke = "10002",
	},
	[100002] = 
	{
		id = 100002,
		eventType = "checkcash",
		eventArg = "3",
		endInvoke = "/100005",
	},
	[100003] = 
	{
		id = 100003,
		eventType = "animation",
		eventArg = "PickUp/",
		endInvoke = "",
	},
	[100004] = 
	{
		id = 100004,
		eventType = "collectcash",
		eventArg = "5/false",
		endInvoke = "",
	},
	[100005] = 
	{
		id = 100005,
		eventType = "serial_end",
		eventArg = "",
		endInvoke = "",
	},
	[100006] = 
	{
		id = 100006,
		eventType = "villain",
		eventArg = "",
		endInvoke = "",
	},
	[100007] = 
	{
		id = 100007,
		eventType = "set_self_int",
		eventArg = "xiaotou=1",
		endInvoke = "101001",
	},
	[100008] = 
	{
		id = 100008,
		eventType = "hideheadeffect",
		eventArg = "",
		endInvoke = "100011",
	},
	[100009] = 
	{
		id = 100009,
		eventType = "check_self_int",
		eventArg = "xiaotou=1",
		endInvoke = "100008/10002",
	},
	[100010] = 
	{
		id = 100010,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "100007/140002",
	},
	[100011] = 
	{
		id = 100011,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000150/100001",
	},
	[101001] = 
	{
		id = 101001,
		eventType = "headeffect",
		eventArg = "Other/TapTip;100",
		endInvoke = "",
	},
	[101002] = 
	{
		id = 101002,
		eventType = "check_room_into",
		eventArg = "100201/100901/101301",
		endInvoke = "102001/103001/104001/100001",
	},
	[101003] = 
	{
		id = 101003,
		eventType = "room_access",
		eventArg = "100201/1",
		endInvoke = "",
	},
	[101004] = 
	{
		id = 101004,
		eventType = "room_access",
		eventArg = "100901/1",
		endInvoke = "",
	},
	[101005] = 
	{
		id = 101005,
		eventType = "room_access",
		eventArg = "101301/1",
		endInvoke = "",
	},
	[102001] = 
	{
		id = 102001,
		eventType = "serial",
		eventArg = "100006/w_10678/w_10743/100002/100003/100004",
		endInvoke = "102003",
	},
	[102003] = 
	{
		id = 102003,
		eventType = "serial",
		eventArg = "100006/w_10642/w_10565/100002/100003/100004",
		endInvoke = "102004",
	},
	[102004] = 
	{
		id = 102004,
		eventType = "serial",
		eventArg = "100006/w_10677/w_10742/100002/100003/100004",
		endInvoke = "102005",
	},
	[102005] = 
	{
		id = 102005,
		eventType = "serial",
		eventArg = "100006/w_10641/w_10564/100002/100003/100004",
		endInvoke = "102006",
	},
	[102006] = 
	{
		id = 102006,
		eventType = "serial",
		eventArg = "100006/w_10680/w_10745/100002/100003/100004",
		endInvoke = "102007",
	},
	[102007] = 
	{
		id = 102007,
		eventType = "serial",
		eventArg = "100006/w_10644/w_10567/100002/100003/100004",
		endInvoke = "102008",
	},
	[102008] = 
	{
		id = 102008,
		eventType = "serial",
		eventArg = "100006/w_10681/w_10747/100002/100003/100004",
		endInvoke = "102009",
	},
	[102009] = 
	{
		id = 102009,
		eventType = "serial",
		eventArg = "100006/w_10645/w_10569/100002/100003/100004",
		endInvoke = "102001",
	},
	[103001] = 
	{
		id = 103001,
		eventType = "serial",
		eventArg = "100006/w_10470/w_10467/100002/100003/100004",
		endInvoke = "103003",
	},
	[103003] = 
	{
		id = 103003,
		eventType = "serial",
		eventArg = "100006/w_10386/w_10383/100002/100003/100004",
		endInvoke = "103004",
	},
	[103004] = 
	{
		id = 103004,
		eventType = "serial",
		eventArg = "100006/w_13978/w_14051/100002/100003/100004",
		endInvoke = "103005",
	},
	[103005] = 
	{
		id = 103005,
		eventType = "serial",
		eventArg = "100006/w_13765/w_13838/100002/100003/100004",
		endInvoke = "103006",
	},
	[103006] = 
	{
		id = 103006,
		eventType = "serial",
		eventArg = "100006/w_13764/w_13762/100002/100003/100004",
		endInvoke = "103007",
	},
	[103007] = 
	{
		id = 103007,
		eventType = "serial",
		eventArg = "100006/w_13906/w_13975/100002/100003/100004",
		endInvoke = "103008",
	},
	[103008] = 
	{
		id = 103008,
		eventType = "serial",
		eventArg = "100006/w_14119/w_10351/100002/100003/100004",
		endInvoke = "103001",
	},
	[104001] = 
	{
		id = 104001,
		eventType = "serial",
		eventArg = "100006/w_12509/w_12510/100002/100003/100004",
		endInvoke = "104003",
	},
	[104003] = 
	{
		id = 104003,
		eventType = "serial",
		eventArg = "100006/w_12519/w_12520/100002/100003/100004",
		endInvoke = "104004",
	},
	[104004] = 
	{
		id = 104004,
		eventType = "serial",
		eventArg = "100006/w_12513/w_12515/100002/100003/100004",
		endInvoke = "104005",
	},
	[104005] = 
	{
		id = 104005,
		eventType = "serial",
		eventArg = "100006/w_12528/w_12529/100002/100003/100004",
		endInvoke = "104001",
	},
	[105001] = 
	{
		id = 105001,
		eventType = "",
		eventArg = "",
		endInvoke = "",
	},
	[106001] = 
	{
		id = 106001,
		eventType = "",
		eventArg = "",
		endInvoke = "",
	},
	[110001] = 
	{
		id = 110001,
		eventType = "serial",
		eventArg = "w_13682/w_10038",
		endInvoke = "10002",
	},
	[110002] = 
	{
		id = 110002,
		eventType = "villain",
		eventArg = "",
		endInvoke = "",
	},
	[110003] = 
	{
		id = 110003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110004/140002",
	},
	[110004] = 
	{
		id = 110004,
		eventType = "set_self_int",
		eventArg = "xiaotou=1",
		endInvoke = "111001",
	},
	[110005] = 
	{
		id = 110005,
		eventType = "check_self_int",
		eventArg = "xiaotou=1",
		endInvoke = "110006//10002",
	},
	[110006] = 
	{
		id = 110006,
		eventType = "hideheadeffect",
		eventArg = "",
		endInvoke = "110007",
	},
	[110007] = 
	{
		id = 110007,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000097/110001",
	},
	[111001] = 
	{
		id = 111001,
		eventType = "headeffect",
		eventArg = "Other/TapTip;100",
		endInvoke = "140003",
	},
	[111002] = 
	{
		id = 111002,
		eventType = "check_room_into",
		eventArg = "100201/100901/101301",
		endInvoke = "112001/113001/114001/110001",
	},
	[111003] = 
	{
		id = 111003,
		eventType = "room_access",
		eventArg = "100201/1",
		endInvoke = "",
	},
	[111004] = 
	{
		id = 111004,
		eventType = "room_access",
		eventArg = "100901/1",
		endInvoke = "",
	},
	[111005] = 
	{
		id = 111005,
		eventType = "room_access",
		eventArg = "101301/1",
		endInvoke = "",
	},
	[111006] = 
	{
		id = 111006,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "",
	},
	[111007] = 
	{
		id = 111007,
		eventType = "effect3d",
		eventArg = "Effect/EventRole/Erik_Attack01;2",
		endInvoke = "",
	},
	[111008] = 
	{
		id = 111008,
		eventType = "audio",
		eventArg = "Event/Magneto_King_skill",
		endInvoke = "",
	},
	[112001] = 
	{
		id = 112001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "112002",
	},
	[112002] = 
	{
		id = 112002,
		eventType = "walk",
		eventArg = "10302",
		endInvoke = "112003",
	},
	[112003] = 
	{
		id = 112003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110002/112004/111007/111008",
	},
	[112004] = 
	{
		id = 112004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "112005",
	},
	[112005] = 
	{
		id = 112005,
		eventType = "breakfacilitys",
		eventArg = "102001/102002/102003/102004/102005/102006;80",
		endInvoke = "112006",
	},
	[112006] = 
	{
		id = 112006,
		eventType = "serial",
		eventArg = "110002/w_10560/112007/110002/w_10496/112007/110002/w_10457/112007/110002/w_10458/112007/110002/w_10461/112007/110002/w_10465/112007/110002/w_10422/112007/110002/w_10342/112007/110002/w_10341/112007/110002/w_10338/112007/110002/w_10376/112007/110002/w_10414/112007/110002/w_10453/112007/110002/w_10524/112007/110002/w_10599/112007/120007",
		endInvoke = "",
	},
	[112007] = 
	{
		id = 112007,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112008] = 
	{
		id = 112008,
		eventType = "serial",
		eventArg = "110002/w_10560",
		endInvoke = "",
	},
	[112009] = 
	{
		id = 112009,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112010] = 
	{
		id = 112010,
		eventType = "serial",
		eventArg = "110002/w_10496",
		endInvoke = "",
	},
	[112011] = 
	{
		id = 112011,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112012] = 
	{
		id = 112012,
		eventType = "serial",
		eventArg = "110002/w_10457",
		endInvoke = "",
	},
	[112013] = 
	{
		id = 112013,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112014] = 
	{
		id = 112014,
		eventType = "serial",
		eventArg = "110002/w_10458",
		endInvoke = "",
	},
	[112015] = 
	{
		id = 112015,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112016] = 
	{
		id = 112016,
		eventType = "serial",
		eventArg = "110002/w_10461",
		endInvoke = "",
	},
	[112017] = 
	{
		id = 112017,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112018] = 
	{
		id = 112018,
		eventType = "serial",
		eventArg = "110002/w_10465",
		endInvoke = "",
	},
	[112019] = 
	{
		id = 112019,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112020] = 
	{
		id = 112020,
		eventType = "serial",
		eventArg = "110002/w_10422",
		endInvoke = "",
	},
	[112021] = 
	{
		id = 112021,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112022] = 
	{
		id = 112022,
		eventType = "serial",
		eventArg = "110002/w_10342",
		endInvoke = "",
	},
	[112023] = 
	{
		id = 112023,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112024] = 
	{
		id = 112024,
		eventType = "serial",
		eventArg = "110002/w_10341",
		endInvoke = "",
	},
	[112025] = 
	{
		id = 112025,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112026] = 
	{
		id = 112026,
		eventType = "serial",
		eventArg = "110002/w_10338",
		endInvoke = "",
	},
	[112027] = 
	{
		id = 112027,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112028] = 
	{
		id = 112028,
		eventType = "serial",
		eventArg = "110002/w_10396",
		endInvoke = "",
	},
	[112029] = 
	{
		id = 112029,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112030] = 
	{
		id = 112030,
		eventType = "serial",
		eventArg = "110002/w_10414",
		endInvoke = "",
	},
	[112031] = 
	{
		id = 112031,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112032] = 
	{
		id = 112032,
		eventType = "serial",
		eventArg = "110002/w_10453",
		endInvoke = "",
	},
	[112033] = 
	{
		id = 112033,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[112034] = 
	{
		id = 112034,
		eventType = "serial",
		eventArg = "110002/w_10524",
		endInvoke = "",
	},
	[112035] = 
	{
		id = 112035,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[112036] = 
	{
		id = 112036,
		eventType = "serial",
		eventArg = "110002/w_10599",
		endInvoke = "",
	},
	[112037] = 
	{
		id = 112037,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[113001] = 
	{
		id = 113001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "113002",
	},
	[113002] = 
	{
		id = 113002,
		eventType = "walk",
		eventArg = "13978",
		endInvoke = "113003",
	},
	[113003] = 
	{
		id = 113003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110002/113004/111007/111008",
	},
	[113004] = 
	{
		id = 113004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "113005",
	},
	[113005] = 
	{
		id = 113005,
		eventType = "breakfacilitys",
		eventArg = "109001/109002/109003/109004/109005/109006;100/60/30",
		endInvoke = "113006",
	},
	[113006] = 
	{
		id = 113006,
		eventType = "serial",
		eventArg = "110002/w_10471/113007/110002/w_10539/113007/110002/w_10615/113007/110002/w_10648/113007/110002/w_10686/113007/110002/w_10654/113007/110002/w_10580/113007/110002/w_10508/113007/110002/w_10433/113007/110002/w_10430/113007/110002/120007",
		endInvoke = "",
	},
	[113007] = 
	{
		id = 113007,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[113008] = 
	{
		id = 113008,
		eventType = "serial",
		eventArg = "110002/w_10539",
		endInvoke = "",
	},
	[113009] = 
	{
		id = 113009,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[113010] = 
	{
		id = 113010,
		eventType = "serial",
		eventArg = "110002/w_10615",
		endInvoke = "",
	},
	[113011] = 
	{
		id = 113011,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[113012] = 
	{
		id = 113012,
		eventType = "serial",
		eventArg = "110002/w_10648",
		endInvoke = "",
	},
	[113013] = 
	{
		id = 113013,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[113014] = 
	{
		id = 113014,
		eventType = "serial",
		eventArg = "110002/w_10686",
		endInvoke = "",
	},
	[113015] = 
	{
		id = 113015,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[113016] = 
	{
		id = 113016,
		eventType = "serial",
		eventArg = "110002/w_10654",
		endInvoke = "",
	},
	[113017] = 
	{
		id = 113017,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[113018] = 
	{
		id = 113018,
		eventType = "serial",
		eventArg = "110002/w_10580",
		endInvoke = "",
	},
	[113019] = 
	{
		id = 113019,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[113020] = 
	{
		id = 113020,
		eventType = "serial",
		eventArg = "110002/w_10508",
		endInvoke = "",
	},
	[113021] = 
	{
		id = 113021,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[113022] = 
	{
		id = 113022,
		eventType = "serial",
		eventArg = "110002/w_10433",
		endInvoke = "",
	},
	[113023] = 
	{
		id = 113023,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[113024] = 
	{
		id = 113024,
		eventType = "serial",
		eventArg = "110002/w_10430",
		endInvoke = "",
	},
	[113025] = 
	{
		id = 113025,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[114001] = 
	{
		id = 114001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "114002",
	},
	[114002] = 
	{
		id = 114002,
		eventType = "walk",
		eventArg = "13728",
		endInvoke = "114003",
	},
	[114003] = 
	{
		id = 114003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110002/114004/111007/111008",
	},
	[114004] = 
	{
		id = 114004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "114005",
	},
	[114005] = 
	{
		id = 114005,
		eventType = "breakfacilitys",
		eventArg = "113001/113002/113003/113004/113005/113006;100/60/30",
		endInvoke = "114006",
	},
	[114006] = 
	{
		id = 114006,
		eventType = "serial",
		eventArg = "110002/w_12642/114007/110002/w_12671/114007/110002/w_12689/114007/110002/w_12687/114007/110002/w_12685/114007/110002/w_12674/114007/110002/w_12656/114007/110002/w_12626/114007/110002/w_12628/114007/120007",
		endInvoke = "",
	},
	[114007] = 
	{
		id = 114007,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[114008] = 
	{
		id = 114008,
		eventType = "serial",
		eventArg = "110002/w_12671",
		endInvoke = "",
	},
	[114009] = 
	{
		id = 114009,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[114010] = 
	{
		id = 114010,
		eventType = "serial",
		eventArg = "110002/w_12689",
		endInvoke = "",
	},
	[114011] = 
	{
		id = 114011,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[114012] = 
	{
		id = 114012,
		eventType = "serial",
		eventArg = "110002/w_12687",
		endInvoke = "",
	},
	[114013] = 
	{
		id = 114013,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[114014] = 
	{
		id = 114014,
		eventType = "serial",
		eventArg = "110002/w_12685",
		endInvoke = "",
	},
	[114015] = 
	{
		id = 114015,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[114016] = 
	{
		id = 114016,
		eventType = "serial",
		eventArg = "110002/w_12674",
		endInvoke = "",
	},
	[114017] = 
	{
		id = 114017,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[114018] = 
	{
		id = 114018,
		eventType = "serial",
		eventArg = "110002/w_12656",
		endInvoke = "",
	},
	[114019] = 
	{
		id = 114019,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[114020] = 
	{
		id = 114020,
		eventType = "serial",
		eventArg = "110002/w_12626",
		endInvoke = "",
	},
	[114021] = 
	{
		id = 114021,
		eventType = "animation",
		eventArg = "Walk/1",
		endInvoke = "",
	},
	[114022] = 
	{
		id = 114022,
		eventType = "serial",
		eventArg = "110002/w_12628",
		endInvoke = "",
	},
	[114023] = 
	{
		id = 114023,
		eventType = "animation",
		eventArg = "Walk/2",
		endInvoke = "",
	},
	[120001] = 
	{
		id = 120001,
		eventType = "serial",
		eventArg = "w_13682/w_10038",
		endInvoke = "10002",
	},
	[120002] = 
	{
		id = 120002,
		eventType = "villain",
		eventArg = "",
		endInvoke = "",
	},
	[120003] = 
	{
		id = 120003,
		eventType = "dispel",
		eventArg = "5/5",
		endInvoke = "",
	},
	[120004] = 
	{
		id = 120004,
		eventType = "headeffect",
		eventArg = "Other/TapTip;100",
		endInvoke = "140003",
	},
	[120005] = 
	{
		id = 120005,
		eventType = "animation",
		eventArg = "Idle/3",
		endInvoke = "",
	},
	[120006] = 
	{
		id = 120006,
		eventType = "animation",
		eventArg = "Idle/10",
		endInvoke = "",
	},
	[120007] = 
	{
		id = 120007,
		eventType = "serial_skip",
		eventArg = "1",
		endInvoke = "",
	},
	[120008] = 
	{
		id = 120008,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "140002/120004",
	},
	[120009] = 
	{
		id = 120009,
		eventType = "hideheadeffect",
		eventArg = "",
		endInvoke = "120010",
	},
	[120010] = 
	{
		id = 120010,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000096/120001",
	},
	[121001] = 
	{
		id = 121001,
		eventType = "check_room_into",
		eventArg = "100201/100901/101301",
		endInvoke = "122001/123001/124001/120001",
	},
	[121002] = 
	{
		id = 121002,
		eventType = "effect3d",
		eventArg = "Effect/EventRole/Mask_Attack01;2",
		endInvoke = "",
	},
	[122001] = 
	{
		id = 122001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "122002",
	},
	[122002] = 
	{
		id = 122002,
		eventType = "walk",
		eventArg = "10672",
		endInvoke = "122003",
	},
	[122003] = 
	{
		id = 122003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "120002/122004/121002",
	},
	[122004] = 
	{
		id = 122004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "122005",
	},
	[122005] = 
	{
		id = 122005,
		eventType = "dispeltourist",
		eventArg = "1/2/3/4/5/6/7/8;100/100/100/100/50/40/40/70",
		endInvoke = "122006",
	},
	[122006] = 
	{
		id = 122006,
		eventType = "serial",
		eventArg = "110002/w_10560",
		endInvoke = "122007",
	},
	[122007] = 
	{
		id = 122007,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122008",
	},
	[122008] = 
	{
		id = 122008,
		eventType = "serial",
		eventArg = "110002/w_10496",
		endInvoke = "122009",
	},
	[122009] = 
	{
		id = 122009,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122010",
	},
	[122010] = 
	{
		id = 122010,
		eventType = "serial",
		eventArg = "110002/w_10457",
		endInvoke = "122011",
	},
	[122011] = 
	{
		id = 122011,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122012",
	},
	[122012] = 
	{
		id = 122012,
		eventType = "serial",
		eventArg = "110002/w_10458",
		endInvoke = "122013",
	},
	[122013] = 
	{
		id = 122013,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122014",
	},
	[122014] = 
	{
		id = 122014,
		eventType = "serial",
		eventArg = "110002/w_10461",
		endInvoke = "122015",
	},
	[122015] = 
	{
		id = 122015,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122016",
	},
	[122016] = 
	{
		id = 122016,
		eventType = "serial",
		eventArg = "110002/w_10465",
		endInvoke = "122017",
	},
	[122017] = 
	{
		id = 122017,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122018",
	},
	[122018] = 
	{
		id = 122018,
		eventType = "serial",
		eventArg = "110002/w_10422",
		endInvoke = "122019",
	},
	[122019] = 
	{
		id = 122019,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122020",
	},
	[122020] = 
	{
		id = 122020,
		eventType = "serial",
		eventArg = "110002/w_10342",
		endInvoke = "122021",
	},
	[122021] = 
	{
		id = 122021,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122022",
	},
	[122022] = 
	{
		id = 122022,
		eventType = "serial",
		eventArg = "110002/w_10341",
		endInvoke = "122023",
	},
	[122023] = 
	{
		id = 122023,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122024",
	},
	[122024] = 
	{
		id = 122024,
		eventType = "serial",
		eventArg = "110002/w_10338",
		endInvoke = "122025",
	},
	[122025] = 
	{
		id = 122025,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122026",
	},
	[122026] = 
	{
		id = 122026,
		eventType = "serial",
		eventArg = "110002/w_10376",
		endInvoke = "122027",
	},
	[122027] = 
	{
		id = 122027,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122028",
	},
	[122028] = 
	{
		id = 122028,
		eventType = "serial",
		eventArg = "110002/w_10414",
		endInvoke = "122029",
	},
	[122029] = 
	{
		id = 122029,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122030",
	},
	[122030] = 
	{
		id = 122030,
		eventType = "serial",
		eventArg = "110002/w_10453",
		endInvoke = "122031",
	},
	[122031] = 
	{
		id = 122031,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122032",
	},
	[122032] = 
	{
		id = 122032,
		eventType = "serial",
		eventArg = "110002/w_10524",
		endInvoke = "122033",
	},
	[122033] = 
	{
		id = 122033,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "122034",
	},
	[122034] = 
	{
		id = 122034,
		eventType = "serial",
		eventArg = "110002/w_10599",
		endInvoke = "122035",
	},
	[122035] = 
	{
		id = 122035,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "122006",
	},
	[123001] = 
	{
		id = 123001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "123002",
	},
	[123002] = 
	{
		id = 123002,
		eventType = "walk",
		eventArg = "10471",
		endInvoke = "123003",
	},
	[123003] = 
	{
		id = 123003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110002/123004/121002",
	},
	[123004] = 
	{
		id = 123004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "123005",
	},
	[123005] = 
	{
		id = 123005,
		eventType = "dispeltourist",
		eventArg = "1/2/3/4/5/6/7/8;100/100/100/100/50/40/40/70",
		endInvoke = "123006",
	},
	[123006] = 
	{
		id = 123006,
		eventType = "serial",
		eventArg = "110002/w_10471",
		endInvoke = "123007",
	},
	[123007] = 
	{
		id = 123007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "123008",
	},
	[123008] = 
	{
		id = 123008,
		eventType = "serial",
		eventArg = "110002/w_10539",
		endInvoke = "123009",
	},
	[123009] = 
	{
		id = 123009,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "123010",
	},
	[123010] = 
	{
		id = 123010,
		eventType = "serial",
		eventArg = "110002/w_10615",
		endInvoke = "123011",
	},
	[123011] = 
	{
		id = 123011,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "123012",
	},
	[123012] = 
	{
		id = 123012,
		eventType = "serial",
		eventArg = "110002/w_10648",
		endInvoke = "123013",
	},
	[123013] = 
	{
		id = 123013,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "123014",
	},
	[123014] = 
	{
		id = 123014,
		eventType = "serial",
		eventArg = "110002/w_10686",
		endInvoke = "123015",
	},
	[123015] = 
	{
		id = 123015,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "123016",
	},
	[123016] = 
	{
		id = 123016,
		eventType = "serial",
		eventArg = "110002/w_10654",
		endInvoke = "123017",
	},
	[123017] = 
	{
		id = 123017,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "123018",
	},
	[123018] = 
	{
		id = 123018,
		eventType = "serial",
		eventArg = "110002/w_10580",
		endInvoke = "123019",
	},
	[123019] = 
	{
		id = 123019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "123020",
	},
	[123020] = 
	{
		id = 123020,
		eventType = "serial",
		eventArg = "110002/w_10508",
		endInvoke = "123021",
	},
	[123021] = 
	{
		id = 123021,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "123022",
	},
	[123022] = 
	{
		id = 123022,
		eventType = "serial",
		eventArg = "110002/w_10433",
		endInvoke = "123023",
	},
	[123023] = 
	{
		id = 123023,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "123024",
	},
	[123024] = 
	{
		id = 123024,
		eventType = "serial",
		eventArg = "110002/w_10430",
		endInvoke = "123025",
	},
	[123025] = 
	{
		id = 123025,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "123005",
	},
	[124001] = 
	{
		id = 124001,
		eventType = "villain",
		eventArg = "",
		endInvoke = "124002",
	},
	[124002] = 
	{
		id = 124002,
		eventType = "walk",
		eventArg = "12628",
		endInvoke = "124003",
	},
	[124003] = 
	{
		id = 124003,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "110002/124004/121002",
	},
	[124004] = 
	{
		id = 124004,
		eventType = "animation",
		eventArg = "Magnet/",
		endInvoke = "124005",
	},
	[124005] = 
	{
		id = 124005,
		eventType = "dispeltourist",
		eventArg = "1/2/3/4/5/6/7/8;100/100/100/100/50/40/40/70",
		endInvoke = "124006",
	},
	[124006] = 
	{
		id = 124006,
		eventType = "serial",
		eventArg = "110002/w_12642",
		endInvoke = "124007",
	},
	[124007] = 
	{
		id = 124007,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "124008",
	},
	[124008] = 
	{
		id = 124008,
		eventType = "serial",
		eventArg = "110002/w_12671",
		endInvoke = "124009",
	},
	[124009] = 
	{
		id = 124009,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "124010",
	},
	[124010] = 
	{
		id = 124010,
		eventType = "serial",
		eventArg = "110002/w_12689",
		endInvoke = "124011",
	},
	[124011] = 
	{
		id = 124011,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "124012",
	},
	[124012] = 
	{
		id = 124012,
		eventType = "serial",
		eventArg = "110002/w_12687",
		endInvoke = "124013",
	},
	[124013] = 
	{
		id = 124013,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "124014",
	},
	[124014] = 
	{
		id = 124014,
		eventType = "serial",
		eventArg = "110002/w_12685",
		endInvoke = "124015",
	},
	[124015] = 
	{
		id = 124015,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "124016",
	},
	[124016] = 
	{
		id = 124016,
		eventType = "serial",
		eventArg = "110002/w_12674",
		endInvoke = "124017",
	},
	[124017] = 
	{
		id = 124017,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "124018",
	},
	[124018] = 
	{
		id = 124018,
		eventType = "serial",
		eventArg = "110002/w_12656",
		endInvoke = "124019",
	},
	[124019] = 
	{
		id = 124019,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "124020",
	},
	[124020] = 
	{
		id = 124020,
		eventType = "serial",
		eventArg = "110002/w_12626",
		endInvoke = "124021",
	},
	[124021] = 
	{
		id = 124021,
		eventType = "animation",
		eventArg = "Idle/1",
		endInvoke = "124022",
	},
	[124022] = 
	{
		id = 124022,
		eventType = "serial",
		eventArg = "110002/w_12628",
		endInvoke = "124023",
	},
	[124023] = 
	{
		id = 124023,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "124005",
	},
	[140001] = 
	{
		id = 140001,
		eventType = "create_villain_npc",
		eventArg = "105001/107001/115001;3",
		endInvoke = "",
	},
	[140002] = 
	{
		id = 140002,
		eventType = "work_timer",
		eventArg = "",
		endInvoke = "",
	},
	[140003] = 
	{
		id = 140003,
		eventType = "attack_timer",
		eventArg = "",
		endInvoke = "",
	},
	[140004] = 
	{
		id = 140004,
		eventType = "tourist_to_villain",
		eventArg = "",
		endInvoke = "",
	},
	[180001] = 
	{
		id = 180001,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "180002/140002",
	},
	[180002] = 
	{
		id = 180002,
		eventType = "headeffect",
		eventArg = "Other/TapTip;100",
		endInvoke = "180007",
	},
	[180003] = 
	{
		id = 180003,
		eventType = "check_room_into",
		eventArg = "100201/100901/101301",
		endInvoke = "181001/182001/183001/110001",
	},
	[180004] = 
	{
		id = 180004,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "180005/180006",
	},
	[180005] = 
	{
		id = 180005,
		eventType = "hideheadeffect",
		eventArg = "",
		endInvoke = "",
	},
	[180006] = 
	{
		id = 180006,
		eventType = "check_room_into",
		eventArg = "100201/100901/101301",
		endInvoke = "1810211/1820211/1830211/",
	},
	[180007] = 
	{
		id = 180007,
		eventType = "room_point",
		eventArg = "",
		endInvoke = "",
	},
	[181001] = 
	{
		id = 181001,
		eventType = "walk",
		eventArg = "10493",
		endInvoke = "181002",
	},
	[181002] = 
	{
		id = 181002,
		eventType = "walk",
		eventArg = "10454",
		endInvoke = "181003",
	},
	[181003] = 
	{
		id = 181003,
		eventType = "walk",
		eventArg = "10415",
		endInvoke = "181004",
	},
	[181004] = 
	{
		id = 181004,
		eventType = "walk",
		eventArg = "10337",
		endInvoke = "181005",
	},
	[181005] = 
	{
		id = 181005,
		eventType = "walk",
		eventArg = "10340",
		endInvoke = "181006",
	},
	[181006] = 
	{
		id = 181006,
		eventType = "walk",
		eventArg = "10344",
		endInvoke = "181007",
	},
	[181007] = 
	{
		id = 181007,
		eventType = "walk",
		eventArg = "10340",
		endInvoke = "181008",
	},
	[181008] = 
	{
		id = 181008,
		eventType = "walk",
		eventArg = "10337",
		endInvoke = "181009",
	},
	[181009] = 
	{
		id = 181009,
		eventType = "walk",
		eventArg = "10415",
		endInvoke = "181010",
	},
	[181010] = 
	{
		id = 181010,
		eventType = "walk",
		eventArg = "10454",
		endInvoke = "181001",
	},
	[1810211] = 
	{
		id = 1810211,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000098/180005/181021",
	},
	[181021] = 
	{
		id = 181021,
		eventType = "clear_room_point",
		eventArg = "",
		endInvoke = "181022",
	},
	[181022] = 
	{
		id = 181022,
		eventType = "walk",
		eventArg = "10773",
		endInvoke = "181023",
	},
	[181023] = 
	{
		id = 181023,
		eventType = "walk",
		eventArg = "10182",
		endInvoke = "181024",
	},
	[181024] = 
	{
		id = 181024,
		eventType = "walk",
		eventArg = "10038",
		endInvoke = "10002",
	},
	[181026] = 
	{
		id = 181026,
		eventType = "arab_boss_click",
		eventArg = "",
		endInvoke = "",
	},
	[182001] = 
	{
		id = 182001,
		eventType = "walk",
		eventArg = "10471",
		endInvoke = "182002",
	},
	[182002] = 
	{
		id = 182002,
		eventType = "walk",
		eventArg = "10505",
		endInvoke = "182003",
	},
	[182003] = 
	{
		id = 182003,
		eventType = "walk",
		eventArg = "10544",
		endInvoke = "182004",
	},
	[182004] = 
	{
		id = 182004,
		eventType = "walk",
		eventArg = "10617",
		endInvoke = "182005",
	},
	[182005] = 
	{
		id = 182005,
		eventType = "walk",
		eventArg = "10649",
		endInvoke = "182006",
	},
	[182006] = 
	{
		id = 182006,
		eventType = "walk",
		eventArg = "10575",
		endInvoke = "182007",
	},
	[182007] = 
	{
		id = 182007,
		eventType = "walk",
		eventArg = "10539",
		endInvoke = "182001",
	},
	[1820211] = 
	{
		id = 1820211,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000098/180005/182021",
	},
	[182021] = 
	{
		id = 182021,
		eventType = "clear_room_point",
		eventArg = "",
		endInvoke = "182022",
	},
	[182022] = 
	{
		id = 182022,
		eventType = "walk",
		eventArg = "10688",
		endInvoke = "182023",
	},
	[182023] = 
	{
		id = 182023,
		eventType = "walk",
		eventArg = "10182",
		endInvoke = "182024",
	},
	[182024] = 
	{
		id = 182024,
		eventType = "walk",
		eventArg = "10038",
		endInvoke = "10002",
	},
	[182026] = 
	{
		id = 182026,
		eventType = "arab_boss_click",
		eventArg = "",
		endInvoke = "",
	},
	[183001] = 
	{
		id = 183001,
		eventType = "walk",
		eventArg = "12670",
		endInvoke = "183002",
	},
	[183002] = 
	{
		id = 183002,
		eventType = "walk",
		eventArg = "12659",
		endInvoke = "183003",
	},
	[183003] = 
	{
		id = 183003,
		eventType = "walk",
		eventArg = "12676",
		endInvoke = "183004",
	},
	[183004] = 
	{
		id = 183004,
		eventType = "walk",
		eventArg = "12686",
		endInvoke = "183005",
	},
	[183005] = 
	{
		id = 183005,
		eventType = "walk",
		eventArg = "12679",
		endInvoke = "183001",
	},
	[1830211] = 
	{
		id = 1830211,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000098/180005/183021",
	},
	[183021] = 
	{
		id = 183021,
		eventType = "clear_room_point",
		eventArg = "",
		endInvoke = "183022",
	},
	[183022] = 
	{
		id = 183022,
		eventType = "walk",
		eventArg = "11746",
		endInvoke = "183023",
	},
	[183023] = 
	{
		id = 183023,
		eventType = "walk",
		eventArg = "10182",
		endInvoke = "183024",
	},
	[183024] = 
	{
		id = 183024,
		eventType = "walk",
		eventArg = "10038",
		endInvoke = "10002",
	},
	[183026] = 
	{
		id = 183026,
		eventType = "arab_boss_click",
		eventArg = "",
		endInvoke = "",
	},
}