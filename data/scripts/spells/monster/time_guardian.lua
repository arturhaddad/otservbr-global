local monsters = {
	[1] = {pos = Position(32980, 31664, 13)},
	[2] = {pos = Position(32975, 31664, 13)}
}

local function functionBack(position, oldpos)
	local guardian = Tile(position):getTopCreature()
	local bool, diference, health = false, 0, 0
	local spectators, spectator = Game.getSpectators(Position(32977, 31662, 14), false, false, 15, 15, 15, 15)
	for v = 1, #spectators do
		spectator = spectators[v]
		if spectator:getName():lower() == 'the freezing time guardian' or spectator:getName():lower() == 'the blazing time guardian' then
			oldpos = spectator:getPosition()
			bool = true
		end
	end
	if not bool then
		guardian:remove()
		return true
	end
	local specs, spec = Game.getSpectators(Position(32977, 31662, 14), false, false, 15, 15, 15, 15)
	for i = 1, #specs do
		spec = specs[i]
		if spec:isMonster() and spec:getName():lower() == 'the freezing time guardian' or spec:getName():lower() == 'the blazing time guardian' then
			spec:teleportTo(position)
			health = spec:getHealth()
			diference = guardian:getHealth() - health
		end
	end
	guardian:addHealth( - diference)
	guardian:teleportTo(oldpos)
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local index = math.random(1, 2)
	local monsterPos = creature:getPosition()
	if monsterPos.z ~= 14 then
		return true
	end
	local position = monsters[index].pos
	local form = Tile(position):getTopCreature()
	creature:teleportTo(position)
	local diference, health = 0, 0
	health = creature:getHealth()
	diference = form:getHealth() - health
	form:addHealth( - diference)
	form:teleportTo(monsterPos)
	addEvent(functionBack, 30 * 1000, position, monsterPos)
	return true
end

spell:name("time guardian")
spell:words("###440")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(false)
spell:register()