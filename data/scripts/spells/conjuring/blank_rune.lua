local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 3147, 1)
end

spell:name("Blank Rune")
spell:words("adori blank")
spell:group("support")
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:cooldown(0 * 2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(20)
spell:mana(50)
spell:soul(1)
spell:needLearn(false)
spell:register()