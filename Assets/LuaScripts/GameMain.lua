print('GameMain.lua load start')--游戏开始主入口

GameMain = {}
GameMain.__index = GameMain
local this = GameMain

--require "Game.config"	      

local luaLoad = require "Common/LuaLoad"

local pb = require "pb"

local protoClient = CS.LuaReg.CAppRunPath().."Assets/LuaScripts/Proto/Client.pb"
local protoCommon = CS.LuaReg.CAppRunPath().."Assets/LuaScripts/Proto/Common.pb"

assert(pb.loadfile(protoClient))
assert(pb.loadfile(protoCommon))


function app_init_over()--c# 初始化完毕
	SceneMgr:SwitchScene(SceneMgr.Login);
end

function lua_msg_recv(msgid, bytes)--接收消息并处理
	MsgHandle:on_msg_recv(msgid, bytes)
end

function lua_net_close()--与服务器断开
	CommonCtl:OnNetClose()
end

function heartbreak_tick()

	if luaLoad:check_luafile_moditime() == true then
		luaLoad:reload_all_module()
		GameConfig:loadAllGameConfig();
		MsgHandle:reload_msg_func();
	end
end

function Test1()
	print('call lua func test1()')

	local DOtween = CS.DG.Tweening.DOTween
	Logger:Log("DOtween............................",DOtween)
	--output_log("test init.........:",1,3)
end

local function init()

	math.randomseed(tostring(os.time()):reverse():sub(1, 6))

	luaLoad:init_lua_file();

	MsgHandle:regedit_msg_func();---注册相关收发消息事件

	UIMgr:Init()

	GameConfig:loadAllGameConfig();


	CS.LuaReg.AddTimer(nil, 1,1,0, heartbreak_tick);
	Test1()
end

init()

print('GameMain.lua load finish')