#****************************************************************************
#**
#**  File     :  /Supreme Mech Commander/units/FSPILUM/FSPILUM_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Pilum Heavy Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSPILUM = Class(TLandUnit) {
    Weapons = {
    	LRM = Class(TSAMLauncher) {},
    	SSRM = Class(TSAMLauncher) {},
        MPL01 = Class(CDFParticleCannonWeapon) {},
        MPL02 = Class(CDFParticleCannonWeapon) {},
    },
}

TypeClass = FSPILUM