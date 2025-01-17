local spell = Spell("instant")

function spell.onCastSpell(player, variant)
	player:CreateFamiliarSpell()
	return true
end

spell:group("support")
spell:id(197)
spell:name("Druid familiar")
spell:words("utevo gran res dru")
spell:level(200)
spell:mana(3000)
spell:cooldown(0 * 30 * 60 * 1000)
spell:groupCooldown(0 * 2 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer;true", "master sorcerer;true", "knight;true", "elite knight;true", "druid;true", "elder druid;true", "paladin;true", "royal paladin;true")
spell:register()
