Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkWorldUI_WarmVessels_ExtractionDevice = {
  Properties = {
    object_Model = "objects/user/ebeyhl/cylinder_window_01/canister_bait_a.cgf",
    UseMessage = "",
    bUsable = 1,
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  },
  m_usable = 1,
  m_bVerbose = false
}
GetArkEntityUtils(ArkWorldUI_WarmVessels_ExtractionDevice)
function ArkWorldUI_WarmVessels_ExtractionDevice.IsUsable(A0_9090, A1_9091)
  local L2_9092
  L2_9092 = A0_9090.m_usable
  return L2_9092
end
function ArkWorldUI_WarmVessels_ExtractionDevice.GetUsableMessage(A0_9093, A1_9094)
  local L2_9095
  L2_9095 = "Insert Extraction Bait"
  return L2_9095
end
function ArkWorldUI_WarmVessels_ExtractionDevice.Event_Reset(A0_9096)
  local L1_9097
  A0_9096.m_usable = 1
end
function ArkWorldUI_WarmVessels_ExtractionDevice.OnStartGame(A0_9098)
  local L1_9099
  A0_9098.m_usable = 1
end
ArkWorldUI_WarmVessels_ExtractionDevice.FlowEvents = {
  Inputs = {
    Reset = {
      ArkWorldUI_WarmVessels_ExtractionDevice.Event_Reset,
      "bool"
    }
  },
  Outputs = {BaitLoaded = "bool"}
}
