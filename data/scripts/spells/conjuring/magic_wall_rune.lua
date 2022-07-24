local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 3180, 3)
end

spell:name("Magic Wall Rune")
spell:words("adevo grav tera")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(32)
spell:mana(750)
spell:soul(5)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
