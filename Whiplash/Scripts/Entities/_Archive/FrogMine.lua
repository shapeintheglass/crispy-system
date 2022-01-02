local L0_610, L1_611
L0_610 = {}
L0_610.type = "Mine"
L0_610.MapVisMask = 0
L1_611 = {}
L1_611.Radius = 4
L1_611.bEnabled = 1
L1_611.Delay = 0.2
L1_611.bOnlyPlayer = 1
L0_610.Properties = L1_611
L1_611 = {}
L1_611.mass = 10
L1_611.size = 0.1
L1_611.heading = {
  x = 0,
  y = 0,
  z = 1
}
L1_611.initial_velocity = 18
L1_611.k_air_resistance = 0
L1_611.acc_thrust = 0
L1_611.acc_lift = 0
L1_611.surface_idx = 0
L1_611.gravity = {
  x = 0,
  y = 0,
  z = -19.62
}
L0_610.JumpParams = L1_611
L1_611 = {}
L1_611.pos = {}
L1_611.damage = 100
L1_611.rmin = 2
L1_611.rmax = 20.5
L1_611.radius = 20
L1_611.impulsive_pressure = 200
L1_611.shooter = nil
L1_611.weapon = nil
L0_610.ExplosionParams = L1_611
L1_611 = {}
L1_611.focus = 1
L1_611.color = {
  1,
  1,
  1
}
L1_611.speed = 1
L1_611.count = 2
L1_611.size = 0.2
L1_611.size_speed = 1
L1_611.gravity = -9.8
L1_611.lifetime = 1
L1_611.frames = 1
L1_611.blend_type = 0
L1_611.color_based_blending = 0
L1_611.tid = System.LoadTexture("textures/WeaponMuzzleFlash/smoke.dds")
L0_610.Smoke = L1_611
L1_611 = {}
L0_610.Editor = L1_611
L0_610.Who = nil
L0_610.Enabled = 1
FrogMine = L0_610
L0_610 = FrogMine
function L1_611(A0_612)
  A0_612:OnReset()
end
L0_610.OnPropertyChange = L1_611
L0_610 = FrogMine
function L1_611(A0_613)
  A0_613:Activate(0)
  A0_613:TrackColliders(1)
  A0_613:LoadObject("Objects/Pickups/Health/Medikit.cgf", 0, 1)
  A0_613:OnReset()
end
L0_610.OnInit = L1_611
L0_610 = FrogMine
function L1_611(A0_614)
  local L1_615
end
L0_610.OnShutDown = L1_611
L0_610 = FrogMine
function L1_611(A0_616)
  local L1_617, L2_618
  L1_617 = {}
  L2_618 = A0_616.Properties
  L2_618 = L2_618.Radius
  L2_618 = -L2_618
  L2_618 = L2_618 / 2
  L1_617.x = L2_618
  L2_618 = A0_616.Properties
  L2_618 = L2_618.Radius
  L2_618 = -L2_618
  L2_618 = L2_618 / 2
  L1_617.y = L2_618
  L2_618 = A0_616.Properties
  L2_618 = L2_618.Radius
  L2_618 = -L2_618
  L2_618 = L2_618 / 2
  L1_617.z = L2_618
  L2_618 = {}
  L2_618.x = A0_616.Properties.Radius / 2
  L2_618.y = A0_616.Properties.Radius / 2
  L2_618.z = A0_616.Properties.Radius / 2
  A0_616:SetBBox(L1_617, L2_618)
  A0_616:DrawObject(0, 1)
  A0_616.Enabled = A0_616.Properties.bEnabled
  A0_616.Who = nil
  A0_616.Died = 0
  A0_616:GotoState("Waiting")
end
L0_610.OnReset = L1_611
L0_610 = FrogMine
function L1_611(A0_619, A1_620)
  A0_619.Enabled = 1
  BroadcastEvent(A0_619, "Enable")
end
L0_610.Event_Enable = L1_611
L0_610 = FrogMine
function L1_611(A0_621, A1_622)
  A0_621.Enabled = 0
  BroadcastEvent(A0_621, "Disable")
end
L0_610.Event_Disable = L1_611
L0_610 = FrogMine
function L1_611(A0_623, A1_624)
  System.LogToConsole("Trigered")
  if A0_623.Enabled ~= 0 and A0_623.Died == 0 then
    A0_623:GotoState("Triggered")
  end
  BroadcastEvent(A0_623, "Trigger")
