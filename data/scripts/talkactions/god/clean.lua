local clean = TalkAction("/clean")

function clean.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_NORMAL then
		return true
	end

	local itemCount = cleanMap()
	if itemCount ~= 0 then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, "Cleaned " .. itemCount .. " item" .. (itemCount > 1 and "s" or "") .. " from the map.")
	end
	return false
end

clean:separator(" ")
clean:register()
