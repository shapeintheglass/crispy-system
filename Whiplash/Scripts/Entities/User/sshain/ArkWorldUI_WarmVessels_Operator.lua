Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkWorldUI_WarmVessels_Operator = {
  Properties = {
    object_Model = "objects/user/ebeyhl/monitor_operator_a/monitor_operator_a_screen.cga",
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {Icon = "Prefab.bmp", IconOnTop = 1},
  m_buttons = {
    extraction = {
      id = 1,
      defaultLabel = "Load Extraction Device",
      readyLabel = "Going to Extraction",
      isEnabled = true
    },
    liveExam = {
      id = 3,
      defaultLabel = "Send to Live Exam",
      readyLabel = "Going to Live Exam",
      isEnabled = true
    }
  },
  m_uiElementName = "DanielleKiosk",
  m_screenBone = 1,
  m_subMatIndex = 0,
  m_instanceId = -1,
  m_fInteractDist = 2,
  m_bVerbose = false,
  m_bInit = false,
  m_usable = 1
}
GetArkEntityUtils(ArkWorldUI_WarmVessels_Operator)
function ArkWorldUI_WarmVessels_Operator.Init(A0_9125)
  if not A0_9125.m_bInit then
    A0_9125:Log("Initializing...")
    A0_9125.m_bInit = true
    A0_9125:SetFromProperties()
    A0_9125:SetupScreen()
    A0_9125:SetupButtons()
  end
end
function ArkWorldUI_WarmVessels_Operator.SetupScreen(A0_9126)
  A0_9126:Log("SetupScreen")
  A0_9126.m_instanceId = A0_9126:GetRawId()
  Ark.SetWorldUIEntity(A0_9126.id, A0_9126.m_instanceId, A0_9126:GetMaterial(0), A0_9126.m_uiElementName, A0_9126.m_subMatIndex)
  Ark.SetWorldUIDistances(A0_9126.m_instanceId, A0_9126.m_uiElementName, A0_9126.m_fInteractDist, 20, 80)
  UIAction.UnregisterElementListener(A0_9126, "")
  UIAction.RegisterElementListener(A0_9126, A0_9126.m_uiElementName, A0_9126.m_instanceId, "KioskBtnPress", "OnButtonPress")
end
function ArkWorldUI_WarmVessels_Operator.SetupButtons(A0_9127)
  for _FORV_4_, _FORV_5_ in pairs(A0_9127.m_buttons) do
    UIAction.CallFunction(A0_9127.m_uiElementName, A0_9127.m_instanceId, "setButton", _FORV_5_.id, _FORV_5_.defaultLabel, _FORV_5_.isEnabled)
  end
end
function ArkWorldUI_WarmVessels_Operator.IsUsable(A0_9128, A1_9129)
  local L2_9130
  L2_9130 = A0_9128.m_usable
  return L2_9130
end
function ArkWorldUI_WarmVessels_Operator.GetUsableMessage(A0_9131, A1_9132)
  local L2_9133
  L2_9133 = "use"
  return L2_9133
end
function ArkWorldUI_WarmVessels_Operator.OnUsed(A0_9134, A1_9135, A2_9136)
  UIAction.CallFunction(A0_9134.m_uiElementName, A0_9134.m_instanceId, "kioskInteract")
end
function ArkWorldUI_WarmVessels_Operator.OnButtonPress(A0_9137, A1_9138, A2_9139, A3_9140, A4_9141)
  local L5_9142
  L5_9142 = A4_9141[0]
  A0_9137:Log("Button pressed:" .. L5_9142)
  if L5_9142 == A0_9137.m_buttons.liveExam.id then
    BroadcastEvent(A0_9137, "GotoLiveExamPressed")
  elseif L5_9142 == A0_9137.m_buttons.extraction.id then
    BroadcastEvent(A0_9137, "GotoExtractionPressed")
  else
    LogWarning(A0_9137:GetName() .. " got into a weird state and registered a button press for a button id that doesn't exist.")
    return
  end
  UIAction.CallFunction(A0_9137.m_uiElementName, A0_9137.m_instanceId, "setButton", A0_9137.m_buttons.extraction.id, A0_9137.m_buttons.extraction.readyLabel, false)
  A0_9137.m_usable = 0
end
function ArkWorldUI_WarmVessels_Operator.Event_Reset(A0_9143)
  A0_9143:Hide(0)
  A0_9143.m_usable = 1
  A0_9143:SetupButtons()
end
function ArkWorldUI_WarmVessels_Operator.Event_Hide(A0_9144)
  A0_9144:Hide(1)
  BroadcastEvent(A0_9144, "Hidden")
end
function ArkWorldUI_WarmVessels_Operator.Event_Unhide(A0_9145)
  A0_9145:Hide(0)
  BroadcastEvent(A0_9145, "Unhidden")
end
function ArkWorldUI_WarmVessels_Operator.Event_EnableGotoExtraction(A0_9146)
  A0_9146:Log("Event_EnableGotoExtraction")
  UIAction.CallFunction(A0_9146.m_uiElementName, A0_9146.m_instanceId, "setButton", A0_9146.m_buttons.extraction.id, A0_9146.m_buttons.extraction.defaultLabel, true)
  A0_9146.m_usable = 1
end
function ArkWorldUI_WarmVessels_Operator.Event_DisableGotoExtraction(A0_9147)
  A0_9147:Log("Event_DisableGotoExtraction")
  UIAction.CallFunction(A0_9147.m_uiElementName, A0_9147.m_instanceId, "setButton", A0_9147.m_buttons.extraction.id, A0_9147.m_buttons.extraction.defaultLabel, false)
end
function ArkWorldUI_WarmVessels_Operator.Event_EnableGotoLiveExam(A0_9148)
  A0_9148:Log("Event_EnableGotoLiveExam")
  UIAction.CallFunction(A0_9148.m_uiElementName, A0_9148.m_instanceId, "setButton", A0_9148.m_buttons.liveExam.id, A0_9148.m_buttons.liveExam.defaultLabel, true)
  A0_9148.m_usable = 1
end
function ArkWorldUI_WarmVessels_Operator.Event_DisableGotoLiveExam(A0_9149)
  A0_9149:Log("Event_DisableGotoLiveExam")
  UIAction.CallFunction(A0_9149.m_uiElementName, A0_9149.m_instanceId, "setButton", A0_9149.m_buttons.liveExam.id, A0_9149.m_buttons.liveExam.defaultLabel, false)
end
function ArkWorldUI_WarmVessels_Operator.OnStartGame(A0_9150)
  A0_9150:Log("OnStartGame")
  A0_9150:Init()
end
function ArkWorldUI_WarmVessels_Operator.OnReset(A0_9151)
  A0_9151:Log("OnReset ")
  if A0_9151.Properties.Physics.bPhysicalize == 1 then
    A0_9151:PhysicalizeThis()
    A0_9151:AwakePhysics(0)
  end
  A0_9151.m_bInit = false
  A0_9151.m_usable = 1
end
ArkWorldUI_WarmVessels_Operator.FlowEvents = {
  Inputs = {
    Hide = {
      ArkWorldUI_WarmVessels_Operator.Event_Hide,
      "bool"
    },
    Unhide = {
      ArkWorldUI_WarmVessels_Operator.Event_Unhide,
      "bool"
    },
    Reset = {
      ArkWorldUI_WarmVessels_Operator.Event_Reset,
      "bool"
    },
    EnableGotoExtraction = {
      ArkWorldUI_WarmVessels_Operator.Event_EnableGotoExtraction,
      "bool"
    },
    DisableGotoExtraction = {
      ArkWorldUI_WarmVessels_Operator.Event_DisableGotoExtraction,
      "bool"
    },
    EnableGotoLiveExam = {
      ArkWorldUI_WarmVessels_Operator.Event_EnableGotoLiveExam,
      "bool"
    },
    DisableGotoLiveExam = {
      ArkWorldUI_WarmVessels_Operator.Event_DisableGotoLiveExam,
      "bool"
    }
  },
  Outputs = {
    GotoExtractionPressed = "bool",
    GotoLiveExamPressed = "bool",
    Hidden = "bool",
    Unhidden = "bool"
  }
}
