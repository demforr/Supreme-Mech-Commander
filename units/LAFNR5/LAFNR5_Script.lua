#****************************************************************************
#**
#**  Summary  :  Lyran Fafnir FNR-5
#**
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAFNR5 = Class(TWalkingLandUnit) {
    Weapons = {
    	HGR = Class(ADFCannonQuantumWeapon) {},
        MP = Class(CDFParticleCannonWeapon) {},
        ERML1 = Class(ADFLaserLightWeapon) {},
        ERML2 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAFNR5