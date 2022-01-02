Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkHoldToUse = {
  Properties = {
    object_Model = "",
    textInteractText = "",
    textDisplayName = "",
    Sound = {audioTrigger_Pressed = "", audioTrigger_Released = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  PropertiesInstance = {bVerbose = 0},
  Editor = {
    Icon = "clock.bmp",
    IconOnTop = 0,
    IsScalable = false
  }
}
ArkHoldToUseInstanceVars = {
  m_bVerbose = false,
  m_referenceTable = false,
  m_bPressed = false,
  m_bInit = false,
  m_audioIds = {}
}
GetArkEntityUtils(ArkHoldToUse)
function CreateHoldToUse(A0_4038)
  mergef(A0_4038, ArkHoldToUseInstanceVars, 1)
  A0_4038.m_referenceTable = ArkHoldToUseInstanceVars
end
function ArkHoldToUse.Init(A0_4039, A1_4040)
  if not A0_4039.m_bInit then
    A0_4039.m_bInit = true
    A0_4039:SetFromProperties()
    A0_4039:SetDisplayName(A0_4039.Properties.textDisplayName)
    GetAudioIds(A0_4039.Properties.Sound, A0_4039.m_audioIds)
  end
end
function ArkHoldToUse.GetUsable(A0_4041)
  local L3_4042
  L3_4042 = A0_4041.Properties
  ;({}).ActionType = "ScriptDefined"
  ;({}).DisplayText = L3_4042.textInteractText
  ;({}).Use, ({}).HoldDuration = {}, 0
  return {}
end
function ArkHoldToUse.OnUpdate(A0_4043)
  local L1_4044
  if A0_4043.m_bPressed then
    L1_4044 = "Pressed"
  else
    L1_4044 = "Released"
    A0_4043:Activate(0)
  end
  BroadcastEvent(A0_4043, L1_4044)
end
function ArkHoldToUse.OnHoldToUseStarted(A0_4045)
  A0_4045.m_bPressed = true
  A0_4045:Activate(1)
end
function ArkHoldToUse.OnHoldToUseStopped(A0_4046)
  local L1_4047
  A0_4046.m_bPressed = false
end
function ArkHoldToUse.OnReset(A0_4048)
  A0_4048:Log("OnReset")
  A0_4048:SetFromProperties()
  A0_4048.m_bInit = false
  A0_4048.m_bPressed = false
end
function ArkHoldToUse.OnSpawn(A0_4049)
  CreateHoldToUse(A0_4049)
  A0_4049:Log("OnSpawn")
end
ArkHoldToUse.FlowEvents = {
  Inputs = {},
  Outputs = {Pressed = "bool", Released = "bool"}
}
