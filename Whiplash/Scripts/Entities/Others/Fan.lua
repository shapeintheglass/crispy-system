local L0_6752, L1_6753
L0_6752 = {}
L1_6753 = {}
L0_6752.Client = L1_6753
L1_6753 = {}
L0_6752.Server = L1_6753
L1_6753 = {}
L1_6753.fileModel = "engine/engineassets/objects/default.cgf"
L1_6753.ModelSubObject = ""
L1_6753.fileModelDestroyed = ""
L1_6753.DestroyedSubObject = ""
L1_6753.MaxSpeed = 0.1
L1_6753.fHealth = 100
L1_6753.bTurnedOn = 1
L1_6753.Physics = {
  bRigidBody = 0,
  bRigidBodyActive = 0,
  bRigidBodyAfterDeath = 1,
  bResting = 1,
  Density = -1,
  Mass = 150
}
L1_6753.Breakage = {
  fLifeTime = 10,
  fExplodeImpulse = 0,
  bSurfaceEffects = 1
}
L1_6753.Destruction = {
  bExplode = 1,
  ParticleEffect = "explosions.barrel.wood_explode",
  EffectScale = 1,
  Radius = 1,
  Pressure = 1,
  Damage = 0,
  Decal = "",
  Direction = {
    x = 0,
    y = 0,
    z = 1
  }
}
L0_6752.Properties = L1_6753
L1_6753 = {}
L1_6753.Icon = "animobject.bmp"
L1_6753.IconOnTop = 1
L0_6752.Editor = L1_6753
L1_6753 = {
  "TurnedOn",
  "TurnedOff",
  "Accelerating",
  "Decelerating",
  "Destroyed"
}
L0_6752.States = L1_6753
L0_6752.fCurrentSpeed = 0
L0_6752.fDesiredSpeed = 0
L1_6753 = {}
L1_6753.impulse = {
  x = 0,
  y = 0,
  z = 0
}
L1_6753.pos = {
  x = 0,
  y = 0,
  z = 0
}
L0_6752.LastHit = L1_6753
L0_6752.shooterId = 0
Fan = L0_6752
L0_6752 = Fan
function L1_6753(A0_6754)
  A0_6754:OnReset()
end
L0_6752.OnPropertyChange = L1_6753
L0_6752 = Fan
function L1_6753(A0_6755, A1_6756)
  local L2_6757
  L2_6757 = A0_6755.fCurrentSpeed
  A1_6756.fCurrentSpeed = L2_6757
  L2_6757 = A0_6755.fDesiredSpeed
  A1_6756.fDesiredSpeed = L2_6757
end
L0_6752.OnSave = L1_6753
L0_6752 = Fan
function L1_6753(A0_6758, A1_6759)
  local L2_6760
  L2_6760 = A1_6759.fCurrentSpeed
  A0_6758.fCurrentSpeed = L2_6760
  L2_6760 = A1_6759.fDesiredSpeed
  A0_6758.fDesiredSpeed = L2_6760
end
L0_6752.OnLoad = L1_6753
L0_6752 = Fan
function L1_6753(A0_6761)
  local L1_6762
  L1_6762 = A0_6761.Properties
  A0_6761.health = L1_6762.fHealth
  if not EmptyString(L1_6762.fileModel) then
    A0_6761:LoadSubObject(0, L1_6762.fileModel, L1_6762.ModelSubObject)
  end
  if not EmptyString(L1_6762.fileModelDestroyed) then
    A0_6761:LoadSubObject(1, L1_6762.fileModelDestroyed, L1_6762.DestroyedSubObject)
  elseif not EmptyString(L1_6762.DestroyedSubObject) then
    A0_6761:LoadSubObject(1, L1_6762.fileModel, L1_6762.DestroyedSubObject)
  end
  A0_6761:SetCurrentSlot(0)
  A0_6761:PhysicalizeThis(0)
  if L1_6762.bTurnedOn == 1 then
    A0_6761.fCurrentSpeed = A0_6761.Properties.MaxSpeed
    A0_6761:GotoState("TurnedOn")
  else
    A0_6761.fCurrentSpeed = 0
    A0_6761:GotoState("TurnedOff")
  end
  A0_6761.fDesiredSpeed = A0_6761.Properties.MaxSpeed
end
L0_6752.OnReset = L1_6753
L0_6752 = Fan
function L1_6753(A0_6763, A1_6764)
  local L2_6765
  L2_6765 = A0_6763.Properties
  L2_6765 = L2_6765.Physics
  EntityCommon.PhysicalizeRigid(A0_6763, A1_6764, L2_6765, 1)
