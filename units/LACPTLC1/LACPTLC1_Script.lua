#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Catapult CPTL-C1
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LACPTLC1 = Class(TWalkingLandUnit) {
    Weapons = {
    	LRM01 = Class(TSAMLauncher) {},
        ML01 = Class(ADFLaserLightWeapon) {},
        ML02 = Class(ADFLaserLightWeapon) {},
        ML03 = Class(ADFLaserLightWeapon) {},
        ML04 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LACPTLC1