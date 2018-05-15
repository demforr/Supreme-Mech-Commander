#****************************************************************************
#**
#**  File     :  /cdimage/units/LAUZL2S/LAUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Awesome ASW-8Q
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAASW8Q = Class(TWalkingLandUnit) {
    Weapons = {
    	PPC1 = Class(ADFCannonOblivionWeapon) {},
    	PPC2 = Class(ADFCannonOblivionWeapon) {}, 
        SL = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAASW8Q