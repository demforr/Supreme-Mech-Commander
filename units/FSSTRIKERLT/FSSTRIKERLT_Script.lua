#****************************************************************************
#**
#**  File     :  /cdimage/units/FSALACORN/FSALACORN_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Alacorn MK VI Tank Script (based on UEL0202)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSSTRIKERLT = Class(TLandUnit) {
    Weapons = {
        LRM = Class(TSAMLauncher) {},
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSSTRIKERLT