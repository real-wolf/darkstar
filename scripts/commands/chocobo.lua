-----------------------------------------------------------------
-- func: chocobo
-- auth: real_wolf
-- desc: calls the chocobo if player meets requirement
-----------------------------------------------------------------
 
require("scripts/globals/status");
 
cmdprops =
{
    permission = 0,
    parameters = "s"
};
 
function onTrigger(player)
        if (player:canUseChocobo() ==0) then
                player:addStatusEffect(EFFECT_CHOCOBO, 1, 0, 99999); -- (effect, yes maybe, does something i think, time for effect)
                player:messagePublic(280, player, EFFECT_CHOCOBO, EFFECT_CHOCOBO);
        elseif (player:canUseChocobo() ==316) then
                player:messageBasic(316);
        else
                player:PrintToPlayer( "You require a chocobo license!" );
        end
end;
