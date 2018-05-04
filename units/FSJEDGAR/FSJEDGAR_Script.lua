#****************************************************************************
#**
#**  File     :  /cdimage/units/FSJEDGAR/FSJEDGAR_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Saracen Hover Tank Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSJEDGAR = Class(TLandUnit) {
    Weapons = {
        ML = Class(ADFLaserLightWeapon) {},
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSJEDGAR