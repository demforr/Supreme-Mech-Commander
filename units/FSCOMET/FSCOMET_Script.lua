#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local TIFCarpetBombWeapon = import('/lua/terranweapons.lua').TIFCarpetBombWeapon


FSCOMET = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        SRM = Class(TSAMLauncher) {},
        Bomb = Class(TIFCarpetBombWeapon) {},
    },
}

TypeClass = FSCOMET