#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Raven Kit Fox Configuration C
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TAMPhalanxWeapon = import('/lua/terranweapons.lua').TAMPhalanxWeapon

SRKITFOXC = Class(TWalkingLandUnit) {
    Weapons = {
        MG = Class(TDFMachineGunWeapon) {},
    	CERLL = Class(ADFLaserLightWeapon) {},
        CSPL = Class(CDFParticleCannonWeapon) {},
    	AMS1 = Class(TAMPhalanxWeapon) {},
    	AMS2 = Class(TAMPhalanxWeapon) {},
    	AMS3 = Class(TAMPhalanxWeapon) {},
    },
}

TypeClass = SRKITFOXC