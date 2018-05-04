#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Raven Kit Fox Prime
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

SRKITFOX = Class(TWalkingLandUnit) {
    Weapons = {
        CLBX = Class(TDFMachineGunWeapon) {},
    	CERLL = Class(ADFLaserLightWeapon) {},
        CSPL = Class(CDFParticleCannonWeapon) {},
        CSSRM = Class(TSAMLauncher) {},
    },
}

TypeClass = SRKITFOX