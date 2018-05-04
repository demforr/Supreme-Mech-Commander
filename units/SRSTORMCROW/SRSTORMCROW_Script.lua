#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Stormcrow Prime
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon


SRSTORMCROW = Class(TWalkingLandUnit) {
    Weapons = {
    	CERLL = Class(ADFLaserLightWeapon) {},
		CERML1 = Class(ADFLaserLightWeapon) {},
		CERML2 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = SRSTORMCROW