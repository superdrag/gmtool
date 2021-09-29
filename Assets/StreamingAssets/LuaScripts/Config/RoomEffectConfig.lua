LuaConfig["RoomEffectConfig"] = 
{
	["cleanliness"] = 
	{
		id = "cleanliness",
		Good = {
			[1]=0.1,
			[2]="60-70",
			[3]=4,
			[4]="5-5",
		},
		Normal = {
			[1]=0.2,
			[2]="50-60",
			[3]=4,
			[4]="5-5",
		},
		Bad = {
			[1]=0.3,
			[2]="40-50",
			[3]=4,
			[4]="5-5",
		},
		Worst = {
			[1]=0.4,
			[2]="30-40",
			[3]=4,
			[4]="5-5",
		},
		icon = "BasicFunctions/RoomBuff0002",
		name = "Roomvalue_name_cleanliness",
		desc = "Roomvalue_desc_cleanliness",
		order = 1,
	},
	["safety"] = 
	{
		id = "safety",
		Good = {
			[1]=1,
			[2]="50-60",
			[3]=2,
		},
		Normal = {
			[1]=1,
			[2]="40-50",
			[3]=2,
		},
		Bad = {
			[1]=1,
			[2]="30-40",
			[3]=2,
		},
		Worst = {
			[1]=1,
			[2]="20-30",
			[3]=2,
		},
		icon = "BasicFunctions/RoomBuff0001",
		name = "Roomvalue_name_safety",
		desc = "Roomvalue_desc_safety",
		order = 2,
	},
	["upkeep"] = 
	{
		id = "upkeep",
		Good = {
			[1]=0.001,
		},
		Normal = {
			[1]=0.002,
		},
		Bad = {
			[1]=0.003,
		},
		Worst = {
			[1]=0.004,
		},
		icon = "BasicFunctions/RoomBuff0004",
		name = "Roomvalue_name_upkeep",
		desc = "Roomvalue_desc_upkeep",
		order = 3,
	},
	["SQI"] = 
	{
		id = "SQI",
		Good = {
			[1]=0.8,
		},
		Normal = {
			[1]=1,
		},
		Bad = {
			[1]=1.2,
		},
		Worst = {
			[1]=1.4,
		},
		icon = "BasicFunctions/RoomBuff0003",
		name = "Roomvalue_name_SQI",
		desc = "Roomvalue_desc_SQI",
		order = 4,
	},
	["ardor"] = 
	{
		id = "ardor",
		Good = {
			[1]=5,
		},
		Normal = {
			[1]=3,
		},
		Bad = {
			[1]=1,
		},
		Worst = {
			[1]=0,
		},
		icon = "BasicFunctions/RoomBuff0005",
		name = "Roomvalue_name_ardor",
		desc = "Roomvalue_desc_ardor",
		order = 5,
	},
	["consume"] = 
	{
		id = "consume",
		Good = {
			[1]=0,
		},
		Normal = {
			[1]=0.15,
		},
		Bad = {
			[1]=0.4,
		},
		Worst = {
			[1]=0.6,
		},
		icon = "BasicFunctions/RoomBuff0006",
		name = "Roomvalue_name_consume",
		desc = "Roomvalue_desc_consume",
		order = 6,
	},
	["gross"] = 
	{
		id = "gross",
		Good = {
			[1]=1.1,
		},
		Normal = {
			[1]=1,
		},
		Bad = {
			[1]=0.7,
		},
		Worst = {
			[1]=0.6,
		},
		icon = "",
		name = "",
		desc = "",
		order = 0,
	},
}