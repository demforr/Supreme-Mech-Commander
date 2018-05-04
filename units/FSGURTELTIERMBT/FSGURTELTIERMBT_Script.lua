#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/FSVNLK65N/FSVNLK65N_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Gurteltier MBT
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSGURTELTIERMBT = Class(TLandUnit) {
    Weapons = {
		GR = Class(ADFCannonQuantumWeapon) {},
    	MML7 = Class(TSAMLauncher) {},
    	ERPPC = Class(ADFCannonOblivionWeapon) {},
    },
}

TypeClass = FSGURTELTIERMBT