local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 1.403) + 8
	local max = (level / 5) + (maglevel * 2.203) + 13
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(87)
spell:name("Death Strike")
spell:words("exori mort")
spell:level(16)
spell:mana(20)
spell:isPremium(true)
spell:range(3)
spell:needCasterTargetOrDirection(true)
spell:blockWalls(true)
spell:cooldown(0 * 1 * 1000)
spell:groupCooldown(0 * 1 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:register()