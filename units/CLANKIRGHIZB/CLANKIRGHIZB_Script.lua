local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

CLANKIRGHIZB = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        CERPPC1 = Class(ADFCannonOblivionWeapon) {},
        CERPPC2 = Class(ADFCannonOblivionWeapon) {},
        CERPPC3 = Class(ADFCannonOblivionWeapon) {},            
        CLRM = Class(TSAMLauncher) {},
        CERSL = Class(ADFLaserLightWeapon) {},
        CMPL = Class(CDFParticleCannonWeapon) {},        
    },
}

TypeClass = CLANKIRGHIZB