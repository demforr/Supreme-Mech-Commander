#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/LAVNLK65N/LAVNLK65N_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Von Luckner VNL-K65N Heavy Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LAVNLK65N = Class(TLandUnit) {
    Weapons = {
    	MG = Class(TDFMachineGunWeapon) {},
    	FLAMER = Class(TDFMachineGunWeapon) {},
    	LRM = Class(TSAMLauncher) {},
    	SRM = Class(TSAMLauncher) {},
    	AC20 = Class(TDFGaussCannonWeapon) {},
    },
}

TypeClass = LAVNLK65N