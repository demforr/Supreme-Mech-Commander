#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSAGS2D_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Argus AGS-2D
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon

FSAGS2D = Class(TWalkingLandUnit) {
    Weapons = {
    	LRM01 = Class(TSAMLauncher) {},
    	LRM02 = Class(TSAMLauncher) {},
    	ERPPC1 = Class(ADFCannonOblivionWeapon) {},
    },
}

TypeClass = FSAGS2D