-----------------------------------------------------------------
-- func: chocobo
-- auth: real_wolf
-- desc: calls the chocobo if player meets requirement
-----------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player)
	if (player:canUseChocobo() ==0) then
		player:addStatusEffect(EFFECT_CHOCOBO, 1, 0, 99999); -- (effect, yes, something, time)
		player:messagePublic(EFFECT_ENSTONE_II, player, EFFECT_CHOCOBO, EFFECT_CHOCOBO);
	elseif (player:canUseChocobo() ==MSGBASIC_CANT_BE_USED_IN_AREA) then
		player:messageBasic(MSGBASIC_CANT_BE_USED_IN_AREA);
	elseif player:hasStatusEffect(EFFECT_CHOCOBO) then
		player:messageBasic(MSGBASIC_EFFECT_ALREADY_ACTIVE);
	else
		player:PrintToPlayer( "You require a chocobo license!" );
	end
end;
