#****************************************************************************
#**
#**  Summary  :  Lyran Alliance Stiletto STO-4A
#**
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LASTO4A = Class(TWalkingLandUnit) {
    Weapons = {
        LRM = Class(TSAMLauncher) {},
        SSRM = Class(TSAMLauncher) {},
    },
}

TypeClass = LASTO4A