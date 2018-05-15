#****************************************************************************
#**
#**  File     :  /cdimage/units/LASTUK5/LASTUK5_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Cutlass CUT-01D
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon

LACUT01D = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        ERML1 = Class(ADFLaserLightWeapon) {},
        ERML2 = Class(ADFLaserLightWeapon) {},
        ERML3 = Class(ADFLaserLightWeapon) {},
        ERML4 = Class(ADFLaserLightWeapon) {},
        ERLL = Class(CDFLaserHeavyWeapon) {},       
        GR = Class(ADFCannonQuantumWeapon) {},
    },
}

TypeClass = LACUT01D