	local combat = Combat()
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
	combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_THROWINGKNIFE)

	local condition = Condition(CONDITION_PARALYZE)
	condition:setParameter(CONDITION_PARAM_TICKS, 10000)
	condition:setFormula(-0.75, 0, -0.90, 0)
	combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("ghazbaran paralyze")
spell:words("###145")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(false)
spell:register()