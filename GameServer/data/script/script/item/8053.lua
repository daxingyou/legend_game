--寒冬审判4级
function OnUseItemEvent_8053(uid,thisid)
    if s_deleteItemByThisID(uid,thisid,1,"寒冬审判4级") ~= VALUE_OK then
        return VALUE_FAIL
    end

	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,5038) >= 4 then
        s_addItem(uid,10000,0,337,0,"1-1","寒冬审判4级")
    else 
        s_addskill(SCENE_ENTRY_PLAYER,uid,5038,4)
    end
    return VALUE_OK
end
