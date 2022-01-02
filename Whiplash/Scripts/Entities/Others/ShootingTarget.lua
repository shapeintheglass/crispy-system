local L0_7173, L1_7174
L0_7173 = {}
L1_7174 = {}
L0_7173.Client = L1_7174
L1_7174 = {}
L0_7173.Server = L1_7174
L1_7174 = {}
L1_7174.fileModel = "objects/library/architecture/aircraftcarrier/props/misc/target.cgf"
L1_7174.bTurningMode = 1
L1_7174.fIntervallMin = 3
L1_7174.fIntervallMax = 5
L1_7174.fLightUpTime = 2
L1_7174.fTurnSpeed = 0.5
L1_7174.soclasses_SmartObjectClass = "ShootingTarget"
L0_7173.Properties = L1_7174
L1_7174 = {}
L1_7174.Icon = "Item.bmp"
L1_7174.ShowBounds = 1
L0_7173.Editor = L1_7174
L1_7174 = {
  "Activated",
  "Deactivated",
  "Turning",
  "Init"
}
L0_7173.States = L1_7174
ShootingTarget = L0_7173
L0_7173 = 0
ACTIVATION_TIMER = L0_7173
L0_7173 = 1
TURN_TIMER = L0_7173
L0_7173 = ShootingTarget
function L1_7174(A0_7175)
  local L1_7176
  L1_7176 = A0_7175.Properties
  if not EmptyString(L1_7176.fileModel) then
    A0_7175:LoadObject(0, L1_7176.fileModel)
  end
  EntityCommon.PhysicalizeRigid(A0_7175, 0, A0_7175.physics, 0)
  A0_7175.side = 0
  A0_7175.ended = 0
  A0_7175:GetAngles(A0_7175.initialrot)
  CopyVector(A0_7175.turnrot, A0_7175.initialrot)
  A0_7175.turnrot.z = A0_7175.turnrot.z + math.pi / 2
  A0_7175:Activate(1)
  A0_7175:GotoState("Deactivated")
end
L0_7173.OnReset = L1_7174
L0_7173 = ShootingTarget
function L1_7174(A0_7177, A1_7178)
  local L2_7179
  L2_7179 = A0_7177.side
  A1_7178.side = L2_7179
  L2_7179 = A0_7177.ended
  A1_7178.ended = L2_7179
end
L0_7173.OnSave = L1_7174
L0_7173 = ShootingTarget
function L1_7174(A0_7180, A1_7181)
  local L2_7182
  L2_7182 = A1_7181.side
  A0_7180.side = L2_7182
  L2_7182 = A1_7181.ended
  A0_7180.ended = L2_7182
end
L0_7173.OnLoad = L1_7174
L0_7173 = ShootingTarget
function L1_7174(A0_7183)
  A0_7183:OnReset()
end
L0_7173.OnPropertyChange = L1_7174
L0_7173 = ShootingTarget
L0_7173 = L0_7173.Server
function L1_7174(A0_7184)
  A0_7184.physics = {
    bRigidBody = 0,
    bRigidBodyActive = 0,
    Density = -1,
    Mass = -1
  }
  A0_7184.tmp = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7184.turnrot = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7184.initialrot = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_7184.inc = 0
  A0_7184.init = 1
  A0_7184:OnReset()
end
L0_7173.OnInit = L1_7174
L0_7173 = ShootingTarget
L0_7173 = L0_7173.Server
function L1_7174(A0_7185, A1_7186)
  local L2_7187, L3_7188
  L3_7188 = A0_7185
  L2_7187 = A0_7185.GetState
  L2_7187 = L2_7187(L3_7188)
  if L2_7187 ~= "Activated" then
    return
  end
  L2_7187 = g_Vectors
  L2_7187 = L2_7187.temp
  L3_7188 = SubVectors
  L3_7188(L2_7187, A0_7185:GetPos(), A1_7186.pos)
  L3_7188 = LengthVector
  L3_7188 = L3_7188(L2_7187)
  L3_7188 = (1 - L3_7188 * 2 + 0.08) * 10
  if L3_7188 > 9.4 then
    L3_7188 = 10
  else
    dec = string.find(L3_7188, ".", 1, 1)
    L3_7188 = tonumber(string.sub(L3_7188, 1, dec - 1))
  end
  if A0_7185.Properties.bTurningMode == 1 then
    if A1_7186.shooter and A1_7186.shooter == g_localActor then
    else
    end
    if A0_7185.side == 1 then
      A0_7185:GotoState("Init")
      A0_7185:ActivateOutput("Hit", L3_7188)
    else
      A0_7185:ActivateOutput("Hit", -1)
    end
  else
  end
end
L0_7173.OnHit = L1_7174
L0_7173 = ShootingTarget
function L1_7174(A0_7189)
  A0_7189:GotoState("Init")
  BroadcastEvent(A0_7189, "Activated")
end
L0_7173.Event_Activated = L1_7174
L0_7173 = ShootingTarget
function L1_7174(A0_7190)
  A0_7190.ended = 1
  A0_7190:GotoState("Deactivated")
  BroadcastEvent(A0_7190, "Deactivated")
