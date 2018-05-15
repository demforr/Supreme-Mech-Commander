#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Bushwacker BSW-X1 Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon

LABSWX1 = Class(TWalkingLandUnit) {
    Weapons = {
    LRM = Class(TSAMLauncher) {},
    LRM2 = Class(TSAMLauncher) {},
    AC10 = Class(TDFGaussCannonWeapon) {},
    ERLL = Class(CDFLaserHeavyWeapon) {},
    },
}

TypeClass = LABSWX1