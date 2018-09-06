#****************************************************************************
#**
#**  File     :  /cdimage/units/UEL0001/UEL0001_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, FuegoTigre, Kamisama171
#**
#**  Summary  :  Lee Command Dropship Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


local AAirUnit = import('/lua/aeonunits.lua').AAirUnit
local EffectTemplate = import('/lua/EffectTemplates.lua')
local EffectUtil = import('/lua/EffectUtilities.lua')
local Buff = import('/lua/sim/Buff.lua')
local CreateBuildCubeThread = EffectUtil.CreateBuildCubeThread

local TIFCommanderDeathWeapon = import('/lua/terranweapons.lua').TIFCommanderDeathWeapon
local ADFCannonQuantumWeapon = import('/lua/aeonweapons.lua').ADFCannonQuantumWeapon
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local ADFCannonOblivionWeapon = import('/lua/aeonweapons.lua').ADFCannonOblivionWeapon
local CDFLaserHeavyWeapon = import('/lua/cybranweapons.lua').CDFLaserHeavyWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

UEL0001 = Class(AAirUnit) {   
    DeathThreadDestructionWaitTime = 2,

    Weapons = {
        DeathWeapon = Class(TIFCommanderDeathWeapon) {},
        NOS_GR = Class(ADFCannonQuantumWeapon) {},
        RS_GR = Class(ADFCannonQuantumWeapon) {}, 
        LS_GR = Class(ADFCannonQuantumWeapon) {}, 
        RSR_GR = Class(ADFCannonQuantumWeapon) {},
        LSR_GR = Class(ADFCannonQuantumWeapon) {},
        RS_AC20 = Class(TDFGaussCannonWeapon) {}, 
        LS_AC20 = Class(TDFGaussCannonWeapon) {}, 
        RSR_AC20 = Class(TDFGaussCannonWeapon) {},
        LSR_AC20 = Class(TDFGaussCannonWeapon) {},
        NOS_ERPPC = Class(ADFCannonOblivionWeapon) {},
        RS_ERPPC = Class(ADFCannonOblivionWeapon) {}, 
        LS_ERPPC = Class(ADFCannonOblivionWeapon) {}, 
        RSR_ERPPC = Class(ADFCannonOblivionWeapon) {},
        LSR_ERPPC = Class(ADFCannonOblivionWeapon) {},
        ERLL = Class(CDFLaserHeavyWeapon) {},
        ML = Class(ADFLaserLightWeapon) {},
        LRM = Class(TSAMLauncher) {},
    },

    OnCreate = function(self)
        AAirUnit.OnCreate(self)
        self:SetCapturable(false)
        self:SetupBuildBones()
        # Restrict what enhancements will enable later
        self:AddBuildRestriction( categories.FS * (categories.BUILTBYTIER1FACTORY + categories.BUILTBYTIER2FACTORY + categories.MOBILE + categories.LAND) )
        self:AddBuildRestriction( categories.LA * (categories.BUILTBYTIER1FACTORY + categories.BUILTBYTIER2FACTORY + categories.MOBILE + categories.LAND) )
        self:AddBuildRestriction( categories.SR * (categories.BUILTBYTIER1FACTORY + categories.MOBILE + categories.LAND) )
        self:AddBuildRestriction( categories.CLAN * (categories.BUILTBYTIER1FACTORY + categories.MOBILE + categories.LAND) )
    end,

    StartBeingBuiltEffects = function(self, builder, layer)
        self:SetMesh(self:GetBlueprint().Display.BuildMeshBlueprint, true)
        if self:GetBlueprint().General.UpgradesFrom != builder:GetUnitId() then
            self:HideBone(0, true)        
            self.OnBeingBuiltEffectsBag:Add( self:ForkThread( CreateBuildCubeThread, builder, self.OnBeingBuiltEffectsBag ))
        end
    end,  

    BuildAttachBone = 'UEL0001',

    GiveInitialResources = function(self)
        WaitTicks(2)
        self:GetAIBrain():GiveResource('Energy', self:GetBlueprint().Economy.StorageEnergy)
        self:GetAIBrain():GiveResource('Mass', self:GetBlueprint().Economy.StorageMass)
    end,

    OnStopBeingBuilt = function(self,builder,layer)
        AAirUnit.OnStopBeingBuilt(self,builder,layer)
        ChangeState(self, self.IdleState)
        self:ForkThread(self.GiveInitialResources)
    end,

    OnFailedToBuild = function(self)
        AAirUnit.OnFailedToBuild(self)
        ChangeState(self, self.IdleState)
    end,

    PlayCommanderWarpInEffect = function(self)
        self:HideBone(0, true)
        self:SetUnSelectable(true)
        self:SetBusy(true)
        self:SetBlockCommandQueue(true)
        self:ForkThread(self.WarpInEffectThread)
    end,

    WarpInEffectThread = function(self)
        self:PlayUnitSound('CommanderArrival')
        self:CreateProjectile( '/effects/entities/UnitTeleport01/UnitTeleport01_proj.bp', 0, 1.35, 0, nil, nil, nil):SetCollision(false)
        WaitSeconds(2.1)
        self:ShowBone(0, true)
        self:SetUnSelectable(false)
        self:SetBusy(false)
        self:SetBlockCommandQueue(false)

        local totalBones = self:GetBoneCount() - 1
        local army = self:GetArmy()
        for k, v in EffectTemplate.UnitTeleportSteam01 do
            for bone = 1, totalBones do
                CreateAttachedEmitter(self,bone,army, v)
            end
        end

        WaitSeconds(6)
    end,

    IdleState = State {
        Main = function(self)
            self:SetImmobile(false)
            self:DetachAll(self.BuildAttachBone)
            self:SetBusy(false)
        end,

        OnStartBuild = function(self, unitBuilding, order)
            AAirUnit.OnStartBuild(self, unitBuilding, order)
            self.UnitBeingBuilt = unitBuilding
            ChangeState(self, self.BuildingState)
        end,
    },

    BuildingState = State {
        Main = function(self)
            self:SetImmobile(true)
            local unitBuilding = self.UnitBeingBuilt
            self:SetBusy(true)
            local bone = self.BuildAttachBone
            self:DetachAll(bone)
            if not self.UnitBeingBuilt:IsDead() then
                unitBuilding:AttachBoneTo( 0, self, bone )
                local unitHeight = unitBuilding:GetBlueprint().SizeY
                unitBuilding:HideBone(0,true)
            end
            local unitBuilding = self.UnitBeingBuilt
            self.UnitDoneBeingBuilt = false
        end,

        OnStopBuild = function(self, unitBeingBuilt)
            AAirUnit.OnStopBuild(self, unitBeingBuilt)
            ChangeState(self, self.FinishedBuildingState)
        end,
    },

    FinishedBuildingState = State {
        Main = function(self)
            self:SetBusy(true)
            local unitBuilding = self.UnitBeingBuilt
            unitBuilding:DetachFrom(true)
            self:DetachAll(self.BuildAttachBone)
            if self:TransportHasAvailableStorage() then
                self:AddUnitToStorage(unitBuilding)
            else
                local worldPos = self:CalculateWorldPositionFromRelative({0, 0, -20})
                IssueMoveOffFactory({unitBuilding}, worldPos)
                unitBuilding:ShowBone(0,true)
            end
            self:SetBusy(false)
            self:RequestRefreshUI()
            ChangeState(self, self.IdleState)
        end,
    },
 
    OnPaused = function(self)
        AAirUnit.OnPaused(self)
        if self.BuildingUnit then
            AAirUnit.StopBuildingEffects(self, self:GetUnitBeingBuilt())
        end    
    end,
    
    OnUnpaused = function(self)
        if self.BuildingUnit then
            AAirUnit.StartBuildingEffects(self, self:GetUnitBeingBuilt(), self.UnitBuildOrder)
        end
        AAirUnit.OnUnpaused(self)
    end,   

###Faction upgrades via Dropship####

    CreateEnhancement = function(self, enh)
        AAirUnit.CreateEnhancement(self, enh)

        if enh =='AdvancedEngineering' then
            local bp = self:GetBlueprint().Enhancements[enh]
            if not bp then return end
            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
            self:RemoveBuildRestriction(cat)
        elseif enh =='LyranAllianceCommand' then
            local bp = self:GetBlueprint().Enhancements[enh]
            if not bp then return end
            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
            self:RemoveBuildRestriction(cat)
#        elseif enh =='AdvancedEngineeringRemove' then
#            local bp = self:GetBlueprint().Economy.BuildRate
#            if not bp then return end
#            self:RestoreBuildRestrictions()
#            self:AddBuildRestriction( categories.FS * (categories.BUILTBYTIER1FACTORY + categories.BUILTBYTIER2FACTORY + categories.MOBILE + categories.LAND) )
#            if Buff.HasBuff( self, 'CybranACUT2BuildRate' ) then
#                Buff.RemoveBuff( self, 'CybranACUT2BuildRate' )
#            end
        elseif enh =='SnowRavenCommand' then
            local bp = self:GetBlueprint().Enhancements[enh]
            if not bp then return end
            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
            self:RemoveBuildRestriction(cat)
            local bpEcon = self:GetBlueprint().Economy
            if not bp then return end
            self:SetProductionPerSecondEnergy(bp.ProductionPerSecondEnergy + bpEcon.ProductionPerSecondEnergy or 0)
            self:SetProductionPerSecondMass(bp.ProductionPerSecondMass + bpEcon.ProductionPerSecondMass or 0)
            if not Buffs['SRBuildRate'] then
                BuffBlueprint {
                    Name = 'SRBuildRate',
                    DisplayName = 'SRBuildRate',
                    BuffType = 'ACUBUILDRATE',
                    Stacks = 'REPLACE',
                    Duration = -1,
                    Affects = {
                        BuildRate = {
                            Add =  bp.NewBuildRate - self:GetBlueprint().Economy.BuildRate,
                            Mult = 1,
                        },
                    },
                }
            end
            Buff.ApplyBuff(self, 'SRBuildRate')
        elseif enh =='SnowRavenCommandUpgrade' then
            local bp = self:GetBlueprint().Enhancements[enh]
            if not bp then return end
            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
            self:RemoveBuildRestriction(cat)
            local bpEcon = self:GetBlueprint().Economy
            if not bp then return end
            self:SetProductionPerSecondEnergy(bp.ProductionPerSecondEnergy + bpEcon.ProductionPerSecondEnergy or 0)
            self:SetProductionPerSecondMass(bp.ProductionPerSecondMass + bpEcon.ProductionPerSecondMass or 0)
            if not Buffs['SRBuildRate2'] then
                BuffBlueprint {
                    Name = 'SRBuildRate2',
                    DisplayName = 'SRBuildRate2',
                    BuffType = 'ACUBUILDRATE',
                    Stacks = 'REPLACE',
                    Duration = -1,
                    Affects = {
                        BuildRate = {
                            Add =  bp.NewBuildRate - self:GetBlueprint().Economy.BuildRate,
                            Mult = 1,
                        },
                    },
                }
            end
            Buff.ApplyBuff(self, 'SRBuildRate2')
        elseif enh =='ClanCommand' then
            local bp = self:GetBlueprint().Enhancements[enh]
            if not bp then return end
            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
            self:RemoveBuildRestriction(cat)
#        elseif enh =='ClanCommand' then
#            local bp = self:GetBlueprint().Enhancements[enh]
#            if not bp then return end
#            local cat = ParseEntityCategory(bp.BuildableCategoryAdds)
#            self:RemoveBuildRestriction(cat)
#            local bpEcon = self:GetBlueprint().Economy
#            if not bp then return end
#            self:SetProductionPerSecondEnergy(bp.ProductionPerSecondEnergy + bpEcon.ProductionPerSecondEnergy or 0)
#            self:SetProductionPerSecondMass(bp.ProductionPerSecondMass + bpEcon.ProductionPerSecondMass or 0)
#            if not Buffs['HHBuildRate'] then
#                BuffBlueprint {
#                    Name = 'HHBuildRate',
#                    DisplayName = 'HHBuildRate',
#                    BuffType = 'ACUBUILDRATE',
#                    Stacks = 'REPLACE',
#                    Duration = -1,
#                    Affects = {
#                        BuildRate = {
#                            Add =  bp.NewBuildRate - self:GetBlueprint().Economy.BuildRate,
#                            Mult = 1,
#                        },
#                    },
#                }
#            end
#            Buff.ApplyBuff(self, 'HHBuildRate')
#        elseif enh =='UEFCommandRemove' then
#            local bp = self:GetBlueprint().Economy.BuildRate
#            if not bp then return end
#            self:RestoreBuildRestrictions()
#            self:AddBuildRestriction( categories.UEF * (categories.BUILTBYTIER1FACTORY + categories.BUILTBYTIER2FACTORY + categories.MOBILE + categories.LAND) )
#            if Buff.HasBuff( self, 'CybranACUT2BuildRate' ) then
#                Buff.RemoveBuff( self, 'CybranACUT2BuildRate' )
#            end
        end             
    end,  
}

TypeClass = UEL0001