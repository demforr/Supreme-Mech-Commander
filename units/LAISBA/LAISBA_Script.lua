#****************************************************************************
#**
#**  File     :  /cdimage/units/LAISBA/LAISBA_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  FedSuns IS Battle Armor Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TWalkingLandUnit = import('/lua/terranunits.lua').TWalkingLandUnit
local Unit = import('/lua/sim/Unit.lua').Unit
local TDFMachineGunWeapon = import('/lua/terranweapons.lua').TDFMachineGunWeapon


LAISBA = Class(TWalkingLandUnit) {
    Weapons = {
        MG = Class(TDFMachineGunWeapon) {
            DisabledFiringBones = {
                'Torso', 'Head',  'Arm_Right_B01', 'Arm_Right_B02','Arm_Right_Muzzle',
                'Arm_Left_B01', 'Arm_Left_B02','Arm_Left_Muzzle'
                },
        },
    },
}
TypeClass = LAISBA

