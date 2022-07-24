dofile('data/modules/scripts/blessings/blessings.lua')

local blessStatus = TalkAction("/bless")

function blessStatus.onSay(player, words, param)

	Blessings.sendBlessStatus(player)
	return false
end

blessStatus:separator(" ")
blessStatus:register()
