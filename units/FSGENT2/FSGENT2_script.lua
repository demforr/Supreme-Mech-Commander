#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB1201/UEB1201_script.lua
#**  Author(s):  John Comes, Dave Tomandl, Jessica St. Croix, Fuegotigre, Kami, Squall
#**
#**  Summary  :  Federated Suns T2 Power Generator Script
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TEnergyCreationUnit = import('/lua/terranunits.lua').TEnergyCreationUnit

FSGENT2 = Class(TEnergyCreationUnit) {
    OnStopBeingBuilt = function(self,builder,layer)
        TEnergyCreationUnit.OnStopBeingBuilt(self,builder,layer)
        ChangeState(self, self.ActiveState)
    end,

    ActiveState = State {
        Main = function(self)
            # Play the "Activate" sound
            local myBlueprint = self:GetBlueprint()
            if myBlueprint.Audio.Activate then
                self:PlaySound(myBlueprint.Audio.Activate)
            end
        end,

        OnInActive = function(self)
            ChangeState(self, self.InActiveState)
        end,
    },

    InActiveState = State {
        Main = function(self)
        end,

        OnActive = function(self)
            ChangeState(self, self.ActiveState)
        end,
    },
}

TypeClass = FSGENT2