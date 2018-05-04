#****************************************************************************
#**
#**  File     :  /cdimage/units/FSPEGASUS/FSPEGASUS_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Centipede Scout Car Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

FSCENTIPEDE = Class(TLandUnit) {
    Weapons = {
        ML = Class(ADFLaserLightWeapon) {},
    },
}

TypeClass = FSCENTIPEDE