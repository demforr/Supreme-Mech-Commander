local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon


SRTIMBERWOLF = Class(TWalkingLandUnit) {
    Weapons = {
		CLRM = Class(TSAMLauncher) {},
    	CERLL = Class(ADFLaserLightWeapon) {},
		CERML = Class(ADFLaserLightWeapon) {},
    	CMPL = Class(CDFParticleCannonWeapon) {},
    	MG1 = Class(TDFMachineGunWeapon) {},
    	MG2 = Class(TDFMachineGunWeapon) {},
    },
}

TypeClass = SRTIMBERWOLF