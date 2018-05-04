#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Raven Kodiak 3
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon


SRKODIAK3 = Class(TWalkingLandUnit) {
    Weapons = {
    	CLBX20 = Class(TDFMachineGunWeapon) {},
    	CERML1 = Class(ADFLaserLightWeapon) {},
    	CERML2 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = SRKODIAK3
