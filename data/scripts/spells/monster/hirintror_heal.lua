local condition = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
condition:setParameter(CONDITION_PARAM_SUBID, 88888)
condition:setParameter(CONDITION_PARAM_TICKS, 15 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 0.01)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 15 * 60 * 1000)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	if creature:getHealth() < creature:getMaxHealth() * 0.2 and not creature:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, 88888) then
		creature:addCondition(condition)
		creature:addHealth(1000)
	else
		return false
	end
return true
end

spell:name("hirintror heal")
spell:words("###341")
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(false)
spell:register()