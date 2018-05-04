#****************************************************************************
#**
#**  File     :  /cdimage/units/FSAS7D/FSAS7D_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Atlas AS7-D Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSAS7D = Class(TWalkingLandUnit) {
    Weapons = {
        AC20 = Class(TDFGaussCannonWeapon) {},     
        ML = Class(ADFLaserLightWeapon) {},
        SRM = Class(TSAMLauncher) {},
        LRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSAS7D