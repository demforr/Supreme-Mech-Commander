

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon

CLANERPPCTURRET = Class(TStructureUnit) {
    Weapons = {
    	CERPPC = Class(ADFCannonOblivionWeapon) {},
    },
}

TypeClass = CLANERPPCTURRET