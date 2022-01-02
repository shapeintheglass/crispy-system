local L0_472, L1_473, L2_474
L0_472 = {}
L1_473 = {}
L1_473.mass = 5
L1_473.density = 200
L1_473.fileModel = "Objects/testcloth.cgf"
L2_474 = {}
L2_474.x = 0
L2_474.y = 0
L2_474.z = -9.81
L1_473.gravity = L2_474
L1_473.damping = 0
L1_473.max_time_step = 0.025
L1_473.sleep_speed = 0.1
L1_473.thickness = 0.06
L1_473.friction = 0
L1_473.max_safe_step = 0.4
L1_473.stiffness = 500
L1_473.damping_ratio = 0.9
L1_473.air_resistance = 0
L2_474 = {}
L2_474.x = 0
L2_474.y = 0
L2_474.z = 0
L1_473.wind = L2_474
L1_473.max_iters = 40
L1_473.accuracy = 0.01
L1_473.water_resistance = 600
L1_473.impulse_scale = 0.02
L1_473.explosion_scale = 0.002
L1_473.collision_impulse_scale = 1
L1_473.max_collision_impulse = 160
L1_473.bCollideWithTerrain = 0
L1_473.bCollideWithStatics = 1
L1_473.bCollideWithPhysical = 1
L1_473.bCollideWithPlayers = 1
L0_472.Properties = L1_473
L0_472.id_attach_to = -1
L0_472.id_part_attach_to = -1
L1_473 = {}
L1_473.Model = "Objects/Editor/LightSphear.cgf"
L0_472.Editor = L1_473
TestCloth = L0_472
L0_472 = TestCloth
function L1_473(A0_475)
  local L1_476
  A0_475.lightId = nil
  L1_476 = A0_475.NetPresent
  L1_476(A0_475, nil)
  L1_476 = A0_475.Activate
  L1_476(A0_475, 1)
  L1_476 = A0_475.LoadObject
  L1_476(A0_475, A0_475.Properties.fileModel, 0, 1, "cloth")
  L1_476 = A0_475.CreateSoftEntity
  L1_476(A0_475, A0_475.Properties.mass, A0_475.Properties.density, 1, A0_475.id_attach_to, A0_475.id_part_attach_to)
  L1_476 = A0_475.SetPhysicParams
  L1_476(A0_475, PHYSICPARAM_SIMULATION, A0_475.Properties)
  L1_476 = A0_475.SetPhysicParams
  L1_476(A0_475, PHYSICPARAM_BUOYANCY, A0_475.Properties)
  L1_476 = A0_475.SetPhysicParams
  L1_476(A0_475, PHYSICPARAM_SOFTBODY, A0_475.Properties)
  L1_476 = {}
  L1_476.collision_mask = 0
  if A0_475.Properties.bCollideWithTerrain == 1 then
    L1_476.collision_mask = L1_476.collision_mask + ent_terrain
  end
  if A0_475.Properties.bCollideWithStatics == 1 then
    L1_476.collision_mask = L1_476.collision_mask + ent_static
  end
  if A0_475.Properties.bCollideWithPhysical == 1 then
    L1_476.collision_mask = L1_476.collision_mask + ent_rigid + ent_sleeping_rigid
  end
  if A0_475.Properties.bCollideWithPlayers == 1 then
    L1_476.collision_mask = L1_476.collision_mask + ent_living
  end
  A0_475:SetPhysicParams(PHYSICPARAM_SOFTBODY, L1_476)
  A0_475:DrawObject(0, 1)
  A0_475:AwakePhysics(0)
end
L0_472.OnReset = L1_473
L0_472 = TestCloth
function L1_473(A0_477)
  A0_477:OnReset()
end
L0_472.OnPropertyChange = L1_473
L0_472 = TestCloth
function L1_473(A0_478, A1_479)
  if A1_479.ipart then
    A0_478:AddImpulse(A1_479.ipart, A1_479.pos, A1_479.dir, A1_479.impact_force_mul)
  else
    A0_478:AddImpulse(-1, A1_479.pos, A1_479.dir, A1_479.impact_force_mul)
  end
end
L0_472.OnDamage = L1_473
L0_472 = TestCloth
function L1_473(A0_480)
  A0_480:SetUpdateType(eUT_Visible)
  A0_480:OnReset()
end
L0_472.OnInit = L1_473
L0_472 = TestCloth
function L1_473(A0_481)
  local L1_482
end
L0_472.OnShutDown = L1_473
