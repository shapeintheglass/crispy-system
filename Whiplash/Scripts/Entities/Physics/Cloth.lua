local L0_7556, L1_7557, L2_7558, L3_7559
L0_7556 = {}
L1_7557 = {}
L0_7556.Server = L1_7557
L1_7557 = {}
L0_7556.Client = L1_7557
L1_7557 = {}
L1_7557.mass = 5
L1_7557.density = 200
L1_7557.fileModel = "engine/engineassets/objects/default.cgf"
L2_7558 = {}
L2_7558.x = 0
L2_7558.y = 0
L2_7558.z = -9.8
L1_7557.gravity = L2_7558
L1_7557.damping = 0.3
L1_7557.max_time_step = 0.02
L1_7557.sleep_speed = 0.01
L1_7557.thickness = 0.06
L1_7557.friction = 0
L1_7557.hardness = 20
L1_7557.air_resistance = 1
L2_7558 = {}
L2_7558.x = 0
L2_7558.y = 0
L2_7558.z = 0
L1_7557.wind = L2_7558
L2_7558 = {}
L2_7558.x = 0
L2_7558.y = 10
L2_7558.z = 0
L1_7557.wind_event = L2_7558
L1_7557.wind_variance = 0.2
L1_7557.max_iters = 20
L1_7557.accuracy = 0.05
L1_7557.water_resistance = 600
L1_7557.impulse_scale = 0.02
L1_7557.explosion_scale = 0.003
L1_7557.collision_impulse_scale = 1
L1_7557.max_collision_impulse = 160
L1_7557.mass_decay = 0
L1_7557.attach_radius = 0
L1_7557.bCollideWithTerrain = 0
L1_7557.bCollideWithStatics = 1
L1_7557.bCollideWithPhysical = 1
L1_7557.bCollideWithPlayers = 1
L1_7557.bRigidCore = 0
L1_7557.max_safe_step = 0.2
L2_7558 = {}
L2_7558.bNetworked = 0
L1_7557.MultiplayerOptions = L2_7558
L0_7556.Properties = L1_7557
L0_7556.id_attach_to = -1
L0_7556.id_part_attach_to = -1
L1_7557 = {}
L1_7557.Icon = "physicsobject.bmp"
L0_7556.Editor = L1_7557
Cloth = L0_7556
L0_7556 = Cloth
L0_7556 = L0_7556.Server
function L1_7557(A0_7560)
  A0_7560:ReattachSoftEntityVtx(A0_7560:LookForEntityToAttachTo().entityId, A0_7560:LookForEntityToAttachTo().partId)
end
L0_7556.OnUnHidden = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7561)
  local L1_7562, L2_7563, L3_7564, L4_7565
  L1_7562 = {}
  L2_7563 = A0_7561.Properties
  L2_7563 = L2_7563.density
  L1_7562.density = L2_7563
  L2_7563 = A0_7561.Properties
  L2_7563 = L2_7563.mass
  L1_7562.mass = L2_7563
  L2_7563 = A0_7561.Properties
  L2_7563 = L2_7563.bRigidCore
  L1_7562.bRigidCore = L2_7563
  L2_7563 = 0
  L4_7565 = A0_7561
  L3_7564 = A0_7561.GetLinkTarget
  L3_7564 = L3_7564(L4_7565, "AttachedTo", L2_7563)
  if L3_7564 then
    L4_7565 = L3_7564.id
    L1_7562.AttachmentIdEnt = L4_7565
    L1_7562.AttachmentPartId = -1
  else
    L4_7565 = A0_7561.LookForEntityToAttachTo
    L4_7565 = L4_7565(A0_7561)
    L1_7562.AttachmentId = L4_7565.entityId
    L1_7562.AttachmentPartId = L4_7565.partId
  end
  L4_7565 = A0_7561.Physicalize
  L4_7565(A0_7561, 0, PE_SOFT, L1_7562)
  L4_7565 = A0_7561.SetPhysicParams
  L4_7565(A0_7561, PHYSICPARAM_SIMULATION, A0_7561.Properties)
  L4_7565 = A0_7561.SetPhysicParams
  L4_7565(A0_7561, PHYSICPARAM_BUOYANCY, A0_7561.Properties)
  L4_7565 = A0_7561.SetPhysicParams
  L4_7565(A0_7561, PHYSICPARAM_SOFTBODY, A0_7561.Properties)
  L4_7565 = {}
  L4_7565.collision_mask = 0
  if A0_7561.Properties.bCollideWithTerrain == 1 then
    L4_7565.collision_mask = L4_7565.collision_mask + ent_terrain
  end
  if A0_7561.Properties.bCollideWithStatics == 1 then
    L4_7565.collision_mask = L4_7565.collision_mask + ent_static
  end
  if A0_7561.Properties.bCollideWithPhysical == 1 then
    L4_7565.collision_mask = L4_7565.collision_mask + ent_rigid + ent_sleeping_rigid
  end
  if A0_7561.Properties.bCollideWithPlayers == 1 then
    L4_7565.collision_mask = L4_7565.collision_mask + ent_living
  end
  A0_7561:SetPhysicParams(PHYSICPARAM_SOFTBODY, L4_7565)
  if 0 < A0_7561.Properties.air_resistance then
    A0_7561:AwakePhysics(1)
  else
    A0_7561:AwakePhysics(0)
  end
