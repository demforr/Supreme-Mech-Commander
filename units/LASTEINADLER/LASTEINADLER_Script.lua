
local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local TIFCarpetBombWeapon = import('/lua/terranweapons.lua').TIFCarpetBombWeapon


LASTEINADLER = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        SRM = Class(TSAMLauncher) {},
        LRM1 = Class(TSAMLauncher) {},
        LRM2 = Class(TSAMLauncher) {},
        Bomb = Class(TIFCarpetBombWeapon) {},

    },
}

TypeClass = LASTEINADLER