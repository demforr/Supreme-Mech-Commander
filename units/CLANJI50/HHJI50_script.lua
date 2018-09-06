#****************************************************************************
#**
#**  File     :  /cdimage/units/FSJI50/FSJI50_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Hells Horses Jifty Tier 1 Engineer
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local EffectTemplate = import('/lua/EffectTemplates.lua')
local TConstructionUnit = import('/lua/terranunits.lua').TConstructionUnit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon

HHJI50 = Class(TConstructionUnit) {
    Weapons = {
        LMG = Class(TDFMachineGunWeapon) {},
    },

    OnStopBeingBuilt = function(self)
        self:SetMaintenanceConsumptionActive()
        TConstructionUnit.OnStopBeingBuilt(self)
    end,

    OnStartBuild = function(self, unitBeingBuilt, order)
        --Disable the gun while building something
        self:SetWeaponEnabledByLabel('LMG', false)
        TConstructionUnit.OnStartBuild(self, unitBeingBuilt, order)
    end,
    
    OnStopBuild = function(self)
        --Re-enable the gun after done building
        self:SetWeaponEnabledByLabel('LMG', true)
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

TypeClass = HHJI50