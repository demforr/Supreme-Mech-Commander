#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB2301/UEB2301_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Davion Calliope Turret
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

LACALI = Class(TStructureUnit) {
    Weapons = {
        Missile01 = Class(TSAMLauncher) {},
        MainGun = Class(CDFParticleCannonWeapon) {},
        MainGun2 = Class(CDFParticleCannonWeapon) {},
    },
}

TypeClass = LACALI