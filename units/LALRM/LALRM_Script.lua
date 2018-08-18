#****************************************************************************
#**
#**  File     :  /cdimage/units/LALRM/LALRM_script.lua
#**  Author(s):  Kami, Alex
#**
#**  Summary  :  FedSuns LRM Carrier (Standard) Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LALRM = Class(TLandUnit) {
    Weapons = {
        LRM = Class(TSAMLauncher) {},
        LRM2 = Class(TSAMLauncher) {},
    },
}

TypeClass = LALRM