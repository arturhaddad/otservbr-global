local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3200, 6)
end

spell:name("Explosion Rune")
spell:words("adevo mas hur")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(31)
spell:mana(570)
spell:soul(4)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
