#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/HHMARSXL/HHMARSXL_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Hells Horse Mars XL Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

HHMARSXL = Class(TLandUnit) {
    Weapons = {
        CGR = Class(ADFCannonQuantumWeapon) {},
    	CLBX10 = Class(TDFMachineGunWeapon) {},
    	CERLL = Class(ADFLaserLightWeapon) {},
    	CSSRM = Class(TSAMLauncher) {},
    	CLRM = Class(TSAMLauncher) {},
    },
}

TypeClass = HHMARSXL