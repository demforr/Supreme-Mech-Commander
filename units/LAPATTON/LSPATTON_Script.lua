#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/LSPATTON/LSPATTON_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Rommel Tank (Standard)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LSPATTON = Class(TLandUnit) {
    Weapons = {
        AC10 = Class(TDFGaussCannonWeapon) {},
        LRM = Class(TSAMLauncher) {},
        SL = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LSPATTON