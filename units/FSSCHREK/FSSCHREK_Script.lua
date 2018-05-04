#****************************************************************************
#**
#**  File     :  /cdimage/units/FSSCHREK/FSSCHREK_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Schrem PPC Carrier Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon

FSSCHREK = Class(TLandUnit) {
    Weapons = {
    	PPC = Class(ADFCannonOblivionWeapon) {},	
    },
}

TypeClass = FSSCHREK