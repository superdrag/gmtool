LuaConfig["Event/EventAtlasConfig"] = 
{
	[200000] = 
	{
		id = 200000,
		eventType = "set_self_int",
		eventArg = "changwaiqiuyuan=1",
		endInvoke = "204000",
	},
	[200001] = 
	{
		id = 200001,
		eventType = "set_self_int",
		eventArg = "changwaiqiuyuan=1",
		endInvoke = "",
	},
	[201000] = 
	{
		id = 201000,
		eventType = "tourist",
		eventArg = "202000",
		endInvoke = "",
	},
	[204000] = 
	{
		id = 204000,
		eventType = "check_self_int",
		eventArg = "changwaiqiuyuan=1",
		endInvoke = "202000/10002",
	},
	[202000] = 
	{
		id = 202000,
		eventType = "random",
		eventArg = "8/8/4/4/4/4/8/8/16/16/16/16/16/16/4/8/8/8/8",
		endInvoke = "204001/204004/204009/204014/204017/204019/204026/204028/204030/204034/204042/204044/204046/204050/204054/204058/204063/204065/204067",
	},
	[204001] = 
	{
		id = 204001,
		eventType = "shift",
		eventArg = "17231",
		endInvoke = "204002",
	},
	[204002] = 
	{
		id = 204002,
		eventType = "walk",
		eventArg = "17705",
		endInvoke = "204003",
	},
	[204003] = 
	{
		id = 204003,
		eventType = "walk",
		eventArg = "17703",
		endInvoke = "205071",
	},
	[204004] = 
	{
		id = 204004,
		eventType = "shift",
		eventArg = "16874",
		endInvoke = "204005",
	},
	[204005] = 
	{
		id = 204005,
		eventType = "walk",
		eventArg = "17014",
		endInvoke = "204006",
	},
	[204006] = 
	{
		id = 204006,
		eventType = "walk",
		eventArg = "17687",
		endInvoke = "204007",
	},
	[204007] = 
	{
		id = 204007,
		eventType = "walk",
		eventArg = "17693",
		endInvoke = "204008",
	},
	[204008] = 
	{
		id = 204008,
		eventType = "walk",
		eventArg = "17370",
		endInvoke = "205002",
	},
	[204009] = 
	{
		id = 204009,
		eventType = "shift",
		eventArg = "17665",
		endInvoke = "204010",
	},
	[204010] = 
	{
		id = 204010,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "204011/204013",
	},
	[204011] = 
	{
		id = 204011,
		eventType = "walk",
		eventArg = "17673",
		endInvoke = "204012",
	},
	[204012] = 
	{
		id = 204012,
		eventType = "walk",
		eventArg = "13680",
		endInvoke = "205088",
	},
	[204013] = 
	{
		id = 204013,
		eventType = "walk",
		eventArg = "17656",
		endInvoke = "205142",
	},
	[204014] = 
	{
		id = 204014,
		eventType = "shift",
		eventArg = "14078",
		endInvoke = "204015",
	},
	[204015] = 
	{
		id = 204015,
		eventType = "walk",
		eventArg = "17651",
		endInvoke = "204016",
	},
	[204016] = 
	{
		id = 204016,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205145/205146",
	},
	[204017] = 
	{
		id = 204017,
		eventType = "shift",
		eventArg = "17623",
		endInvoke = "204018",
	},
	[204018] = 
	{
		id = 204018,
		eventType = "walk",
		eventArg = "17628",
		endInvoke = "206010",
	},
	[204019] = 
	{
		id = 204019,
		eventType = "shift",
		eventArg = "17621",
		endInvoke = "204020",
	},
	[204020] = 
	{
		id = 204020,
		eventType = "walk",
		eventArg = "17619",
		endInvoke = "204021",
	},
	[204021] = 
	{
		id = 204021,
		eventType = "walk",
		eventArg = "17617",
		endInvoke = "204022",
	},
	[204022] = 
	{
		id = 204022,
		eventType = "walk",
		eventArg = "17615",
		endInvoke = "204023",
	},
	[204023] = 
	{
		id = 204023,
		eventType = "walk",
		eventArg = "17609",
		endInvoke = "204024",
	},
	[204024] = 
	{
		id = 204024,
		eventType = "walk",
		eventArg = "14201",
		endInvoke = "204025",
	},
	[204025] = 
	{
		id = 204025,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206205/205174",
	},
	[206205] = 
	{
		id = 206205,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206206/205166",
	},
	[206206] = 
	{
		id = 206206,
		eventType = "select_free_point",
		eventArg = "17753",
		endInvoke = "206207/205166",
	},
	[206207] = 
	{
		id = 206207,
		eventType = "use_point",
		eventArg = "17753",
		endInvoke = "206208",
	},
	[206208] = 
	{
		id = 206208,
		eventType = "walk",
		eventArg = "17753",
		endInvoke = "206209",
	},
	[206209] = 
	{
		id = 206209,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206210",
	},
	[206210] = 
	{
		id = 206210,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205166",
	},
	[204026] = 
	{
		id = 204026,
		eventType = "shift",
		eventArg = "17604",
		endInvoke = "204027",
	},
	[204027] = 
	{
		id = 204027,
		eventType = "walk",
		eventArg = "17598",
		endInvoke = "205179",
	},
	[204028] = 
	{
		id = 204028,
		eventType = "shift",
		eventArg = "17597",
		endInvoke = "204029",
	},
	[204029] = 
	{
		id = 204029,
		eventType = "walk",
		eventArg = "17595",
		endInvoke = "205185",
	},
	[204030] = 
	{
		id = 204030,
		eventType = "shift",
		eventArg = "13914",
		endInvoke = "204031",
	},
	[204031] = 
	{
		id = 204031,
		eventType = "walk",
		eventArg = "17030",
		endInvoke = "204032",
	},
	[204032] = 
	{
		id = 204032,
		eventType = "walk",
		eventArg = "16321",
		endInvoke = "204033",
	},
	[204033] = 
	{
		id = 204033,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205200/206175",
	},
	[206175] = 
	{
		id = 206175,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206176/205203",
	},
	[206176] = 
	{
		id = 206176,
		eventType = "select_free_point",
		eventArg = "17744",
		endInvoke = "206177/205203",
	},
	[206177] = 
	{
		id = 206177,
		eventType = "use_point",
		eventArg = "17744",
		endInvoke = "206178",
	},
	[206178] = 
	{
		id = 206178,
		eventType = "walk",
		eventArg = "17744",
		endInvoke = "206179",
	},
	[206179] = 
	{
		id = 206179,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206180",
	},
	[206180] = 
	{
		id = 206180,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205203",
	},
	[204034] = 
	{
		id = 204034,
		eventType = "shift",
		eventArg = "13770",
		endInvoke = "204035",
	},
	[204035] = 
	{
		id = 204035,
		eventType = "walk",
		eventArg = "14183",
		endInvoke = "204036",
	},
	[204036] = 
	{
		id = 204036,
		eventType = "walk",
		eventArg = "17025",
		endInvoke = "206169",
	},
	[206169] = 
	{
		id = 206169,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206170/204037",
	},
	[206170] = 
	{
		id = 206170,
		eventType = "select_free_point",
		eventArg = "17791",
		endInvoke = "206171/204037",
	},
	[206171] = 
	{
		id = 206171,
		eventType = "use_point",
		eventArg = "17791",
		endInvoke = "206172",
	},
	[206172] = 
	{
		id = 206172,
		eventType = "walk",
		eventArg = "17791",
		endInvoke = "206173",
	},
	[206173] = 
	{
		id = 206173,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206174",
	},
	[206174] = 
	{
		id = 206174,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/204037",
	},
	[204037] = 
	{
		id = 204037,
		eventType = "walk",
		eventArg = "16180",
		endInvoke = "204038",
	},
	[204038] = 
	{
		id = 204038,
		eventType = "walk",
		eventArg = "16181",
		endInvoke = "204069",
	},
	[204069] = 
	{
		id = 204069,
		eventType = "walk",
		eventArg = "18004",
		endInvoke = "204070",
	},
	[204070] = 
	{
		id = 204070,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "204039/204071",
	},
	[204071] = 
	{
		id = 204071,
		eventType = "walk",
		eventArg = "18041",
		endInvoke = "204072",
	},
	[204072] = 
	{
		id = 204072,
		eventType = "walk",
		eventArg = "18037",
		endInvoke = "204073",
	},
	[204073] = 
	{
		id = 204073,
		eventType = "walk",
		eventArg = "18035",
		endInvoke = "204074",
	},
	[204074] = 
	{
		id = 204074,
		eventType = "walk",
		eventArg = "18033",
		endInvoke = "204075",
	},
	[204075] = 
	{
		id = 204075,
		eventType = "walk",
		eventArg = "16459",
		endInvoke = "204076",
	},
	[204076] = 
	{
		id = 204076,
		eventType = "walk",
		eventArg = "16461",
		endInvoke = "204077",
	},
	[204077] = 
	{
		id = 204077,
		eventType = "walk",
		eventArg = "16890",
		endInvoke = "204078",
	},
	[204078] = 
	{
		id = 204078,
		eventType = "walk",
		eventArg = "17099",
		endInvoke = "205434",
	},
	[204039] = 
	{
		id = 204039,
		eventType = "walk",
		eventArg = "13983",
		endInvoke = "204040",
	},
	[204040] = 
	{
		id = 204040,
		eventType = "walk",
		eventArg = "13769",
		endInvoke = "207000",
	},
	[207000] = 
	{
		id = 207000,
		eventType = "random",
		eventArg = "48/16",
		endInvoke = "207001/207003",
	},
	[207001] = 
	{
		id = 207001,
		eventType = "walk",
		eventArg = "18023",
		endInvoke = "207002",
	},
	[207002] = 
	{
		id = 207002,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "205223/205235/205247/205259",
	},
	[207003] = 
	{
		id = 207003,
		eventType = "walk",
		eventArg = "18014",
		endInvoke = "205356",
	},
	[204042] = 
	{
		id = 204042,
		eventType = "shift",
		eventArg = "16887",
		endInvoke = "204043",
	},
	[204043] = 
	{
		id = 204043,
		eventType = "walk",
		eventArg = "17100",
		endInvoke = "205438",
	},
	[204044] = 
	{
		id = 204044,
		eventType = "shift",
		eventArg = "16821",
		endInvoke = "204045",
	},
	[204045] = 
	{
		id = 204045,
		eventType = "walk",
		eventArg = "16178",
		endInvoke = "205442",
	},
	[204046] = 
	{
		id = 204046,
		eventType = "shift",
		eventArg = "16678",
		endInvoke = "204047",
	},
	[204047] = 
	{
		id = 204047,
		eventType = "walk",
		eventArg = "16745",
		endInvoke = "204048",
	},
	[204048] = 
	{
		id = 204048,
		eventType = "walk",
		eventArg = "16249",
		endInvoke = "204049",
	},
	[204049] = 
	{
		id = 204049,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205444/206151",
	},
	[206151] = 
	{
		id = 206151,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206152/205445",
	},
	[206152] = 
	{
		id = 206152,
		eventType = "select_free_point",
		eventArg = "17781",
		endInvoke = "206153/205445",
	},
	[206153] = 
	{
		id = 206153,
		eventType = "use_point",
		eventArg = "17781",
		endInvoke = "206154",
	},
	[206154] = 
	{
		id = 206154,
		eventType = "walk",
		eventArg = "17781",
		endInvoke = "206155",
	},
	[206155] = 
	{
		id = 206155,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206156",
	},
	[206156] = 
	{
		id = 206156,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205445",
	},
	[204050] = 
	{
		id = 204050,
		eventType = "shift",
		eventArg = "16605",
		endInvoke = "204051",
	},
	[204051] = 
	{
		id = 204051,
		eventType = "walk",
		eventArg = "16393",
		endInvoke = "204052",
	},
	[204052] = 
	{
		id = 204052,
		eventType = "walk",
		eventArg = "16394",
		endInvoke = "204053",
	},
	[204053] = 
	{
		id = 204053,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205448/206103",
	},
	[206103] = 
	{
		id = 206103,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206104/205453",
	},
	[206104] = 
	{
		id = 206104,
		eventType = "select_free_point",
		eventArg = "17778",
		endInvoke = "206105/205453",
	},
	[206105] = 
	{
		id = 206105,
		eventType = "use_point",
		eventArg = "17778",
		endInvoke = "206106",
	},
	[206106] = 
	{
		id = 206106,
		eventType = "walk",
		eventArg = "17778",
		endInvoke = "206107",
	},
	[206107] = 
	{
		id = 206107,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206108",
	},
	[206108] = 
	{
		id = 206108,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205453",
	},
	[204054] = 
	{
		id = 204054,
		eventType = "shift",
		eventArg = "16954",
		endInvoke = "204055",
	},
	[204055] = 
	{
		id = 204055,
		eventType = "walk",
		eventArg = "16877",
		endInvoke = "204056",
	},
	[204056] = 
	{
		id = 204056,
		eventType = "walk",
		eventArg = "17303",
		endInvoke = "204057",
	},
	[204057] = 
	{
		id = 204057,
		eventType = "walk",
		eventArg = "16607",
		endInvoke = "205461",
	},
	[204058] = 
	{
		id = 204058,
		eventType = "shift",
		eventArg = "16880",
		endInvoke = "204059",
	},
	[204059] = 
	{
		id = 204059,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "204060/204061",
	},
	[204060] = 
	{
		id = 204060,
		eventType = "walk",
		eventArg = "16952",
		endInvoke = "205044",
	},
	[204061] = 
	{
		id = 204061,
		eventType = "walk",
		eventArg = "16882",
		endInvoke = "204062",
	},
	[204062] = 
	{
		id = 204062,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205496/205498",
	},
	[204063] = 
	{
		id = 204063,
		eventType = "shift",
		eventArg = "17020",
		endInvoke = "204064",
	},
	[204064] = 
	{
		id = 204064,
		eventType = "walk",
		eventArg = "17090",
		endInvoke = "206067",
	},
	[206067] = 
	{
		id = 206067,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206068/205049",
	},
	[206068] = 
	{
		id = 206068,
		eventType = "select_free_point",
		eventArg = "17773",
		endInvoke = "206069/205049",
	},
	[206069] = 
	{
		id = 206069,
		eventType = "use_point",
		eventArg = "17773",
		endInvoke = "206070",
	},
	[206070] = 
	{
		id = 206070,
		eventType = "walk",
		eventArg = "17773",
		endInvoke = "206071",
	},
	[206071] = 
	{
		id = 206071,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206072",
	},
	[206072] = 
	{
		id = 206072,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205049",
	},
	[204065] = 
	{
		id = 204065,
		eventType = "shift",
		eventArg = "17590",
		endInvoke = "204066",
	},
	[204066] = 
	{
		id = 204066,
		eventType = "walk",
		eventArg = "17589",
		endInvoke = "205193",
	},
	[204067] = 
	{
		id = 204067,
		eventType = "shift",
		eventArg = "17586",
		endInvoke = "204068",
	},
	[204068] = 
	{
		id = 204068,
		eventType = "walk",
		eventArg = "17585",
		endInvoke = "205197",
	},
	[205000] = 
	{
		id = 205000,
		eventType = "walk",
		eventArg = "17164",
		endInvoke = "204000",
	},
	[205001] = 
	{
		id = 205001,
		eventType = "walk",
		eventArg = "17018",
		endInvoke = "205058",
	},
	[205002] = 
	{
		id = 205002,
		eventType = "walk",
		eventArg = "17372",
		endInvoke = "205003",
	},
	[205003] = 
	{
		id = 205003,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206037/205009",
	},
	[206037] = 
	{
		id = 206037,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206038/205006",
	},
	[206038] = 
	{
		id = 206038,
		eventType = "select_free_point",
		eventArg = "17767",
		endInvoke = "206039/205006",
	},
	[206039] = 
	{
		id = 206039,
		eventType = "use_point",
		eventArg = "17767",
		endInvoke = "206040",
	},
	[206040] = 
	{
		id = 206040,
		eventType = "walk",
		eventArg = "17767",
		endInvoke = "206041",
	},
	[206041] = 
	{
		id = 206041,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206042",
	},
	[206042] = 
	{
		id = 206042,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205006",
	},
	[205004] = 
	{
		id = 205004,
		eventType = "walk",
		eventArg = "17299",
		endInvoke = "205005",
	},
	[205005] = 
	{
		id = 205005,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205000/206025",
	},
	[206025] = 
	{
		id = 206025,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206026/205001",
	},
	[206026] = 
	{
		id = 206026,
		eventType = "select_free_point",
		eventArg = "17760",
		endInvoke = "206027/205001",
	},
	[206027] = 
	{
		id = 206027,
		eventType = "use_point",
		eventArg = "17760",
		endInvoke = "206028",
	},
	[206028] = 
	{
		id = 206028,
		eventType = "walk",
		eventArg = "17760",
		endInvoke = "206029",
	},
	[206029] = 
	{
		id = 206029,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206030",
	},
	[206030] = 
	{
		id = 206030,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205001",
	},
	[206031] = 
	{
		id = 206031,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205006] = 
	{
		id = 205006,
		eventType = "walk",
		eventArg = "16875",
		endInvoke = "205012",
	},
	[205009] = 
	{
		id = 205009,
		eventType = "walk",
		eventArg = "13679",
		endInvoke = "205010",
	},
	[205010] = 
	{
		id = 205010,
		eventType = "random",
		eventArg = "16/32",
		endInvoke = "205076/206015",
	},
	[206015] = 
	{
		id = 206015,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206016/205086",
	},
	[206016] = 
	{
		id = 206016,
		eventType = "select_free_point",
		eventArg = "17758",
		endInvoke = "206017/205086",
	},
	[206017] = 
	{
		id = 206017,
		eventType = "use_point",
		eventArg = "17758",
		endInvoke = "206018",
	},
	[206018] = 
	{
		id = 206018,
		eventType = "walk",
		eventArg = "17758",
		endInvoke = "206019",
	},
	[206019] = 
	{
		id = 206019,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206032",
	},
	[206032] = 
	{
		id = 206032,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205086",
	},
	[205011] = 
	{
		id = 205011,
		eventType = "walk",
		eventArg = "17301",
		endInvoke = "205004",
	},
	[205012] = 
	{
		id = 205012,
		eventType = "walk",
		eventArg = "16873",
		endInvoke = "205502",
	},
	[205502] = 
	{
		id = 205502,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206049/205027",
	},
	[206049] = 
	{
		id = 206049,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206050/205027",
	},
	[206050] = 
	{
		id = 206050,
		eventType = "select_free_point",
		eventArg = "17770",
		endInvoke = "206051/205027",
	},
	[206051] = 
	{
		id = 206051,
		eventType = "use_point",
		eventArg = "17770",
		endInvoke = "206052",
	},
	[206052] = 
	{
		id = 206052,
		eventType = "walk",
		eventArg = "17770",
		endInvoke = "206053",
	},
	[206053] = 
	{
		id = 206053,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206054",
	},
	[206054] = 
	{
		id = 206054,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205027",
	},
	[205013] = 
	{
		id = 205013,
		eventType = "walk",
		eventArg = "13935",
		endInvoke = "205015",
	},
	[205015] = 
	{
		id = 205015,
		eventType = "walk",
		eventArg = "13933",
		endInvoke = "205016",
	},
	[205016] = 
	{
		id = 205016,
		eventType = "walk",
		eventArg = "14206",
		endInvoke = "205017",
	},
	[205017] = 
	{
		id = 205017,
		eventType = "walk",
		eventArg = "14216",
		endInvoke = "205018",
	},
	[205018] = 
	{
		id = 205018,
		eventType = "walk",
		eventArg = "14215",
		endInvoke = "208265",
	},
	[208265] = 
	{
		id = 208265,
		eventType = "random",
		eventArg = "16",
		endInvoke = "205019",
	},
	[205019] = 
	{
		id = 205019,
		eventType = "walk",
		eventArg = "14064",
		endInvoke = "205020",
	},
	[205020] = 
	{
		id = 205020,
		eventType = "walk",
		eventArg = "14063",
		endInvoke = "205021",
	},
	[205021] = 
	{
		id = 205021,
		eventType = "walk",
		eventArg = "14067",
		endInvoke = "205022",
	},
	[205022] = 
	{
		id = 205022,
		eventType = "walk",
		eventArg = "14065",
		endInvoke = "205023",
	},
	[205023] = 
	{
		id = 205023,
		eventType = "walk",
		eventArg = "14068",
		endInvoke = "205024",
	},
	[205024] = 
	{
		id = 205024,
		eventType = "walk",
		eventArg = "14061",
		endInvoke = "208223",
	},
	[208223] = 
	{
		id = 208223,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208224/208993",
	},
	[208224] = 
	{
		id = 208224,
		eventType = "select_free_point",
		eventArg = "17234",
		endInvoke = "208226/208993",
	},
	[208226] = 
	{
		id = 208226,
		eventType = "use_point",
		eventArg = "17234",
		endInvoke = "208985",
	},
	[208985] = 
	{
		id = 208985,
		eventType = "walk",
		eventArg = "17234",
		endInvoke = "208984",
	},
	[208984] = 
	{
		id = 208984,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208227",
	},
	[208227] = 
	{
		id = 208227,
		eventType = "serial",
		eventArg = "208230/208233/w_14053/208228",
		endInvoke = "",
	},
	[208228] = 
	{
		id = 208228,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208229/205163",
	},
	[208229] = 
	{
		id = 208229,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[208230] = 
	{
		id = 208230,
		eventType = "rotatey",
		eventArg = "225",
		endInvoke = "",
	},
	[205025] = 
	{
		id = 205025,
		eventType = "walk",
		eventArg = "16946",
		endInvoke = "205026",
	},
	[205026] = 
	{
		id = 205026,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206043/205013",
	},
	[206043] = 
	{
		id = 206043,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206044/205011",
	},
	[206044] = 
	{
		id = 206044,
		eventType = "select_free_point",
		eventArg = "17764",
		endInvoke = "206045/205011",
	},
	[206045] = 
	{
		id = 206045,
		eventType = "use_point",
		eventArg = "17764",
		endInvoke = "206046",
	},
	[206046] = 
	{
		id = 206046,
		eventType = "walk",
		eventArg = "17764",
		endInvoke = "206047",
	},
	[206047] = 
	{
		id = 206047,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206048",
	},
	[206048] = 
	{
		id = 206048,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205011",
	},
	[205027] = 
	{
		id = 205027,
		eventType = "walk",
		eventArg = "17158",
		endInvoke = "205036",
	},
	[205028] = 
	{
		id = 205028,
		eventType = "walk",
		eventArg = "14004",
		endInvoke = "205029",
	},
	[205029] = 
	{
		id = 205029,
		eventType = "walk",
		eventArg = "14136",
		endInvoke = "205030",
	},
	[205030] = 
	{
		id = 205030,
		eventType = "walk",
		eventArg = "14134",
		endInvoke = "205031",
	},
	[205031] = 
	{
		id = 205031,
		eventType = "walk",
		eventArg = "14209",
		endInvoke = "205032",
	},
	[205032] = 
	{
		id = 205032,
		eventType = "walk",
		eventArg = "14207",
		endInvoke = "205033",
	},
	[205033] = 
	{
		id = 205033,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205034/205035",
	},
	[205034] = 
	{
		id = 205034,
		eventType = "walk",
		eventArg = "13665",
		endInvoke = "205376",
	},
	[205035] = 
	{
		id = 205035,
		eventType = "walk",
		eventArg = "13807",
		endInvoke = "205381",
	},
	[205036] = 
	{
		id = 205036,
		eventType = "walk",
		eventArg = "17300",
		endInvoke = "205037",
	},
	[205037] = 
	{
		id = 205037,
		eventType = "walk",
		eventArg = "16881",
		endInvoke = "205038",
	},
	[205038] = 
	{
		id = 205038,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206061/205043",
	},
	[206061] = 
	{
		id = 206061,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206062/205043",
	},
	[206062] = 
	{
		id = 206062,
		eventType = "select_free_point",
		eventArg = "17772",
		endInvoke = "206063/205043",
	},
	[206063] = 
	{
		id = 206063,
		eventType = "use_point",
		eventArg = "17772",
		endInvoke = "206064",
	},
	[206064] = 
	{
		id = 206064,
		eventType = "walk",
		eventArg = "17772",
		endInvoke = "206065",
	},
	[206065] = 
	{
		id = 206065,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206066",
	},
	[206066] = 
	{
		id = 206066,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205043",
	},
	[205039] = 
	{
		id = 205039,
		eventType = "walk",
		eventArg = "17162",
		endInvoke = "205025",
	},
	[205040] = 
	{
		id = 205040,
		eventType = "walk",
		eventArg = "17022",
		endInvoke = "205041",
	},
	[205041] = 
	{
		id = 205041,
		eventType = "walk",
		eventArg = "17024",
		endInvoke = "206079",
	},
	[206079] = 
	{
		id = 206079,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206080/205476",
	},
	[206080] = 
	{
		id = 206080,
		eventType = "select_free_point",
		eventArg = "17774",
		endInvoke = "206081/205476",
	},
	[206081] = 
	{
		id = 206081,
		eventType = "use_point",
		eventArg = "17774",
		endInvoke = "206082",
	},
	[206082] = 
	{
		id = 206082,
		eventType = "walk",
		eventArg = "17774",
		endInvoke = "206083",
	},
	[206083] = 
	{
		id = 206083,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206084",
	},
	[206084] = 
	{
		id = 206084,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205476",
	},
	[205042] = 
	{
		id = 205042,
		eventType = "walk",
		eventArg = "16949",
		endInvoke = "204000",
	},
	[205043] = 
	{
		id = 205043,
		eventType = "walk",
		eventArg = "17019",
		endInvoke = "205047",
	},
	[205044] = 
	{
		id = 205044,
		eventType = "walk",
		eventArg = "17371",
		endInvoke = "205045",
	},
	[205045] = 
	{
		id = 205045,
		eventType = "walk",
		eventArg = "17229",
		endInvoke = "205046",
	},
	[205046] = 
	{
		id = 205046,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206055/205040",
	},
	[206055] = 
	{
		id = 206055,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206056/205039",
	},
	[206056] = 
	{
		id = 206056,
		eventType = "select_free_point",
		eventArg = "17771",
		endInvoke = "206057/205039",
	},
	[206057] = 
	{
		id = 206057,
		eventType = "use_point",
		eventArg = "17771",
		endInvoke = "206058",
	},
	[206058] = 
	{
		id = 206058,
		eventType = "walk",
		eventArg = "17771",
		endInvoke = "206059",
	},
	[206059] = 
	{
		id = 206059,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "206060",
	},
	[206060] = 
	{
		id = 206060,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205039",
	},
	[205047] = 
	{
		id = 205047,
		eventType = "walk",
		eventArg = "17092",
		endInvoke = "204000",
	},
	[205048] = 
	{
		id = 205048,
		eventType = "walk",
		eventArg = "16952",
		endInvoke = "205044",
	},
	[205049] = 
	{
		id = 205049,
		eventType = "walk",
		eventArg = "17093",
		endInvoke = "205050",
	},
	[205050] = 
	{
		id = 205050,
		eventType = "walk",
		eventArg = "17089",
		endInvoke = "205051",
	},
	[205051] = 
	{
		id = 205051,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205052/206073",
	},
	[206073] = 
	{
		id = 206073,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206074/205057",
	},
	[206074] = 
	{
		id = 206074,
		eventType = "select_free_point",
		eventArg = "17762",
		endInvoke = "206075/205057",
	},
	[206075] = 
	{
		id = 206075,
		eventType = "use_point",
		eventArg = "17762",
		endInvoke = "206076",
	},
	[206076] = 
	{
		id = 206076,
		eventType = "walk",
		eventArg = "17762",
		endInvoke = "206077",
	},
	[206077] = 
	{
		id = 206077,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206078",
	},
	[206078] = 
	{
		id = 206078,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205057",
	},
	[205052] = 
	{
		id = 205052,
		eventType = "walk",
		eventArg = "16947",
		endInvoke = "205053",
	},
	[205053] = 
	{
		id = 205053,
		eventType = "walk",
		eventArg = "17302",
		endInvoke = "205054",
	},
	[205054] = 
	{
		id = 205054,
		eventType = "walk",
		eventArg = "17698",
		endInvoke = "205055",
	},
	[205055] = 
	{
		id = 205055,
		eventType = "walk",
		eventArg = "17700",
		endInvoke = "205056",
	},
	[205056] = 
	{
		id = 205056,
		eventType = "walk",
		eventArg = "17702",
		endInvoke = "205061",
	},
	[205057] = 
	{
		id = 205057,
		eventType = "walk",
		eventArg = "17370",
		endInvoke = "205002",
	},
	[205058] = 
	{
		id = 205058,
		eventType = "walk",
		eventArg = "16817",
		endInvoke = "205059",
	},
	[205059] = 
	{
		id = 205059,
		eventType = "walk",
		eventArg = "17023",
		endInvoke = "205060",
	},
	[205060] = 
	{
		id = 205060,
		eventType = "walk",
		eventArg = "17019",
		endInvoke = "205047",
	},
	[205061] = 
	{
		id = 205061,
		eventType = "walk",
		eventArg = "17704",
		endInvoke = "205062",
	},
	[205062] = 
	{
		id = 205062,
		eventType = "walk",
		eventArg = "17706",
		endInvoke = "205063",
	},
	[205063] = 
	{
		id = 205063,
		eventType = "walk",
		eventArg = "17708",
		endInvoke = "205064",
	},
	[205064] = 
	{
		id = 205064,
		eventType = "walk",
		eventArg = "17710",
		endInvoke = "205065",
	},
	[205065] = 
	{
		id = 205065,
		eventType = "walk",
		eventArg = "17712",
		endInvoke = "205066",
	},
	[205066] = 
	{
		id = 205066,
		eventType = "walk",
		eventArg = "17714",
		endInvoke = "205067",
	},
	[205067] = 
	{
		id = 205067,
		eventType = "walk",
		eventArg = "17716",
		endInvoke = "205068",
	},
	[205068] = 
	{
		id = 205068,
		eventType = "walk",
		eventArg = "17160",
		endInvoke = "204000",
	},
	[205069] = 
	{
		id = 205069,
		eventType = "walk",
		eventArg = "16879",
		endInvoke = "205070",
	},
	[205070] = 
	{
		id = 205070,
		eventType = "walk",
		eventArg = "17092",
		endInvoke = "204000",
	},
	[205071] = 
	{
		id = 205071,
		eventType = "walk",
		eventArg = "17701",
		endInvoke = "205072",
	},
	[205072] = 
	{
		id = 205072,
		eventType = "walk",
		eventArg = "17699",
		endInvoke = "205073",
	},
	[205073] = 
	{
		id = 205073,
		eventType = "walk",
		eventArg = "17373",
		endInvoke = "205074",
	},
	[205074] = 
	{
		id = 205074,
		eventType = "walk",
		eventArg = "16876",
		endInvoke = "205075",
	},
	[205075] = 
	{
		id = 205075,
		eventType = "walk",
		eventArg = "17018",
		endInvoke = "205058",
	},
	[205076] = 
	{
		id = 205076,
		eventType = "walk",
		eventArg = "17682",
		endInvoke = "205077",
	},
	[205077] = 
	{
		id = 205077,
		eventType = "walk",
		eventArg = "17680",
		endInvoke = "205078",
	},
	[205078] = 
	{
		id = 205078,
		eventType = "walk",
		eventArg = "17678",
		endInvoke = "205079",
	},
	[205079] = 
	{
		id = 205079,
		eventType = "walk",
		eventArg = "17676",
		endInvoke = "205080",
	},
	[205080] = 
	{
		id = 205080,
		eventType = "walk",
		eventArg = "17674",
		endInvoke = "205081",
	},
	[205081] = 
	{
		id = 205081,
		eventType = "walk",
		eventArg = "17672",
		endInvoke = "205082",
	},
	[205082] = 
	{
		id = 205082,
		eventType = "walk",
		eventArg = "17670",
		endInvoke = "205083",
	},
	[205083] = 
	{
		id = 205083,
		eventType = "walk",
		eventArg = "17668",
		endInvoke = "205084",
	},
	[205084] = 
	{
		id = 205084,
		eventType = "walk",
		eventArg = "17666",
		endInvoke = "205085",
	},
	[205085] = 
	{
		id = 205085,
		eventType = "walk",
		eventArg = "17664",
		endInvoke = "204000",
	},
	[205086] = 
	{
		id = 205086,
		eventType = "walk",
		eventArg = "13865",
		endInvoke = "205087",
	},
	[205087] = 
	{
		id = 205087,
		eventType = "random",
		eventArg = "16/32",
		endInvoke = "205092/205098",
	},
	[205088] = 
	{
		id = 205088,
		eventType = "walk",
		eventArg = "16872",
		endInvoke = "205089",
	},
	[205089] = 
	{
		id = 205089,
		eventType = "walk",
		eventArg = "17016",
		endInvoke = "205090",
	},
	[205090] = 
	{
		id = 205090,
		eventType = "walk",
		eventArg = "17301",
		endInvoke = "205004",
	},
	[205091] = 
	{
		id = 205091,
		eventType = "walk",
		eventArg = "13680",
		endInvoke = "205088",
	},
	[205092] = 
	{
		id = 205092,
		eventType = "walk",
		eventArg = "17640",
		endInvoke = "205093",
	},
	[205093] = 
	{
		id = 205093,
		eventType = "walk",
		eventArg = "17642",
		endInvoke = "205094",
	},
	[205094] = 
	{
		id = 205094,
		eventType = "walk",
		eventArg = "17644",
		endInvoke = "205095",
	},
	[205095] = 
	{
		id = 205095,
		eventType = "walk",
		eventArg = "17646",
		endInvoke = "205096",
	},
	[205096] = 
	{
		id = 205096,
		eventType = "walk",
		eventArg = "17648",
		endInvoke = "205097",
	},
	[205097] = 
	{
		id = 205097,
		eventType = "walk",
		eventArg = "17656",
		endInvoke = "205142",
	},
	[205098] = 
	{
		id = 205098,
		eventType = "walk",
		eventArg = "13863",
		endInvoke = "205999",
	},
	[205999] = 
	{
		id = 205999,
		eventType = "walk",
		eventArg = "14143",
		endInvoke = "205998",
	},
	[205998] = 
	{
		id = 205998,
		eventType = "walk",
		eventArg = "13793",
		endInvoke = "205099",
	},
	[205099] = 
	{
		id = 205099,
		eventType = "walk",
		eventArg = "13864",
		endInvoke = "205100",
	},
	[205100] = 
	{
		id = 205100,
		eventType = "walk",
		eventArg = "13860",
		endInvoke = "205104",
	},
	[205101] = 
	{
		id = 205101,
		eventType = "walk",
		eventArg = "13722",
		endInvoke = "205997",
	},
	[205997] = 
	{
		id = 205997,
		eventType = "walk",
		eventArg = "13651",
		endInvoke = "205996",
	},
	[205996] = 
	{
		id = 205996,
		eventType = "walk",
		eventArg = "14002",
		endInvoke = "205102",
	},
	[205102] = 
	{
		id = 205102,
		eventType = "walk",
		eventArg = "13721",
		endInvoke = "205103",
	},
	[205103] = 
	{
		id = 205103,
		eventType = "walk",
		eventArg = "13723",
		endInvoke = "206020",
	},
	[206020] = 
	{
		id = 206020,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206021/205091",
	},
	[206021] = 
	{
		id = 206021,
		eventType = "select_free_point",
		eventArg = "13652",
		endInvoke = "206022/205091",
	},
	[206022] = 
	{
		id = 206022,
		eventType = "use_point",
		eventArg = "13652",
		endInvoke = "206023",
	},
	[206023] = 
	{
		id = 206023,
		eventType = "walk",
		eventArg = "13652",
		endInvoke = "206024",
	},
	[206024] = 
	{
		id = 206024,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206033",
	},
	[206033] = 
	{
		id = 206033,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205091",
	},
	[205104] = 
	{
		id = 205104,
		eventType = "walk",
		eventArg = "13648",
		endInvoke = "205105",
	},
	[205105] = 
	{
		id = 205105,
		eventType = "walk",
		eventArg = "13862",
		endInvoke = "205106",
	},
	[205106] = 
	{
		id = 205106,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205117/206005",
	},
	[206005] = 
	{
		id = 206005,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206006/205118",
	},
	[206006] = 
	{
		id = 206006,
		eventType = "select_free_point",
		eventArg = "17768",
		endInvoke = "206007/205118",
	},
	[206007] = 
	{
		id = 206007,
		eventType = "use_point",
		eventArg = "17768",
		endInvoke = "206008",
	},
	[206008] = 
	{
		id = 206008,
		eventType = "walk",
		eventArg = "17768",
		endInvoke = "206009",
	},
	[206009] = 
	{
		id = 206009,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206034",
	},
	[206034] = 
	{
		id = 206034,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205118",
	},
	[205107] = 
	{
		id = 205107,
		eventType = "walk",
		eventArg = "17632",
		endInvoke = "205109",
	},
	[205108] = 
	{
		id = 205108,
		eventType = "walk",
		eventArg = "13860",
		endInvoke = "205104",
	},
	[205109] = 
	{
		id = 205109,
		eventType = "walk",
		eventArg = "17634",
		endInvoke = "205110",
	},
	[205110] = 
	{
		id = 205110,
		eventType = "walk",
		eventArg = "13649",
		endInvoke = "205111",
	},
	[205111] = 
	{
		id = 205111,
		eventType = "walk",
		eventArg = "13717",
		endInvoke = "205112",
	},
	[205112] = 
	{
		id = 205112,
		eventType = "walk",
		eventArg = "14146",
		endInvoke = "205113",
	},
	[205113] = 
	{
		id = 205113,
		eventType = "walk",
		eventArg = "14077",
		endInvoke = "205114",
	},
	[205114] = 
	{
		id = 205114,
		eventType = "walk",
		eventArg = "17637",
		endInvoke = "205115",
	},
	[205115] = 
	{
		id = 205115,
		eventType = "walk",
		eventArg = "17638",
		endInvoke = "205116",
	},
	[205116] = 
	{
		id = 205116,
		eventType = "walk",
		eventArg = "17633",
		endInvoke = "205108",
	},
	[205117] = 
	{
		id = 205117,
		eventType = "walk",
		eventArg = "17653",
		endInvoke = "205128",
	},
	[205118] = 
	{
		id = 205118,
		eventType = "walk",
		eventArg = "17629",
		endInvoke = "205119",
	},
	[205119] = 
	{
		id = 205119,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205124/205125",
	},
	[205120] = 
	{
		id = 205120,
		eventType = "walk",
		eventArg = "13718",
		endInvoke = "205121",
	},
	[205121] = 
	{
		id = 205121,
		eventType = "walk",
		eventArg = "13791",
		endInvoke = "205122",
	},
	[205122] = 
	{
		id = 205122,
		eventType = "random",
		eventArg = "16/32",
		endInvoke = "206000/205101",
	},
	[206000] = 
	{
		id = 206000,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206001/205107",
	},
	[206001] = 
	{
		id = 206001,
		eventType = "select_free_point",
		eventArg = "17755",
		endInvoke = "206002/205107",
	},
	[206002] = 
	{
		id = 206002,
		eventType = "use_point",
		eventArg = "17755",
		endInvoke = "206003",
	},
	[206003] = 
	{
		id = 206003,
		eventType = "walk",
		eventArg = "17755",
		endInvoke = "206004",
	},
	[206004] = 
	{
		id = 206004,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206035",
	},
	[206035] = 
	{
		id = 206035,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205107",
	},
	[205123] = 
	{
		id = 205123,
		eventType = "walk",
		eventArg = "13859",
		endInvoke = "205120",
	},
	[205124] = 
	{
		id = 205124,
		eventType = "walk",
		eventArg = "17650",
		endInvoke = "205148",
	},
	[205125] = 
	{
		id = 205125,
		eventType = "walk",
		eventArg = "17626",
		endInvoke = "205126",
	},
	[205126] = 
	{
		id = 205126,
		eventType = "walk",
		eventArg = "17624",
		endInvoke = "205127",
	},
	[205127] = 
	{
		id = 205127,
		eventType = "walk",
		eventArg = "17622",
		endInvoke = "204000",
	},
	[205128] = 
	{
		id = 205128,
		eventType = "walk",
		eventArg = "17655",
		endInvoke = "205129",
	},
	[205129] = 
	{
		id = 205129,
		eventType = "walk",
		eventArg = "17657",
		endInvoke = "205130",
	},
	[205130] = 
	{
		id = 205130,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205133/205141",
	},
	[205131] = 
	{
		id = 205131,
		eventType = "walk",
		eventArg = "13859",
		endInvoke = "205120",
	},
	[205132] = 
	{
		id = 205132,
		eventType = "walk",
		eventArg = "17650",
		endInvoke = "205148",
	},
	[205133] = 
	{
		id = 205133,
		eventType = "walk",
		eventArg = "17659",
		endInvoke = "205134",
	},
	[205134] = 
	{
		id = 205134,
		eventType = "walk",
		eventArg = "17663",
		endInvoke = "205135",
	},
	[205135] = 
	{
		id = 205135,
		eventType = "walk",
		eventArg = "17649",
		endInvoke = "205136",
	},
	[205136] = 
	{
		id = 205136,
		eventType = "walk",
		eventArg = "17647",
		endInvoke = "205137",
	},
	[205137] = 
	{
		id = 205137,
		eventType = "walk",
		eventArg = "17645",
		endInvoke = "205138",
	},
	[205138] = 
	{
		id = 205138,
		eventType = "walk",
		eventArg = "17643",
		endInvoke = "205139",
	},
	[205139] = 
	{
		id = 205139,
		eventType = "walk",
		eventArg = "17641",
		endInvoke = "205140",
	},
	[205140] = 
	{
		id = 205140,
		eventType = "walk",
		eventArg = "13723",
		endInvoke = "206020",
	},
	[205141] = 
	{
		id = 205141,
		eventType = "walk",
		eventArg = "17664",
		endInvoke = "204000",
	},
	[205142] = 
	{
		id = 205142,
		eventType = "walk",
		eventArg = "17654",
		endInvoke = "205143",
	},
	[205143] = 
	{
		id = 205143,
		eventType = "walk",
		eventArg = "17652",
		endInvoke = "205144",
	},
	[205144] = 
	{
		id = 205144,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205131/205132",
	},
	[205145] = 
	{
		id = 205145,
		eventType = "walk",
		eventArg = "17653",
		endInvoke = "205128",
	},
	[205146] = 
	{
		id = 205146,
		eventType = "walk",
		eventArg = "17630",
		endInvoke = "205147",
	},
	[205147] = 
	{
		id = 205147,
		eventType = "walk",
		eventArg = "17628",
		endInvoke = "205123",
	},
	[206010] = 
	{
		id = 206010,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206011/205123",
	},
	[206011] = 
	{
		id = 206011,
		eventType = "select_free_point",
		eventArg = "17769",
		endInvoke = "206012/205123",
	},
	[206012] = 
	{
		id = 206012,
		eventType = "use_point",
		eventArg = "17769",
		endInvoke = "206013",
	},
	[206013] = 
	{
		id = 206013,
		eventType = "walk",
		eventArg = "17769",
		endInvoke = "206014",
	},
	[206014] = 
	{
		id = 206014,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206036",
	},
	[206036] = 
	{
		id = 206036,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205123",
	},
	[205148] = 
	{
		id = 205148,
		eventType = "walk",
		eventArg = "14005",
		endInvoke = "205149",
	},
	[205149] = 
	{
		id = 205149,
		eventType = "walk",
		eventArg = "14149",
		endInvoke = "204000",
	},
	[205150] = 
	{
		id = 205150,
		eventType = "walk",
		eventArg = "13927",
		endInvoke = "205151",
	},
	[205151] = 
	{
		id = 205151,
		eventType = "walk",
		eventArg = "13925",
		endInvoke = "205152",
	},
	[205152] = 
	{
		id = 205152,
		eventType = "walk",
		eventArg = "13926",
		endInvoke = "205153",
	},
	[205153] = 
	{
		id = 205153,
		eventType = "walk",
		eventArg = "13921",
		endInvoke = "208231",
	},
	[208231] = 
	{
		id = 208231,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208232/205154",
	},
	[208232] = 
	{
		id = 208232,
		eventType = "select_free_point",
		eventArg = "14137",
		endInvoke = "208234/205154",
	},
	[208233] = 
	{
		id = 208233,
		eventType = "animation_random",
		eventArg = "Scrutinize/Nodded/StandGlance/Stretched;16/16/16/16;10",
		endInvoke = "",
	},
	[208234] = 
	{
		id = 208234,
		eventType = "use_point",
		eventArg = "14137",
		endInvoke = "208981",
	},
	[208981] = 
	{
		id = 208981,
		eventType = "walk",
		eventArg = "14137",
		endInvoke = "208980",
	},
	[208980] = 
	{
		id = 208980,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208235",
	},
	[208235] = 
	{
		id = 208235,
		eventType = "serial",
		eventArg = "10052/208233/w_14212/208236",
		endInvoke = "",
	},
	[208236] = 
	{
		id = 208236,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208237/205156",
	},
	[208237] = 
	{
		id = 208237,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205154] = 
	{
		id = 205154,
		eventType = "walk",
		eventArg = "13922",
		endInvoke = "208238",
	},
	[208238] = 
	{
		id = 208238,
		eventType = "random",
		eventArg = "16",
		endInvoke = "205155",
	},
	[208239] = 
	{
		id = 208239,
		eventType = "select_free_point",
		eventArg = "17730/17731/17732/17734/17736/17737",
		endInvoke = "208240/208241/208242/208243/208244/208245/205155",
	},
	[208967] = 
	{
		id = 208967,
		eventType = "animation_random",
		eventArg = "Drink/Sit;16/16;10",
		endInvoke = "",
	},
	[208240] = 
	{
		id = 208240,
		eventType = "use_point",
		eventArg = "17730",
		endInvoke = "208979",
	},
	[208979] = 
	{
		id = 208979,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13995",
		endInvoke = "208978",
	},
	[208978] = 
	{
		id = 208978,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208246",
	},
	[208241] = 
	{
		id = 208241,
		eventType = "use_point",
		eventArg = "17731",
		endInvoke = "208977",
	},
	[208977] = 
	{
		id = 208977,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13995",
		endInvoke = "208976",
	},
	[208976] = 
	{
		id = 208976,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208247",
	},
	[208242] = 
	{
		id = 208242,
		eventType = "use_point",
		eventArg = "17732",
		endInvoke = "208975",
	},
	[208975] = 
	{
		id = 208975,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13637/w_13716",
		endInvoke = "208974",
	},
	[208974] = 
	{
		id = 208974,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208248",
	},
	[208243] = 
	{
		id = 208243,
		eventType = "use_point",
		eventArg = "17734",
		endInvoke = "208973",
	},
	[208973] = 
	{
		id = 208973,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13637/w_13716",
		endInvoke = "208972",
	},
	[208972] = 
	{
		id = 208972,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208249",
	},
	[208244] = 
	{
		id = 208244,
		eventType = "use_point",
		eventArg = "17736",
		endInvoke = "208971",
	},
	[208971] = 
	{
		id = 208971,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13637/w_13638/w_13715",
		endInvoke = "208970",
	},
	[208970] = 
	{
		id = 208970,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208250",
	},
	[208245] = 
	{
		id = 208245,
		eventType = "use_point",
		eventArg = "17737",
		endInvoke = "208969",
	},
	[208969] = 
	{
		id = 208969,
		eventType = "serial",
		eventArg = "w_14205/w_13646/w_13924/w_13637/w_13638/w_13715",
		endInvoke = "208968",
	},
	[208968] = 
	{
		id = 208968,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208251",
	},
	[208246] = 
	{
		id = 208246,
		eventType = "serial",
		eventArg = "s_17730/208255/208967/s_13995/w_13637/w_13638/w_13641/w_14210/208266",
		endInvoke = "",
	},
	[208247] = 
	{
		id = 208247,
		eventType = "serial",
		eventArg = "s_17731/208254/208967/s_13995/w_13637/w_13638/w_13641/w_14210/208266",
		endInvoke = "",
	},
	[208248] = 
	{
		id = 208248,
		eventType = "serial",
		eventArg = "s_17732/208257/208967/s_13716/w_13640/w_14210/208266",
		endInvoke = "",
	},
	[208249] = 
	{
		id = 208249,
		eventType = "serial",
		eventArg = "s_17734/208256/208967/s_13716/w_13640/w_14210/208266",
		endInvoke = "",
	},
	[208250] = 
	{
		id = 208250,
		eventType = "serial",
		eventArg = "s_17736/10051/208967/s_13708/w_13641/w_14210/208266",
		endInvoke = "",
	},
	[208251] = 
	{
		id = 208251,
		eventType = "serial",
		eventArg = "s_17737/10050/208967/s_13708/w_13641/w_14210/208266",
		endInvoke = "",
	},
	[208266] = 
	{
		id = 208266,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208267/208268",
	},
	[208267] = 
	{
		id = 208267,
		eventType = "serial",
		eventArg = "w_14212/208252",
		endInvoke = "",
	},
	[208268] = 
	{
		id = 208268,
		eventType = "serial",
		eventArg = "w_14064/208269",
		endInvoke = "",
	},
	[208252] = 
	{
		id = 208252,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208253/205156",
	},
	[208269] = 
	{
		id = 208269,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208253/205020",
	},
	[208253] = 
	{
		id = 208253,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[208254] = 
	{
		id = 208254,
		eventType = "rotatey",
		eventArg = "45",
		endInvoke = "",
	},
	[208255] = 
	{
		id = 208255,
		eventType = "rotatey",
		eventArg = "225",
		endInvoke = "",
	},
	[208256] = 
	{
		id = 208256,
		eventType = "rotatey",
		eventArg = "150",
		endInvoke = "",
	},
	[208257] = 
	{
		id = 208257,
		eventType = "rotatey",
		eventArg = "330",
		endInvoke = "",
	},
	[205155] = 
	{
		id = 205155,
		eventType = "walk",
		eventArg = "14212",
		endInvoke = "205156",
	},
	[205156] = 
	{
		id = 205156,
		eventType = "walk",
		eventArg = "14208",
		endInvoke = "205157",
	},
	[205157] = 
	{
		id = 205157,
		eventType = "walk",
		eventArg = "14211",
		endInvoke = "205158",
	},
	[205158] = 
	{
		id = 205158,
		eventType = "walk",
		eventArg = "13931",
		endInvoke = "205160",
	},
	[205160] = 
	{
		id = 205160,
		eventType = "walk",
		eventArg = "13932",
		endInvoke = "208258",
	},
	[208258] = 
	{
		id = 208258,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208259/205161",
	},
	[208259] = 
	{
		id = 208259,
		eventType = "select_free_point",
		eventArg = "14073",
		endInvoke = "208261/205161",
	},
	[208261] = 
	{
		id = 208261,
		eventType = "use_point",
		eventArg = "14073",
		endInvoke = "208966",
	},
	[208966] = 
	{
		id = 208966,
		eventType = "walk",
		eventArg = "14073",
		endInvoke = "208965",
	},
	[208965] = 
	{
		id = 208965,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208262",
	},
	[208262] = 
	{
		id = 208262,
		eventType = "serial",
		eventArg = "10052/208233/w_16875/208263",
		endInvoke = "",
	},
	[208263] = 
	{
		id = 208263,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208264/205161",
	},
	[208264] = 
	{
		id = 208264,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205161] = 
	{
		id = 205161,
		eventType = "walk",
		eventArg = "16875",
		endInvoke = "205012",
	},
	[205162] = 
	{
		id = 205162,
		eventType = "walk",
		eventArg = "14131",
		endInvoke = "205167",
	},
	[208993] = 
	{
		id = 208993,
		eventType = "walk",
		eventArg = "14053",
		endInvoke = "208206",
	},
	[208206] = 
	{
		id = 208206,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208207/205163",
	},
	[208207] = 
	{
		id = 208207,
		eventType = "select_free_point",
		eventArg = "17728/17729",
		endInvoke = "208209/208210/205163",
	},
	[208208] = 
	{
		id = 208208,
		eventType = "animation_random",
		eventArg = "Sit/SitGlance;16/16;10",
		endInvoke = "",
	},
	[208209] = 
	{
		id = 208209,
		eventType = "use_point",
		eventArg = "17728",
		endInvoke = "208963",
	},
	[208963] = 
	{
		id = 208963,
		eventType = "walk",
		eventArg = "14124",
		endInvoke = "208962",
	},
	[208962] = 
	{
		id = 208962,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208211",
	},
	[208210] = 
	{
		id = 208210,
		eventType = "use_point",
		eventArg = "17729",
		endInvoke = "208961",
	},
	[208961] = 
	{
		id = 208961,
		eventType = "walk",
		eventArg = "14124",
		endInvoke = "208960",
	},
	[208960] = 
	{
		id = 208960,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208212",
	},
	[208211] = 
	{
		id = 208211,
		eventType = "serial",
		eventArg = "s_17728/10050/208208/s_17728/w_13777/208213",
		endInvoke = "",
	},
	[208212] = 
	{
		id = 208212,
		eventType = "serial",
		eventArg = "s_17729/10050/208208/s_17729/w_13777/208213",
		endInvoke = "",
	},
	[208213] = 
	{
		id = 208213,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208214/205164",
	},
	[208214] = 
	{
		id = 208214,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205163] = 
	{
		id = 205163,
		eventType = "walk",
		eventArg = "13777",
		endInvoke = "205164",
	},
	[205164] = 
	{
		id = 205164,
		eventType = "walk",
		eventArg = "14197",
		endInvoke = "205165",
	},
	[205165] = 
	{
		id = 205165,
		eventType = "walk",
		eventArg = "16801",
		endInvoke = "208997",
	},
	[205166] = 
	{
		id = 205166,
		eventType = "walk",
		eventArg = "14061",
		endInvoke = "208993",
	},
	[205167] = 
	{
		id = 205167,
		eventType = "walk",
		eventArg = "17608",
		endInvoke = "205168",
	},
	[205168] = 
	{
		id = 205168,
		eventType = "walk",
		eventArg = "17610",
		endInvoke = "205169",
	},
	[205169] = 
	{
		id = 205169,
		eventType = "walk",
		eventArg = "17612",
		endInvoke = "205170",
	},
	[205170] = 
	{
		id = 205170,
		eventType = "walk",
		eventArg = "17614",
		endInvoke = "205171",
	},
	[205171] = 
	{
		id = 205171,
		eventType = "walk",
		eventArg = "17616",
		endInvoke = "205172",
	},
	[205172] = 
	{
		id = 205172,
		eventType = "walk",
		eventArg = "17618",
		endInvoke = "205173",
	},
	[205173] = 
	{
		id = 205173,
		eventType = "walk",
		eventArg = "17620",
		endInvoke = "204000",
	},
	[205174] = 
	{
		id = 205174,
		eventType = "walk",
		eventArg = "17607",
		endInvoke = "205175",
	},
	[205175] = 
	{
		id = 205175,
		eventType = "walk",
		eventArg = "17603",
		endInvoke = "205176",
	},
	[205176] = 
	{
		id = 205176,
		eventType = "walk",
		eventArg = "17601",
		endInvoke = "205177",
	},
	[205177] = 
	{
		id = 205177,
		eventType = "walk",
		eventArg = "17599",
		endInvoke = "205178",
	},
	[205178] = 
	{
		id = 205178,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206193/205184",
	},
	[206193] = 
	{
		id = 206193,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206194/205183",
	},
	[206194] = 
	{
		id = 206194,
		eventType = "select_free_point",
		eventArg = "17748",
		endInvoke = "206195/205183",
	},
	[206195] = 
	{
		id = 206195,
		eventType = "use_point",
		eventArg = "17748",
		endInvoke = "206196",
	},
	[206196] = 
	{
		id = 206196,
		eventType = "walk",
		eventArg = "17748",
		endInvoke = "206197",
	},
	[206197] = 
	{
		id = 206197,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206198",
	},
	[206198] = 
	{
		id = 206198,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205183",
	},
	[205179] = 
	{
		id = 205179,
		eventType = "walk",
		eventArg = "17600",
		endInvoke = "205180",
	},
	[205180] = 
	{
		id = 205180,
		eventType = "walk",
		eventArg = "17602",
		endInvoke = "205181",
	},
	[205181] = 
	{
		id = 205181,
		eventType = "walk",
		eventArg = "17606",
		endInvoke = "205182",
	},
	[205182] = 
	{
		id = 205182,
		eventType = "walk",
		eventArg = "14131",
		endInvoke = "205167",
	},
	[205183] = 
	{
		id = 205183,
		eventType = "walk",
		eventArg = "17595",
		endInvoke = "205185",
	},
	[205184] = 
	{
		id = 205184,
		eventType = "walk",
		eventArg = "17605",
		endInvoke = "204000",
	},
	[205185] = 
	{
		id = 205185,
		eventType = "walk",
		eventArg = "17593",
		endInvoke = "205186",
	},
	[205186] = 
	{
		id = 205186,
		eventType = "walk",
		eventArg = "17589",
		endInvoke = "205193",
	},
	[205188] = 
	{
		id = 205188,
		eventType = "walk",
		eventArg = "17598",
		endInvoke = "205179",
	},
	[205189] = 
	{
		id = 205189,
		eventType = "walk",
		eventArg = "17596",
		endInvoke = "204000",
	},
	[205190] = 
	{
		id = 205190,
		eventType = "walk",
		eventArg = "17592",
		endInvoke = "205191",
	},
	[205191] = 
	{
		id = 205191,
		eventType = "walk",
		eventArg = "17594",
		endInvoke = "205192",
	},
	[205192] = 
	{
		id = 205192,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206187/205189",
	},
	[206187] = 
	{
		id = 206187,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206188/205188",
	},
	[206188] = 
	{
		id = 206188,
		eventType = "select_free_point",
		eventArg = "17746",
		endInvoke = "206189/205188",
	},
	[206189] = 
	{
		id = 206189,
		eventType = "use_point",
		eventArg = "17746",
		endInvoke = "206190",
	},
	[206190] = 
	{
		id = 206190,
		eventType = "walk",
		eventArg = "17746",
		endInvoke = "206191",
	},
	[206191] = 
	{
		id = 206191,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206192",
	},
	[206192] = 
	{
		id = 206192,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205188",
	},
	[205193] = 
	{
		id = 205193,
		eventType = "walk",
		eventArg = "17585",
		endInvoke = "205197",
	},
	[205194] = 
	{
		id = 205194,
		eventType = "walk",
		eventArg = "17591",
		endInvoke = "204000",
	},
	[205195] = 
	{
		id = 205195,
		eventType = "walk",
		eventArg = "17588",
		endInvoke = "205196",
	},
	[205196] = 
	{
		id = 205196,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205190/205194",
	},
	[205197] = 
	{
		id = 205197,
		eventType = "walk",
		eventArg = "17582",
		endInvoke = "205198",
	},
	[205198] = 
	{
		id = 205198,
		eventType = "walk",
		eventArg = "16392",
		endInvoke = "205204",
	},
	[205199] = 
	{
		id = 205199,
		eventType = "walk",
		eventArg = "17587",
		endInvoke = "204000",
	},
	[205200] = 
	{
		id = 205200,
		eventType = "walk",
		eventArg = "17583",
		endInvoke = "205201",
	},
	[205201] = 
	{
		id = 205201,
		eventType = "walk",
		eventArg = "17584",
		endInvoke = "205202",
	},
	[205202] = 
	{
		id = 205202,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205195/205199",
	},
	[205203] = 
	{
		id = 205203,
		eventType = "walk",
		eventArg = "16801",
		endInvoke = "208997",
	},
	[205204] = 
	{
		id = 205204,
		eventType = "walk",
		eventArg = "17028",
		endInvoke = "205205",
	},
	[205205] = 
	{
		id = 205205,
		eventType = "walk",
		eventArg = "13985",
		endInvoke = "204000",
	},
	[205206] = 
	{
		id = 205206,
		eventType = "walk",
		eventArg = "16392",
		endInvoke = "205204",
	},
	[205207] = 
	{
		id = 205207,
		eventType = "walk",
		eventArg = "13849",
		endInvoke = "208199",
	},
	[208199] = 
	{
		id = 208199,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208200/205208",
	},
	[208200] = 
	{
		id = 208200,
		eventType = "select_free_point",
		eventArg = "13997",
		endInvoke = "208202/205208",
	},
	[208202] = 
	{
		id = 208202,
		eventType = "use_point",
		eventArg = "13997",
		endInvoke = "208959",
	},
	[208959] = 
	{
		id = 208959,
		eventType = "walk",
		eventArg = "13997",
		endInvoke = "208958",
	},
	[208958] = 
	{
		id = 208958,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208203",
	},
	[208203] = 
	{
		id = 208203,
		eventType = "serial",
		eventArg = "10051/208233/w_13664/208204",
		endInvoke = "",
	},
	[208204] = 
	{
		id = 208204,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208205/205209",
	},
	[208205] = 
	{
		id = 208205,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205208] = 
	{
		id = 205208,
		eventType = "walk",
		eventArg = "13664",
		endInvoke = "208215",
	},
	[208215] = 
	{
		id = 208215,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208216/205209",
	},
	[208216] = 
	{
		id = 208216,
		eventType = "select_free_point",
		eventArg = "17234",
		endInvoke = "208218/205209",
	},
	[208218] = 
	{
		id = 208218,
		eventType = "use_point",
		eventArg = "17234",
		endInvoke = "208983",
	},
	[208983] = 
	{
		id = 208983,
		eventType = "walk",
		eventArg = "17234",
		endInvoke = "208982",
	},
	[208982] = 
	{
		id = 208982,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208219",
	},
	[208219] = 
	{
		id = 208219,
		eventType = "serial",
		eventArg = "208222/208233/w_13991/208220",
		endInvoke = "",
	},
	[208220] = 
	{
		id = 208220,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208221/205210",
	},
	[208221] = 
	{
		id = 208221,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[208222] = 
	{
		id = 208222,
		eventType = "rotatey",
		eventArg = "225",
		endInvoke = "",
	},
	[205209] = 
	{
		id = 205209,
		eventType = "walk",
		eventArg = "13991",
		endInvoke = "205210",
	},
	[205210] = 
	{
		id = 205210,
		eventType = "random",
		eventArg = "32/16",
		endInvoke = "205150/206199",
	},
	[206199] = 
	{
		id = 206199,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206200/205162",
	},
	[206200] = 
	{
		id = 206200,
		eventType = "select_free_point",
		eventArg = "17751",
		endInvoke = "206201/205162",
	},
	[206201] = 
	{
		id = 206201,
		eventType = "use_point",
		eventArg = "17751",
		endInvoke = "206202",
	},
	[206202] = 
	{
		id = 206202,
		eventType = "walk",
		eventArg = "17751",
		endInvoke = "206203",
	},
	[206203] = 
	{
		id = 206203,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206204",
	},
	[206204] = 
	{
		id = 206204,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205162",
	},
	[208997] = 
	{
		id = 208997,
		eventType = "walk",
		eventArg = "13917",
		endInvoke = "208185",
	},
	[208185] = 
	{
		id = 208185,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208186/208996",
	},
	[208186] = 
	{
		id = 208186,
		eventType = "select_free_point",
		eventArg = "14138",
		endInvoke = "208188/208996",
	},
	[208188] = 
	{
		id = 208188,
		eventType = "use_point",
		eventArg = "14138",
		endInvoke = "208957",
	},
	[208957] = 
	{
		id = 208957,
		eventType = "walk",
		eventArg = "14138",
		endInvoke = "208956",
	},
	[208956] = 
	{
		id = 208956,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208189",
	},
	[208189] = 
	{
		id = 208189,
		eventType = "serial",
		eventArg = "10052/208233/w_14444/208190",
		endInvoke = "",
	},
	[208190] = 
	{
		id = 208190,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208191/205211",
	},
	[208191] = 
	{
		id = 208191,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[208996] = 
	{
		id = 208996,
		eventType = "walk",
		eventArg = "13804",
		endInvoke = "208995",
	},
	[208995] = 
	{
		id = 208995,
		eventType = "walk",
		eventArg = "14442",
		endInvoke = "208994",
	},
	[208994] = 
	{
		id = 208994,
		eventType = "walk",
		eventArg = "14444",
		endInvoke = "205211",
	},
	[205211] = 
	{
		id = 205211,
		eventType = "walk",
		eventArg = "14089",
		endInvoke = "205212",
	},
	[205212] = 
	{
		id = 205212,
		eventType = "walk",
		eventArg = "13631",
		endInvoke = "205213",
	},
	[205213] = 
	{
		id = 205213,
		eventType = "walk",
		eventArg = "10597",
		endInvoke = "207004",
	},
	[207004] = 
	{
		id = 207004,
		eventType = "random",
		eventArg = "16/48",
		endInvoke = "207005/205214",
	},
	[207005] = 
	{
		id = 207005,
		eventType = "walk",
		eventArg = "18013",
		endInvoke = "207006",
	},
	[207006] = 
	{
		id = 207006,
		eventType = "walk",
		eventArg = "13704",
		endInvoke = "205483",
	},
	[205214] = 
	{
		id = 205214,
		eventType = "walk",
		eventArg = "13873",
		endInvoke = "208160",
	},
	[208160] = 
	{
		id = 208160,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208161/205215",
	},
	[208161] = 
	{
		id = 208161,
		eventType = "select_free_point",
		eventArg = "17170",
		endInvoke = "208163/205215",
	},
	[208163] = 
	{
		id = 208163,
		eventType = "use_point",
		eventArg = "17170",
		endInvoke = "208955",
	},
	[208955] = 
	{
		id = 208955,
		eventType = "walk",
		eventArg = "17170",
		endInvoke = "208954",
	},
	[208954] = 
	{
		id = 208954,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000128/208165",
	},
	[208165] = 
	{
		id = 208165,
		eventType = "serial",
		eventArg = "208233/w_13873/208167",
		endInvoke = "",
	},
	[208167] = 
	{
		id = 208167,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208168/205215",
	},
	[208168] = 
	{
		id = 208168,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205215] = 
	{
		id = 205215,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205216/205218",
	},
	[205216] = 
	{
		id = 205216,
		eventType = "walk",
		eventArg = "16665",
		endInvoke = "205217",
	},
	[205217] = 
	{
		id = 205217,
		eventType = "walk",
		eventArg = "16666",
		endInvoke = "205220",
	},
	[205218] = 
	{
		id = 205218,
		eventType = "walk",
		eventArg = "16736",
		endInvoke = "205219",
	},
	[205219] = 
	{
		id = 205219,
		eventType = "walk",
		eventArg = "16737",
		endInvoke = "205220",
	},
	[205220] = 
	{
		id = 205220,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "205221/205233/205245/205257",
	},
	[205221] = 
	{
		id = 205221,
		eventType = "walk",
		eventArg = "10131",
		endInvoke = "205222",
	},
	[208079] = 
	{
		id = 208079,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208080/205222",
	},
	[208080] = 
	{
		id = 208080,
		eventType = "select_free_point",
		eventArg = "16672",
		endInvoke = "208082/205222",
	},
	[208082] = 
	{
		id = 208082,
		eventType = "use_point",
		eventArg = "16672",
		endInvoke = "208953",
	},
	[208953] = 
	{
		id = 208953,
		eventType = "walk",
		eventArg = "16672",
		endInvoke = "208952",
	},
	[208952] = 
	{
		id = 208952,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208083",
	},
	[208083] = 
	{
		id = 208083,
		eventType = "serial",
		eventArg = "208233/208084",
		endInvoke = "",
	},
	[208084] = 
	{
		id = 208084,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208085/205222",
	},
	[208085] = 
	{
		id = 208085,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205222] = 
	{
		id = 205222,
		eventType = "walk",
		eventArg = "10127",
		endInvoke = "205223",
	},
	[205223] = 
	{
		id = 205223,
		eventType = "walk",
		eventArg = "10126",
		endInvoke = "205224",
	},
	[205224] = 
	{
		id = 205224,
		eventType = "walk",
		eventArg = "10034",
		endInvoke = "208088",
	},
	[208088] = 
	{
		id = 208088,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208089/205225",
	},
	[208089] = 
	{
		id = 208089,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208091/208092/205225",
	},
	[208090] = 
	{
		id = 208090,
		eventType = "animation",
		eventArg = "SitIdle/10",
		endInvoke = "",
	},
	[208091] = 
	{
		id = 208091,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208951",
	},
	[208951] = 
	{
		id = 208951,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208950",
	},
	[208950] = 
	{
		id = 208950,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208093",
	},
	[208092] = 
	{
		id = 208092,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208949",
	},
	[208949] = 
	{
		id = 208949,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208948",
	},
	[208948] = 
	{
		id = 208948,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208094",
	},
	[208093] = 
	{
		id = 208093,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10030/208095",
		endInvoke = "",
	},
	[208094] = 
	{
		id = 208094,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10030/208095",
		endInvoke = "",
	},
	[208095] = 
	{
		id = 208095,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208096/205226",
	},
	[208096] = 
	{
		id = 208096,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205225] = 
	{
		id = 205225,
		eventType = "walk",
		eventArg = "10030",
		endInvoke = "205226",
	},
	[205226] = 
	{
		id = 205226,
		eventType = "walk",
		eventArg = "10058",
		endInvoke = "205227",
	},
	[205227] = 
	{
		id = 205227,
		eventType = "walk",
		eventArg = "10081",
		endInvoke = "205228",
	},
	[205228] = 
	{
		id = 205228,
		eventType = "walk",
		eventArg = "10078",
		endInvoke = "205229",
	},
	[205229] = 
	{
		id = 205229,
		eventType = "walk",
		eventArg = "10055",
		endInvoke = "205230",
	},
	[205230] = 
	{
		id = 205230,
		eventType = "walk",
		eventArg = "10051",
		endInvoke = "205231",
	},
	[205231] = 
	{
		id = 205231,
		eventType = "walk",
		eventArg = "10049",
		endInvoke = "205232",
	},
	[205232] = 
	{
		id = 205232,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205269/205276",
	},
	[205233] = 
	{
		id = 205233,
		eventType = "walk",
		eventArg = "10161",
		endInvoke = "205234",
	},
	[208013] = 
	{
		id = 208013,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205234/208014",
	},
	[208014] = 
	{
		id = 208014,
		eventType = "select_free_point",
		eventArg = "16672",
		endInvoke = "208016/205234",
	},
	[208015] = 
	{
		id = 208015,
		eventType = "animation",
		eventArg = "Scrutinize/10",
		endInvoke = "",
	},
	[208016] = 
	{
		id = 208016,
		eventType = "use_point",
		eventArg = "16672",
		endInvoke = "208947",
	},
	[208947] = 
	{
		id = 208947,
		eventType = "walk",
		eventArg = "16672",
		endInvoke = "208946",
	},
	[208946] = 
	{
		id = 208946,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208017",
	},
	[208017] = 
	{
		id = 208017,
		eventType = "serial",
		eventArg = "208233/208018",
		endInvoke = "",
	},
	[208018] = 
	{
		id = 208018,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208019/205234",
	},
	[208019] = 
	{
		id = 208019,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205234] = 
	{
		id = 205234,
		eventType = "walk",
		eventArg = "10157",
		endInvoke = "205235",
	},
	[205235] = 
	{
		id = 205235,
		eventType = "walk",
		eventArg = "10156",
		endInvoke = "205236",
	},
	[205236] = 
	{
		id = 205236,
		eventType = "walk",
		eventArg = "10064",
		endInvoke = "208097",
	},
	[208097] = 
	{
		id = 208097,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208098/205237 ",
	},
	[208098] = 
	{
		id = 208098,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208100/208101/205237",
	},
	[208099] = 
	{
		id = 208099,
		eventType = "animation",
		eventArg = "SitIdle/10",
		endInvoke = "",
	},
	[208100] = 
	{
		id = 208100,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208945",
	},
	[208945] = 
	{
		id = 208945,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208944",
	},
	[208944] = 
	{
		id = 208944,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208102",
	},
	[208101] = 
	{
		id = 208101,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208943",
	},
	[208943] = 
	{
		id = 208943,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208942",
	},
	[208942] = 
	{
		id = 208942,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208103",
	},
	[208102] = 
	{
		id = 208102,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10059/208104",
		endInvoke = "",
	},
	[208103] = 
	{
		id = 208103,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10059/208104",
		endInvoke = "",
	},
	[208104] = 
	{
		id = 208104,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208105/205238",
	},
	[208105] = 
	{
		id = 208105,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205237] = 
	{
		id = 205237,
		eventType = "walk",
		eventArg = "10059",
		endInvoke = "205238",
	},
	[205238] = 
	{
		id = 205238,
		eventType = "walk",
		eventArg = "10082",
		endInvoke = "205239",
	},
	[205239] = 
	{
		id = 205239,
		eventType = "walk",
		eventArg = "10057",
		endInvoke = "205240",
	},
	[205240] = 
	{
		id = 205240,
		eventType = "walk",
		eventArg = "10054",
		endInvoke = "205241",
	},
	[205241] = 
	{
		id = 205241,
		eventType = "walk",
		eventArg = "10079",
		endInvoke = "205242",
	},
	[205242] = 
	{
		id = 205242,
		eventType = "walk",
		eventArg = "10075",
		endInvoke = "205243",
	},
	[205243] = 
	{
		id = 205243,
		eventType = "walk",
		eventArg = "10073",
		endInvoke = "205244",
	},
	[205244] = 
	{
		id = 205244,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205269/205280",
	},
	[205245] = 
	{
		id = 205245,
		eventType = "walk",
		eventArg = "10199",
		endInvoke = "205246",
	},
	[205246] = 
	{
		id = 205246,
		eventType = "walk",
		eventArg = "10195",
		endInvoke = "208042",
	},
	[208042] = 
	{
		id = 208042,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208043/205247",
	},
	[208043] = 
	{
		id = 208043,
		eventType = "select_free_point",
		eventArg = "17724/17725/17726/17727",
		endInvoke = "208045/208046/208047/208048/205247",
	},
	[208045] = 
	{
		id = 208045,
		eventType = "use_point",
		eventArg = "17724",
		endInvoke = "208941",
	},
	[208941] = 
	{
		id = 208941,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208940",
	},
	[208940] = 
	{
		id = 208940,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208049",
	},
	[208046] = 
	{
		id = 208046,
		eventType = "use_point",
		eventArg = "17725",
		endInvoke = "208939",
	},
	[208939] = 
	{
		id = 208939,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208938",
	},
	[208938] = 
	{
		id = 208938,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208050",
	},
	[208047] = 
	{
		id = 208047,
		eventType = "use_point",
		eventArg = "17726",
		endInvoke = "208937",
	},
	[208937] = 
	{
		id = 208937,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208936",
	},
	[208936] = 
	{
		id = 208936,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208051",
	},
	[208048] = 
	{
		id = 208048,
		eventType = "use_point",
		eventArg = "17727",
		endInvoke = "208935",
	},
	[208935] = 
	{
		id = 208935,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208934",
	},
	[208934] = 
	{
		id = 208934,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208052",
	},
	[208049] = 
	{
		id = 208049,
		eventType = "serial",
		eventArg = "s_17724/10050/208967/s_16749/w_10195/208055",
		endInvoke = "",
	},
	[208050] = 
	{
		id = 208050,
		eventType = "serial",
		eventArg = "s_17725/10051/208967/s_16749/w_10195/208055",
		endInvoke = "",
	},
	[208051] = 
	{
		id = 208051,
		eventType = "serial",
		eventArg = "s_17726/208999/208967/s_16749/w_10195/208055",
		endInvoke = "",
	},
	[208052] = 
	{
		id = 208052,
		eventType = "serial",
		eventArg = "s_17727/208998/208967/s_16749/w_10195/208055",
		endInvoke = "",
	},
	[208055] = 
	{
		id = 208055,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208056/205247",
	},
	[208056] = 
	{
		id = 208056,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205247] = 
	{
		id = 205247,
		eventType = "walk",
		eventArg = "10194",
		endInvoke = "205248",
	},
	[205248] = 
	{
		id = 205248,
		eventType = "walk",
		eventArg = "10088",
		endInvoke = "208106",
	},
	[208106] = 
	{
		id = 208106,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208107/205249",
	},
	[208107] = 
	{
		id = 208107,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208109/208110/205249",
	},
	[208108] = 
	{
		id = 208108,
		eventType = "animation",
		eventArg = "SitIdle/10",
		endInvoke = "",
	},
	[208109] = 
	{
		id = 208109,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208933",
	},
	[208933] = 
	{
		id = 208933,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208932",
	},
	[208932] = 
	{
		id = 208932,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208111",
	},
	[208110] = 
	{
		id = 208110,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208931",
	},
	[208931] = 
	{
		id = 208931,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208930",
	},
	[208930] = 
	{
		id = 208930,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208112",
	},
	[208111] = 
	{
		id = 208111,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10083/208113",
		endInvoke = "",
	},
	[208112] = 
	{
		id = 208112,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10083/208113",
		endInvoke = "",
	},
	[208113] = 
	{
		id = 208113,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208114/205250",
	},
	[208114] = 
	{
		id = 208114,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205249] = 
	{
		id = 205249,
		eventType = "walk",
		eventArg = "10083",
		endInvoke = "205250",
	},
	[205250] = 
	{
		id = 205250,
		eventType = "walk",
		eventArg = "10116",
		endInvoke = "205251",
	},
	[205251] = 
	{
		id = 205251,
		eventType = "walk",
		eventArg = "10115",
		endInvoke = "205252",
	},
	[205252] = 
	{
		id = 205252,
		eventType = "walk",
		eventArg = "10112",
		endInvoke = "205253",
	},
	[205253] = 
	{
		id = 205253,
		eventType = "walk",
		eventArg = "10148",
		endInvoke = "205254",
	},
	[205254] = 
	{
		id = 205254,
		eventType = "walk",
		eventArg = "10109",
		endInvoke = "205255",
	},
	[205255] = 
	{
		id = 205255,
		eventType = "walk",
		eventArg = "10107",
		endInvoke = "205256",
	},
	[205256] = 
	{
		id = 205256,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205269/205285",
	},
	[205257] = 
	{
		id = 205257,
		eventType = "walk",
		eventArg = "10237",
		endInvoke = "205258",
	},
	[205258] = 
	{
		id = 205258,
		eventType = "walk",
		eventArg = "10233",
		endInvoke = "208000",
	},
	[208000] = 
	{
		id = 208000,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208001/205259",
	},
	[208001] = 
	{
		id = 208001,
		eventType = "select_free_point",
		eventArg = "17724/17725/17726/17727",
		endInvoke = "208003/208004/208005/208006/205259",
	},
	[208989] = 
	{
		id = 208989,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208002",
	},
	[208002] = 
	{
		id = 208002,
		eventType = "animation",
		eventArg = "Drink/10",
		endInvoke = "",
	},
	[208003] = 
	{
		id = 208003,
		eventType = "use_point",
		eventArg = "17724",
		endInvoke = "208929",
	},
	[208929] = 
	{
		id = 208929,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208928",
	},
	[208928] = 
	{
		id = 208928,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208007",
	},
	[208004] = 
	{
		id = 208004,
		eventType = "use_point",
		eventArg = "17725",
		endInvoke = "208927",
	},
	[208927] = 
	{
		id = 208927,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208926",
	},
	[208926] = 
	{
		id = 208926,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208008",
	},
	[208005] = 
	{
		id = 208005,
		eventType = "use_point",
		eventArg = "17726",
		endInvoke = "208925",
	},
	[208925] = 
	{
		id = 208925,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208924",
	},
	[208924] = 
	{
		id = 208924,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208009",
	},
	[208006] = 
	{
		id = 208006,
		eventType = "use_point",
		eventArg = "17727",
		endInvoke = "208923",
	},
	[208923] = 
	{
		id = 208923,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208922",
	},
	[208922] = 
	{
		id = 208922,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208010",
	},
	[208007] = 
	{
		id = 208007,
		eventType = "serial",
		eventArg = "s_17724/10050/208967/s_16749/w_10233/208011",
		endInvoke = "",
	},
	[208008] = 
	{
		id = 208008,
		eventType = "serial",
		eventArg = "s_17725/10051/208967/s_16749/w_10233/208011",
		endInvoke = "",
	},
	[208009] = 
	{
		id = 208009,
		eventType = "serial",
		eventArg = "s_17726/208999/208967/s_16749/w_10233/208011",
		endInvoke = "",
	},
	[208010] = 
	{
		id = 208010,
		eventType = "serial",
		eventArg = "s_17727/208998/208967/s_16749/w_10233/208011",
		endInvoke = "",
	},
	[208999] = 
	{
		id = 208999,
		eventType = "rotatey",
		eventArg = "30",
		endInvoke = "",
	},
	[208998] = 
	{
		id = 208998,
		eventType = "rotatey",
		eventArg = "210",
		endInvoke = "",
	},
	[208011] = 
	{
		id = 208011,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208012/205259",
	},
	[208012] = 
	{
		id = 208012,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205259] = 
	{
		id = 205259,
		eventType = "walk",
		eventArg = "11104",
		endInvoke = "205260",
	},
	[205260] = 
	{
		id = 205260,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208115",
	},
	[208115] = 
	{
		id = 208115,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208116/205261",
	},
	[208116] = 
	{
		id = 208116,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208118/208119/205261",
	},
	[208118] = 
	{
		id = 208118,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208920",
	},
	[208920] = 
	{
		id = 208920,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208120",
	},
	[208119] = 
	{
		id = 208119,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208918",
	},
	[208918] = 
	{
		id = 208918,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208121",
	},
	[208120] = 
	{
		id = 208120,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/208122",
		endInvoke = "",
	},
	[208121] = 
	{
		id = 208121,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/208122",
		endInvoke = "",
	},
	[208122] = 
	{
		id = 208122,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208123/205261",
	},
	[208123] = 
	{
		id = 208123,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205261] = 
	{
		id = 205261,
		eventType = "walk",
		eventArg = "10117",
		endInvoke = "205262",
	},
	[205262] = 
	{
		id = 205262,
		eventType = "walk",
		eventArg = "10151",
		endInvoke = "205263",
	},
	[205263] = 
	{
		id = 205263,
		eventType = "walk",
		eventArg = "10150",
		endInvoke = "205264",
	},
	[205264] = 
	{
		id = 205264,
		eventType = "walk",
		eventArg = "10147",
		endInvoke = "205265",
	},
	[205265] = 
	{
		id = 205265,
		eventType = "walk",
		eventArg = "10113",
		endInvoke = "205266",
	},
	[205266] = 
	{
		id = 205266,
		eventType = "walk",
		eventArg = "10144",
		endInvoke = "205267",
	},
	[205267] = 
	{
		id = 205267,
		eventType = "walk",
		eventArg = "10143",
		endInvoke = "205268",
	},
	[205268] = 
	{
		id = 205268,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205269/205290",
	},
	[205269] = 
	{
		id = 205269,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205270/205271",
	},
	[205270] = 
	{
		id = 205270,
		eventType = "walk",
		eventArg = "17308",
		endInvoke = "205272",
	},
	[205271] = 
	{
		id = 205271,
		eventType = "walk",
		eventArg = "17378",
		endInvoke = "205272",
	},
	[205272] = 
	{
		id = 205272,
		eventType = "walk",
		eventArg = "16455",
		endInvoke = "205273",
	},
	[205273] = 
	{
		id = 205273,
		eventType = "walk",
		eventArg = "16960",
		endInvoke = "205274",
	},
	[205274] = 
	{
		id = 205274,
		eventType = "walk",
		eventArg = "16890",
		endInvoke = "205275",
	},
	[205275] = 
	{
		id = 205275,
		eventType = "walk",
		eventArg = "17099",
		endInvoke = "205434",
	},
	[205276] = 
	{
		id = 205276,
		eventType = "walk",
		eventArg = "10023",
		endInvoke = "205277",
	},
	[205277] = 
	{
		id = 205277,
		eventType = "walk",
		eventArg = "10006",
		endInvoke = "205278",
	},
	[205278] = 
	{
		id = 205278,
		eventType = "walk",
		eventArg = "10005",
		endInvoke = "205279",
	},
	[205279] = 
	{
		id = 205279,
		eventType = "walk",
		eventArg = "10003",
		endInvoke = "205295",
	},
	[205280] = 
	{
		id = 205280,
		eventType = "walk",
		eventArg = "10048",
		endInvoke = "205281",
	},
	[205281] = 
	{
		id = 205281,
		eventType = "walk",
		eventArg = "10043",
		endInvoke = "205282",
	},
	[205282] = 
	{
		id = 205282,
		eventType = "walk",
		eventArg = "10013",
		endInvoke = "205283",
	},
	[205283] = 
	{
		id = 205283,
		eventType = "walk",
		eventArg = "10012",
		endInvoke = "205284",
	},
	[205284] = 
	{
		id = 205284,
		eventType = "walk",
		eventArg = "10010",
		endInvoke = "205295",
	},
	[205285] = 
	{
		id = 205285,
		eventType = "walk",
		eventArg = "10072",
		endInvoke = "205286",
	},
	[205286] = 
	{
		id = 205286,
		eventType = "walk",
		eventArg = "10067",
		endInvoke = "205287",
	},
	[205287] = 
	{
		id = 205287,
		eventType = "walk",
		eventArg = "10021",
		endInvoke = "205288",
	},
	[205288] = 
	{
		id = 205288,
		eventType = "walk",
		eventArg = "10020",
		endInvoke = "205289",
	},
	[205289] = 
	{
		id = 205289,
		eventType = "walk",
		eventArg = "10018",
		endInvoke = "205295",
	},
	[205290] = 
	{
		id = 205290,
		eventType = "walk",
		eventArg = "10106",
		endInvoke = "205291",
	},
	[205291] = 
	{
		id = 205291,
		eventType = "walk",
		eventArg = "10102",
		endInvoke = "205292",
	},
	[205292] = 
	{
		id = 205292,
		eventType = "walk",
		eventArg = "10041",
		endInvoke = "205293",
	},
	[205293] = 
	{
		id = 205293,
		eventType = "walk",
		eventArg = "10040",
		endInvoke = "205294",
	},
	[205294] = 
	{
		id = 205294,
		eventType = "walk",
		eventArg = "10038",
		endInvoke = "205295",
	},
	[205295] = 
	{
		id = 205295,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205296/205302",
	},
	[205296] = 
	{
		id = 205296,
		eventType = "walk",
		eventArg = "13738",
		endInvoke = "205297",
	},
	[205297] = 
	{
		id = 205297,
		eventType = "walk",
		eventArg = "13599",
		endInvoke = "205298",
	},
	[205298] = 
	{
		id = 205298,
		eventType = "walk",
		eventArg = "13616",
		endInvoke = "205299",
	},
	[205299] = 
	{
		id = 205299,
		eventType = "walk",
		eventArg = "16533",
		endInvoke = "205300",
	},
	[205300] = 
	{
		id = 205300,
		eventType = "walk",
		eventArg = "13594",
		endInvoke = "205301",
	},
	[205301] = 
	{
		id = 205301,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205411/206109",
	},
	[206109] = 
	{
		id = 206109,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206110/205417",
	},
	[206110] = 
	{
		id = 206110,
		eventType = "select_free_point",
		eventArg = "17785",
		endInvoke = "206111/205417",
	},
	[206111] = 
	{
		id = 206111,
		eventType = "use_point",
		eventArg = "17785",
		endInvoke = "206112",
	},
	[206112] = 
	{
		id = 206112,
		eventType = "walk",
		eventArg = "17785",
		endInvoke = "206113",
	},
	[206113] = 
	{
		id = 206113,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206114",
	},
	[206114] = 
	{
		id = 206114,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205417",
	},
	[205302] = 
	{
		id = 205302,
		eventType = "walk",
		eventArg = "13597",
		endInvoke = "205303",
	},
	[205303] = 
	{
		id = 205303,
		eventType = "walk",
		eventArg = "13601",
		endInvoke = "205304",
	},
	[205304] = 
	{
		id = 205304,
		eventType = "walk",
		eventArg = "16466",
		endInvoke = "205305",
	},
	[205305] = 
	{
		id = 205305,
		eventType = "walk",
		eventArg = "16463",
		endInvoke = "205306",
	},
	[205306] = 
	{
		id = 205306,
		eventType = "walk",
		eventArg = "13736",
		endInvoke = "205307",
	},
	[205307] = 
	{
		id = 205307,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205411/206115",
	},
	[206115] = 
	{
		id = 206115,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206116/205423",
	},
	[206116] = 
	{
		id = 206116,
		eventType = "select_free_point",
		eventArg = "17784",
		endInvoke = "206117/205423",
	},
	[206117] = 
	{
		id = 206117,
		eventType = "use_point",
		eventArg = "17784",
		endInvoke = "206118",
	},
	[206118] = 
	{
		id = 206118,
		eventType = "walk",
		eventArg = "17784",
		endInvoke = "206119",
	},
	[206119] = 
	{
		id = 206119,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206120",
	},
	[206120] = 
	{
		id = 206120,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205423",
	},
	[205308] = 
	{
		id = 205308,
		eventType = "walk",
		eventArg = "10027",
		endInvoke = "205309",
	},
	[205309] = 
	{
		id = 205309,
		eventType = "walk",
		eventArg = "10029",
		endInvoke = "205310",
	},
	[205310] = 
	{
		id = 205310,
		eventType = "walk",
		eventArg = "10061",
		endInvoke = "205311",
	},
	[205311] = 
	{
		id = 205311,
		eventType = "walk",
		eventArg = "10062",
		endInvoke = "205312",
	},
	[205312] = 
	{
		id = 205312,
		eventType = "walk",
		eventArg = "10035",
		endInvoke = "205313",
	},
	[205313] = 
	{
		id = 205313,
		eventType = "walk",
		eventArg = "10033",
		endInvoke = "205314",
	},
	[205314] = 
	{
		id = 205314,
		eventType = "walk",
		eventArg = "17432",
		endInvoke = "208124",
	},
	[208124] = 
	{
		id = 208124,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208125/205315",
	},
	[208125] = 
	{
		id = 208125,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208127/208128/205315",
	},
	[208127] = 
	{
		id = 208127,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208917",
	},
	[208917] = 
	{
		id = 208917,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208916",
	},
	[208916] = 
	{
		id = 208916,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208129",
	},
	[208128] = 
	{
		id = 208128,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208915",
	},
	[208915] = 
	{
		id = 208915,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208914",
	},
	[208914] = 
	{
		id = 208914,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208130",
	},
	[208129] = 
	{
		id = 208129,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10091/208131",
		endInvoke = "",
	},
	[208130] = 
	{
		id = 208130,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10091/208131",
		endInvoke = "",
	},
	[208131] = 
	{
		id = 208131,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208132/205316",
	},
	[208132] = 
	{
		id = 208132,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205315] = 
	{
		id = 205315,
		eventType = "walk",
		eventArg = "10091",
		endInvoke = "207017",
	},
	[207017] = 
	{
		id = 207017,
		eventType = "random",
		eventArg = "16/48",
		endInvoke = "207018/205316",
	},
	[207018] = 
	{
		id = 207018,
		eventType = "walk",
		eventArg = "18022",
		endInvoke = "207019",
	},
	[207019] = 
	{
		id = 207019,
		eventType = "walk",
		eventArg = "13704",
		endInvoke = "205483",
	},
	[205316] = 
	{
		id = 205316,
		eventType = "walk",
		eventArg = "10130",
		endInvoke = "205317",
	},
	[205317] = 
	{
		id = 205317,
		eventType = "walk",
		eventArg = "10129",
		endInvoke = "205348",
	},
	[205318] = 
	{
		id = 205318,
		eventType = "walk",
		eventArg = "10047",
		endInvoke = "205319",
	},
	[205319] = 
	{
		id = 205319,
		eventType = "walk",
		eventArg = "10050",
		endInvoke = "205320",
	},
	[205320] = 
	{
		id = 205320,
		eventType = "walk",
		eventArg = "10031",
		endInvoke = "205321",
	},
	[205321] = 
	{
		id = 205321,
		eventType = "walk",
		eventArg = "10032",
		endInvoke = "205322",
	},
	[205322] = 
	{
		id = 205322,
		eventType = "walk",
		eventArg = "10065",
		endInvoke = "205323",
	},
	[205323] = 
	{
		id = 205323,
		eventType = "walk",
		eventArg = "10063",
		endInvoke = "205324",
	},
	[205324] = 
	{
		id = 205324,
		eventType = "walk",
		eventArg = "17433",
		endInvoke = "208133",
	},
	[208133] = 
	{
		id = 208133,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208134/205325",
	},
	[208134] = 
	{
		id = 208134,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208136/208137/205325",
	},
	[208136] = 
	{
		id = 208136,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208913",
	},
	[208913] = 
	{
		id = 208913,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208912",
	},
	[208912] = 
	{
		id = 208912,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208138",
	},
	[208137] = 
	{
		id = 208137,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208911",
	},
	[208911] = 
	{
		id = 208911,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208910",
	},
	[208910] = 
	{
		id = 208910,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208139",
	},
	[208138] = 
	{
		id = 208138,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10125/208140",
		endInvoke = "",
	},
	[208139] = 
	{
		id = 208139,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10125/208140",
		endInvoke = "",
	},
	[208140] = 
	{
		id = 208140,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208141/205326",
	},
	[208141] = 
	{
		id = 208141,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205325] = 
	{
		id = 205325,
		eventType = "walk",
		eventArg = "10125",
		endInvoke = "207014",
	},
	[207014] = 
	{
		id = 207014,
		eventType = "random",
		eventArg = "16/48",
		endInvoke = "207015/205326",
	},
	[207015] = 
	{
		id = 207015,
		eventType = "walk",
		eventArg = "18022",
		endInvoke = "207016",
	},
	[207016] = 
	{
		id = 207016,
		eventType = "walk",
		eventArg = "13704",
		endInvoke = "205483",
	},
	[205326] = 
	{
		id = 205326,
		eventType = "walk",
		eventArg = "10160",
		endInvoke = "205327",
	},
	[205327] = 
	{
		id = 205327,
		eventType = "walk",
		eventArg = "10159",
		endInvoke = "205348",
	},
	[205328] = 
	{
		id = 205328,
		eventType = "walk",
		eventArg = "10071",
		endInvoke = "205329",
	},
	[205329] = 
	{
		id = 205329,
		eventType = "walk",
		eventArg = "10108",
		endInvoke = "205330",
	},
	[205330] = 
	{
		id = 205330,
		eventType = "walk",
		eventArg = "10085",
		endInvoke = "205331",
	},
	[205331] = 
	{
		id = 205331,
		eventType = "walk",
		eventArg = "10086",
		endInvoke = "205332",
	},
	[205332] = 
	{
		id = 205332,
		eventType = "walk",
		eventArg = "10089",
		endInvoke = "205333",
	},
	[205333] = 
	{
		id = 205333,
		eventType = "walk",
		eventArg = "10087",
		endInvoke = "205334",
	},
	[205334] = 
	{
		id = 205334,
		eventType = "walk",
		eventArg = "17434",
		endInvoke = "208142",
	},
	[208142] = 
	{
		id = 208142,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208143/205335",
	},
	[208143] = 
	{
		id = 208143,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208145/208146/205335",
	},
	[208145] = 
	{
		id = 208145,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208909",
	},
	[208909] = 
	{
		id = 208909,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208908",
	},
	[208908] = 
	{
		id = 208908,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208147",
	},
	[208146] = 
	{
		id = 208146,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208907",
	},
	[208907] = 
	{
		id = 208907,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208906",
	},
	[208906] = 
	{
		id = 208906,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208148",
	},
	[208147] = 
	{
		id = 208147,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10155/208149",
		endInvoke = "",
	},
	[208148] = 
	{
		id = 208148,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10155/208149",
		endInvoke = "",
	},
	[208149] = 
	{
		id = 208149,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208150/205335",
	},
	[208150] = 
	{
		id = 208150,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205335] = 
	{
		id = 205335,
		eventType = "walk",
		eventArg = "10155",
		endInvoke = "207011",
	},
	[207011] = 
	{
		id = 207011,
		eventType = "random",
		eventArg = "16/48",
		endInvoke = "207012/205336",
	},
	[207012] = 
	{
		id = 207012,
		eventType = "walk",
		eventArg = "18022",
		endInvoke = "207013",
	},
	[207013] = 
	{
		id = 207013,
		eventType = "walk",
		eventArg = "13704",
		endInvoke = "205483",
	},
	[208020] = 
	{
		id = 208020,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208021/205336",
	},
	[208021] = 
	{
		id = 208021,
		eventType = "select_free_point",
		eventArg = "16743",
		endInvoke = "208023/205336",
	},
	[208023] = 
	{
		id = 208023,
		eventType = "use_point",
		eventArg = "16743",
		endInvoke = "208905",
	},
	[208905] = 
	{
		id = 208905,
		eventType = "walk",
		eventArg = "16743",
		endInvoke = "208904",
	},
	[208904] = 
	{
		id = 208904,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208024",
	},
	[208024] = 
	{
		id = 208024,
		eventType = "serial",
		eventArg = "10050/208233/208025",
		endInvoke = "",
	},
	[208025] = 
	{
		id = 208025,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208026/205336",
	},
	[208026] = 
	{
		id = 208026,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205336] = 
	{
		id = 205336,
		eventType = "walk",
		eventArg = "10198",
		endInvoke = "208057",
	},
	[208057] = 
	{
		id = 208057,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208058/205337",
	},
	[208058] = 
	{
		id = 208058,
		eventType = "select_free_point",
		eventArg = "17724/17725/17726/17727",
		endInvoke = "208060/208061/208062/208063/205337",
	},
	[208060] = 
	{
		id = 208060,
		eventType = "use_point",
		eventArg = "17724",
		endInvoke = "208903",
	},
	[208903] = 
	{
		id = 208903,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208902",
	},
	[208902] = 
	{
		id = 208902,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208064",
	},
	[208061] = 
	{
		id = 208061,
		eventType = "use_point",
		eventArg = "17725",
		endInvoke = "208901",
	},
	[208901] = 
	{
		id = 208901,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208900",
	},
	[208900] = 
	{
		id = 208900,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208065",
	},
	[208062] = 
	{
		id = 208062,
		eventType = "use_point",
		eventArg = "17726",
		endInvoke = "208899",
	},
	[208899] = 
	{
		id = 208899,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208898",
	},
	[208898] = 
	{
		id = 208898,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208066",
	},
	[208063] = 
	{
		id = 208063,
		eventType = "use_point",
		eventArg = "17727",
		endInvoke = "208897",
	},
	[208897] = 
	{
		id = 208897,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208896",
	},
	[208896] = 
	{
		id = 208896,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208067",
	},
	[208064] = 
	{
		id = 208064,
		eventType = "serial",
		eventArg = "s_17724/10050/208967/s_16749/w_10198/208070",
		endInvoke = "",
	},
	[208065] = 
	{
		id = 208065,
		eventType = "serial",
		eventArg = "s_17725/10051/208967/s_16749/w_10198/208070",
		endInvoke = "",
	},
	[208066] = 
	{
		id = 208066,
		eventType = "serial",
		eventArg = "s_17726/208999/208967/s_16749/w_10198/208070",
		endInvoke = "",
	},
	[208067] = 
	{
		id = 208067,
		eventType = "serial",
		eventArg = "s_17727/208998/208967/s_16749/w_10198/208070",
		endInvoke = "",
	},
	[208070] = 
	{
		id = 208070,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208071/205337",
	},
	[208071] = 
	{
		id = 208071,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205337] = 
	{
		id = 205337,
		eventType = "walk",
		eventArg = "10197",
		endInvoke = "205348",
	},
	[205338] = 
	{
		id = 205338,
		eventType = "walk",
		eventArg = "10105",
		endInvoke = "205339",
	},
	[205339] = 
	{
		id = 205339,
		eventType = "walk",
		eventArg = "10074",
		endInvoke = "205340",
	},
	[205340] = 
	{
		id = 205340,
		eventType = "walk",
		eventArg = "10119",
		endInvoke = "205341",
	},
	[205341] = 
	{
		id = 205341,
		eventType = "walk",
		eventArg = "10120",
		endInvoke = "205342",
	},
	[205342] = 
	{
		id = 205342,
		eventType = "walk",
		eventArg = "10123",
		endInvoke = "205343",
	},
	[205343] = 
	{
		id = 205343,
		eventType = "walk",
		eventArg = "10121",
		endInvoke = "205344",
	},
	[205344] = 
	{
		id = 205344,
		eventType = "walk",
		eventArg = "17435",
		endInvoke = "205345",
	},
	[208151] = 
	{
		id = 208151,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208152/205345",
	},
	[208152] = 
	{
		id = 208152,
		eventType = "select_free_point",
		eventArg = "17159/17230",
		endInvoke = "208154/208155/205345",
	},
	[208153] = 
	{
		id = 208153,
		eventType = "animation",
		eventArg = "SitIdle/10",
		endInvoke = "",
	},
	[208154] = 
	{
		id = 208154,
		eventType = "use_point",
		eventArg = "17159",
		endInvoke = "208895",
	},
	[208895] = 
	{
		id = 208895,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208894",
	},
	[208894] = 
	{
		id = 208894,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208156",
	},
	[208155] = 
	{
		id = 208155,
		eventType = "use_point",
		eventArg = "17230",
		endInvoke = "208893",
	},
	[208893] = 
	{
		id = 208893,
		eventType = "walk",
		eventArg = "10122",
		endInvoke = "208892",
	},
	[208892] = 
	{
		id = 208892,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208157",
	},
	[208156] = 
	{
		id = 208156,
		eventType = "serial",
		eventArg = "s_17159/10052/208208/s_10122/w_10193/208158",
		endInvoke = "",
	},
	[208157] = 
	{
		id = 208157,
		eventType = "serial",
		eventArg = "s_17230/10052/208208/s_10122/w_10193/208158",
		endInvoke = "",
	},
	[208158] = 
	{
		id = 208158,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208159/208072",
	},
	[208159] = 
	{
		id = 208159,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205345] = 
	{
		id = 205345,
		eventType = "walk",
		eventArg = "10193",
		endInvoke = "207008",
	},
	[207008] = 
	{
		id = 207008,
		eventType = "random",
		eventArg = "16/48",
		endInvoke = "207009/205346",
	},
	[207009] = 
	{
		id = 207009,
		eventType = "walk",
		eventArg = "18022",
		endInvoke = "207010",
	},
	[207010] = 
	{
		id = 207010,
		eventType = "walk",
		eventArg = "13704",
		endInvoke = "205484",
	},
	[208072] = 
	{
		id = 208072,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208073/205346",
	},
	[208073] = 
	{
		id = 208073,
		eventType = "select_free_point",
		eventArg = "16743",
		endInvoke = "208075/205346",
	},
	[208075] = 
	{
		id = 208075,
		eventType = "use_point",
		eventArg = "16743",
		endInvoke = "208891",
	},
	[208891] = 
	{
		id = 208891,
		eventType = "walk",
		eventArg = "16743",
		endInvoke = "208890",
	},
	[208890] = 
	{
		id = 208890,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208076",
	},
	[208076] = 
	{
		id = 208076,
		eventType = "serial",
		eventArg = "208233/208077",
		endInvoke = "",
	},
	[208077] = 
	{
		id = 208077,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208078/205346",
	},
	[208078] = 
	{
		id = 208078,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205346] = 
	{
		id = 205346,
		eventType = "walk",
		eventArg = "10236",
		endInvoke = "208027",
	},
	[208027] = 
	{
		id = 208027,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208028/205347",
	},
	[208028] = 
	{
		id = 208028,
		eventType = "select_free_point",
		eventArg = "17724/17725/17726/17727",
		endInvoke = "208030/208031/208032/208033/205347",
	},
	[208030] = 
	{
		id = 208030,
		eventType = "use_point",
		eventArg = "17724",
		endInvoke = "208889",
	},
	[208889] = 
	{
		id = 208889,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208888",
	},
	[208888] = 
	{
		id = 208888,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208034",
	},
	[208031] = 
	{
		id = 208031,
		eventType = "use_point",
		eventArg = "17725",
		endInvoke = "208887",
	},
	[208887] = 
	{
		id = 208887,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208886",
	},
	[208886] = 
	{
		id = 208886,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208035",
	},
	[208032] = 
	{
		id = 208032,
		eventType = "use_point",
		eventArg = "17726",
		endInvoke = "208885",
	},
	[208885] = 
	{
		id = 208885,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208884",
	},
	[208884] = 
	{
		id = 208884,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208036",
	},
	[208033] = 
	{
		id = 208033,
		eventType = "use_point",
		eventArg = "17727",
		endInvoke = "208883",
	},
	[208883] = 
	{
		id = 208883,
		eventType = "walk",
		eventArg = "16749",
		endInvoke = "208882",
	},
	[208882] = 
	{
		id = 208882,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000130/208037",
	},
	[208034] = 
	{
		id = 208034,
		eventType = "serial",
		eventArg = "s_17724/10050/208967/s_16749/w_10236/208040",
		endInvoke = "",
	},
	[208035] = 
	{
		id = 208035,
		eventType = "serial",
		eventArg = "s_17725/10051/208967/s_16749/w_10236/208040",
		endInvoke = "",
	},
	[208036] = 
	{
		id = 208036,
		eventType = "serial",
		eventArg = "s_17726/208999/208967/s_16749/w_10236/208040",
		endInvoke = "",
	},
	[208037] = 
	{
		id = 208037,
		eventType = "serial",
		eventArg = "s_17727/208998/208967/s_16749/w_10236/208040",
		endInvoke = "",
	},
	[208040] = 
	{
		id = 208040,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208041/205347",
	},
	[208041] = 
	{
		id = 208041,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205347] = 
	{
		id = 205347,
		eventType = "walk",
		eventArg = "10235",
		endInvoke = "205348",
	},
	[205348] = 
	{
		id = 205348,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205349/205351",
	},
	[205349] = 
	{
		id = 205349,
		eventType = "walk",
		eventArg = "16808",
		endInvoke = "205350",
	},
	[205350] = 
	{
		id = 205350,
		eventType = "walk",
		eventArg = "16807",
		endInvoke = "205353",
	},
	[205351] = 
	{
		id = 205351,
		eventType = "walk",
		eventArg = "16663",
		endInvoke = "205352",
	},
	[205352] = 
	{
		id = 205352,
		eventType = "walk",
		eventArg = "16662",
		endInvoke = "205353",
	},
	[205353] = 
	{
		id = 205353,
		eventType = "walk",
		eventArg = "13630",
		endInvoke = "208169",
	},
	[208169] = 
	{
		id = 208169,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208170/205354",
	},
	[208170] = 
	{
		id = 208170,
		eventType = "select_free_point",
		eventArg = "17170",
		endInvoke = "208172/205354",
	},
	[208171] = 
	{
		id = 208171,
		eventType = "animation",
		eventArg = "Scrutinize/10",
		endInvoke = "",
	},
	[208172] = 
	{
		id = 208172,
		eventType = "use_point",
		eventArg = "17170",
		endInvoke = "208881",
	},
	[208881] = 
	{
		id = 208881,
		eventType = "walk",
		eventArg = "17170",
		endInvoke = "208880",
	},
	[208880] = 
	{
		id = 208880,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208173",
	},
	[208173] = 
	{
		id = 208173,
		eventType = "serial",
		eventArg = "208171/w_13630/208174",
		endInvoke = "",
	},
	[208174] = 
	{
		id = 208174,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208175/205354",
	},
	[208175] = 
	{
		id = 208175,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205354] = 
	{
		id = 205354,
		eventType = "walk",
		eventArg = "13735",
		endInvoke = "205355",
	},
	[205355] = 
	{
		id = 205355,
		eventType = "walk",
		eventArg = "13876",
		endInvoke = "208176",
	},
	[208176] = 
	{
		id = 208176,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208177/205356",
	},
	[208177] = 
	{
		id = 208177,
		eventType = "select_free_point",
		eventArg = "17169/16747",
		endInvoke = "208179/208180/205356",
	},
	[208179] = 
	{
		id = 208179,
		eventType = "use_point",
		eventArg = "17169",
		endInvoke = "208181",
	},
	[208878] = 
	{
		id = 208878,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208181",
	},
	[208180] = 
	{
		id = 208180,
		eventType = "use_point",
		eventArg = "16747",
		endInvoke = "208182",
	},
	[208876] = 
	{
		id = 208876,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000129/208182",
	},
	[208181] = 
	{
		id = 208181,
		eventType = "serial",
		eventArg = "s_17169/10052/208208/s_13876/208183",
		endInvoke = "",
	},
	[208182] = 
	{
		id = 208182,
		eventType = "serial",
		eventArg = "s_16747/10052/208208/s_13876/208183",
		endInvoke = "",
	},
	[208183] = 
	{
		id = 208183,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208184/205356",
	},
	[208184] = 
	{
		id = 208184,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205356] = 
	{
		id = 205356,
		eventType = "walk",
		eventArg = "13823",
		endInvoke = "205357",
	},
	[205357] = 
	{
		id = 205357,
		eventType = "walk",
		eventArg = "13634",
		endInvoke = "205358",
	},
	[205358] = 
	{
		id = 205358,
		eventType = "walk",
		eventArg = "14019",
		endInvoke = "205359",
	},
	[205359] = 
	{
		id = 205359,
		eventType = "walk",
		eventArg = "14160",
		endInvoke = "205360",
	},
	[205360] = 
	{
		id = 205360,
		eventType = "walk",
		eventArg = "14158",
		endInvoke = "205361",
	},
	[205361] = 
	{
		id = 205361,
		eventType = "walk",
		eventArg = "14159",
		endInvoke = "205362",
	},
	[205362] = 
	{
		id = 205362,
		eventType = "walk",
		eventArg = "14157",
		endInvoke = "205363",
	},
	[205363] = 
	{
		id = 205363,
		eventType = "walk",
		eventArg = "14374",
		endInvoke = "205364",
	},
	[205364] = 
	{
		id = 205364,
		eventType = "walk",
		eventArg = "14515",
		endInvoke = "208192",
	},
	[208192] = 
	{
		id = 208192,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "208193/205365",
	},
	[208193] = 
	{
		id = 208193,
		eventType = "select_free_point",
		eventArg = "14138",
		endInvoke = "208195/205365",
	},
	[208195] = 
	{
		id = 208195,
		eventType = "use_point",
		eventArg = "14138",
		endInvoke = "208875",
	},
	[208875] = 
	{
		id = 208875,
		eventType = "walk",
		eventArg = "14138",
		endInvoke = "208874",
	},
	[208874] = 
	{
		id = 208874,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "1000127/208196",
	},
	[208196] = 
	{
		id = 208196,
		eventType = "serial",
		eventArg = "10052/208233/w_13988/208197",
		endInvoke = "",
	},
	[208197] = 
	{
		id = 208197,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "208198/205372",
	},
	[208198] = 
	{
		id = 208198,
		eventType = "free_point",
		eventArg = "",
		endInvoke = "",
	},
	[205365] = 
	{
		id = 205365,
		eventType = "walk",
		eventArg = "14513",
		endInvoke = "205366",
	},
	[205366] = 
	{
		id = 205366,
		eventType = "walk",
		eventArg = "14514",
		endInvoke = "205367",
	},
	[205367] = 
	{
		id = 205367,
		eventType = "walk",
		eventArg = "14512",
		endInvoke = "205368",
	},
	[205368] = 
	{
		id = 205368,
		eventType = "walk",
		eventArg = "14445",
		endInvoke = "205369",
	},
	[205369] = 
	{
		id = 205369,
		eventType = "walk",
		eventArg = "13802",
		endInvoke = "205370",
	},
	[205370] = 
	{
		id = 205370,
		eventType = "walk",
		eventArg = "13989",
		endInvoke = "205371",
	},
	[205371] = 
	{
		id = 205371,
		eventType = "walk",
		eventArg = "13988",
		endInvoke = "205372",
	},
	[205372] = 
	{
		id = 205372,
		eventType = "walk",
		eventArg = "13987",
		endInvoke = "205373",
	},
	[205373] = 
	{
		id = 205373,
		eventType = "walk",
		eventArg = "13986",
		endInvoke = "205374",
	},
	[205374] = 
	{
		id = 205374,
		eventType = "walk",
		eventArg = "16802",
		endInvoke = "205375",
	},
	[205375] = 
	{
		id = 205375,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206181/205207",
	},
	[206181] = 
	{
		id = 206181,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206182/205206",
	},
	[206182] = 
	{
		id = 206182,
		eventType = "select_free_point",
		eventArg = "17738",
		endInvoke = "206183/205206",
	},
	[206183] = 
	{
		id = 206183,
		eventType = "use_point",
		eventArg = "17738",
		endInvoke = "206184",
	},
	[206184] = 
	{
		id = 206184,
		eventType = "walk",
		eventArg = "17738",
		endInvoke = "206185",
	},
	[206185] = 
	{
		id = 206185,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206186",
	},
	[206186] = 
	{
		id = 206186,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205206",
	},
	[205376] = 
	{
		id = 205376,
		eventType = "walk",
		eventArg = "17015",
		endInvoke = "205377",
	},
	[205377] = 
	{
		id = 205377,
		eventType = "walk",
		eventArg = "16604",
		endInvoke = "205378",
	},
	[205378] = 
	{
		id = 205378,
		eventType = "walk",
		eventArg = "13618",
		endInvoke = "205379",
	},
	[205379] = 
	{
		id = 205379,
		eventType = "walk",
		eventArg = "13602",
		endInvoke = "205380",
	},
	[205380] = 
	{
		id = 205380,
		eventType = "walk",
		eventArg = "13729",
		endInvoke = "205386",
	},
	[205381] = 
	{
		id = 205381,
		eventType = "walk",
		eventArg = "17017",
		endInvoke = "205382",
	},
	[205382] = 
	{
		id = 205382,
		eventType = "walk",
		eventArg = "16679",
		endInvoke = "205383",
	},
	[205383] = 
	{
		id = 205383,
		eventType = "walk",
		eventArg = "14252",
		endInvoke = "205384",
	},
	[205384] = 
	{
		id = 205384,
		eventType = "walk",
		eventArg = "13600",
		endInvoke = "205385",
	},
	[205385] = 
	{
		id = 205385,
		eventType = "walk",
		eventArg = "13598",
		endInvoke = "205386",
	},
	[205386] = 
	{
		id = 205386,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "205387/205393/205399/205405",
	},
	[205387] = 
	{
		id = 205387,
		eventType = "walk",
		eventArg = "10001",
		endInvoke = "205388",
	},
	[205388] = 
	{
		id = 205388,
		eventType = "walk",
		eventArg = "10004",
		endInvoke = "205389",
	},
	[205389] = 
	{
		id = 205389,
		eventType = "walk",
		eventArg = "10007",
		endInvoke = "205390",
	},
	[205390] = 
	{
		id = 205390,
		eventType = "walk",
		eventArg = "17428",
		endInvoke = "205391",
	},
	[205391] = 
	{
		id = 205391,
		eventType = "walk",
		eventArg = "10024",
		endInvoke = "205392",
	},
	[205392] = 
	{
		id = 205392,
		eventType = "walk",
		eventArg = "10026",
		endInvoke = "205308",
	},
	[205393] = 
	{
		id = 205393,
		eventType = "walk",
		eventArg = "10008",
		endInvoke = "205394",
	},
	[205394] = 
	{
		id = 205394,
		eventType = "walk",
		eventArg = "10011",
		endInvoke = "205395",
	},
	[205395] = 
	{
		id = 205395,
		eventType = "walk",
		eventArg = "10014",
		endInvoke = "205396",
	},
	[205396] = 
	{
		id = 205396,
		eventType = "walk",
		eventArg = "17429",
		endInvoke = "205397",
	},
	[205397] = 
	{
		id = 205397,
		eventType = "walk",
		eventArg = "10044",
		endInvoke = "205398",
	},
	[205398] = 
	{
		id = 205398,
		eventType = "walk",
		eventArg = "10046",
		endInvoke = "205318",
	},
	[205399] = 
	{
		id = 205399,
		eventType = "walk",
		eventArg = "10016",
		endInvoke = "205400",
	},
	[205400] = 
	{
		id = 205400,
		eventType = "walk",
		eventArg = "10019",
		endInvoke = "205401",
	},
	[205401] = 
	{
		id = 205401,
		eventType = "walk",
		eventArg = "10022",
		endInvoke = "205402",
	},
	[205402] = 
	{
		id = 205402,
		eventType = "walk",
		eventArg = "17430",
		endInvoke = "205403",
	},
	[205403] = 
	{
		id = 205403,
		eventType = "walk",
		eventArg = "10068",
		endInvoke = "205404",
	},
	[205404] = 
	{
		id = 205404,
		eventType = "walk",
		eventArg = "10070",
		endInvoke = "205328",
	},
	[205405] = 
	{
		id = 205405,
		eventType = "walk",
		eventArg = "10036",
		endInvoke = "205406",
	},
	[205406] = 
	{
		id = 205406,
		eventType = "walk",
		eventArg = "10039",
		endInvoke = "205407",
	},
	[205407] = 
	{
		id = 205407,
		eventType = "walk",
		eventArg = "10042",
		endInvoke = "205408",
	},
	[205408] = 
	{
		id = 205408,
		eventType = "walk",
		eventArg = "17431",
		endInvoke = "205409",
	},
	[205409] = 
	{
		id = 205409,
		eventType = "walk",
		eventArg = "10103",
		endInvoke = "205410",
	},
	[205410] = 
	{
		id = 205410,
		eventType = "walk",
		eventArg = "10104",
		endInvoke = "205338",
	},
	[205411] = 
	{
		id = 205411,
		eventType = "walk",
		eventArg = "14213",
		endInvoke = "205412",
	},
	[205412] = 
	{
		id = 205412,
		eventType = "walk",
		eventArg = "14214",
		endInvoke = "205413",
	},
	[205413] = 
	{
		id = 205413,
		eventType = "walk",
		eventArg = "13992",
		endInvoke = "205414",
	},
	[205414] = 
	{
		id = 205414,
		eventType = "walk",
		eventArg = "13996",
		endInvoke = "205415",
	},
	[205415] = 
	{
		id = 205415,
		eventType = "walk",
		eventArg = "13934",
		endInvoke = "205416",
	},
	[205416] = 
	{
		id = 205416,
		eventType = "walk",
		eventArg = "17162",
		endInvoke = "205025",
	},
	[205417] = 
	{
		id = 205417,
		eventType = "walk",
		eventArg = "13872",
		endInvoke = "205418",
	},
	[205418] = 
	{
		id = 205418,
		eventType = "walk",
		eventArg = "16892",
		endInvoke = "205419",
	},
	[205419] = 
	{
		id = 205419,
		eventType = "walk",
		eventArg = "16395",
		endInvoke = "205420",
	},
	[205420] = 
	{
		id = 205420,
		eventType = "walk",
		eventArg = "17176",
		endInvoke = "205421",
	},
	[205421] = 
	{
		id = 205421,
		eventType = "walk",
		eventArg = "16674",
		endInvoke = "206133",
	},
	[206133] = 
	{
		id = 206133,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206134/205422",
	},
	[206134] = 
	{
		id = 206134,
		eventType = "select_free_point",
		eventArg = "17783",
		endInvoke = "206135/205422",
	},
	[206135] = 
	{
		id = 206135,
		eventType = "use_point",
		eventArg = "17783",
		endInvoke = "206136",
	},
	[206136] = 
	{
		id = 206136,
		eventType = "walk",
		eventArg = "17783",
		endInvoke = "206137",
	},
	[206137] = 
	{
		id = 206137,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206138",
	},
	[206138] = 
	{
		id = 206138,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205422",
	},
	[205422] = 
	{
		id = 205422,
		eventType = "walk",
		eventArg = "17099",
		endInvoke = "205434",
	},
	[205423] = 
	{
		id = 205423,
		eventType = "walk",
		eventArg = "13730",
		endInvoke = "205424",
	},
	[205424] = 
	{
		id = 205424,
		eventType = "walk",
		eventArg = "16963",
		endInvoke = "205425",
	},
	[205425] = 
	{
		id = 205425,
		eventType = "walk",
		eventArg = "16606",
		endInvoke = "205426",
	},
	[205426] = 
	{
		id = 205426,
		eventType = "walk",
		eventArg = "16675",
		endInvoke = "206121",
	},
	[206121] = 
	{
		id = 206121,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206122/205427",
	},
	[206122] = 
	{
		id = 206122,
		eventType = "select_free_point",
		eventArg = "17779",
		endInvoke = "206123/205427",
	},
	[206123] = 
	{
		id = 206123,
		eventType = "use_point",
		eventArg = "17779",
		endInvoke = "206124",
	},
	[206124] = 
	{
		id = 206124,
		eventType = "walk",
		eventArg = "17779",
		endInvoke = "206125",
	},
	[206125] = 
	{
		id = 206125,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206126",
	},
	[206126] = 
	{
		id = 206126,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205427",
	},
	[205427] = 
	{
		id = 205427,
		eventType = "walk",
		eventArg = "16323",
		endInvoke = "205446",
	},
	[205428] = 
	{
		id = 205428,
		eventType = "walk",
		eventArg = "16676",
		endInvoke = "205429",
	},
	[205429] = 
	{
		id = 205429,
		eventType = "walk",
		eventArg = "17174",
		endInvoke = "205430",
	},
	[205430] = 
	{
		id = 205430,
		eventType = "walk",
		eventArg = "16324",
		endInvoke = "205431",
	},
	[205431] = 
	{
		id = 205431,
		eventType = "walk",
		eventArg = "17034",
		endInvoke = "205432",
	},
	[205432] = 
	{
		id = 205432,
		eventType = "walk",
		eventArg = "13801",
		endInvoke = "205433",
	},
	[205433] = 
	{
		id = 205433,
		eventType = "walk",
		eventArg = "13665",
		endInvoke = "205376",
	},
	[205434] = 
	{
		id = 205434,
		eventType = "walk",
		eventArg = "17101",
		endInvoke = "205435",
	},
	[205435] = 
	{
		id = 205435,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206145/205441",
	},
	[206145] = 
	{
		id = 206145,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206146/205440",
	},
	[206146] = 
	{
		id = 206146,
		eventType = "select_free_point",
		eventArg = "17780",
		endInvoke = "206147/205440",
	},
	[206147] = 
	{
		id = 206147,
		eventType = "use_point",
		eventArg = "17780",
		endInvoke = "206148",
	},
	[206148] = 
	{
		id = 206148,
		eventType = "walk",
		eventArg = "17780",
		endInvoke = "206149",
	},
	[206149] = 
	{
		id = 206149,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206150",
	},
	[206150] = 
	{
		id = 206150,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205440",
	},
	[205436] = 
	{
		id = 205436,
		eventType = "walk",
		eventArg = "17032",
		endInvoke = "205437",
	},
	[205437] = 
	{
		id = 205437,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205477/205489",
	},
	[205438] = 
	{
		id = 205438,
		eventType = "walk",
		eventArg = "17098",
		endInvoke = "205439",
	},
	[205439] = 
	{
		id = 205439,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206139/205436",
	},
	[206139] = 
	{
		id = 206139,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206140/205428",
	},
	[206140] = 
	{
		id = 206140,
		eventType = "select_free_point",
		eventArg = "17782",
		endInvoke = "206141/205428",
	},
	[206141] = 
	{
		id = 206141,
		eventType = "use_point",
		eventArg = "17782",
		endInvoke = "206142",
	},
	[206142] = 
	{
		id = 206142,
		eventType = "walk",
		eventArg = "17782",
		endInvoke = "206143",
	},
	[206143] = 
	{
		id = 206143,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206144",
	},
	[206144] = 
	{
		id = 206144,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205428",
	},
	[205440] = 
	{
		id = 205440,
		eventType = "walk",
		eventArg = "16178",
		endInvoke = "205442",
	},
	[205441] = 
	{
		id = 205441,
		eventType = "walk",
		eventArg = "16885",
		endInvoke = "204000",
	},
	[205442] = 
	{
		id = 205442,
		eventType = "walk",
		eventArg = "16746",
		endInvoke = "205443",
	},
	[205443] = 
	{
		id = 205443,
		eventType = "walk",
		eventArg = "16462",
		endInvoke = "204000",
	},
	[205444] = 
	{
		id = 205444,
		eventType = "walk",
		eventArg = "16819",
		endInvoke = "204000",
	},
	[205445] = 
	{
		id = 205445,
		eventType = "walk",
		eventArg = "17100",
		endInvoke = "205438",
	},
	[205446] = 
	{
		id = 205446,
		eventType = "walk",
		eventArg = "16322",
		endInvoke = "205447",
	},
	[205447] = 
	{
		id = 205447,
		eventType = "walk",
		eventArg = "16534",
		endInvoke = "204000",
	},
	[205448] = 
	{
		id = 205448,
		eventType = "walk",
		eventArg = "16465",
		endInvoke = "205449",
	},
	[205449] = 
	{
		id = 205449,
		eventType = "walk",
		eventArg = "16182",
		endInvoke = "205450",
	},
	[205450] = 
	{
		id = 205450,
		eventType = "walk",
		eventArg = "16464",
		endInvoke = "205451",
	},
	[205451] = 
	{
		id = 205451,
		eventType = "walk",
		eventArg = "16608",
		endInvoke = "205452",
	},
	[205452] = 
	{
		id = 205452,
		eventType = "random",
		eventArg = "16/32",
		endInvoke = "205458/206097",
	},
	[206097] = 
	{
		id = 206097,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206098/205460",
	},
	[206098] = 
	{
		id = 206098,
		eventType = "select_free_point",
		eventArg = "17777",
		endInvoke = "206099/205460",
	},
	[206099] = 
	{
		id = 206099,
		eventType = "use_point",
		eventArg = "17777",
		endInvoke = "206100",
	},
	[206100] = 
	{
		id = 206100,
		eventType = "walk",
		eventArg = "17777",
		endInvoke = "206101",
	},
	[206101] = 
	{
		id = 206101,
		eventType = "animation",
		eventArg = "Idle/2",
		endInvoke = "206102",
	},
	[206102] = 
	{
		id = 206102,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205460",
	},
	[205453] = 
	{
		id = 205453,
		eventType = "walk",
		eventArg = "16677",
		endInvoke = "205454",
	},
	[205454] = 
	{
		id = 205454,
		eventType = "walk",
		eventArg = "16535",
		endInvoke = "205455",
	},
	[205455] = 
	{
		id = 205455,
		eventType = "walk",
		eventArg = "17105",
		endInvoke = "205456",
	},
	[205456] = 
	{
		id = 205456,
		eventType = "walk",
		eventArg = "13659",
		endInvoke = "206127",
	},
	[206127] = 
	{
		id = 206127,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206128/205457",
	},
	[206128] = 
	{
		id = 206128,
		eventType = "select_free_point",
		eventArg = "17787",
		endInvoke = "206129/205457",
	},
	[206129] = 
	{
		id = 206129,
		eventType = "use_point",
		eventArg = "17787",
		endInvoke = "206130",
	},
	[206130] = 
	{
		id = 206130,
		eventType = "walk",
		eventArg = "17787",
		endInvoke = "206131",
	},
	[206131] = 
	{
		id = 206131,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206132",
	},
	[206132] = 
	{
		id = 206132,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205457",
	},
	[205457] = 
	{
		id = 205457,
		eventType = "walk",
		eventArg = "13807",
		endInvoke = "205381",
	},
	[205458] = 
	{
		id = 205458,
		eventType = "walk",
		eventArg = "14255",
		endInvoke = "205459",
	},
	[205459] = 
	{
		id = 205459,
		eventType = "walk",
		eventArg = "17096",
		endInvoke = "204000",
	},
	[205460] = 
	{
		id = 205460,
		eventType = "walk",
		eventArg = "17166",
		endInvoke = "205467",
	},
	[205461] = 
	{
		id = 205461,
		eventType = "walk",
		eventArg = "16536",
		endInvoke = "205462",
	},
	[205462] = 
	{
		id = 205462,
		eventType = "walk",
		eventArg = "16253",
		endInvoke = "205463",
	},
	[205463] = 
	{
		id = 205463,
		eventType = "walk",
		eventArg = "16323",
		endInvoke = "205446",
	},
	[205464] = 
	{
		id = 205464,
		eventType = "walk",
		eventArg = "17718",
		endInvoke = "205465",
	},
	[205465] = 
	{
		id = 205465,
		eventType = "walk",
		eventArg = "17722",
		endInvoke = "205499",
	},
	[205466] = 
	{
		id = 205466,
		eventType = "walk",
		eventArg = "16607",
		endInvoke = "205461",
	},
	[205467] = 
	{
		id = 205467,
		eventType = "walk",
		eventArg = "16884",
		endInvoke = "205468",
	},
	[205468] = 
	{
		id = 205468,
		eventType = "random",
		eventArg = "16/32",
		endInvoke = "205469/206085",
	},
	[206085] = 
	{
		id = 206085,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206086/205472",
	},
	[206086] = 
	{
		id = 206086,
		eventType = "select_free_point",
		eventArg = "17775",
		endInvoke = "206087/205472",
	},
	[206087] = 
	{
		id = 206087,
		eventType = "use_point",
		eventArg = "17775",
		endInvoke = "206088",
	},
	[206088] = 
	{
		id = 206088,
		eventType = "walk",
		eventArg = "17775",
		endInvoke = "206089",
	},
	[206089] = 
	{
		id = 206089,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206090",
	},
	[206090] = 
	{
		id = 206090,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205472",
	},
	[205469] = 
	{
		id = 205469,
		eventType = "walk",
		eventArg = "17722",
		endInvoke = "205499",
	},
	[205470] = 
	{
		id = 205470,
		eventType = "walk",
		eventArg = "17167",
		endInvoke = "205471",
	},
	[205471] = 
	{
		id = 205471,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205464/206091",
	},
	[206091] = 
	{
		id = 206091,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206092/205466",
	},
	[206092] = 
	{
		id = 206092,
		eventType = "select_free_point",
		eventArg = "17776",
		endInvoke = "206093/205466",
	},
	[206093] = 
	{
		id = 206093,
		eventType = "use_point",
		eventArg = "17776",
		endInvoke = "206094",
	},
	[206094] = 
	{
		id = 206094,
		eventType = "walk",
		eventArg = "17776",
		endInvoke = "206095",
	},
	[206095] = 
	{
		id = 206095,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206096",
	},
	[206096] = 
	{
		id = 206096,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205466",
	},
	[205472] = 
	{
		id = 205472,
		eventType = "walk",
		eventArg = "17095",
		endInvoke = "205473",
	},
	[205473] = 
	{
		id = 205473,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205474/205475",
	},
	[205474] = 
	{
		id = 205474,
		eventType = "walk",
		eventArg = "16953",
		endInvoke = "205495",
	},
	[205475] = 
	{
		id = 205475,
		eventType = "walk",
		eventArg = "17158",
		endInvoke = "205036",
	},
	[205476] = 
	{
		id = 205476,
		eventType = "walk",
		eventArg = "16955",
		endInvoke = "205470",
	},
	[205477] = 
	{
		id = 205477,
		eventType = "walk",
		eventArg = "17032",
		endInvoke = "205478",
	},
	[205478] = 
	{
		id = 205478,
		eventType = "walk",
		eventArg = "16603",
		endInvoke = "205479",
	},
	[205479] = 
	{
		id = 205479,
		eventType = "walk",
		eventArg = "16602",
		endInvoke = "205480",
	},
	[205480] = 
	{
		id = 205480,
		eventType = "walk",
		eventArg = "16601",
		endInvoke = "205481",
	},
	[205481] = 
	{
		id = 205481,
		eventType = "walk",
		eventArg = "18032",
		endInvoke = "205482",
	},
	[206157] = 
	{
		id = 206157,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206158/205482",
	},
	[206158] = 
	{
		id = 206158,
		eventType = "select_free_point",
		eventArg = "17788",
		endInvoke = "206159/205482",
	},
	[206159] = 
	{
		id = 206159,
		eventType = "use_point",
		eventArg = "17788",
		endInvoke = "206160",
	},
	[206160] = 
	{
		id = 206160,
		eventType = "walk",
		eventArg = "17788",
		endInvoke = "206161",
	},
	[206161] = 
	{
		id = 206161,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206162",
	},
	[206162] = 
	{
		id = 206162,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205482",
	},
	[205482] = 
	{
		id = 205482,
		eventType = "walk",
		eventArg = "18034",
		endInvoke = "205483",
	},
	[205483] = 
	{
		id = 205483,
		eventType = "walk",
		eventArg = "18036",
		endInvoke = "205484",
	},
	[205484] = 
	{
		id = 205484,
		eventType = "walk",
		eventArg = "16252",
		endInvoke = "205485",
	},
	[205485] = 
	{
		id = 205485,
		eventType = "walk",
		eventArg = "16251",
		endInvoke = "206163",
	},
	[206163] = 
	{
		id = 206163,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "206164/205486",
	},
	[206164] = 
	{
		id = 206164,
		eventType = "select_free_point",
		eventArg = "17790",
		endInvoke = "206165/205486",
	},
	[206165] = 
	{
		id = 206165,
		eventType = "use_point",
		eventArg = "17790",
		endInvoke = "206166",
	},
	[206166] = 
	{
		id = 206166,
		eventType = "walk",
		eventArg = "17790",
		endInvoke = "206167",
	},
	[206167] = 
	{
		id = 206167,
		eventType = "animation_random",
		eventArg = "Idle/StandGlance;16/16;2",
		endInvoke = "206168",
	},
	[206168] = 
	{
		id = 206168,
		eventType = "multiple",
		eventArg = "",
		endInvoke = "206031/205486",
	},
	[205486] = 
	{
		id = 205486,
		eventType = "walk",
		eventArg = "16883",
		endInvoke = "205487",
	},
	[205487] = 
	{
		id = 205487,
		eventType = "walk",
		eventArg = "14184",
		endInvoke = "205488",
	},
	[205488] = 
	{
		id = 205488,
		eventType = "walk",
		eventArg = "13771",
		endInvoke = "204000",
	},
	[205489] = 
	{
		id = 205489,
		eventType = "walk",
		eventArg = "17102",
		endInvoke = "205490",
	},
	[205490] = 
	{
		id = 205490,
		eventType = "walk",
		eventArg = "16458",
		endInvoke = "205491",
	},
	[205491] = 
	{
		id = 205491,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205492/205493",
	},
	[205492] = 
	{
		id = 205492,
		eventType = "walk",
		eventArg = "17377",
		endInvoke = "205494",
	},
	[205493] = 
	{
		id = 205493,
		eventType = "walk",
		eventArg = "17379",
		endInvoke = "205494",
	},
	[205494] = 
	{
		id = 205494,
		eventType = "random",
		eventArg = "16/16/16/16",
		endInvoke = "205308/205318/205328/205338",
	},
	[205495] = 
	{
		id = 205495,
		eventType = "walk",
		eventArg = "16949",
		endInvoke = "204000",
	},
	[205496] = 
	{
		id = 205496,
		eventType = "walk",
		eventArg = "17723",
		endInvoke = "205497",
	},
	[205497] = 
	{
		id = 205497,
		eventType = "random",
		eventArg = "16/16",
		endInvoke = "205500/205501",
	},
	[205498] = 
	{
		id = 205498,
		eventType = "walk",
		eventArg = "17024",
		endInvoke = "206079",
	},
	[205499] = 
	{
		id = 205499,
		eventType = "walk",
		eventArg = "16953",
		endInvoke = "205495",
	},
	[205500] = 
	{
		id = 205500,
		eventType = "walk",
		eventArg = "16955",
		endInvoke = "205470",
	},
	[205501] = 
	{
		id = 205501,
		eventType = "walk",
		eventArg = "17166",
		endInvoke = "205467",
	},
	[203016] = 
	{
		id = 203016,
		eventType = "check_self_int",
		eventArg = "changwaiqiuyuan=1",
		endInvoke = "203017/989999",
	},
	[203017] = 
	{
		id = 203017,
		eventType = "random",
		eventArg = "16/16/16/16/16/16/16/16",
		endInvoke = "203018/203019/203020/203021/203022/203023/203024/203025",
	},
	[203018] = 
	{
		id = 203018,
		eventType = "walkdiret",
		eventArg = "10051",
		endInvoke = "205231",
	},
	[203019] = 
	{
		id = 203019,
		eventType = "walkdiret",
		eventArg = "10075",
		endInvoke = "205243",
	},
	[203020] = 
	{
		id = 203020,
		eventType = "walkdiret",
		eventArg = "10109",
		endInvoke = "205255",
	},
	[203021] = 
	{
		id = 203021,
		eventType = "walkdiret",
		eventArg = "10144",
		endInvoke = "205267",
	},
	[203022] = 
	{
		id = 203022,
		eventType = "walkdiret",
		eventArg = "10033",
		endInvoke = "205314",
	},
	[203023] = 
	{
		id = 203023,
		eventType = "walkdiret",
		eventArg = "10063",
		endInvoke = "205324",
	},
	[203024] = 
	{
		id = 203024,
		eventType = "walkdiret",
		eventArg = "10087",
		endInvoke = "205334",
	},
	[203025] = 
	{
		id = 203025,
		eventType = "walkdiret",
		eventArg = "10121",
		endInvoke = "205344",
	},
}