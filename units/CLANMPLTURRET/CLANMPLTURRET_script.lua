

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

CLANMPLTURRET = Class(TStructureUnit) {
    Weapons = {
        CMPL = Class(CDFParticleCannonWeapon) {
            FxMuzzleFlash = {'/effects/emitters/particle_cannon_muzzle_02_emit.bp'},
        },
    },
}

TypeClass = CLANMPLTURRET