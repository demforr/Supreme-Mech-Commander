local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAPPR5T = Class(TWalkingLandUnit) {
    Weapons = {
    	LRM01 = Class(TSAMLauncher) {},
    	LRM02 = Class(TSAMLauncher) {},
    	LRM03 = Class(TSAMLauncher) {},
        SL01 = Class(ADFLaserLightWeapon) {},
        SL02 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAPPR5T