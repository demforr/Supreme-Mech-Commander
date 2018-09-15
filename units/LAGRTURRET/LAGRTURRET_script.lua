

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon

LAGRTURRET = Class(TStructureUnit) {
    Weapons = {
		GR = Class(ADFCannonQuantumWeapon) {},
    },
}

TypeClass = LAGRTURRET