#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/SRORO/FSROMMEL_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Hells Horse Oro Heavy Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

HHORO = Class(TLandUnit) {
    Weapons = {
    	CLBX20 = Class(TDFMachineGunWeapon) {},
        CLPL = Class(CDFParticleCannonWeapon) {},
    	CERML = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = HHORO