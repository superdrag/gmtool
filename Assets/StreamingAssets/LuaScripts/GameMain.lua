print('GameMain.lua load start')--游戏开始主入口

GameMain = {}
GameMain.__index = GameMain
local this = GameMain

require "common/config"	   
require "gfunc"	         

-- local pb = require "pb"

-- local protoClient = CS.LuaReg.CAppRunPath().."Assets/LuaScripts/Proto/Client.pb"
-- local protoCommon = CS.LuaReg.CAppRunPath().."Assets/LuaScripts/Proto/Common.pb"

-- assert(pb.loadfile(protoClient))
-- assert(pb.loadfile(protoCommon))

function GetConfig(name,key)
    local cfg = LuaConfig[name]
    if cfg == nil then
        DEBUG_ERR("GetConfig no find name:"..name)
        return nil
    end

    if cfg[key] == nil then
        DEBUG_ERR("GetConfig no find key name:"..name.." key:"..key)
        return nil
    end   

    return cfg[key];
end

function GetTaskInfo()
	local tb = {}
	for k,v in pairs(LuaConfig["TaskConfig"]) do
		table.insert( tb, k )		
	end
	table.sort( tb )
	DEBUG_LOG("11111111111111 %s",PrintTable(tb)) 
	return tb;
end

function Test1()
	print('call lua func test1()')

	-- local DOtween = CS.DG.Tweening.DOTween
	-- Logger:Log("DOtween............................",DOtween)
	--output_log("test init.........:",1,3)
end

local function init()

	math.randomseed(tostring(os.time()):reverse():sub(1, 6))

	Test1()

	GetTaskInfo()
end

init()

--]]


print('GameMain.lua load finish')