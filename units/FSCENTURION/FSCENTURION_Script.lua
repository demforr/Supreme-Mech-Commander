#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Centurion
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

FSCENTURION = Class(TWalkingLandUnit) {
    Weapons = {
    	AC10 = Class(TDFGaussCannonWeapon) {},
    	LRM = Class(TSAMLauncher) {},
        ML01 = Class(ADFLaserLightWeapon) {},
        ML02 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = FSCENTURION