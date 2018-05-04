#
# Terran Anti Air Missile
#
local TMissileAAProjectile = import('/lua/terranprojectiles.lua').TMissileAAProjectile
TAAMissileFlayer01 = Class(TMissileAAProjectile) {

    OnCreate = function(self)
        TMissileAAProjectile.OnCreate(self)
        self:SetCollisionShape('Sphere', 0, 0, 0, 0.8)
    end,

}
TypeClass = TAAMissileFlayer01

