#****************************************************************************
#**
#**  File     :  /cdimage/units/LAJEDGAR/LAJEDGAR_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Regulator Hover Tank Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon

LAREGULATOR = Class(TLandUnit) {
    Weapons = {
		GR = Class(ADFCannonQuantumWeapon) {},
    },
}

TypeClass = LAREGULATOR