#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Hollander II 
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAHOLLANDERII = Class(TWalkingLandUnit) {
    Weapons = {
    	GR = Class(ADFCannonQuantumWeapon) {},
    	SSRM2 = Class(TSAMLauncher) {},
        ML01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAHOLLANDERII