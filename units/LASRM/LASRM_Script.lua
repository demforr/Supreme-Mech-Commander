#****************************************************************************
#**
#**  File     :  /cdimage/units/LALRM/LALRM_script.lua
#**  Author(s):  Kami, Alex
#**
#**  Summary  :  FedSuns SRM Carrier (Standard) Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

LASRM = Class(TLandUnit) {
    Weapons = {
        SRM1 = Class(TSAMLauncher) {},
        SRM2 = Class(TSAMLauncher) {},       
    },
}

TypeClass = LASRM