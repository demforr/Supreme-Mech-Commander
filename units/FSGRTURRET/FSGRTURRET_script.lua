

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon

FSGRTURRET = Class(TStructureUnit) {
    Weapons = {
		GR = Class(ADFCannonQuantumWeapon) {},
    },
}

TypeClass = FSGRTURRET