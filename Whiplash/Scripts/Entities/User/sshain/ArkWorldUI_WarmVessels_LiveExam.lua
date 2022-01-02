Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkWorldUI_WarmVessels_LiveExam = {
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
    liveExam = {
      id = 1,
      defaultLabel = "Sample Required",
      readyLabel = "Release to Live Exam",
      isEnabled = false
    },
    purge = {
      id = 2,
      defaultLabel = "Purge",
      readyLabel = "Purging",
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
  m_usable = 0
}
GetArkEntityUtils(ArkWorldUI_WarmVessels_LiveExam)
function ArkWorldUI_WarmVessels_LiveExam.Init(A0_9100)
  if not A0_9100.m_bInit then
    A0_9100:Log("Initializing...")
    A0_9100.m_bInit = true
    A0_9100:SetFromProperties()
    A0_9100:SetupScreen()
    A0_9100:SetupButtons()
  end
end
function ArkWorldUI_WarmVessels_LiveExam.SetupScreen(A0_9101)
  A0_9101:Log("SetupScreen")
  A0_9101.m_instanceId = A0_9101:GetRawId()
  Ark.SetWorldUIEntity(A0_9101.id, A0_9101.m_instanceId, A0_9101:GetMaterial(0), A0_9101.m_uiElementName, A0_9101.m_subMatIndex)
  Ark.SetWorldUIDistances(A0_9101.m_instanceId, A0_9101.m_uiElementName, A0_9101.m_fInteractDist, 20, 80)
  UIAction.UnregisterElementListener(A0_9101, "")
  UIAction.RegisterElementListener(A0_9101, A0_9101.m_uiElementName, A0_9101.m_instanceId, "KioskBtnPress", "OnButtonPress")
end
function ArkWorldUI_WarmVessels_LiveExam.SetupButtons(A0_9102)
  for _FORV_4_, _FORV_5_ in pairs(A0_9102.m_buttons) do
    UIAction.CallFunction(A0_9102.m_uiElementName, A0_9102.m_instanceId, "setButton", _FORV_5_.id, _FORV_5_.defaultLabel, _FORV_5_.isEnabled)
  end
end
function ArkWorldUI_WarmVessels_LiveExam.IsUsable(A0_9103, A1_9104)
  local L2_9105
  L2_9105 = A0_9103.m_usable
  return L2_9105
end
function ArkWorldUI_WarmVessels_LiveExam.GetUsableMessage(A0_9106, A1_9107)
  local L2_9108
  L2_9108 = "use"
  return L2_9108
end
function ArkWorldUI_WarmVessels_LiveExam.OnUsed(A0_9109, A1_9110, A2_9111)
  UIAction.CallFunction(A0_9109.m_uiElementName, A0_9109.m_instanceId, "kioskInteract")
end
function ArkWorldUI_WarmVessels_LiveExam.OnButtonPress(A0_9112, A1_9113, A2_9114, A3_9115, A4_9116)
  local L5_9117
  L5_9117 = A4_9116[0]
  A0_9112:Log("Button pressed:" .. L5_9117)
  if L5_9117 == A0_9112.m_buttons.liveExam.id then
    UIAction.CallFunction(A0_9112.m_uiElementName, A0_9112.m_instanceId, "setButton", L5_9117, "Releasing Sample", false)
    BroadcastEvent(A0_9112, "LiveExamPressed")
  elseif L5_9117 == A0_9112.m_buttons.purge.id then
    UIAction.CallFunction(A0_9112.m_uiElementName, A0_9112.m_instanceId, "setButton", L5_9117, A0_9112.m_buttons.purge.readyLabel, false)
    BroadcastEvent(A0_9112, "PurgePressed")
  end
end
function ArkWorldUI_WarmVessels_LiveExam.Event_EnablePurge(A0_9118)
  A0_9118:Log("Event_EnablePurge")
  UIAction.CallFunction(A0_9118.m_uiElementName, A0_9118.m_instanceId, "setButton", A0_9118.m_buttons.purge.id, A0_9118.m_buttons.purge.defaultLabel, true)
  A0_9118.m_usable = 1
end
function ArkWorldUI_WarmVessels_LiveExam.Event_DisablePurge(A0_9119)
  A0_9119:Log("Event_DisablePurge")
  UIAction.CallFunction(A0_9119.m_uiElementName, A0_9119.m_instanceId, "setButton", A0_9119.m_buttons.purge.id, A0_9119.m_buttons.purge.defaultLabel, false)
  A0_9119.m_usable = 0
end
function ArkWorldUI_WarmVessels_LiveExam.Event_EnableLiveExam(A0_9120)
  A0_9120:Log("Event_EnableLiveExam")
  UIAction.CallFunction(A0_9120.m_uiElementName, A0_9120.m_instanceId, "setButton", A0_9120.m_buttons.liveExam.id, A0_9120.m_buttons.liveExam.readyLabel, true)
  A0_9120.m_usable = 1
end
function ArkWorldUI_WarmVessels_LiveExam.Event_DisableLiveExam(A0_9121)
  A0_9121:Log("Event_DisableLiveExam")
  UIAction.CallFunction(A0_9121.m_uiElementName, A0_9121.m_instanceId, "setButton", A0_9121.m_buttons.liveExam.id, A0_9121.m_buttons.liveExam.defaultLabel, false)
  A0_9121.m_usable = 0
end
function ArkWorldUI_WarmVessels_LiveExam.Event_Reset(A0_9122)
  A0_9122:Log("Event_Reset")
  A0_9122:SetupButtons()
end
function ArkWorldUI_WarmVessels_LiveExam.OnStartGame(A0_9123)
  A0_9123:Log("OnStartGame")
  A0_9123:Init()
end
function ArkWorldUI_WarmVessels_LiveExam.OnReset(A0_9124)
  A0_9124:Log("OnReset ")
  if A0_9124.Properties.Physics.bPhysicalize == 1 then
    A0_9124:PhysicalizeThis()
    A0_9124:AwakePhysics(0)
  end
  A0_9124.m_bInit = false
  A0_9124.m_usable = 0
end
ArkWorldUI_WarmVessels_LiveExam.FlowEvents = {
  Inputs = {
    EnableLiveExam = {
      ArkWorldUI_WarmVessels_LiveExam.Event_EnableLiveExam,
      "bool"
    },
    EnablePurge = {
      ArkWorldUI_WarmVessels_LiveExam.Event_EnablePurge,
      "bool"
    },
    DisableLiveExam = {
      ArkWorldUI_WarmVessels_LiveExam.Event_DisableLiveExam,
      "bool"
    },
    DisablePurge = {
      ArkWorldUI_WarmVessels_LiveExam.Event_DisablePurge,
      "bool"
    },
    Reset = {
      ArkWorldUI_WarmVessels_LiveExam.Event_Reset,
      "bool"
    }
  },
  Outputs = {LiveExamPressed = "bool", PurgePressed = "bool"}
}
