ElevatorSwitch = {
  Server = {},
  Client = {},
  Properties = {
    soclasses_SmartObjectClass = "ElevatorSwitch",
    objModel = "engine/engineassets/objects/default.cgf",
    nFloor = 0,
    fDelay = 3,
    fUseDistance = 1,
    UseMessage = "Use Elevator",
    Sounds = {soundSoundOnPress = ""},
    bEnabled = 1
  },
  Editor = {
    Icon = "elevator.bmp",
    IconOnTop = 0
  }
}
Net.Expose({
  Class = ElevatorSwitch,
  ClientMethods = {
    ClUsed = {RELIABLE_UNORDERED, POST_ATTACH}
  },
  ServerMethods = {
    SvRequestUse = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      ENTITYID
    }
  },
  ServerProperties = {}
})
function ElevatorSwitch.OnPreFreeze(A0_5152, A1_5153, A2_5154)
  local L3_5155
  if A1_5153 then
    L3_5155 = false
    return L3_5155
  end
end
function ElevatorSwitch.OnPropertyChange(A0_5156)
  A0_5156:Reset()
end
function ElevatorSwitch.OnReset(A0_5157)
  A0_5157:Reset()
end
function ElevatorSwitch.OnSpawn(A0_5158)
  CryAction.CreateGameObjectForEntity(A0_5158.id)
  CryAction.BindGameObjectToNetwork(A0_5158.id)
  CryAction.ForceGameObjectUpdate(A0_5158.id, true)
  A0_5158.isServer = CryAction.IsServer()
  A0_5158.isClient = CryAction.IsClient()
  A0_5158.user = 0
  A0_5158.tmp = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_5158.tmp_2 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_5158.tmp_3 = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_5158.initialdir = A0_5158:GetDirectionVector(1)
  A0_5158:Reset(1)
end
function ElevatorSwitch.OnDestroy(A0_5159)
  local L1_5160
end
function ElevatorSwitch.DoPhysicalize(A0_5161)
  if A0_5161.currModel ~= A0_5161.Properties.objModel then
    A0_5161:LoadObject(0, A0_5161.Properties.objModel)
    A0_5161:Physicalize(0, PE_RIGID, {mass = 0})
  end
  A0_5161.currModel = A0_5161.Properties.objModel
end
function ElevatorSwitch.Reset(A0_5162, A1_5163)
  A0_5162:Activate(0)
  A0_5162:DoPhysicalize()
  A0_5162.enabled = tonumber(A0_5162.Properties.bEnabled) ~= 0
end
function ElevatorSwitch.GetUsable(A0_5164)
  A0_5164:GetPos(A0_5164.tmp_2)
  g_localActor:GetPos(A0_5164.tmp_3)
  SubVectors(A0_5164.tmp, A0_5164.tmp_2, A0_5164.tmp_3)
  if A0_5164.enabled and LengthVector(A0_5164.tmp) < A0_5164.Properties.fUseDistance then
    ({}).ActionType = "ScriptDefined"
    ;({}).Use, ({}).DisplayText = {}, A0_5164.Properties.UseMessage
  end
  return {}
end
function ElevatorSwitch.OnUsed(A0_5165, A1_5166)
  A0_5165.server:SvRequestUse(A1_5166.id)
end
function ElevatorSwitch.Server.SvRequestUse(A0_5167, A1_5168)
  if A0_5167.Properties.fDelay > 0 then
    A0_5167:SetTimer(0, 1000 * A0_5167.Properties.fDelay)
  else
    A0_5167:Used()
  end
end
function ElevatorSwitch.Server.OnTimer(A0_5169, A1_5170, A2_5171)
  A0_5169:Used()
end
function ElevatorSwitch.Used(A0_5172)
  local L1_5173, L2_5174
  L1_5173 = A0_5172.enabled
  if not L1_5173 then
    return
  end
  L1_5173 = 0
  L2_5174 = A0_5172.GetLinkTarget
  L2_5174 = L2_5174(A0_5172, "up", L1_5173)
  while L2_5174 do
    L2_5174:Up(A0_5172.Properties.nFloor)
    L1_5173 = L1_5173 + 1
    L2_5174 = A0_5172:GetLinkTarget("up", L1_5173)
  end
  L1_5173 = 0
  L2_5174 = A0_5172:GetLinkTarget("down", L1_5173)
  while L2_5174 do
    L2_5174:Down(A0_5172.Properties.nFloor)
    L1_5173 = L1_5173 + 1
    L2_5174 = A0_5172:GetLinkTarget("down", L1_5173)
  end
  A0_5172:ActivateOutput("Used", true)
  A0_5172.allClients:ClUsed()
end
function ElevatorSwitch.Client.ClUsed(A0_5175)
  local L1_5176
  L1_5176 = A0_5175.Properties
  L1_5176 = L1_5176.Sounds
  L1_5176 = L1_5176.soundSoundOnPress
  if not L1_5176 or L1_5176 ~= "" then
  end
end
function ElevatorSwitch.Event_Enable(A0_5177)
  A0_5177.enabled = true
  A0_5177:ActivateOutput("Enabled", true)
end
function ElevatorSwitch.Event_Disable(A0_5178)
  A0_5178.enabled = false
  A0_5178:ActivateOutput("Disabled", true)
end
function ElevatorSwitch.Event_Use(A0_5179)
  A0_5179:Used()
end
ElevatorSwitch.FlowEvents = {
  Inputs = {
    Enable = {
      ElevatorSwitch.Event_Enable,
      "any"
    },
    Disable = {
      ElevatorSwitch.Event_Disable,
      "any"
    },
    Use = {
      ElevatorSwitch.Event_Use,
      "any"
    }
  },
  Outputs = {
    Enabled = "bool",
    Disabled = "bool",
    Used = "bool"
  }
}
