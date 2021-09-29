LuaConfig["ActivityGiftConfig"] = 
{
	[71001] = 
	{
		id = 71001,
		name = "新手礼包",
		condition = {
			[1]={
			[1]="task:10030",
			[2]="task:10060",
			[3]="task:10100",
		},
		},
		user_layer = 0,
		type = "tiro",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=4001,
			[3]=30,
		},
			[2]={
			[1]="currency",
			[2]="TimeMachine",
			[3]=86400,
		},
			[3]={
			[1]="currency",
			[2]="diamond",
			[3]=300,
		},
			[4]={
			[1]="currency",
			[2]="leaflet2",
			[3]=5,
		},
		},
		price = 1,
	},
	[72001] = 
	{
		id = 72001,
		name = "联赛礼包",
		condition = {
			[1]={
			[1]="task:10030",
		},
		},
		user_layer = 0,
		type = "league",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=4002,
			[3]=30,
		},
			[2]={
			[1]="card",
			[2]=3002,
			[3]=60,
		},
			[3]={
			[1]="card",
			[2]=2002,
			[3]=100,
		},
			[4]={
			[1]="card",
			[2]=1002,
			[3]=200,
		},
			[5]={
			[1]="currency",
			[2]="TimeMachine",
			[3]=21600,
		},
			[6]={
			[1]="currency",
			[2]="diamond",
			[3]=100,
		},
		},
		price = 1,
	},
	[72002] = 
	{
		id = 72002,
		name = "联赛礼包",
		condition = {
			[1]={
			[1]="task:10030",
		},
		},
		user_layer = 1,
		type = "league",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=4003,
			[3]=60,
		},
			[2]={
			[1]="card",
			[2]=4004,
			[3]=60,
		},
			[3]={
			[1]="card",
			[2]=3001,
			[3]=150,
		},
			[4]={
			[1]="card",
			[2]=2001,
			[3]=300,
		},
			[5]={
			[1]="currency",
			[2]="TimeMachine",
			[3]=604800,
		},
			[6]={
			[1]="currency",
			[2]="diamond",
			[3]=3000,
		},
		},
		price = 5,
	},
	[73001] = 
	{
		id = 73001,
		name = "超值礼包",
		condition = {
			[1]={
			[1]="task:10035",
		},
		},
		user_layer = 0,
		type = "value",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=14001,
			[3]=1,
		},
			[2]={
			[1]="card",
			[2]=13001,
			[3]=1,
		},
			[3]={
			[1]="card",
			[2]=13002,
			[3]=1,
		},
			[4]={
			[1]="card",
			[2]=12001,
			[3]=1,
		},
			[5]={
			[1]="card",
			[2]=12002,
			[3]=1,
		},
			[6]={
			[1]="card",
			[2]=11001,
			[3]=1,
		},
		},
		price = 1,
	},
	[73002] = 
	{
		id = 73002,
		name = "超值礼包",
		condition = {
			[1]={
			[1]="task:10035",
		},
		},
		user_layer = 1,
		type = "value",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=14001,
			[3]=10,
		},
			[2]={
			[1]="card",
			[2]=13001,
			[3]=10,
		},
			[3]={
			[1]="card",
			[2]=13002,
			[3]=10,
		},
			[4]={
			[1]="card",
			[2]=12001,
			[3]=10,
		},
			[5]={
			[1]="card",
			[2]=12002,
			[3]=10,
		},
			[6]={
			[1]="card",
			[2]=11001,
			[3]=10,
		},
		},
		price = 10,
	},
	[73003] = 
	{
		id = 73003,
		name = "超值礼包",
		condition = {
			[1]={
			[1]="task:10035",
		},
		},
		user_layer = 2,
		type = "value",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="card",
			[2]=14001,
			[3]=60,
		},
			[2]={
			[1]="card",
			[2]=13001,
			[3]=60,
		},
			[3]={
			[1]="card",
			[2]=13002,
			[3]=60,
		},
			[4]={
			[1]="card",
			[2]=12001,
			[3]=60,
		},
			[5]={
			[1]="card",
			[2]=12002,
			[3]=60,
		},
			[6]={
			[1]="card",
			[2]=11001,
			[3]=60,
		},
		},
		price = 15,
	},
	[74001] = 
	{
		id = 74001,
		name = "超值特惠",
		condition = {
			[1]={
			[1]="task:10040",
		},
		},
		user_layer = 0,
		type = "hot",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="leaflet2",
			[3]=5,
		},
			[2]={
			[1]="currency",
			[2]="leaflet",
			[3]=10,
		},
			[3]={
			[1]="currency",
			[2]="TimeJump",
			[3]=1800,
		},
			[4]={
			[1]="currency",
			[2]="diamond",
			[3]=300,
		},
		},
		price = 1,
	},
	[74002] = 
	{
		id = 74002,
		name = "超值特惠",
		condition = {
			[1]={
			[1]="task:10040",
		},
		},
		user_layer = 1,
		type = "hot",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="leaflet3",
			[3]=10,
		},
			[2]={
			[1]="currency",
			[2]="leaflet3",
			[3]=20,
		},
			[3]={
			[1]="currency",
			[2]="Hamburger",
			[3]=5,
		},
			[4]={
			[1]="currency",
			[2]="TimeJump",
			[3]=86400,
		},
			[5]={
			[1]="currency",
			[2]="diamond",
			[3]=6000,
		},
		},
		price = 15,
	},
	[74003] = 
	{
		id = 74003,
		name = "超值特惠",
		condition = {
			[1]={
			[1]="task:10040",
		},
		},
		user_layer = 2,
		type = "hot",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="leaflet3",
			[3]=50,
		},
			[2]={
			[1]="currency",
			[2]="Hamburger",
			[3]=20,
		},
			[3]={
			[1]="currency",
			[2]="TimeJump",
			[3]=604800,
		},
			[4]={
			[1]="currency",
			[2]="diamond",
			[3]=10000,
		},
		},
		price = 20,
	},
	[75001] = 
	{
		id = 75001,
		name = "赛季礼包",
		condition = {
			[1]={
			[1]="season_start",
		},
		},
		user_layer = 0,
		type = "season",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="plastic",
			[3]=50,
		},
			[2]={
			[1]="currency",
			[2]="wood",
			[3]=50,
		},
			[3]={
			[1]="currency",
			[2]="iron",
			[3]=50,
		},
			[4]={
			[1]="currency",
			[2]="fabric",
			[3]=50,
		},
			[5]={
			[1]="currency",
			[2]="silica",
			[3]=50,
		},
			[6]={
			[1]="currency",
			[2]="leather",
			[3]=50,
		},
		},
		price = 1,
	},
	[75002] = 
	{
		id = 75002,
		name = "赛季礼包",
		condition = {
			[1]={
			[1]="season_start",
		},
		},
		user_layer = 1,
		type = "season",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="iron",
			[3]=100,
		},
			[2]={
			[1]="currency",
			[2]="fabric",
			[3]=100,
		},
			[3]={
			[1]="currency",
			[2]="silica",
			[3]=100,
		},
			[4]={
			[1]="currency",
			[2]="leather",
			[3]=100,
		},
			[5]={
			[1]="currency",
			[2]="nylon",
			[3]=100,
		},
			[6]={
			[1]="currency",
			[2]="resin",
			[3]=100,
		},
		},
		price = 10,
	},
	[75003] = 
	{
		id = 75003,
		name = "赛季礼包",
		condition = {
			[1]={
			[1]="season_start",
		},
		},
		user_layer = 2,
		type = "season",
		limit = 1,
		duration = 28800,
		repetitive = false,
		reward = {
			[1]={
			[1]="currency",
			[2]="silica",
			[3]=500,
		},
			[2]={
			[1]="currency",
			[2]="leather",
			[3]=500,
		},
			[3]={
			[1]="currency",
			[2]="nylon",
			[3]=500,
		},
			[4]={
			[1]="currency",
			[2]="resin",
			[3]=500,
		},
			[5]={
			[1]="currency",
			[2]="alloy",
			[3]=500,
		},
			[6]={
			[1]="currency",
			[2]="carbonfiber",
			[3]=500,
		},
		},
		price = 15,
	},
}