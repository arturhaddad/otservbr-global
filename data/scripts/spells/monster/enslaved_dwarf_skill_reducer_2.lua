local combat = {}

for i = 35, 75 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)

	local condition = Condition(CONDITION_ATTRIBUTES)
	condition:setParameter(CONDITION_PARAM_TICKS, 6000)
	condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, i)

	local area = createCombatArea(AREA_CIRCLE1X1)
	combat[i]:setArea(area)
	combat[i]:addCondition(condition)
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat[math.random(35, 75)]:execute(creature, var)
end

spell:name("enslaved dwarf skill reducer 2")
spell:words("###46")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(false)
spell:register()