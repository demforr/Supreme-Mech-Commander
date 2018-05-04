#****************************************************************************
#**
#**  File     :  /cdimage/units/FSSARACEN/FSSARACEN_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Saracen Hover Tank Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSSARACEN = Class(TLandUnit) {
    Weapons = {
        LRM = Class(TSAMLauncher) {},
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSSARACEN