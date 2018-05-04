#****************************************************************************
#**
#**  File     :  /cdimage/units/FSISBA/FSISBA_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Snow Raven Elemental Battle Armor Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local Unit = import('/lua/sim/Unit.lua').Unit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local ADFDisruptorCannonWeapon = import('/lua/aeonweapons.lua').ADFDisruptorCannonWeapon

SRELEMENTAL = Class(TWalkingLandUnit) {
    
    Weapons = {
        SL = Class(ADFLaserLightWeapon) {},
        SRM = Class(TSAMLauncher) {},
        CLAW = Class(ADFDisruptorCannonWeapon) {}
    },
}

TypeClass = SRELEMENTAL

