#****************************************************************************
#**
#**  File     :  /cdimage/units/FSJR7D/FSJR7D_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Jenner JR7-D
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

FSJR7D = Class(TWalkingLandUnit) {
    Weapons = {
    	SRM01 = Class(TSAMLauncher) {},
        ML01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = FSJR7D