end
L0_6752.PhysicalizeThis = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Client
function L1_6753(A0_6766, A1_6767, A2_6768)
  CopyVector(A0_6766.LastHit.pos, A1_6767.pos)
  CopyVector(A0_6766.LastHit.impulse, A1_6767.dir)
  A0_6766.LastHit.impulse.x = A0_6766.LastHit.impulse.x * A1_6767.damage
  A0_6766.LastHit.impulse.y = A0_6766.LastHit.impulse.y * A1_6767.damage
  A0_6766.LastHit.impulse.z = A0_6766.LastHit.impulse.z * A1_6767.damage
end
L0_6752.OnHit = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
function L1_6753(A0_6769, A1_6770)
  A0_6769.shooterId = A1_6770.shooterId
  A0_6769.health = A0_6769.health - A1_6770.damage
  BroadcastEvent(A0_6769, "Hit")
  if A0_6769.health <= 0 then
    A0_6769:GotoState("Destroyed")
  end
end
L0_6752.OnHit = L1_6753
L0_6752 = Fan
function L1_6753(A0_6771)
  local L1_6772, L2_6773, L3_6774
  L1_6772 = A0_6771.Properties
  L2_6773 = A0_6771.LastHit
  L2_6773 = L2_6773.pos
  L3_6774 = A0_6771.LastHit
  L3_6774 = L3_6774.impulse
  A0_6771:BreakToPieces(0, 0, L1_6772.Breakage.fExplodeImpulse, L2_6773, L3_6774, L1_6772.Breakage.fLifeTime, L1_6772.Breakage.bSurfaceEffects)
  if NumberToBool(A0_6771.Properties.Destruction.bExplode) then
    g_gameRules:CreateExplosion(A0_6771.shooterId, A0_6771.id, A0_6771.Properties.Destruction.Damage, A0_6771:GetWorldPos(), A0_6771.Properties.Destruction.Direction, A0_6771.Properties.Destruction.Radius, nil, A0_6771.Properties.Destruction.Pressure, A0_6771.Properties.Destruction.HoleSize, A0_6771.Properties.Destruction.ParticleEffect, A0_6771.Properties.Destruction.EffectScale)
  end
  A0_6771:SetCurrentSlot(1)
  if L1_6772.Physics.bRigidBodyAfterDeath == 1 then
    L1_6772.Physics.bRigidBody = 1
    A0_6771:PhysicalizeThis(1)
    L1_6772.Physics.bRigidBody = L1_6772.Physics.bRigidBody
  else
    A0_6771:PhysicalizeThis(1)
  end
  A0_6771:RemoveDecals()
  A0_6771:AwakePhysics(1)
end
L0_6752.Explode = L1_6753
L0_6752 = Fan
function L1_6753(A0_6775, A1_6776)
  if A1_6776 == 0 then
    A0_6775:DrawSlot(0, 1)
    A0_6775:DrawSlot(1, 0)
  else
    A0_6775:DrawSlot(0, 0)
    A0_6775:DrawSlot(1, 1)
  end
  A0_6775.currentSlot = A1_6776
end
L0_6752.SetCurrentSlot = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
function L1_6753(A0_6777)
  if not A0_6777.bInitialized then
    A0_6777:OnReset()
    A0_6777.bInitialized = 1
  end
end
L0_6752.OnInit = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Client
function L1_6753(A0_6778)
  if not A0_6778.bInitialized then
    A0_6778:OnReset()
    A0_6778.bInitialized = 1
  end
end
L0_6752.OnInit = L1_6753
L0_6752 = Fan
function L1_6753(A0_6779)
  BroadcastEvent(A0_6779, "Destroyed")
end
L0_6752.Event_Destroyed = L1_6753
L0_6752 = Fan
function L1_6753(A0_6780)
  if A0_6780:GetState() ~= "Destroyed" then
    A0_6780:GotoState("Accelerating")
  end
end
L0_6752.Event_TurnOn = L1_6753
L0_6752 = Fan
function L1_6753(A0_6781)
  if A0_6781:GetState() ~= "Destroyed" then
    A0_6781:GotoState("Decelerating")
  end
end
L0_6752.Event_TurnOff = L1_6753
L0_6752 = Fan
function L1_6753(A0_6782)
  if A0_6782:GetState() ~= "Destroyed" then
    if A0_6782:GetState() == "Accelerating" or A0_6782:GetState() == "TurnedOn" then
      A0_6782:GotoState("Decelerating")
    elseif A0_6782:GetState() == "Decelerating" or A0_6782:GetState() == "TurnedOff" then
      A0_6782:GotoState("Accelerating")
    end
  end
end
L0_6752.Event_Switch = L1_6753
L0_6752 = Fan
function L1_6753(A0_6783, A1_6784)
  BroadcastEvent(A0_6783, "Hit")
end
L0_6752.Event_Hit = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
L1_6753 = {}
function L1_6753.OnBeginState(A0_6785)
  BroadcastEvent(A0_6785, "TurnOn")
  A0_6785:SetTimer(0, 25)
end
function L1_6753.OnTimer(A0_6786, A1_6787, A2_6788)
  A0_6786:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_6786.fCurrentSpeed
  A0_6786:SetAngles(g_Vectors.temp_v1)
  A0_6786:SetTimer(0, 25)
end
function L1_6753.OnEndState(A0_6789)
  local L1_6790
end
L0_6752.TurnedOn = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
L1_6753 = {}
function L1_6753.OnBeginState(A0_6791)
  BroadcastEvent(A0_6791, "TurnOff")
end
function L1_6753.OnEndState(A0_6792)
  local L1_6793
end
L0_6752.TurnedOff = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
L1_6753 = {}
function L1_6753.OnBeginState(A0_6794)
  A0_6794:SetTimer(0, 25)
end
function L1_6753.OnTimer(A0_6795, A1_6796, A2_6797)
  A0_6795:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_6795.fCurrentSpeed
  A0_6795:SetAngles(g_Vectors.temp_v1)
  if A0_6795.fCurrentSpeed <= A0_6795.fDesiredSpeed then
    A0_6795.fCurrentSpeed = A0_6795.fCurrentSpeed + A0_6795.fDesiredSpeed / 100
    A0_6795:SetTimer(0, 25)
  else
    A0_6795:GotoState("TurnedOn")
  end
end
function L1_6753.OnEndState(A0_6798)
  local L1_6799
end
L0_6752.Accelerating = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
L1_6753 = {}
function L1_6753.OnBeginState(A0_6800)
  A0_6800:SetTimer(0, 25)
end
function L1_6753.OnTimer(A0_6801, A1_6802, A2_6803)
  A0_6801:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_6801.fCurrentSpeed
  A0_6801:SetAngles(g_Vectors.temp_v1)
  if A0_6801.fCurrentSpeed > 0.01 then
    A0_6801.fCurrentSpeed = A0_6801.fCurrentSpeed - A0_6801.fDesiredSpeed / 100
    A0_6801:SetTimer(0, 25)
  else
    A0_6801:GotoState("TurnedOff")
  end
end
function L1_6753.OnEndState(A0_6804)
  local L1_6805
end
L0_6752.Decelerating = L1_6753
L0_6752 = Fan
L0_6752 = L0_6752.Server
L1_6753 = {}
function L1_6753.OnBeginState(A0_6806)
  A0_6806:Explode()
  BroadcastEvent(A0_6806, "Destroyed")
  A0_6806:SetTimer(0, 25)
end
function L1_6753.OnTimer(A0_6807, A1_6808, A2_6809)
  A0_6807:GetAngles(g_Vectors.temp_v1)
  g_Vectors.temp_v1.z = g_Vectors.temp_v1.z + A0_6807.fCurrentSpeed
  A0_6807:SetAngles(g_Vectors.temp_v1)
  if A0_6807.fCurrentSpeed > 0.01 then
    A0_6807.fCurrentSpeed = A0_6807.fCurrentSpeed - A0_6807.fDesiredSpeed / 100 * 2
    A0_6807:SetTimer(0, 25)
  end
end
function L1_6753.OnEndState(A0_6810)
  local L1_6811
end
L0_6752.Destroyed = L1_6753
L0_6752 = Fan
L1_6753 = {}
L1_6753.Inputs = {
  Switch = {
    Fan.Event_Switch,
    "bool"
  },
  TurnOn = {
    Fan.Event_TurnOn,
    "bool"
  },
  TurnOff = {
    Fan.Event_TurnOff,
    "bool"
  },
  Hit = {
    Fan.Event_hit,
    "bool"
  },
  Destroyed = {
    Fan.Event_Destroyed,
    "bool"
  }
}
L1_6753.Outputs = {
  TurnOn = "bool",
  TurnOff = "bool",
  Hit = "bool",
  Destroyed = "bool"
}
L0_6752.FlowEvents = L1_6753
