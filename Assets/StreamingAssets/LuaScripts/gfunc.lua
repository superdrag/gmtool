

-- local pb = require "pb"
-- local protoc = require "protoc"

-- assert( pb.loadfile("proto/common.pb") )
-- assert( pb.loadfile("proto/client.pb") )
-- assert( pb.loadfile("proto/server.pb") )
-- assert( pb.loadfile("proto/php.pb") )
-- assert( pb.loadfile("proto/LocalData.pb") )


function DEBUG_LOG(fmt,...)
    CS.LuaReg.Logger_Log(string.format(fmt, ...))
    --debug_log(string.format(fmt, ...)) 
end

function DEBUG_WARN(fmt,...)
    CS.LuaReg.Logger_Warn(string.format(fmt, ...))
end

function DEBUG_ERR(fmt,...)
    --COutput:instance():output_log_str(1,debug.traceback(),false);
    CS.LuaReg.Logger_Err(string.format(fmt, ...))
end

function ParseMsg(msgId, bytes)
	local msg = nil;

	if msgId == nil then
        DEBUG_ERR("ParseMsg msgid null")
        return nil
    end  
    
	if bytes == nil then
        return nil
    end      
      
    local pbName = ProtoDict[msgId]
    if pbName == nil then
        DEBUG_ERR("ParseMsg Reg Proto No Find msgid: "..msgId)
        return nil
    end
    
    --DEBUG_LOG("ParseMsg.................%d....%s",#bytes,bytes)

    msg = assert(pb.decode(pbName, bytes))	
	
	if msgId ~= MsgId.MSG_GT2CL_SOCKETHIT then
		DEBUG_LOG("lua recv msg <-- id:"..msgId.." data:"..PrintTable(msg))		
	end
	
	return msg
end

function PackMsg(msgId, pbData)
    if msgId == nil then
        DEBUG_ERR("PackMsg msgid null")
        return "", 0;
    end

    local data = ""
    local pbName = ProtoDict[msgId]

    if pbData == nil then
        return "",0
    end

    if pbData ~= nil and pbName == nil then
        DEBUG_ERR("PackMsg Reg Proto No Find msgid: "..msgId)
        return "",0
    end       

    data = assert(pb.encode(pbName, pbData))

    if msgId ~= MsgId.MSG_CL2GT_SOCKETHIT then
		DEBUG_LOG("lua send msg --> id:"..msgId.." data:"..PrintTable(pbData))
    end

    return data, #data;
end

function Byte2Proto(pbName,bytes)
	if bytes == nil then
        return nil
    end      

    local msg = assert(pb.decode(pbName, bytes))	
	
	return msg
end

function Proto2Byte(pbName,str)
	if str == nil then
        return nil
    end      

    local f = "return "..str;
    --DEBUG_LOG("xxxx %s",f);

    local func=assert(load(f)) 
    local bytes=assert(pb.encode(pbName,func()))

    DEBUG_LOG("Proto2Byte *** name:"..pbName.." bytes:"..(bytes))
    return bytes;
end


function PrintTable(node)
    -- if DEBUG_MODE() == false then
    --     return ""
    -- end

    if not node or type(node) ~= "table" then
        return tostring(node)
    end
    local depthBufferHelper = {}
    local function tab(amt)
        if not depthBufferHelper[amt] then
            local t = {}
            for i = 1, amt do
                table.insert(t,"\t")
            end
            depthBufferHelper[amt] = table.concat(t)
        end
        return depthBufferHelper[amt]
    end
    local bufferHelper = {}
    local function __P(_node,_depth,_buffer)
        bufferHelper[_node] = true
        table.insert(_buffer,tab(_depth-1))
        table.insert(_buffer," {\n")
        for k,v in pairs(_node)  do
            local output = {}
            table.insert(output,tab(_depth))
            if (type(k) == "number" or type(k) == "boolean") then
                table.insert(output,"[")
                table.insert(output,tostring(k))
                table.insert(output,"]")
            else
                --table.insert(output,"['")
                table.insert(output,tostring(k))
                --table.insert(output,"']")
            end

            if (type(v) == "number" or type(v) == "boolean") then
                table.insert(output," = ")
                table.insert(output,tostring(v))
                table.insert(output,",")
                table.insert(output,"\n")
            else
                if (type(v) ~= "table") then
                    table.insert(output," = '")
                    table.insert(output,tostring(v))
                    table.insert(output,"',\n")
                else
                    table.insert(output," = ")
                    table.insert(output,"\n")
                end
            end
            

            table.insert(_buffer,table.concat(output))
            if (type(v) == "table") then
                if bufferHelper[v] == nil then
                    __P(v,_depth + 1,_buffer)
                end
            end
        end
        table.insert(_buffer,tab(_depth-1))
        if _depth == 1 then
            table.insert(_buffer," }\n")     
        else
            table.insert(_buffer," },\n")   
        end              
        --print("_depth..............",_depth)   
    end

    local depth = 1
    local buffer = {}
    __P(node,depth,buffer)
    return table.concat(buffer)
end


function DumpTab(t, n)
    local str = ""
    if "table" ~= type(t) then
        return 0
    end
    n = n or 0
    local str_space = ""
    for i = 1, n do
        str_space = str_space.."  "
    end
    str = str .. str_space.."{\n"
    for k, v in pairs(t) do
        local str_k_v
        if(type(k)=="string")then
        str_k_v = str_space.."  "..tostring(k).." = "
        else
        str_k_v = str_space.."  ["..tostring(k).."] = "
        end
        if "table" == type(v) then
        str = str .. str_k_v .. "\n"
        str = str .. LocalData.dumpTab(v, n + 1)..",\n"
        else
        if(type(v)=="string")then
            str_k_v = str_k_v.."\""..tostring(v).."\""
        else
            str_k_v = str_k_v..tostring(v)
        end
        str = str .. str_k_v .. ",\n"
        end
    end
    str = str .. str_space.."}"
    return str
end


function Split(szFullString, szSeparator, tonum)
	tonum = tonum or false
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	if (szFullString == "") then
		return nSplitArray
	end
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		local _val = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		-- if tonum == true then
        --     --DEBUG_LOG("xxx........%s",_val)
		-- 	_val = tonumber(_val)
		-- end
		nSplitArray[nSplitIndex] = _val
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end

    if tonum == true then
        for i = 1, #nSplitArray, 1 do
            nSplitArray[i] = tonumber(nSplitArray[i])
        end
    end

	return nSplitArray
end

function List2Str(tb, symbol)
    if symbol == nil then
        symbol = ','
    end
	local s = "";
    for i = 1, #tb, 1 do
        s = s..tb[i]
        if i ~= #tb then
            s = s..symbol
        end
    end
	return s
end

function Dict2Str(tb, symbol)
    if symbol == nil then
        symbol = ','
    end
	local s = "";
	for k, v in pairs(tb) do
        if s ~= "" then
            s = s.."|"
        end   
        s = s..k..symbol..v 
	end
	return s
end

function Str2Dict(str, symbol, isNum)
    local dict = {}
    if symbol == nil then
        symbol = ','
    end
    local tb = Split(str,"|")
	for i = 1, #tb, 1 do
        local tb2 = Split(tb[i],symbol,isNum)
        dict[tb2[1]] = tb2[2]
    end
    return dict
end

function CopyObj(obj)
	local tab = {}
	for k, v in pairs(obj or {}) do
		if type(v) ~= "table" then
			tab[k] = v
		else
			tab[k] = copyObj(v)
		end
	end
	local mt = getmetatable(obj)
	if(mt)
	then
		mt = copyObj(mt)
		setmetatable(tab,mt)
	end
	return tab
end

function IsDayPass(timetv)
	local zero = GetDayZero()
	if timetv + 24*60*60 < zero then
		return true
	end
	return false;
end

-- function LoadJson(filename, cbfunc)
-- 	local jf = jsonfile()
	
-- 	if not jf:load_file(filename) then
-- 		output_err('load file fail:'..filename)
-- 		return
-- 	end
	
-- 	local nodesize = jf:get_node_size()
-- 	for i=0, nodesize-1 do
-- 		local str =	jf:get_str(i);
-- 		--print("str...........",str)
-- 		local node = {}
--         local _tb = util:split( str, '#')
--     	for key, var in ipairs(_tb) do
--     		local temp = util:split(var,'@')
--     		--print("tmp....",temp[1],temp[2])
--     		node[temp[1]] = temp[2]
--     	end
--     	cbfunc(node)	
-- 	end
-- end


function Table2Num(tb)
	local tmp = {}
	for k, v in pairs(tb) do
		table.insert(tmp, tonumber(v))
	end
	return tmp
end

function GetDis2Point(x1, y1, x2, y2)
    local nDistance2 = math.abs( (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
    return math.sqrt(nDistance2);
end

function Split2Table(s)
	local readTb = {}
	local argTb = Split(s, '|')
	for key, tb in ipairs( argTb or {}) do
		local tb_ = Split(tb, ',')
		local rTb = {}
		for i = 1, #tb_ do
			rTb[i] = tb_[i]
		end
		table.insert(readTb, rTb)
	end
	return readTb
end

function GetCurTime()
    return CTimeDate:instance():getCurTime()
end

function GetDayZero()
    return CTimeDate:instance():getDayZero()
end

function GetNextMonday()
    return CTimeDate:instance():getNextMonday()
end

function GetNextMonthDay()
    return CTimeDate:instance():getNextMonthDay()
end

function TBMerge( tDest, tSrc )
    for k, v in pairs( tSrc ) do
        tDest[k] = v
    end
end

function CircleRank(list,isPrint)
    local tb = {}
    local sum = 0

    for i = 1, #list, 1 do
        sum = sum + list[i][1]
        tb[i] = { sum - list[i][1] + 1 ,sum }
    end
    local ranNum = math.random(1, sum);

    
    if isPrint then
        DEBUG_WARN("###CircleRank.......ran:%d sum:%d",ranNum,sum)
        DEBUG_WARN("CircleRank.......LIST %s",PrintTable(list))
        DEBUG_WARN("CircleRank.......Circle %s",PrintTable(tb))
    end

    for i = 1, #tb, 1 do
        local min = tb[i][1]
        local max = tb[i][2]
        if ranNum >= min and ranNum <= max then
            return i
        end
    end

    return -1;
end

function ListDrawNum(list,num)
    if #list < num then
        return nil
    end

    local tb = {}

    for i = 1, num, 1 do
        local index = math.random(1, #list);
        table.insert( tb, list[index] )
        table.remove( list, index );
    end

    return tb;    
end