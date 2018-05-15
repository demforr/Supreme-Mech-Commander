#****************************************************************************
#**
#**  File     :  /cdimage/units/LAALACORN/LAALACORN_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Alacorn MK VI Tank Script (based on UEL0202)
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon

LAALACORN = Class(TLandUnit) {
    Weapons = {
        FrontTurret01 = Class(ADFCannonQuantumWeapon) {}
    },
}

TypeClass = LAALACORN