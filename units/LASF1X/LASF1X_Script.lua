#****************************************************************************
#**
#**  File     :  /cdimage/units/LASF1X/LASF1X_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Stuka STU-K5
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon

LASF1X = Class(TAirUnit) {
    PlayDestructionEffects = true,
    DamageEffectPullback = 0.25,
    DestroySeconds = 7.5,

    Weapons = {
        ML1 = Class(ADFLaserLightWeapon) {},
        ML2 = Class(ADFLaserLightWeapon) {},
        ML3 = Class(ADFLaserLightWeapon) {},
        ML4 = Class(ADFLaserLightWeapon) {},
        SL = Class(ADFLaserLightWeapon) {},        
        UAC5 = Class(TDFGaussCannonWeapon) {},
    },
}

TypeClass = LASF1X