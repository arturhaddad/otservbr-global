local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3188, 3)
end

spell:name("Fire Field Rune")
spell:words("adevo grav flam")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(15)
spell:mana(240)
spell:soul(1)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
