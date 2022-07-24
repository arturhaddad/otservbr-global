local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3203, 1)
end

spell:name("Animate Dead Rune")
spell:words("adana mort")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(27)
spell:mana(600)
spell:soul(5)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
