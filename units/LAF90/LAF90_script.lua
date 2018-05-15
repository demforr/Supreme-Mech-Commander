#****************************************************************************
#**
#**  File     :  /cdimage/units/LAF90/LAF90_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Stingray F-90
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon

LAF90 = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        LL = Class(CDFLaserHeavyWeapon) {},
        ML = Class(ADFLaserLightWeapon) {},
        PPC = Class(ADFCannonOblivionWeapon) {},
    },
}

TypeClass = LAF90