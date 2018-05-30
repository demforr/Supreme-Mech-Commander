#****************************************************************************
#**
#**  File     :  /cdimage/units/LAEMP6S/LAEMP6S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Lyran Emperor EMP-6S
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon


LAEMP6S = Class(TWalkingLandUnit) {
    Weapons = {
    	LBX20 = Class(TDFMachineGunWeapon) {},
        MP1 = Class(CDFParticleCannonWeapon) {},
        MP2 = Class(CDFParticleCannonWeapon) {},
        MP3 = Class(CDFParticleCannonWeapon) {},
        ML01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAEMP6S