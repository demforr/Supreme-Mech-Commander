#****************************************************************************
#**
#**  File     :  /cdimage/units/FSLRM/FSLRM_script.lua
#**  Author(s):  Kami, Alex
#**
#**  Summary  :  FedSuns LRM Carrier (Standard) Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

FSLRM = Class(TLandUnit) {
    Weapons = {
        LRM = Class(TSAMLauncher) {},
    },
}

TypeClass = FSLRM