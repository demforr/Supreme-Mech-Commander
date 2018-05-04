#****************************************************************************
#**
#**  File     :  /cdimage/units/FSPEGASUS/FSPEGASUS_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Kami, FuegoTigre
#**
#**  Summary  :  Clan Hells Horses Hephaestus Scount Tank
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandUnit = import('/lua/terranunits.lua').TLandUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon


HHHEPHAESTUS = Class(TLandUnit) {
    Weapons = {
        CMPL = Class(CDFParticleCannonWeapon) {},
    },
}

TypeClass = HHHEPHAESTUS