local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(3147, 21351, 4)
end

spell:name("Light Stone Shower Rune")
spell:words("adori infir mas tera")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:level(1)
spell:mana(6)
spell:soul(3)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
