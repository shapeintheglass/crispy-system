Script.ReloadScript("scripts/Utils/EntityUtils.lua")
DeflectorShield = {
  Server = {},
  Client = {},
  Properties = {
    object_Model = "engine/engineassets/objects/default.cgf",
    ParticleEffect = "",
    MinDamage = 50,
    MaxDamage = 500,
    DropMinDistance = 10,
    DropPerMeter = 10,
    EnergyRadius = 0.4,
    EnergyDelay = 0.75,
    Spread = 0.1,
    HitType = "bullet",
    AmmoType = "deflectedblast",
    Physics = {Density = -1, Mass = -1}
  },
  Editor = {
    Icon = "Tornado.bmp"
  }
}
function DeflectorShield.CacheResources(A0_6725)
  if A0_6725.Properties.object_Model ~= "" then
    A0_6725:LoadObject(0, A0_6725.Properties.object_Model)
  end
  A0_6725:PreLoadParticleEffect(A0_6725.Properties.ParticleEffect)
end
function DeflectorShield.Server.OnInit(A0_6726)
  A0_6726:OnReset()
end
function DeflectorShield.Client.OnInit(A0_6727)
  if not CryAction.IsServer() then
    A0_6727:OnReset()
  end
end
function DeflectorShield.OnSpawn(A0_6728)
  A0_6728:SetFromProperties()
end
function DeflectorShield.OnReset(A0_6729)
  A0_6729:PhysicalizeThis()
  A0_6729:AwakePhysics(0)
  A0_6729:Recharged()
end
function DeflectorShield.OnPropertyChange(A0_6730)
  A0_6730:SetFromProperties()
end
function DeflectorShield.PhysicalizeThis(A0_6731)
  local L1_6732
  L1_6732 = A0_6731.Properties
  L1_6732 = L1_6732.Physics
  EntityCommon.PhysicalizeRigid(A0_6731, 0, L1_6732, 0)
end
function DeflectorShield.SetFromProperties(A0_6733)
  local L1_6734
  L1_6734 = A0_6733.Properties
  if L1_6734.object_Model == "" then
    return
  end
  A0_6733:LoadObject(0, L1_6734.object_Model)
  A0_6733:PhysicalizeThis()
end
function DeflectorShield.Die(A0_6735, A1_6736)
  A0_6735:Depleted()
end
function DeflectorShield.Server.OnHit(A0_6737, A1_6738)
  local L2_6739
  L2_6739 = A0_6737.dead
  if L2_6739 ~= nil then
    L2_6739 = A0_6737.dead
    if L2_6739 then
      L2_6739 = true
      return L2_6739
    end
  end
  L2_6739 = A1_6738.damage
  if A0_6737:IsInvulnerable() then
    return true
  end
  A0_6737.health = A0_6737.health - L2_6739
  if A0_6737.health <= 0 then
    A0_6737:Die(A1_6738)
  end
  return true
end
function DeflectorShield.OnLoad(A0_6740, A1_6741)
  A0_6740.health = A1_6741.health
end
function DeflectorShield.OnSave(A0_6742, A1_6743)
  A1_6743.health = A0_6742.health
end
function DeflectorShield.Recharged(A0_6744)
  A0_6744.health = A0_6744.Properties.Health.MaxHealth
  A0_6744.dead = false
  A0_6744:Hide(0)
end
function DeflectorShield.Depleted(A0_6745)
  A0_6745.health = 0
  A0_6745.dead = true
  A0_6745:Hide(1)
end
function DeflectorShield.Event_Hide(A0_6746)
  A0_6746:Depleted()
end
function DeflectorShield.Event_UnHide(A0_6747)
  A0_6747:Recharged()
end
DeflectorShield.FlowEvents = {
  Inputs = {
    Hide = {
      DeflectorShield.Event_Hide,
      "bool"
    },
    UnHide = {
      DeflectorShield.Event_UnHide,
      "bool"
    }
  }
}
MakeKillable(DeflectorShield)
