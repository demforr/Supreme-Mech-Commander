#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Stormcrow Config. A
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher


SRSTORMCROWA = Class(TWalkingLandUnit) {
    Weapons = {
    	CMPL = Class(CDFParticleCannonWeapon) {},
    	CSSRM = Class(TSAMLauncher) {},
    	CLRM = Class(TSAMLauncher) {},
    },
}

TypeClass = SRSTORMCROWA
