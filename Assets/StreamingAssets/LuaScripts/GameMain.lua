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

function GetShopName( payId )
	local cfg = GetConfig("PurchaseConfig",payId)
	if cfg == nil then
		return ""
	end
	return cfg.name_display
end

function GetGuideCfg()
	local tb = {}
	for k,v in pairs(LuaConfig["GuideConfig"]) do
		if v.triggerType ~= "" then
			tb[k] = v
		end		
	end

	local count = 0
	for key, value in pairs(tb) do
		count = count + 1
	end
	print('GetGuideCfg',count)
	--DEBUG_LOG("GetGuideCfg %s",PrintTable(tb)) 
	return tb;
end

function GetTaskCfg()
	local tb = {}
	for k,v in pairs(LuaConfig["TaskConfig"]) do
		tb[k] = v.task
	end
	local count = 0
	for key, value in pairs(tb) do
		count = count + 1
	end
	print('GetTaskCfg',count)
	return tb;
end

function GetVipCfg()
	local tb = {}
	for k,v in pairs(LuaConfig["VpcardConfig"]) do
		tb[v.vpcard] = v.vpcard
	end
	local count = 0
	for key, value in pairs(tb) do
		count = count + 1
	end
	print('VpcardConfig',count)
	return tb;
end

function Test1()
	print('-------------------call lua func test1()--------------')

	-- local DOtween = CS.DG.Tweening.DOTween
	-- Logger:Log("DOtween............................",DOtween)
	--output_log("test init.........:",1,3)
end

local function init()

	math.randomseed(tostring(os.time()):reverse():sub(1, 6))

end

init()

--]]


print('GameMain.lua load finish')