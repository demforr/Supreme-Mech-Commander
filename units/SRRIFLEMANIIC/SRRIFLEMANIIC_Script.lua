#****************************************************************************
#**
#**  File     :  /cdimage/units/FSUZL2S/FSUZL2S_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Davion Awesome ASW-8Q
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon

SRRIFLEMANIIC = Class(TWalkingLandUnit) {
    Weapons = {
    	CLPLAA = Class(CDFParticleCannonWeapon) {},
    	CLPL = Class(CDFParticleCannonWeapon) {}, 
    },

    OnCreate = function(self)
        TWalkingLandUnit.OnCreate(self)
        self:SetWeaponEnabledByLabel('CLPL', false)
    end,
    
    OnScriptBitSet = function(self, bit)
        TWalkingLandUnit.OnScriptBitSet(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('CLPL', true)
            self:SetWeaponEnabledByLabel('CLPLAA', false)
            self:GetWeaponManipulatorByLabel('CLPL'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('CLPLAA'):GetHeadingPitch() )
        end
    end,

    OnScriptBitClear = function(self, bit)
        TWalkingLandUnit.OnScriptBitClear(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('CLPL', false)
            self:SetWeaponEnabledByLabel('CLPLAA', true)
            self:GetWeaponManipulatorByLabel('CLPLAA'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('CLPL'):GetHeadingPitch() )
        end
    end,
}

TypeClass = SRRIFLEMANIIC