end
L0_7173.Event_Deactivated = L1_7174
L0_7173 = ShootingTarget
L0_7173 = L0_7173.Server
L1_7174 = {}
function L1_7174.OnBeginState(A0_7191)
  local L1_7192
  L1_7192 = A0_7191.init
  if L1_7192 == 0 then
    L1_7192 = A0_7191.Properties
    A0_7191:KillTimer(ACTIVATION_TIMER)
    A0_7191:KillTimer(TURN_TIMER)
    AI.SetSmartObjectState(A0_7191.id, "Neutral")
    if L1_7192.fIntervallMin > L1_7192.fIntervallMax then
      L1_7192.fIntervallMin = L1_7192.fIntervallMax
    end
    A0_7191:SetTimer(ACTIVATION_TIMER, 20)
  else
    A0_7191.init = 0
  end
end
function L1_7174.OnTimer(A0_7193, A1_7194, A2_7195)
  if A1_7194 == ACTIVATION_TIMER then
    A0_7193:GetAngles(A0_7193.tmp)
    A0_7193.inc = A0_7193.inc + A0_7193.Properties.fTurnSpeed
    A0_7193.tmp.z = A0_7193.tmp.z + A0_7193.Properties.fTurnSpeed
    A0_7193:SetAngles(A0_7193.tmp)
    if A0_7193.inc < math.pi then
      A0_7193:SetTimer(ACTIVATION_TIMER, 20)
    else
      A0_7193:SetAngles(A0_7193.initialrot)
    end
  end
end
L0_7173.Deactivated = L1_7174
L0_7173 = ShootingTarget
L0_7173 = L0_7173.Server
L1_7174 = {}
function L1_7174.OnBeginState(A0_7196)
  A0_7196.ended = 0
  if A0_7196.Properties.bTurningMode == 1 then
    AI.SetSmartObjectState(A0_7196.id, "Neutral")
    if A0_7196.Properties.fIntervallMin > A0_7196.Properties.fIntervallMax then
      A0_7196.Properties.fIntervallMin = A0_7196.Properties.fIntervallMax
    end
    A0_7196:SetTimer(ACTIVATION_TIMER, 1000 * random(A0_7196.Properties.fIntervallMin, A0_7196.Properties.fIntervallMax))
  end
end
function L1_7174.OnTimer(A0_7197, A1_7198, A2_7199)
  if A0_7197.ended == 1 then
    A0_7197:GotoState("Deactivated")
    return
  end
  if A1_7198 == ACTIVATION_TIMER then
    A0_7197:GetAngles(A0_7197.tmp)
    A0_7197.inc = A0_7197.inc + A0_7197.Properties.fTurnSpeed
    A0_7197.tmp.z = A0_7197.tmp.z - A0_7197.Properties.fTurnSpeed
    A0_7197:SetAngles(A0_7197.tmp)
    if A0_7197.inc < math.pi then
      A0_7197:SetTimer(ACTIVATION_TIMER, 20)
    else
      A0_7197:SetAngles(A0_7197.initialrot)
      AI.SetSmartObjectState(A0_7197.id, "Colored")
      A0_7197.side = 1
      A0_7197:SetTimer(TURN_TIMER, 1000 * A0_7197.Properties.fLightUpTime)
    end
  elseif A1_7198 == TURN_TIMER then
    AI.SetSmartObjectState(A0_7197.id, "Neutral")
    A0_7197:GotoState("Init")
  end
end
L0_7173.Activated = L1_7174
L0_7173 = ShootingTarget
L0_7173 = L0_7173.Server
L1_7174 = {}
function L1_7174.OnBeginState(A0_7200)
  A0_7200:KillTimer(ACTIVATION_TIMER)
  A0_7200:KillTimer(TURN_TIMER)
  A0_7200.inc = 0
  A0_7200.side = 0
  A0_7200:SetTimer(ACTIVATION_TIMER, 25)
end
function L1_7174.OnTimer(A0_7201, A1_7202, A2_7203)
  if A1_7202 == ACTIVATION_TIMER then
    A0_7201:GetAngles(A0_7201.tmp)
    A0_7201.inc = A0_7201.inc + A0_7201.Properties.fTurnSpeed
    A0_7201.tmp.z = A0_7201.tmp.z + A0_7201.Properties.fTurnSpeed
    A0_7201:SetAngles(A0_7201.tmp)
    if A0_7201.inc < math.pi / 2 then
      A0_7201:SetTimer(ACTIVATION_TIMER, 25)
    else
      A0_7201:SetAngles(A0_7201.turnrot)
      A0_7201:GotoState("Activated")
    end
  end
end
L0_7173.Init = L1_7174
L0_7173 = ShootingTarget
L1_7174 = {}
L1_7174.Inputs = {
  Deactivated = {
    ShootingTarget.Event_Deactivated,
    "bool"
  },
  Activated = {
    ShootingTarget.Event_Activated,
    "bool"
  }
}
L1_7174.Outputs = {
  Deactivated = "bool",
  Activated = "bool",
  Hit = "int",
  PlayerOne = "int",
  PlayerTwo = "int"
}
L0_7173.FlowEvents = L1_7174
