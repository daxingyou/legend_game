--一级酒(小)
function OnUseItemEvent_10158(uid,thisid)
--	local curwinenum = s_getVar(uid,300,1)
--	if curwinenum > 5 then
--        s_sysInfo(uid,"今日品酒次数达到最大上限",ChatPos_Tips)
--		return
--	end
	local usemap = s_getUserMapId(uid)
	if usemap ~= 224 then
        s_sysInfo(uid,"此地图不能使用",ChatPos_Tips)
		return
	end
--	local bufflevel = {}
	s_trace("bbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
	local wine = WineDataBase.query(1)
--	local index = 0
--    s_setVar(uid,300,2,s_getVar(uid,300,2)+wine.winBuffExp)
--    local curvalue = s_getVar(uid,300,2)

--	for _,v in ipairs(WineBuffDataBase) do
--		if type(v) == "table" and curvalue >= v.needWinBuffExp then
--			index = index + 1
--		end
--	end
--	local getWineBuff = WineBuffDataBase.query(index)

    if s_deleteItemByThisID(uid,thisid,1,"删除酒瓶") ~= VALUE_OK then
	s_trace("aaaaaaaaaaa..")
        return VALUE_FAIL
    end

	s_trace("aaaaaaaaaaa.."..wine.buffid)

--	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,wine.buffid) ~= 0 then
--       s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,wine.buffid,wine.lasttime)
--    else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,wine.buffid,1,wine.lasttime,0)
--    end
	--计算战斗力
--	if getWineBuff ~= nil then
--		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,getWineBuff.buffid) ~= 0 then
--		   s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,getWineBuff.buffid,getWineBuff.lasttime)
--		else
--			s_addbuff(SCENE_ENTRY_PLAYER,uid,getWineBuff.buffid,1,getWineBuff.lasttime,0)
--		end
--	end

--	s_setVar(uid,300,1,s_getVar(uid,300,1) + 1)
--	s_setVar(uid,300,3,s_getVar(uid,300,3) + 1)

	--发送打坐状态
--	s_sendWineState(uid,180,1)
    return VALUE_OK
end
