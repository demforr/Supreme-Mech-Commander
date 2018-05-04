#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB2301/UEB2301_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Davion Thunderbolt TDR-7SE
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

FSTDR7SE = Class(TWalkingLandUnit) {

    Weapons = {
    	GR = Class(ADFCannonQuantumWeapon) {},
        MP1 = Class(CDFParticleCannonWeapon) {},
        MP2 = Class(CDFParticleCannonWeapon) {},
        MP3 = Class(CDFParticleCannonWeapon) {},
        MP4 = Class(CDFParticleCannonWeapon) {},
    },

}

TypeClass = FSTDR7SE