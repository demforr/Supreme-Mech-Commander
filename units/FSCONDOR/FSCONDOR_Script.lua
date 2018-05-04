#****************************************************************************
#**
#**  File     :  /cdimage/units/FSPEGASUS/FSPEGASUS_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Condor Heavy Hover Tank Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon

FSCONDOR = Class(TLandUnit) {
    Weapons = {
        AC5_Turret = Class(TDFGaussCannonWeapon) {},
        MG1 = Class(TDFMachineGunWeapon) {},
        MG2 = Class(TDFMachineGunWeapon) {},
    },
}

TypeClass = FSCONDOR