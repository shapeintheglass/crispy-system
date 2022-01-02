local L0_520, L1_521, L2_522
L0_520 = {}
L1_521 = {}
L0_520.Client = L1_521
L1_521 = {}
L0_520.Server = L1_521
L1_521 = {}
L1_521.fileModel = "objects/library/props/electronic_devices/fans/ceiling_fan_local.cgf"
L1_521.fileDestroyedModel = "objects/library/props/electronic_devices/fans/ceiling_fan_local.cgf"
L1_521.MaxSpeed = 0.25
L1_521.fHealth = 25
L2_522 = {}
L2_522.bRigidBody = 1
L2_522.bRigidBodyActive = 1
L2_522.bResting = 1
L2_522.Density = -1
L2_522.Mass = 150
L1_521.Physics = L2_522
L2_522 = {}
L2_522.bExplode = 1
L2_522.Effect = "explosions.large_Vehicle.a"
L2_522.EffectScale = 0.05
L2_522.Radius = 10
L2_522.Pressure = 12
L2_522.Damage = 25
L2_522.Decal = ""
L1_521.Destruction = L2_522
L2_522 = {}
L2_522.Icon = "Item.bmp"
L2_522.IconOnTop = 1
L1_521.Editor = L2_522
L2_522 = {
  "TurnedOn",
  "TurnedOff",
  "Accelerating",
  "Decelerating",
  "Destroyed"
}
L1_521.States = L2_522
L1_521.fCurrentSpeed = 0
L1_521.fDesiredSpeed = 0
L0_520.Properties = L1_521
Fan = L0_520
L0_520 = Fan
function L1_521(A0_523)
  A0_523:OnReset()
end
L0_520.OnPropertyChange = L1_521
L0_520 = Fan
function L1_521(A0_524, A1_525)
end
L0_520.OnSave = L1_521
L0_520 = Fan
function L1_521(A0_526, A1_527)
end
L0_520.OnLoad = L1_521
L0_520 = Fan
function L1_521(A0_528)
  A0_528.health = A0_528.Properties.fHealth
  A0_528:PhysicalizeThis(0)
  A0_528:GotoState("TurnedOff")
  A0_528.fCurrentSpeed = 0
  A0_528.fDesiredSpeed = A0_528.Properties.MaxSpeed
end
L0_520.OnReset = L1_521
L0_520 = Fan
function L1_521(A0_529)
  local L1_530, L2_531
  L1_530 = A0_529.Properties
  L1_530 = L1_530.fileModel
  if L1_530 ~= "" then
    L2_531 = A0_529.LoadObject
    L2_531(A0_529, 0, L1_530)
  end
  L2_531 = A0_529.Properties
  L2_531 = L2_531.Physics
  EntityCommon.PhysicalizeRigid(A0_529, 0, L2_531, 1)
end
L0_520.PhysicalizeThis = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
function L1_521(A0_532, A1_533, A2_534, A3_535, A4_536)
  A0_532.health = A0_532.health - A4_536
  BroadcastEvent(A0_532, "Hit")
  if A0_532.health <= 0 then
    A0_532:GotoState("Destroyed")
  end
end
L0_520.OnHit = L1_521
L0_520 = Fan
function L1_521(A0_537)
  local L1_538
  L1_538 = NumberToBool
  L1_538 = L1_538(A0_537.Properties.Destruction.bExplode)
  if L1_538 then
    L1_538 = A0_537.Properties
    L1_538 = L1_538.Destruction
    g_gameRules.server:RequestExplosion(NULL_ENTITY, A0_537.id, A0_537:GetWorldPos(), L1_538.Direction, L1_538.Radius, L1_538.Pressure, L1_538.Damage, 0, 0, L1_538.Decal, L1_538.Effect, L1_538.EffectScale)
  end
  L1_538 = A0_537.Properties
  L1_538 = L1_538.fileDestroyedModel
  if L1_538 ~= "" then
    A0_537:LoadObject(0, L1_538)
  end
end
L0_520.Explode = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
function L1_521(A0_539)
  if not A0_539.bInitialized then
    A0_539:OnReset()
    A0_539.bInitialized = 1
  end
end
L0_520.OnInit = L1_521
L0_520 = Fan
L0_520 = L0_520.Client
function L1_521(A0_540)
  if not A0_540.bInitialized then
    A0_540:OnReset()
    A0_540.bInitialized = 1
  end
end
L0_520.OnInit = L1_521
L0_520 = Fan
function L1_521(A0_541)
  BroadcastEvent(A0_541, "Destroyed")
end
L0_520.Event_Destroyed = L1_521
L0_520 = Fan
function L1_521(A0_542)
  if A0_542:GetState() ~= "Destroyed" then
    A0_542:GotoState("Accelerating")
  end
end
L0_520.Event_TurnOn = L1_521
L0_520 = Fan
function L1_521(A0_543)
  if A0_543:GetState() ~= "Destroyed" then
    A0_543:GotoState("Decelerating")
  end
