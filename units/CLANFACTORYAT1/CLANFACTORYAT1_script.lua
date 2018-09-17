#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB0102/UEB0102_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  UEF T1 Air Factory Script
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TAirFactoryUnit = import('/lua/terranunits.lua').TAirFactoryUnit

CLANFACTORYAT1 = Class(TAirFactoryUnit) {
    
    StartArmsMoving = function(self)
        TAirFactoryUnit.StartArmsMoving(self)
        #local unitBldg = self.UnitBeingBuilt
        if not self.ArmSlider then
            self.ArmSlider = CreateSlider(self, 'Arm01')
            self.Trash:Add(self.ArmSlider)
        end
        
    end,

    MovingArmsThread = function(self)
        TAirFactoryUnit.MovingArmsThread(self)
        while true do
            if not self.ArmSlider then return end
            self.ArmSlider:SetGoal(0, 0, 0)
            self.ArmSlider:SetSpeed(0.1)
            WaitFor(self.ArmSlider)
            self.ArmSlider:SetGoal(0, -0.2, 0)
            WaitFor(self.ArmSlider)
        end
    end,
    
    StopArmsMoving = function(self)
        TAirFactoryUnit.StopArmsMoving(self)
        if not self.ArmSlider then return end
        self.ArmSlider:SetGoal(0, 0, 0)
        self.ArmSlider:SetSpeed(40)
    end,


}

TypeClass = CLANFACTORYAT1