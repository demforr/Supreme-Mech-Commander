#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Commando COM -2D
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LACOM2D = Class(TWalkingLandUnit) {
    Weapons = {
    	SRM01 = Class(TSAMLauncher) {},
    	SRM02 = Class(TSAMLauncher) {},
        ML01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LACOM2D