end
L0_520.Event_TurnOff = L1_521
L0_520 = Fan
function L1_521(A0_544)
  if A0_544:GetState() ~= "Destroyed" then
    if A0_544:GetState() == "Accelerating" or A0_544:GetState() == "TurnedOn" then
      A0_544:GotoState("Decelerating")
    elseif A0_544:GetState() == "Decelerating" or A0_544:GetState() == "TurnedOff" then
      A0_544:GotoState("Accelerating")
    end
  end
end
L0_520.Event_Switch = L1_521
L0_520 = Fan
function L1_521(A0_545, A1_546)
  BroadcastEvent(A0_545, "Hit")
end
L0_520.Event_Hit = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
L1_521 = {}
function L2_522(A0_547)
  BroadcastEvent(A0_547, "TurnOn")
  A0_547:SetTimer(0, 25)
end
L1_521.OnBeginState = L2_522
function L2_522(A0_548, A1_549, A2_550)
  A0_548:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_548.fCurrentSpeed
  A0_548:SetAngles(g_Vectors.temp_v1)
  A0_548:SetTimer(0, 25)
end
L1_521.OnTimer = L2_522
function L2_522(A0_551)
  local L1_552
end
L1_521.OnEndState = L2_522
L0_520.TurnedOn = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
L1_521 = {}
function L2_522(A0_553)
  BroadcastEvent(A0_553, "TurnOff")
end
L1_521.OnBeginState = L2_522
function L2_522(A0_554)
  local L1_555
end
L1_521.OnEndState = L2_522
L0_520.TurnedOff = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
L1_521 = {}
function L2_522(A0_556)
  A0_556:SetTimer(0, 25)
end
L1_521.OnBeginState = L2_522
function L2_522(A0_557, A1_558, A2_559)
  A0_557:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_557.fCurrentSpeed
  A0_557:SetAngles(g_Vectors.temp_v1)
  if A0_557.fCurrentSpeed <= A0_557.fDesiredSpeed then
    A0_557.fCurrentSpeed = A0_557.fCurrentSpeed + A0_557.fDesiredSpeed / 100
    A0_557:SetTimer(0, 25)
  else
    A0_557:GotoState("TurnedOn")
  end
end
L1_521.OnTimer = L2_522
function L2_522(A0_560)
  local L1_561
end
L1_521.OnEndState = L2_522
L0_520.Accelerating = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
L1_521 = {}
function L2_522(A0_562)
  A0_562:SetTimer(0, 25)
end
L1_521.OnBeginState = L2_522
function L2_522(A0_563, A1_564, A2_565)
  A0_563:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_563.fCurrentSpeed
  A0_563:SetAngles(g_Vectors.temp_v1)
  if A0_563.fCurrentSpeed > 0.01 then
    A0_563.fCurrentSpeed = A0_563.fCurrentSpeed - A0_563.fDesiredSpeed / 100
    A0_563:SetTimer(0, 25)
  else
    A0_563:GotoState("TurnedOff")
  end
end
L1_521.OnTimer = L2_522
function L2_522(A0_566)
  local L1_567
end
L1_521.OnEndState = L2_522
L0_520.Decelerating = L1_521
L0_520 = Fan
L0_520 = L0_520.Server
L1_521 = {}
function L2_522(A0_568)
  A0_568:Explode()
  BroadcastEvent(A0_568, "Destroyed")
  A0_568:SetTimer(0, 25)
end
L1_521.OnBeginState = L2_522
function L2_522(A0_569, A1_570, A2_571)
  A0_569:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_569.fCurrentSpeed
  A0_569:SetAngles(g_Vectors.temp_v1)
  if A0_569.fCurrentSpeed > 0.01 then
    A0_569.fCurrentSpeed = A0_569.fCurrentSpeed - A0_569.fDesiredSpeed / 100 * 2
    A0_569:SetTimer(0, 25)
  end
end
L1_521.OnTimer = L2_522
function L2_522(A0_572)
  local L1_573
end
L1_521.OnEndState = L2_522
L0_520.Destroyed = L1_521
L0_520 = Fan
L1_521 = {}
L2_522 = {}
L2_522.Switch = {
  Fan.Event_Switch,
  "bool"
}
L2_522.TurnOn = {
  Fan.Event_TurnOn,
  "bool"
}
L2_522.TurnOff = {
  Fan.Event_TurnOff,
  "bool"
}
L2_522.Hit = {
  Fan.Event_hit,
  "bool"
}
L2_522.Destroyed = {
  Fan.Event_Destroyed,
  "bool"
}
L1_521.Inputs = L2_522
L2_522 = {}
L2_522.TurnOn = "bool"
L2_522.TurnOff = "bool"
L2_522.Hit = "bool"
L2_522.Destroyed = "bool"
L1_521.Outputs = L2_522
L0_520.FlowEvents = L1_521
