#****************************************************************************
#**
#**  File     :  /cdimage/units/XEB2306/XEB2306_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio
#**
#**  Summary  :  Terran Light Gun Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TAALinkedRailgun = import('/lua/terranweapons.lua').TAALinkedRailgun

LAT2AA = Class(TStructureUnit) {
    Weapons = {
        RAC5 = Class(TAALinkedRailgun) {},
    },
}

TypeClass = LAT2AA
