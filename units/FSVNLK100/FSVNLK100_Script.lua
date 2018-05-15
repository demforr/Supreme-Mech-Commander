#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/FSVNLK100/FSVNLK100_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Von Luckner VNL-K100 Heavy Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSVNLK100 = Class(TLandUnit) {
    Weapons = {
    	SRM = Class(TSAMLauncher) {},
    	AC20 = Class(TDFGaussCannonWeapon) {},
    },
}

TypeClass = FSVNLK100