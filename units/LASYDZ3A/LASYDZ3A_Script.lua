

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon


LASYDZ3A = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        MPL01 = Class(CDFParticleCannonWeapon) {},
        MPL02 = Class(CDFParticleCannonWeapon) {},
    },
}

TypeClass = LASYDZ3A