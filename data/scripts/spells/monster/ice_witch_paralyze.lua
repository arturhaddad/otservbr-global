	local combat = Combat()
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
	combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)

	local condition = Condition(CONDITION_PARALYZE)
	condition:setParameter(CONDITION_PARAM_TICKS, 20000)
	condition:setFormula(-0.55, 0, -0.75, 0)
	combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("ice witch paralyze")
spell:words("###299")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(false)
spell:register()