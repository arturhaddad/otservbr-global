local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3155, 3)
end

spell:name("Sudden Death Rune")
spell:words("adori gran mort")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(45)
spell:mana(985)
spell:soul(5)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
