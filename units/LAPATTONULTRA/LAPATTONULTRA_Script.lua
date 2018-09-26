local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon

local EffectUtils = import('/lua/effectutilities.lua')
local Effects = import('/lua/effecttemplates.lua')

LAPATTONULTRA = Class(TLandUnit) {
    Weapons = {
        AC10 = Class(TDFGaussCannonWeapon) 
        {       
            PlayFxWeaponPackSequence = function(self)
                if self.SpinManip then
                    self.SpinManip:SetTargetSpeed(0)
                end
                -- self.ExhaustEffects = EffectUtils.CreateBoneEffects( self.unit, 'Exhaust', self.unit:GetArmy(), Effects.WeaponSteam01 )
                TDFGaussCannonWeapon.PlayFxWeaponPackSequence(self)
            end,

        
            PlayFxRackSalvoChargeSequence = function(self)
                if not self.SpinManip then 
                    self.SpinManip = CreateRotator(self.unit, 'Gun_Barrel', 'z', nil, 240, 120)
                    self.unit.Trash:Add(self.SpinManip)
                end
                
                if self.SpinManip then
                    -- self.SpinManip:SetTargetSpeed(120)
                    self.SpinManip:SetTargetSpeed(110)
                end
                TDFGaussCannonWeapon.PlayFxRackSalvoChargeSequence(self)
            end,
            
            
            PlayFxRackSalvoReloadSequence = function(self)
                if self.SpinManip then
                    self.SpinManip:SetTargetSpeed(0)
                end
                -- self.ExhaustEffects = EffectUtils.CreateBoneEffects( self.unit, 'Exhaust', self.unit:GetArmy(), Effects.WeaponSteam01 )
                TDFGaussCannonWeapon.PlayFxRackSalvoChargeSequence(self)
            end,    
        },
        ML = Class(ADFLaserLightWeapon) {},
        MG = Class(TDFMachineGunWeapon) {}, 
    },
}

TypeClass = LAPATTONULTRA