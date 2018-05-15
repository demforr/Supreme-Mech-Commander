#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/LABULLDOG/LABULLDOG_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Bulldog Medium Tank (Standard)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon

LABULLDOG = Class(TLandUnit) {
    Weapons = {
        LL = Class(CDFLaserHeavyWeapon) {},
    	SRM = Class(TSAMLauncher) {},
    	MG = Class(TDFMachineGunWeapon) {},   
    },
}

TypeClass = LABULLDOG