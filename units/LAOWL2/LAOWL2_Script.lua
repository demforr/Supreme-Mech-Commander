#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TIFCarpetBombWeapon = import('/lua/terranweapons.lua').TIFCarpetBombWeapon


LAOWL2 = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        ML = Class(ADFLaserLightWeapon) {},
        SL = Class(ADFLaserLightWeapon) {},
        SL2 = Class(ADFLaserLightWeapon) {},
        Bomb = Class(TIFCarpetBombWeapon) {},
    },
}

TypeClass = LAOWL2