local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 25759, 30, CONST_ME_MAGIC_BLUE)
end

spell:group("support")
spell:id(191)
spell:name("Conjure Royal Star")
spell:words("exevo gran con grav")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(150)
spell:mana(1000)
spell:soul(0)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:needLearn(false)
spell:register()