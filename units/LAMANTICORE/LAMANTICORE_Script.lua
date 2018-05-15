#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/LAMANTICORE/LAMANTICORE_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Manticore Heavy Tank (Standard)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TerranWeaponFile = import('/lua/terranweapons.lua')
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher


LAMANTICORE = Class(TLandUnit) {
    Weapons = {
        PPC = Class(ADFCannonOblivionWeapon) {},  
    	SRM = Class(TSAMLauncher) {},
        LRM = Class(TSAMLauncher) {},
        ML = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAMANTICORE