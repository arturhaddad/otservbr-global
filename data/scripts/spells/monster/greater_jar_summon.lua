local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_POFF)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

local maxsummons = 1

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local summoncount = creature:getSummons()
	if #summoncount < 1 then
		mid = Game.createMonster("Elder Mummy", creature:getPosition())
    		if not mid then
				return
			end
		mid:setMaster(creature)
	end
	return combat:execute(creature, var)
end

spell:name("greater jar summon")
spell:words("###397")
spell:blockWalls(true)
spell:needLearn(false)
spell:register()