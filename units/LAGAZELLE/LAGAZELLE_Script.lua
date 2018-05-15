#****************************************************************************
#**
#**  File     :  /cdimage/units/UEA0104/UEA0104_script.lua
#**  Author(s):  Kamisama
#**
#**  Summary  :  Gazelle 3050 Upgrade
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
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAGAZELLE = Class(TAirUnit) {

    Weapons = {
        AC5 = Class(TDFGaussCannonWeapon) {},
        L_ERPPC = Class(ADFCannonOblivionWeapon) {},
        R_ERPPC = Class(ADFCannonOblivionWeapon) {},
        ERLL = Class(CDFLaserHeavyWeapon) {},
        LRM1 = Class(TSAMLauncher) {},
        ML1 = Class(ADFLaserLightWeapon) {},
        ML2 = Class(ADFLaserLightWeapon) {},
        ML3 = Class(ADFLaserLightWeapon) {},
        ML4 = Class(ADFLaserLightWeapon) {},
        SRM1 = Class(TSAMLauncher) {},
        SRM2 = Class(TSAMLauncher) {},
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

TypeClass = LAGAZELLE