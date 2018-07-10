local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local TDFHeavyPlasmaCannonWeapon = import('/lua/terranweapons.lua').TDFHeavyPlasmaGatlingCannonWeapon

local EffectUtils = import('/lua/effectutilities.lua')
local Effects = import('/lua/effecttemplates.lua')

HHMADDOGE = Class(TWalkingLandUnit) {
    Weapons = {
        HAG = Class(TDFHeavyPlasmaCannonWeapon) 
        {       
            PlayFxWeaponPackSequence = function(self)
                if self.SpinManip then
                    self.SpinManip:SetTargetSpeed(0)
                    self.SpinManip2:SetTargetSpeed(0)
                end
                self.ExhaustEffects = EffectUtils.CreateBoneEffects( self.unit, 'L_Exhaust', self.unit:GetArmy(), Effects.WeaponSteam01 )
                TDFHeavyPlasmaCannonWeapon.PlayFxWeaponPackSequence(self)
            end,

        
            PlayFxRackSalvoChargeSequence = function(self)
                if not self.SpinManip then 
                    self.SpinManip = CreateRotator(self.unit, 'L_Gun_Barrel', 'z', nil, 270, 180, 60)
                    self.SpinManip2 = CreateRotator(self.unit, 'R_Gun_Barrel', 'z', nil, 270, 180, 60)
                    self.unit.Trash:Add(self.SpinManip)
                end
                
                if self.SpinManip then
                    self.SpinManip:SetTargetSpeed(500)
                    self.SpinManip2:SetTargetSpeed(500)
                end
                TDFHeavyPlasmaCannonWeapon.PlayFxRackSalvoChargeSequence(self)
            end,
            
            
            PlayFxRackSalvoReloadSequence = function(self)
                if self.SpinManip then
                    self.SpinManip:SetTargetSpeed(200)
                    self.SpinManip2:SetTargetSpeed(200)
                end
                self.ExhaustEffects = EffectUtils.CreateBoneEffects( self.unit, 'L_Exhaust', self.unit:GetArmy(), Effects.WeaponSteam01 )
                TDFHeavyPlasmaCannonWeapon.PlayFxRackSalvoChargeSequence(self)
            end,

        },
    },
}

TypeClass = HHMADDOGE