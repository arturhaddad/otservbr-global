local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3166, 4)
end

spell:name("Energy Wall Rune")
spell:words("adevo mas grav vis")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(41)
spell:mana(1000)
spell:soul(5)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
