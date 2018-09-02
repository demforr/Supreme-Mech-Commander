local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher


LAESTOC = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
    	UAC5 = Class(TDFGaussCannonWeapon) {},
    	SRM6_1 = Class(TSAMLauncher) {},
    	SRM6_2 = Class(TSAMLauncher) {},
    	LRM20 = Class(TSAMLauncher) {}, 

    },
}

TypeClass = LAESTOC