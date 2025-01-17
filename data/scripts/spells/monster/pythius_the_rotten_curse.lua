local combat = {}

for i = 1, 1 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
	combat[i]:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

	local condition = Condition(CONDITION_CURSED)
	condition:setParameter(CONDITION_PARAM_DELAYED, 1)

	local damage = i
	condition:addDamage(1, 4000, -damage)
	for j = 1, 33 do
		damage = damage * 1.2
		condition:addDamage(1, 4000, -damage)
	end

	combat[i]:addCondition(condition)
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat[math.random(1, 1)]:execute(creature, var)
end

spell:name("pythius the rotten curse")
spell:words("###203")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(false)
spell:register()