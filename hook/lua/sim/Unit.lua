local Entity = import('/lua/sim/Entity.lua').Entity
local explosion = import('/lua/defaultexplosions.lua')
local EffectTemplate = import('/lua/EffectTemplates.lua')
local EffectUtilities = import('/lua/EffectUtilities.lua')
local Game = import('/lua/game.lua')
local utilities = import('/lua/utilities.lua')
local Shield = import('/lua/shield.lua').Shield
local UnitShield = import('/lua/shield.lua').UnitShield
local AntiArtilleryShield = import('/lua/shield.lua').AntiArtilleryShield
local Buff = import('/lua/sim/buff.lua')
local AIUtils = import('/lua/ai/aiutilities.lua')

local oldUnit=Unit
Unit = Class(oldUnit) {
	
	InitiateTeleportThread = function(self, teleporter, location, orientation)
	local exbp = self:GetBlueprint()
	local MaxTeleRange = exbp.Defense.MaxTeleRange
	local exdist = VDist3(location, self:GetPosition())
	if MaxTeleRange then
		if exdist > MaxTeleRange then
			LOG('Stopping teleport thread')
			return
		end
	end	
    oldUnit.InitiateTeleportThread(self, teleporter, location, orientation) 
end

}