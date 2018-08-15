#****************************************************************************

local TSeaUnit = import('/lua/terranunits.lua').TSeaUnit
local WeaponFile = import('/lua/terranweapons.lua')
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSMONITOR = Class(TSeaUnit) {
    DestructionTicks = 200,

    Weapons = {
        AC20 = Class(TDFGaussCannonWeapon) {},
        L_SRM = Class(TSAMLauncher) {},
        R_SRM = Class(TSAMLauncher) {},
        B_SRM = Class(TSAMLauncher) {},
    },

}

TypeClass = FSMONITOR