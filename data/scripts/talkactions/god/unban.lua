local unban = TalkAction("/unban")

function unban.onSay(player, words, param)

	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	local resultId = db.storeQuery("SELECT `account_id`, `lastip` FROM `players` WHERE `name` = " .. db.escapeString(param))
	if resultId == false then
		return false
	end

	db.asyncQuery("DELETE FROM `account_bans` WHERE `account_id` = " .. result.getNumber(resultId, "account_id"))
	db.asyncQuery("DELETE FROM `ip_bans` WHERE `ip` = " .. result.getNumber(resultId, "lastip"))
	result.free(resultId)
	player:sendTextMessage(MESSAGE_ADMINISTRADOR, param .. " has been unbanned.")
	return false
end

unban:separator(" ")
unban:register()
