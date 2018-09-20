local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher


CLANWARHAWKPRIME = Class(TWalkingLandUnit) {
    Weapons = {
    	CERPPC = Class(ADFCannonOblivionWeapon) {},
    	CLRM = Class(TSAMLauncher) {},
    },
}

TypeClass = CLANWARHAWKPRIME
