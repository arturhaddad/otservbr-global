local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLCLOUDS)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)

local condition = Condition(CONDITION_CURSED)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)

condition:addDamage(1, 3000, -45)
condition:addDamage(1, 3000, -40)
condition:addDamage(1, 3000, -35)
condition:addDamage(1, 3000, -34)
condition:addDamage(2, 3000, -33)
condition:addDamage(2, 3000, -32)
condition:addDamage(2, 3000, -31)
condition:addDamage(2, 3000, -30)
condition:addDamage(3, 3000, -29)
condition:addDamage(3, 3000, -25)
condition:addDamage(3, 3000, -24)
condition:addDamage(4, 3000, -23)
condition:addDamage(4, 3000, -20)
condition:addDamage(5, 3000, -19)
condition:addDamage(5, 3000, -15)
condition:addDamage(6, 3000, -10)
condition:addDamage(10, 3000, -5)
combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(139)
spell:name("Curse")
spell:words("utori mort")
spell:level(75)
spell:mana(30)
spell:isAggressive(true)
spell:range(3)
spell:needTarget(true)
spell:blockWalls(true)
spell:cooldown(0 * 40 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:register()
