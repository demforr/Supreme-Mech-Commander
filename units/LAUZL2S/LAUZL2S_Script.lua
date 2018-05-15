#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Uziel UZL-2S Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LAUZL2S = Class(TWalkingLandUnit) {
    Weapons = {
        PPC = Class(ADFCannonOblivionWeapon) {},
        MG = Class(TDFMachineGunWeapon) {},     
        SRM = Class(TSAMLauncher) {},

    },
}

TypeClass = LAUZL2S