#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Hollander II 
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

FSHBK4G = Class(TWalkingLandUnit) {
    Weapons = {
        AC20 = Class(TDFGaussCannonWeapon) {},  
        ML01 = Class(ADFLaserLightWeapon) {},
        ML02 = Class(ADFLaserLightWeapon) {},
        SL01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = FSHBK4G