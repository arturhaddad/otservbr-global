local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3173, 2)
end

spell:name("Poison Bomb Rune")
spell:words("adevo mas pox")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(25)
spell:mana(520)
spell:soul(2)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
