local L0_7857, L1_7858, L2_7859, L3_7860
L0_7857 = {}
L1_7858 = {}
L1_7858.object_Model = "engine/engineassets/objects/default.cgf"
L2_7859 = {}
L2_7859.mass = 50
L2_7859.radius = 1
L2_7859.air_resistance = 0
L3_7860 = {}
L3_7860.x = 0
L3_7860.y = 0
L3_7860.z = -9.81
L2_7859.gravity = L3_7860
L2_7859.water_resistance = 0.5
L3_7860 = {}
L3_7860.x = 0
L3_7860.y = 0
L3_7860.z = -7.8480005
L2_7859.water_gravity = L3_7860
L2_7859.min_bounce_vel = 1.5
L2_7859.accel_thrust = 0
L2_7859.accel_lift = 0
L3_7860 = {}
L3_7860.x = 0
L3_7860.y = 0
L3_7860.z = 0
L2_7859.velocity = L3_7860
L2_7859.thickness = 1
L3_7860 = {}
L3_7860.x = 0
L3_7860.y = 0
L3_7860.z = 0
L2_7859.wspin = L3_7860
L3_7860 = {}
L3_7860.x = 0
L3_7860.y = 0
L3_7860.z = 1
L2_7859.normal = L3_7860
L2_7859.pierceability = 15
L2_7859.constant_orientation = false
L2_7859.single_contact = true
L2_7859.no_roll = false
L2_7859.no_spin = true
L2_7859.no_path_alignment = false
L2_7859.collider_to_ignore = 0
L2_7859.material = ""
L1_7858.Particle = L2_7859
L0_7857.Properties = L1_7858
L1_7858 = {}
L1_7858.Icon = "physicsobject.bmp"
L1_7858.IconOnTop = 1
L0_7857.Editor = L1_7858
ParticlePhysics = L0_7857
L0_7857 = ParticlePhysics
function L1_7858(A0_7861)
  local L1_7862
  L1_7862 = A0_7861.Properties
  A0_7861:FreeSlot(0)
  if L1_7862.object_Model ~= "" then
    A0_7861:LoadObject(0, L1_7862.object_Model)
  end
  NormalizeVector(L1_7862.Particle.normal)
  A0_7861:Physicalize(0, PE_PARTICLE, L1_7862)
  A0_7861:SetSlotPos(0, {
    0,
    0,
    -L1_7862.Particle.thickness * 0.5
  })
end
L0_7857.SetFromProperties = L1_7858
L0_7857 = ParticlePhysics
function L1_7858(A0_7863)
  A0_7863:OnReset()
end
L0_7857.OnSpawn = L1_7858
L0_7857 = ParticlePhysics
function L1_7858(A0_7864)
  A0_7864:OnReset()
end
L0_7857.OnPropertyChange = L1_7858
L0_7857 = ParticlePhysics
function L1_7858(A0_7865)
  A0_7865:SetFromProperties()
end
L0_7857.OnReset = L1_7858
