-----------------------------------------------------------------
-- func: wyvern
-- auth: real_wolf
-- desc: cheat to summon wyvern if you are a dragoon
-----------------------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/pets");

cmdprops =
{
    permission = 1,
    parameters = "is"
};

function onTrigger(player)
	if (player:getPet() ~= nil) then
 		player:messageBasic(MSGBASIC_ALREADY_HAS_A_PET) ;
	elseif (player:getMainJob() ==JOB_DRG) then
		player:spawnPet(PET_WYVERN);
	else
		player:messageBasic(MSGBASIC_UNABLE_TO_USE_JA);
	end
end;