end
L0_610.Event_Trigger = L1_611
L0_610 = FrogMine
function L1_611(A0_625, A1_626)
  local L2_627
  L2_627 = A0_625.Properties
  L2_627 = L2_627.bOnlyPlayer
  if L2_627 ~= 0 then
    L2_627 = A1_626.type
    if L2_627 ~= "Player" then
      L2_627 = 0
      return L2_627
    end
  end
  L2_627 = 1
  return L2_627
end
L0_610.IsValid = L1_611
L0_610 = FrogMine
L1_611 = {}
function L1_611.OnBeginState(A0_628)
  A0_628.Died = 1
  A0_628:DrawObject(0, 0)
end
L0_610.Dead = L1_611
L0_610 = FrogMine
L1_611 = {}
function L1_611.OnBeginState(A0_629)
  local L1_630
  A0_629.Who = nil
end
function L1_611.OnEnterArea(A0_631, A1_632)
  if A0_631.Enabled ~= 1 then
    return
  end
  if A0_631:IsValid(A1_632) == 0 then
    return
  end
  A0_631.Who = A1_632
  A0_631:Event_Trigger(A0_631)
end
L0_610.Waiting = L1_611
L0_610 = FrogMine
L1_611 = {}
function L1_611.OnBeginState(A0_633)
  A0_633.part_time = 10
  A0_633.speed = 20
  A0_633.curr_time = 0
  A0_633.startZ = A0_633:GetPos().z
  if 0 < A0_633.Properties.Delay then
    A0_633:SetTimer(A0_633.Properties.Delay * 1000)
  else
    A0_633:SetTimer(1)
  end
end
function L1_611.OnEndState(A0_634)
  local L1_635
  L1_635 = A0_634.GetPos
  L1_635 = L1_635(A0_634)
  L1_635.z = A0_634.startZ
  A0_634:SetPos(L1_635)
end
function L1_611.OnTimer(A0_636)
  A0_636:Explode()
  A0_636:GotoState("Dead")
  A0_636:GotoState("Waiting")
end
function L1_611.OnUpdate(A0_637, A1_638)
  local L2_639, L3_640
  L2_639 = A0_637.curr_time
  L2_639 = L2_639 + A1_638
  A0_637.curr_time = L2_639
  L2_639 = A0_637.curr_time
  L3_640 = A0_637.GetPos
  L3_640 = L3_640(A0_637)
  L3_640.z = A0_637.startZ + A0_637.speed * L2_639 - 19.62 * (L2_639 * L2_639)
  A0_637:SetPos(L3_640)
  A0_637.part_time = A0_637.part_time + A1_638 * 2
  if A0_637.part_time > 0.06 then
    Particle.CreateParticle(A0_637:GetPos(), {
      x = 0,
      y = 0,
      z = 0
    }, A0_637.Smoke)
    A0_637.part_time = 0
  end
end
L0_610.Triggered = L1_611
L0_610 = FrogMine
function L1_611(A0_641)
  local L1_642, L2_643
  L1_642 = {}
  L1_642.x = 0
  L1_642.y = 0
  L1_642.z = 0.5
  L2_643 = A0_641.GetPos
  L2_643 = L2_643(A0_641)
  ExecuteMaterial(L2_643, L1_642, Materials.mat_default.projectile_hit, 1)
  A0_641.ExplosionParams.pos = L2_643
  Game:CreateExplosion(A0_641.ExplosionParams)
  System.DeformTerrain(L2_643, 8, Grenade.decal_tid)
  A0_641:AddDynamicLight(L2_643, 20, 1, 1, 0.3, 1, 1, 1, 0.3, 1, 1)
end
L0_610.Explode = L1_611
L0_610 = FrogMine
L1_611 = {}
L1_611.Inputs = {
  Disable = {
    FrogMine.Event_Disable,
    "bool"
  },
  Enable = {
    FrogMine.Event_Enable,
    "bool"
  },
  Trigger = {
    FrogMine.Event_Trigger,
    "bool"
  }
}
L1_611.Outputs = {
  Disable = "bool",
  Enable = "bool",
  Trigger = "bool"
}
L0_610.FlowEvents = L1_611
