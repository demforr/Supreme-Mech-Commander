
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSPIKE = Class(TLandUnit) {
    Weapons = {
        AC2 = Class(TDFGaussCannonWeapon) {},
        SRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSPIKE