	local combat = Combat()
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

	local condition = Condition(CONDITION_PARALYZE)
	condition:setParameter(CONDITION_PARAM_TICKS, 2000)
	condition:setFormula(-0.25, 0, -0.35, 0)
	combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("kraknaknork paralyze")
spell:words("###176")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(false)
spell:register()