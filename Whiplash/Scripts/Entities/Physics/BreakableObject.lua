Script.ReloadScript("scripts/Utils/EntityUtils.lua")
BreakableObject = {
  Properties = {
    objModel = "engine/engineassets/objects/default.cgf",
    fDensity = 5000,
    fMass = -1,
    bResting = 0,
    bRigidBody = 0,
    bPickable = 0,
    bUsable = 0,
    nBreakableType = 0,
    PhysicsBuoyancy = {
      water_density = 1,
      water_damping = 1.5,
      water_resistance = 0
    },
    PhysicsSimulation = {
      max_time_step = 0.01,
      sleep_speed = 0.04,
      damping = 0
    },
    PhysicsBreakable = {
      max_push_force = 0.01,
      max_pull_force = 0.01,
      max_shift_force = 0.01,
      max_twist_torque = 0.01,
      max_bend_torque = 0.01,
      crack_weaken = 0.5,
      GroundPlanes = {
        positiveX = 0,
        negativeX = 0,
        positiveY = 0,
        negativeY = 0,
        positiveZ = 0.05,
        negativeZ = 0
      }
    }
  },
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  }
}
function BreakableObject.OnSave(A0_7531, A1_7532)
  A1_7532.first_break = A0_7531.first_break
end
function BreakableObject.OnLoad(A0_7533, A1_7534)
  A0_7533.first_break = A1_7534.first_break
end
function BreakableObject.OnSpawn(A0_7535)
  A0_7535:OnReset()
end
function BreakableObject.OnReset(A0_7536)
  local L1_7537, L2_7538, L3_7539, L4_7540
  L2_7538 = A0_7536
  L1_7537 = A0_7536.ResetOnUsed
  L1_7537(L2_7538)
  L2_7538 = A0_7536
  L1_7537 = A0_7536.LoadObject
  L3_7539 = 0
  L4_7540 = A0_7536.Properties
  L4_7540 = L4_7540.objModel
  L1_7537(L2_7538, L3_7539, L4_7540)
  L2_7538 = A0_7536
  L1_7537 = A0_7536.DrawSlot
  L3_7539 = 0
  L4_7540 = 1
  L1_7537(L2_7538, L3_7539, L4_7540)
  L1_7537 = nil
  L2_7538 = tonumber
  L3_7539 = A0_7536.Properties
  L3_7539 = L3_7539.bRigidBody
  L2_7538 = L2_7538(L3_7539)
  if L2_7538 ~= 0 then
    L1_7537 = PE_RIGID
  else
    L1_7537 = PE_STATIC
  end
  L2_7538 = A0_7536.Properties
  L4_7540 = A0_7536
  L3_7539 = A0_7536.Physicalize
  L3_7539(L4_7540, 0, L1_7537, {
    mass = L2_7538.fMass,
    density = L2_7538.fDensity
  })
  L4_7540 = A0_7536
  L3_7539 = A0_7536.LoadObjectLattice
  L3_7539(L4_7540, 0)
  L4_7540 = A0_7536
  L3_7539 = A0_7536.SetPhysicParams
  L3_7539(L4_7540, PHYSICPARAM_SUPPORT_LATTICE, L2_7538.PhysicsBreakable)
  L4_7540 = A0_7536
  L3_7539 = A0_7536.SetPhysicParams
  L3_7539(L4_7540, PHYSICPARAM_SIMULATION, L2_7538.PhysicsSimulation)
  L4_7540 = A0_7536
  L3_7539 = A0_7536.SetPhysicParams
  L3_7539(L4_7540, PHYSICPARAM_BUOYANCY, L2_7538.PhysicsBuoyancy)
  L4_7540 = A0_7536
  L3_7539 = A0_7536.SetPhysicParams
  L3_7539(L4_7540, PHYSICPARAM_PART_FLAGS, {
    partId = 0,
    mat_breakable = L2_7538.nBreakableType
  })
  L3_7539 = L2_7538.PhysicsBreakable
  L3_7539 = L3_7539.GroundPlanes
  L4_7540 = 0
  if L3_7539.positiveX ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 1, {
      x = 1,
      y = 0,
      z = 0
    }, L3_7539.positiveX)
    L4_7540 = L4_7540 + 1
  end
  if L3_7539.negativeX ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 1, {
      x = -1,
      y = 0,
      z = 0
    }, L3_7539.negativeX)
    L4_7540 = L4_7540 + 1
  end
  if L3_7539.positiveY ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 2, {
      x = 0,
      y = 1,
      z = 0
    }, L3_7539.positiveY)
    L4_7540 = L4_7540 + 1
  end
  if L3_7539.negativeY ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 2, {
      x = 0,
      y = -1,
      z = 0
    }, L3_7539.negativeY)
    L4_7540 = L4_7540 + 1
  end
  if L3_7539.positiveZ ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 3, {
      x = 0,
      y = 0,
      z = 1
    }, L3_7539.positiveZ)
    L4_7540 = L4_7540 + 1
  end
  if L3_7539.negativeZ ~= 0 then
    A0_7536:SetGroundPlane(L4_7540, 3, {
      x = 0,
      y = 0,
      z = -1
    }, L3_7539.negativeZ)
    L4_7540 = L4_7540 + 1
  end
  if tonumber(A0_7536.Properties.bResting) ~= 0 then
    A0_7536:AwakePhysics(0)
  else
    A0_7536:AwakePhysics(1)
  end
  A0_7536.radius = 0.15 + math.max(A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x - A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x, math.max(A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y - A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y, A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z - A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z))
  A0_7536.center = {
    x = (A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x + A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).x) * 0.5,
    y = (A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y + A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).y) * 0.5,
    z = (A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z + A0_7536:GetWorldBBox(g_Vectors.temp_v1, g_Vectors.temp_v2).z) * 0.5
  }
  A0_7536.first_break = true
