#****************************************************************************
#**
#**  File     :  /cdimage/units/UES0203/UES0203_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Neptune Submarine Standard
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TSubUnit = import('/lua/terranunits.lua').TSubUnit
local TANTorpedoAngler = import('/lua/terranweapons.lua').TANTorpedoAngler
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon

LANEPTUNESTD = Class(TSubUnit) {    
    Weapons = {
        SRT = Class(TANTorpedoAngler) {},
        LRT = Class(TANTorpedoAngler) {},
        LL = Class(CDFLaserHeavyWeapon) {},
    },
}


TypeClass = LANEPTUNESTD