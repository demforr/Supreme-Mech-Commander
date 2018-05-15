#****************************************************************************
#**
#**  File     :  /cdimage/units/LARVN3L/LARVN3L_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Raven RVN-3L
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LARVN3L = Class(TWalkingLandUnit) {
    Weapons = {
        ML01 = Class(ADFLaserLightWeapon) {},
        ML02 = Class(ADFLaserLightWeapon) {},
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = LARVN3L