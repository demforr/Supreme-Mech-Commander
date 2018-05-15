#****************************************************************************
#**
#**  File     :  /cdimage/units/UEA0104/UEA0104_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Gordon Duclos, Andres Mendez
#**
#**  Summary  :  UEF T2 Transport Script
#**
#**  Copyright © 2006 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TAirUnit = import('/lua/terranunits.lua').TAirUnit
local util = import('/lua/utilities.lua')
local TerranWeaponFile = import('/lua/terranweapons.lua')
local AeonWeapons = import('/lua/aeonweapons.lua')
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon

LALEOPARDDS = Class(TAirUnit) {

    Weapons = {
        NOS_ERPPC = Class(TDFZephyrCannonWeapon) {},
        ERLL1 = Class(CDFLaserHeavyWeapon) {},
        ERLL2 = Class(CDFLaserHeavyWeapon) {},
        ERLL3 = Class(CDFLaserHeavyWeapon) {},
        LRM1 = Class(TSAMLauncher) {},
        LRM2 = Class(TSAMLauncher) {},
        LRM3 = Class(TSAMLauncher) {},
        MPL01 = Class(CDFParticleCannonWeapon) {},
        MPL02 = Class(CDFParticleCannonWeapon) {},
        MPL031 = Class(CDFParticleCannonWeapon) {},
        MPL032 = Class(CDFParticleCannonWeapon) {},
        MPL033 = Class(CDFParticleCannonWeapon) {},
        MPL04 = Class(CDFParticleCannonWeapon) {},
    },

    # When one of our attached units gets killed, detach it
    OnAttachedKilled = function(self, attached)
        attached:DetachFrom()
    end,

    OnKilled = function(self, instigator, type, overkillRatio)
        TAirUnit.OnKilled(self, instigator, type, overkillRatio)
        # TransportDetachAllUnits takes 1 bool parameter. If true, randomly destroys some of the transported
        # units, otherwise successfully detaches all.
        self:TransportDetachAllUnits(true)
    end,
}

TypeClass = LALEOPARDDS