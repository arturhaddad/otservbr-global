local generator = {
	[1] = {pos = Position(33708, 32042, 15)},
	[2] = {pos = Position(33714, 32042, 15)},
	[3] = {pos = Position(33708, 32051, 15)},
	[4] = {pos = Position(33714, 32051, 15)}
}
local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local rand = math.random(1, 4)
	local generators = generator[rand]
	local monster = Game.createMonster('glooth-generator', generators.pos, true, true)
	monster:say('THE GLOOTH GENERATOR CHARGES UP FOR A LETHAL EXPLOSION!', TALKTYPE_MONSTER_YELL)
	return
end

spell:name("generator")
spell:words("###427")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(false)
spell:register()