#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local TIFCarpetBombWeapon = import('/lua/terranweapons.lua').TIFCarpetBombWeapon


FSMETEOR = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
    	AC10 = Class(TDFGaussCannonWeapon) {},
        SRM1 = Class(TSAMLauncher) {},
        SRM2 = Class(TSAMLauncher) {},
        Bomb = Class(TIFCarpetBombWeapon) {},
    },
}

TypeClass = FSMETEOR