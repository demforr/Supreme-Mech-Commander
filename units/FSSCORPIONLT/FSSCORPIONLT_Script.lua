#****************************************************************************
#**
#**  File     :  
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Scorpion Light Tank (Standard)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon


FSSCORPIONLT = Class(TLandUnit) {
    Weapons = {
        AC5 = Class(TDFGaussCannonWeapon) {},
    	MG = Class(TDFMachineGunWeapon) {},
    },
}

TypeClass = FSSCORPIONLT