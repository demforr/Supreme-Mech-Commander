#****************************************************************************
#**
#**  File     :  /units/UEB2204/UEB2204_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Large Laser Turret
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon

LAT1LLTURRET = Class(TStructureUnit) {
    
    Weapons = {
        LL = Class(CDFLaserHeavyWeapon) {},
    },
}

TypeClass = LAT1LLTURRET