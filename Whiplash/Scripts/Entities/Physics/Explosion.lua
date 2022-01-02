local L0_7724, L1_7725, L2_7726, L3_7727
L0_7724 = {}
L1_7725 = {}
L1_7725.bActive = 1
L1_7725.soclasses_SmartObjectClass = ""
L2_7726 = {}
L2_7726.ParticleEffect = "explosions.grenade_air.explosion"
L2_7726.EffectScale = 1
L2_7726.MinRadius = 5
L2_7726.Radius = 10
L2_7726.MinPhysRadius = 2.5
L2_7726.PhysRadius = 5
L2_7726.Pressure = 1000
L2_7726.Damage = 1000
L3_7727 = {}
L3_7727.x = 0
L3_7727.y = 0
L3_7727.z = 1
L2_7726.Direction = L3_7727
L1_7725.Explosion = L2_7726
L0_7724.Properties = L1_7725
L1_7725 = {}
L1_7725.Icon = "explosion.bmp"
L1_7725.IconOnTop = 1
L0_7724.Editor = L1_7725
Explosion = L0_7724
L0_7724 = Explosion
function L1_7725(A0_7728)
  A0_7728:OnReset()
end
L0_7724.OnPropertyChange = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7729)
  A0_7729:OnReset()
  A0_7729:PreLoadParticleEffect(A0_7729.Properties.Explosion.ParticleEffect)
end
L0_7724.OnInit = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7730)
  A0_7730:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_7730.bActive = A0_7730.Properties.bActive
end
L0_7724.OnReset = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7731, A1_7732)
  A1_7732.bActive = A0_7731.bActive
end
L0_7724.OnSave = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7733, A1_7734)
  A0_7733.bActive = A1_7734.bActive
end
L0_7724.OnLoad = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7735, A1_7736)
  local L2_7737
  L2_7737 = A0_7735.Properties
  L2_7737 = L2_7737.Explosion
  g_gameRules:CreateExplosion(A0_7735.id, A0_7735.id, L2_7737.Damage, A0_7735:GetWorldPos(), L2_7737.Direction, L2_7737.Radius, nil, L2_7737.Pressure, L2_7737.HoleSize, L2_7737.ParticleEffect, L2_7737.EffectScale, L2_7737.MinRadius, L2_7737.MinPhysRadius, L2_7737.PhysRadius, 4)
  BroadcastEvent(A0_7735, "Explode")
end
L0_7724.Explode = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7738, A1_7739)
  if tonumber(A0_7738.bActive) ~= 0 then
    A0_7738:Explode(NULL_ENTITY)
  end
end
L0_7724.Event_Explode = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7740, A1_7741)
  A0_7740.bActive = 1
  BroadcastEvent(A0_7740, "Activate")
end
L0_7724.Event_Activate = L1_7725
L0_7724 = Explosion
function L1_7725(A0_7742, A1_7743)
  A0_7742.bActive = 0
  BroadcastEvent(A0_7742, "Deactivate")
end
L0_7724.Event_Deactivate = L1_7725
L0_7724 = Explosion
L1_7725 = {}
L2_7726 = {}
L3_7727 = {
  Explosion.Event_Activate,
  "bool"
}
L2_7726.Activate = L3_7727
L3_7727 = {
  Explosion.Event_Deactivate,
  "bool"
}
L2_7726.Deactivate = L3_7727
L3_7727 = {
  Explosion.Event_Explode,
  "bool"
}
L2_7726.Explode = L3_7727
L1_7725.Inputs = L2_7726
L2_7726 = {}
L2_7726.Activate = "bool"
L2_7726.Deactivate = "bool"
L2_7726.Explode = "bool"
L1_7725.Outputs = L2_7726
L0_7724.FlowEvents = L1_7725