end
function BreakableObject.SetGroundPlane(A0_7541, A1_7542, A2_7543, A3_7544, A4_7545)
  A0_7541:SetPhysicParams(PHYSICPARAM_GROUND_PLANE, {
    origin = {
      x = ({
        x = (A0_7541:GetLocalBBox().x + A0_7541:GetLocalBBox().x) * 0.5,
        y = (A0_7541:GetLocalBBox().y + A0_7541:GetLocalBBox().y) * 0.5,
        z = (A0_7541:GetLocalBBox().z + A0_7541:GetLocalBBox().z) * 0.5
      }).x + A3_7544.x * ({
        x = A0_7541:GetLocalBBox().x - A0_7541:GetLocalBBox().x,
        y = A0_7541:GetLocalBBox().y - A0_7541:GetLocalBBox().y,
        z = A0_7541:GetLocalBBox().z - A0_7541:GetLocalBBox().z
      }).x * (A4_7545 - 0.5),
      y = ({
        x = (A0_7541:GetLocalBBox().x + A0_7541:GetLocalBBox().x) * 0.5,
        y = (A0_7541:GetLocalBBox().y + A0_7541:GetLocalBBox().y) * 0.5,
        z = (A0_7541:GetLocalBBox().z + A0_7541:GetLocalBBox().z) * 0.5
      }).y + A3_7544.y * ({
        x = A0_7541:GetLocalBBox().x - A0_7541:GetLocalBBox().x,
        y = A0_7541:GetLocalBBox().y - A0_7541:GetLocalBBox().y,
        z = A0_7541:GetLocalBBox().z - A0_7541:GetLocalBBox().z
      }).y * (A4_7545 - 0.5),
      z = ({
        x = (A0_7541:GetLocalBBox().x + A0_7541:GetLocalBBox().x) * 0.5,
        y = (A0_7541:GetLocalBBox().y + A0_7541:GetLocalBBox().y) * 0.5,
        z = (A0_7541:GetLocalBBox().z + A0_7541:GetLocalBBox().z) * 0.5
      }).z + A3_7544.z * ({
        x = A0_7541:GetLocalBBox().x - A0_7541:GetLocalBBox().x,
        y = A0_7541:GetLocalBBox().y - A0_7541:GetLocalBBox().y,
        z = A0_7541:GetLocalBBox().z - A0_7541:GetLocalBBox().z
      }).z * (A4_7545 - 0.5)
    },
    normal = A3_7544,
    plane_index = A1_7542
  })
end
function BreakableObject.OnPropertyChange(A0_7546)
  A0_7546:OnReset()
end
function BreakableObject.OnShutDown(A0_7547)
  local L1_7548
end
function BreakableObject.OnPhysicsBreak(A0_7549)
  A0_7549:Event_OnBreak()
end
function BreakableObject.OnPhysicsBreak(A0_7550)
  AI.BreakEvent(A0_7550.id, A0_7550.center, A0_7550.radis)
  A0_7550:Event_OnBreak()
  if A0_7550.first_break then
    A0_7550:Event_OnFirstBreak()
    A0_7550.first_break = false
  end
end
function BreakableObject.Event_OnBreak(A0_7551)
  AI.BreakEvent(A0_7551.id, A0_7551.center, A0_7551.radis)
  BroadcastEvent(A0_7551, "OnBreak")
end
function BreakableObject.Event_OnFirstBreak(A0_7552)
  BroadcastEvent(A0_7552, "OnFirstBreak")
end
BreakableObject.FlowEvents = {
  Inputs = {
    OnBreak = {
      BreakableObject.Event_OnBreak,
      "bool"
    },
    OnFirstBreak = {
      BreakableObject.Event_OnFirstBreak,
      "bool"
    }
  },
  Outputs = {OnBreak = "bool", OnFirstBreak = "bool"}
}
MakeUsable(BreakableObject)
MakePickable(BreakableObject)
MakeTargetableByAI(BreakableObject)
MakeKillable(BreakableObject)
