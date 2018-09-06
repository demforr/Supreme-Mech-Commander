

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

CLANVISIGOTHB = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        CLPL1 = Class(CDFParticleCannonWeapon) {},
        CLPL2 = Class(CDFParticleCannonWeapon) {},
        CLPL3 = Class(CDFParticleCannonWeapon) {},
        CLPL4 = Class(CDFParticleCannonWeapon) {},
        CMPL = Class(CDFParticleCannonWeapon) {},        
    },
}

TypeClass = CLANVISIGOTHB