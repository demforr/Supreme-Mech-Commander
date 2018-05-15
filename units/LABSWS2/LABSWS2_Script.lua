#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Bushwacker BSW-S2 Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local TAMPhalanxWeapon = import('/lua/terranweapons.lua').TAMPhalanxWeapon

LABSWS2 = Class(TWalkingLandUnit) {
    Weapons = {
    SRM = Class(TSAMLauncher) {},
    SRM2 = Class(TSAMLauncher) {},
    LBX10 = Class(TDFMachineGunWeapon) {},
    ERLL = Class(CDFLaserHeavyWeapon) {},
    AMS = Class(TAMPhalanxWeapon) {},
    },
}

TypeClass = LABSWS2