Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkHarvestable = {
  Properties = {
    object_Model = "",
    object_HarvestedModel = "",
    archetype_PickupToHarvest = "",
    nPickupCount = 1,
    textDisplayName = "",
    textUseMessage = "",
    Sound = {audioTrigger_Harvest = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    },
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    }
  },
  Editor = {
    Icon = "prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0}
}
ArkHarvestableInstanceVars = {
  m_bInit = false,
  m_referenceTable = false,
  m_bVerbose = false,
  m_audioIds = {},
  m_bEnabled = true,
  m_displayName = ""
}
GetArkEntityUtils(ArkHarvestable)
ArkMakeSaveable(ArkHarvestable)
SetupCollisionFiltering(ArkHarvestable)
function CreateHarvestable(A0_4008)
  mergef(A0_4008, ArkHarvestableInstanceVars, 1)
  A0_4008.m_referenceTable = ArkHarvestableInstanceVars
end
function ArkHarvestable.Init(A0_4009, A1_4010)
  A0_4009:Log("Init")
  if not A0_4009.m_bInit then
    A0_4009.m_bInit = true
    A0_4009.m_displayName = A0_4009.Properties.textDisplayName
    A0_4009:SetFromProperties()
  end
end
function ArkHarvestable.SetFromProperties(A0_4011)
  local L1_4012, L2_4013
  L2_4013 = A0_4011
  L1_4012 = A0_4011.Log
  L1_4012(L2_4013, "SetFromProperties")
  L1_4012 = A0_4011.Properties
  L2_4013 = ""
  if A0_4011.m_bEnabled then
    L2_4013 = L1_4012.object_Model
  else
    L2_4013 = L1_4012.object_HarvestedModel
  end
  A0_4011:SetupModelAndPhysics(L2_4013)
  GetAudioIds(L1_4012.Sound, A0_4011.m_audioIds)
  A0_4011.m_bVerbose = A0_4011.PropertiesInstance.bVerbose == 1
  A0_4011:SetDisplayName(A0_4011.m_displayName)
end
function ArkHarvestable.GetUsable(A0_4014)
  local L2_4015, L3_4016
  L2_4015 = {}
  L3_4016 = A0_4014.m_bEnabled
  if L3_4016 then
    L3_4016 = {}
    L3_4016.ActionType = "ScriptDefined"
    L3_4016.DisplayText = A0_4014.Properties.textUseMessage
    L2_4015.Use = L3_4016
  end
  return L2_4015
end
function ArkHarvestable.OnUsed(A0_4017)
  A0_4017:Log("OnUsed()")
  A0_4017:Harvest()
  A0_4017.m_bEnabled = false
end
function ArkHarvestable.OnRemoteManipulation(A0_4018)
  A0_4018:Harvest()
  A0_4018.m_bEnabled = false
end
function ArkHarvestable.GetRemoteManipulationInteraction(A0_4019)
  local L1_4020, L2_4021
  L1_4020 = {}
  L2_4021 = A0_4019.m_bEnabled
  if L2_4021 then
    L1_4020.ActionType = "ScriptDefined"
    L2_4021 = A0_4019.Properties
    L2_4021 = L2_4021.textUseMessage
    L1_4020.DisplayText = L2_4021
  end
  return L1_4020
end
function ArkHarvestable.Harvest(A0_4022)
  local L1_4023, L2_4024
  L1_4023 = A0_4022.Properties
  L2_4024 = L1_4023.object_HarvestedModel
  if L2_4024 ~= nil then
    A0_4022:SetupModelAndPhysics(L2_4024)
  end
  if A0_4022.m_audioIds.audioTrigger_Harvest then
    A0_4022:ExecuteAudioTrigger(A0_4022.m_audioIds.audioTrigger_Harvest, A0_4022:GetDefaultAuxAudioProxyID())
  end
  A0_4022.m_displayName = ""
  A0_4022:SetDisplayName(A0_4022.m_displayName)
  ItemSystem.GiveItem(L1_4023.archetype_PickupToHarvest, g_localActor:GetRawId(), L1_4023.nPickupCount)
  BroadcastEvent(A0_4022, "Harvested")
end
function ArkHarvestable.OnSpawn(A0_4025)
  CreateHarvestable(A0_4025)
end
function ArkHarvestable.OnReset(A0_4026)
  A0_4026.m_bEnabled = true
  A0_4026.m_bInit = false
  A0_4026:SetFromProperties()
end
function ArkHarvestable.OnPostLoad(A0_4027)
  A0_4027:SetFromProperties()
end
ArkHarvestable.FlowEvents = {
  Inputs = {},
  Outputs = {Harvested = "bool"}
}
