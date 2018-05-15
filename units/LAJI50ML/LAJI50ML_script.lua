#****************************************************************************
#**
#**  File     :  /cdimage/units/LAJI50ML/LAJI50ML_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns Jifty Tier 2 Engineer
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local EffectTemplate = import('/lua/EffectTemplates.lua')
local TConstructionUnit = import('/lua/terranunits.lua').TConstructionUnit
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon

LAJI50ML = Class(TConstructionUnit) {
    Weapons = {
        ML = Class(ADFLaserLightWeapon) {},
    },

    OnStopBeingBuilt = function(self)
        self:SetMaintenanceConsumptionActive()
        TConstructionUnit.OnStopBeingBuilt(self)
    end,

    OnStartBuild = function(self, unitBeingBuilt, order)
        --Disable the gun while building something
        self:SetWeaponEnabledByLabel('ML', false)
        TConstructionUnit.OnStartBuild(self, unitBeingBuilt, order)
    end,
    
    OnStopBuild = function(self)
        --Re-enable the gun after done building
        self:SetWeaponEnabledByLabel('ML', true)
        TConstructionUnit.OnStopBuild(self)
    end,
    
    OnStartReclaim = function(self, target)
        TConstructionUnit.OnStartReclaim(self, target)
        self:SetAllWeaponsEnabled(false)
    end,
    
    OnStopReclaim = function(self, target)
        TConstructionUnit.OnStopReclaim(self, target)
        self:SetAllWeaponsEnabled( true)
    end,
}

TypeClass = LAJI50ML