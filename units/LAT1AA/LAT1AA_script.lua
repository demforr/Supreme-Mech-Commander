#****************************************************************************
#**
#**  File     :  /units/UEB2204/UEB2204_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Flak Cannon Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TAALinkedRailgun = import('/lua/terranweapons.lua').TAALinkedRailgun

LAT1AA = Class(TStructureUnit) {
    Weapons = {
        AAGun = Class(TAALinkedRailgun) {},
    },
}

TypeClass = LAT1AA