end
L0_7556.OnReset = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7566)
  local L1_7567
  L1_7567 = {}
  L1_7567.entityId = NULL_ENTITY
  L1_7567.partId = -1
  if A0_7566.Properties.attach_radius > 0 and Physics.SamplePhysEnvironment(A0_7566:GetPos(), A0_7566.Properties.attach_radius, ent_terrain + ent_static + ent_rigid + ent_sleeping_rigid + ent_independent)[3] then
    L1_7567.entityId = Physics.SamplePhysEnvironment(A0_7566:GetPos(), A0_7566.Properties.attach_radius, ent_terrain + ent_static + ent_rigid + ent_sleeping_rigid + ent_independent)[3]
    L1_7567.partId = Physics.SamplePhysEnvironment(A0_7566:GetPos(), A0_7566.Properties.attach_radius, ent_terrain + ent_static + ent_rigid + ent_sleeping_rigid + ent_independent)[2]
  end
  return L1_7567
end
L0_7556.LookForEntityToAttachTo = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7568)
  if A0_7568.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_7568:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  A0_7568:LoadSubObject(0, A0_7568.Properties.fileModel, "cloth")
  A0_7568:OnReset()
end
L0_7556.OnSpawn = L1_7557
L0_7556 = Cloth
L0_7556 = L0_7556.Server
function L1_7557(A0_7569)
  A0_7569:OnReset()
end
L0_7556.OnStartGame = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7570)
  A0_7570:LoadSubObject(0, A0_7570.Properties.fileModel, "cloth")
  A0_7570:OnReset()
end
L0_7556.OnPropertyChange = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7571, A1_7572)
  if A1_7572.ipart then
    A0_7571:AddImpulse(A1_7572.ipart, A1_7572.pos, A1_7572.dir, A1_7572.impact_force_mul)
  else
    A0_7571:AddImpulse(-1, A1_7572.pos, A1_7572.dir, A1_7572.impact_force_mul)
  end
end
L0_7556.OnDamage = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7573)
  A0_7573:OnReset()
end
L0_7556.OnInit = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7574)
  local L1_7575
end
L0_7556.OnShutDown = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7576, A1_7577)
  local L2_7578
  L2_7578 = {}
  L2_7578.wind = {
    x = 0,
    y = 0,
    z = 0
  }
  CopyVector(L2_7578.wind, A0_7576.Properties.wind_event)
  A0_7576:SetPhysicParams(PHYSICPARAM_SOFTBODY, L2_7578)
end
L0_7556.Event_WindOn = L1_7557
L0_7556 = Cloth
function L1_7557(A0_7579, A1_7580)
  local L2_7581
  L2_7581 = {}
  L2_7581.wind = {
    x = 0,
    y = 0,
    z = 0
  }
  CopyVector(L2_7581.wind, A0_7579.Properties.wind)
  A0_7579:SetPhysicParams(PHYSICPARAM_SOFTBODY, L2_7581)
end
L0_7556.Event_WindOff = L1_7557
L0_7556 = Cloth
L1_7557 = {}
L2_7558 = {}
L3_7559 = {
  Cloth.Event_WindOn,
  "bool"
}
L2_7558.WindOn = L3_7559
L3_7559 = {
  Cloth.Event_WindOff,
  "bool"
}
L2_7558.WindOff = L3_7559
L1_7557.Inputs = L2_7558
L2_7558 = {}
L2_7558.WindOn = "bool"
L2_7558.WindOff = "bool"
L1_7557.Outputs = L2_7558
L0_7556.FlowEvents = L1_7557
