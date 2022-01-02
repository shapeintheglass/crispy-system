Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkWorldUI_WarmVessels_Extraction = {
  Properties = {
    object_Model = "Objects/User/ebeyhl/Monitor_Extraction_A/monitor_extraction_a_screen.cga",
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
      defaultLabel = "Extract Sample",
      readyLabel = "Extraction Complete",
      isEnabled = false
    },
    container = {
      id = 2,
      defaultLabel = "Container Required",
      readyLabel = "Container Ready",
      isEnabled = false
    }
  },
  m_uiElementName = "DanielleKiosk",
  m_screenBone = 1,
  m_subMatIndex = 0,
  m_instanceId = -1,
  m_fInteractDist = 2,
  m_bVerbose = false,
  m_bInit = false,
  m_bIsContainerReady = false
}
GetArkEntityUtils(ArkWorldUI_WarmVessels_Extraction)
function ArkWorldUI_WarmVessels_Extraction.Init(A0_9065)
  if not A0_9065.m_bInit then
    A0_9065:Log("Initializing...")
    A0_9065.m_bInit = true
    A0_9065:SetFromProperties()
    A0_9065:SetupScreen()
    A0_9065:SetupButtons()
  end
end
function ArkWorldUI_WarmVessels_Extraction.SetupScreen(A0_9066)
  A0_9066:Log("SetupScreen")
  A0_9066.m_instanceId = A0_9066:GetRawId()
  Ark.SetWorldUIEntity(A0_9066.id, A0_9066.m_instanceId, A0_9066:GetMaterial(0), A0_9066.m_uiElementName, A0_9066.m_subMatIndex)
  Ark.SetWorldUIDistances(A0_9066.m_instanceId, A0_9066.m_uiElementName, A0_9066.m_fInteractDist, 20, 80)
  UIAction.UnregisterElementListener(A0_9066, "")
  UIAction.RegisterElementListener(A0_9066, A0_9066.m_uiElementName, A0_9066.m_instanceId, "KioskBtnPress", "OnButtonPress")
end
function ArkWorldUI_WarmVessels_Extraction.SetupButtons(A0_9067)
  for _FORV_4_, _FORV_5_ in pairs(A0_9067.m_buttons) do
    UIAction.CallFunction(A0_9067.m_uiElementName, A0_9067.m_instanceId, "setButton", _FORV_5_.id, _FORV_5_.defaultLabel, _FORV_5_.isEnabled)
  end
end
function ArkWorldUI_WarmVessels_Extraction.EnableExtractionButton(A0_9068)
  local L1_9069
  L1_9069 = A0_9068.m_bIsContainerReady
  if L1_9069 then
    L1_9069 = A0_9068.m_buttons
    L1_9069 = L1_9069.extraction
    UIAction.CallFunction(A0_9068.m_uiElementName, A0_9068.m_instanceId, "setButton", L1_9069.id, L1_9069.defaultLabel, true)
  end
end
function ArkWorldUI_WarmVessels_Extraction.IsUsable(A0_9070, A1_9071)
  local L2_9072
  L2_9072 = 0
  if A0_9070.m_bIsContainerReady then
    L2_9072 = 1
  end
  return L2_9072
end
function ArkWorldUI_WarmVessels_Extraction.GetUsableMessage(A0_9073, A1_9074)
  local L2_9075
  L2_9075 = "use"
  return L2_9075
end
function ArkWorldUI_WarmVessels_Extraction.OnUsed(A0_9076, A1_9077, A2_9078)
  UIAction.CallFunction(A0_9076.m_uiElementName, A0_9076.m_instanceId, "kioskInteract")
end
function ArkWorldUI_WarmVessels_Extraction.OnButtonPress(A0_9079, A1_9080, A2_9081, A3_9082, A4_9083)
  local L5_9084
  L5_9084 = A4_9083[0]
  A0_9079:Log("Button pressed:" .. L5_9084)
  if L5_9084 == A0_9079.m_buttons.extraction.id then
    BroadcastEvent(A0_9079, "StartExtraction")
    UIAction.CallFunction(A0_9079.m_uiElementName, A0_9079.m_instanceId, "setButton", A0_9079.m_buttons.extraction.id, "Extraction In Progress", false)
    A0_9079.m_bIsContainerReady = false
  end
end
function ArkWorldUI_WarmVessels_Extraction.Event_IsContainerPresent(A0_9085)
  A0_9085:Log("Is Container Present")
  UIAction.CallFunction(A0_9085.m_uiElementName, A0_9085.m_instanceId, "setButton", A0_9085.m_buttons.container.id, A0_9085.m_buttons.container.readyLabel, false)
  A0_9085.m_bIsContainerReady = true
  A0_9085:EnableExtractionButton()
end
function ArkWorldUI_WarmVessels_Extraction.Event_ExtractionComplete(A0_9086)
  A0_9086:Log("EXTRACTION COMPLETE!")
  UIAction.CallFunction(A0_9086.m_uiElementName, A0_9086.m_instanceId, "setButton", A0_9086.m_buttons.extraction.id, A0_9086.m_buttons.extraction.readyLabel, false)
end
function ArkWorldUI_WarmVessels_Extraction.Event_Reset(A0_9087)
  A0_9087.m_bIsContainerReady = false
  A0_9087.m_bInit = false
  A0_9087:SetupButtons()
end
function ArkWorldUI_WarmVessels_Extraction.OnStartGame(A0_9088)
  A0_9088:Log("OnStartGame")
  A0_9088:Init()
end
function ArkWorldUI_WarmVessels_Extraction.OnReset(A0_9089)
  A0_9089:Log("OnReset ")
  if A0_9089.Properties.Physics.bPhysicalize == 1 then
    A0_9089:PhysicalizeThis()
    A0_9089:AwakePhysics(0)
  end
  A0_9089.m_bIsContainerReady = false
  A0_9089.m_bInit = false
end
ArkWorldUI_WarmVessels_Extraction.FlowEvents = {
  Inputs = {
    IsContainerPresent = {
      ArkWorldUI_WarmVessels_Extraction.Event_IsContainerPresent,
      "bool"
    },
    ExtractionComplete = {
      ArkWorldUI_WarmVessels_Extraction.Event_ExtractionComplete,
      "bool"
    },
    Reset = {
      ArkWorldUI_WarmVessels_Extraction.Event_Reset,
      "bool"
    }
  },
  Outputs = {StartExtraction = "bool"}
}
