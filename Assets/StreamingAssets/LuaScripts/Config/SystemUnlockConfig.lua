LuaConfig["SystemUnlockConfig"] = 
{
	[1001] = 
	{
		id = 1001,
		mark = "竞技场",
		functions = "Arena",
		condition = {
			[1]="vpcard_count",
			[2]=7815,
		},
		hide = false,
		tips = "vpcard达到890后解锁",
	},
	[1002] = 
	{
		id = 1002,
		mark = "菜单",
		functions = "Menu",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1003] = 
	{
		id = 1003,
		mark = "设置",
		functions = "Setting",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1004] = 
	{
		id = 1004,
		mark = "游客图鉴",
		functions = "Tourist_Illustration",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1005] = 
	{
		id = 1005,
		mark = "邮箱",
		functions = "Mail",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1006] = 
	{
		id = 1006,
		mark = "卡牌图鉴",
		functions = "Card_Illustration",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = true,
		tips = "",
	},
	[1007] = 
	{
		id = 1007,
		mark = "挑战赛",
		functions = "Ladder",
		condition = {
			[1]="first_win_game",
			[2]=1000003,
		},
		hide = false,
		tips = "开发中，敬请期待",
	},
	[1008] = 
	{
		id = 1008,
		mark = "人山人海",
		functions = "Multiples",
		condition = {
			[1]="facility_upgrade",
			[2]="109003*5",
		},
		hide = true,
		tips = "",
	},
	[1009] = 
	{
		id = 1009,
		mark = "管理",
		functions = "Management",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = true,
		tips = "",
	},
	[1010] = 
	{
		id = 1010,
		mark = "喇叭",
		functions = "Speaker",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = true,
		tips = "",
	},
	[1011] = 
	{
		id = 1011,
		mark = "加速",
		functions = "Speed",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = true,
		tips = "",
	},
	[1012] = 
	{
		id = 1012,
		mark = "主线任务",
		functions = "Main_Task",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1013] = 
	{
		id = 1013,
		mark = "每日任务",
		functions = "Daily_Task",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1014] = 
	{
		id = 1014,
		mark = "背包",
		functions = "Backpack",
		condition = {
			[1]="guide_end",
			[2]=15010,
		},
		hide = true,
		tips = "",
	},
	[1015] = 
	{
		id = 1015,
		mark = "赞助",
		functions = "Sponsor",
		condition = {
			[1]="vpcard_count",
			[2]=7815,
		},
		hide = true,
		tips = "",
	},
	[1016] = 
	{
		id = 1016,
		mark = "员工",
		functions = "Staff",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = true,
		tips = "",
	},
	[1017] = 
	{
		id = 1017,
		mark = "内购商城",
		functions = "Shop",
		condition = {
			[1]="facility_upgrade",
			[2]="101007*1",
		},
		hide = false,
		tips = "",
	},
	[1018] = 
	{
		id = 1018,
		mark = "抽卡",
		functions = "Chest",
		condition = {
			[1]="vpcard_count",
			[2]=120,
		},
		hide = true,
		tips = "",
	},
	[1019] = 
	{
		id = 1019,
		mark = "球员放置",
		functions = "Employee",
		condition = {
			[1]="guide_end",
			[2]=31010,
		},
		hide = true,
		tips = "",
	},
	[1020] = 
	{
		id = 1020,
		mark = "游客生成",
		functions = "Tourist_Born",
		condition = {
			[1]="guide_end",
			[2]=10010,
		},
		hide = false,
		tips = "",
	},
	[1021] = 
	{
		id = 1021,
		mark = "击球游戏解锁",
		functions = "HitGame",
		condition = {
			[1]="guide_end",
			[2]=65010,
		},
		hide = false,
		tips = "",
	},
	[1022] = 
	{
		id = 1022,
		mark = "房间值管理",
		functions = "RoomValue",
		condition = {
			[1]="guide_end",
			[2]=31010,
		},
		hide = true,
		tips = "",
	},
	[1023] = 
	{
		id = 1023,
		mark = "竞技场自动战斗",
		functions = "Auto_Battle",
		condition = {
			[1]="first_win_game",
			[2]=100003,
		},
		hide = false,
		tips = "通关选拔赛后解锁",
	},
	[1024] = 
	{
		id = 1024,
		mark = "七日登录",
		functions = "Sign",
		condition = {
			[1]="guide_end",
			[2]=20010,
		},
		hide = true,
		tips = "",
	},
}