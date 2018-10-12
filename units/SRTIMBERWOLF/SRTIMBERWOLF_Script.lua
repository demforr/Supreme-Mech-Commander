local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher


SRMADDOG = Class(TWalkingLandUnit) {
    Weapons = {
		CLRM = Class(TSAMLauncher) {},
    	CMPL = Class(CDFParticleCannonWeapon) {},
    	CLPL = Class(CDFParticleCannonWeapon) {},
    },
}

TypeClass = SRMADDOG