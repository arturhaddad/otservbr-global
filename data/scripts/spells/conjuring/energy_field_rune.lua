local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3164, 3)
end

spell:name("Energy Field Rune")
spell:words("adevo grav vis")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(18)
spell:mana(320)
spell:soul(2)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
