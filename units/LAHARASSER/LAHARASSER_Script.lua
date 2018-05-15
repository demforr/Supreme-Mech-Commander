#****************************************************************************
#**
#**  File     :  /cdimage/units/LAPEGASUS/LAPEGASUS_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Harasser Missile Platform Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LAHARASSER = Class(TLandUnit) {
    Weapons = {
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = LAHARASSER