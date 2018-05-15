#****************************************************************************
#**
#**  File     :  /cdimage/units/LASTUK5/LASTUK5_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Cutlass CUT-1E
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LACUT1E = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        ERLL = Class(CDFLaserHeavyWeapon) {},
        ELRM = Class(TSAMLauncher) {},        
    },
}

TypeClass = LACUT1E