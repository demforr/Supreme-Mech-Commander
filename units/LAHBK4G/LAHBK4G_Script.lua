local TerranWeaponFile = import('/lua/terranweapons.lua')
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAHBK4G = Class(TWalkingLandUnit) {
    Weapons = {
        AC20 = Class(TDFGaussCannonWeapon) {},  
        ML01 = Class(ADFLaserLightWeapon) {},
        ML02 = Class(ADFLaserLightWeapon) {},
        SL01 = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = LAHBK4G