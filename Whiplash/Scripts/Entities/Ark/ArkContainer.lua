Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkContainer = {
  Properties = {
    bUseSafeCarry = false,
    carryDirection = {
      x = 0,
      y = 0,
      z = 0
    },
    carryHeightOffset = 0,
    carryForwardOffset = 0,
    object_Model = "",
    material_Material = "",
    ability_CarryRequirement = "",
    bIsMimicable = true,
    bIsAlienGiblet = false,
    sPlayerMimicSurrogate = "",
    bCanTriggerAreas = 0,
    textDisplayName = "@i_defaultContainer",
    textDisplayText = "",
    ei_TransparencyMode = 0,
    vector_ThrowAngularImpulse = {
      x = -10,
      y = 0,
      z = 0
    },
    fLookAtDelay = 0.3,
    loottables_defaultLootTable = "",
    bRandomizeLootTable = false,
    nChanceEmpty = 0,
    AI = {bUsedAsDynamicObstacle = 1},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      Density = 10,
      Mass = -1
    },
    Sound = {
      audioTrigger_Carry = "",
      audioTrigger_HoldCarryStart = "",
      audioTrigger_HoldCarryCancel = ""
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
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
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bUsable = 1,
    bVerbose = 0,
    bUsedAsDynamicObstacle = 1
  }
}
ArkContainerInstanceVars = {
  m_bVerbose = false,
  m_referenceTable = false,
  m_bUsable = false,
  m_bInit = false,
  m_audioIds = {},
  Container = {}
}
GetArkEntityUtils(ArkContainer)
SetupCollisionFiltering(ArkContainer)
ArkMakeContainer(ArkContainer)
ArkMakeSaveable(ArkContainer)
function CreateContainer(A0_3528)
  mergef(A0_3528, ArkContainerInstanceVars, 1)
  A0_3528.m_referenceTable = ArkContainerInstanceVars
end
function ArkContainer.GetUsable(A0_3529)
  local L1_3530, L2_3531, L3_3532
  L1_3530 = {}
  L2_3531 = A0_3529.m_bUsable
  if L2_3531 then
    L2_3531 = A0_3529.Properties
    L2_3531 = L2_3531.ContainerInfo
    L2_3531 = L2_3531.bPreventStorage
    if not L2_3531 then
      L2_3531 = {}
      L2_3531.ActionType = "ScriptDefined"
      L3_3532 = A0_3529.Properties
      L3_3532 = L3_3532.textDisplayText
      L2_3531.DisplayText = L3_3532
      L1_3530.Loot = L2_3531
    end
    L2_3531 = A0_3529.Properties
    L2_3531 = L2_3531.Physics
    L2_3531 = L2_3531.bRigidBody
    if L2_3531 == 1 then
      L2_3531 = A0_3529.Properties
      L2_3531 = L2_3531.ability_CarryRequirement
      if L2_3531 then
        L3_3532 = {}
        L3_3532.ActionType = "Carry"
        L1_3530["Hold Use"] = L3_3532
      end
    end
  end
  return L1_3530
end
function ArkContainer.GetRemoteManipulationInteraction(A0_3533)
  local L1_3534, L2_3535
  L1_3534 = {}
  L2_3535 = A0_3533.PropertiesInstance
  L2_3535 = L2_3535.bUsable
  if L2_3535 == 1 then
    L2_3535 = A0_3533.Properties
    L2_3535 = L2_3535.ContainerInfo
    L2_3535 = L2_3535.bPreventStorage
    if not L2_3535 then
      L1_3534.ActionType = "ScriptDefined"
    end
  end
  L1_3534.CouldChange = false
  return L1_3534
end
function ArkContainer.OnRemoteManipulation(A0_3536, A1_3537)
  A0_3536:OpenExternalInventory()
end
function ArkContainer.Init(A0_3538, A1_3539)
  A0_3538:Log("Init()")
  if not A0_3538.m_bInit then
    A0_3538:Log("ArkContainer:Init")
    A0_3538.m_bInit = true
    A0_3538:SetFromProperties()
    if A0_3538.Properties.bCanTriggerAreas == 1 then
      A0_3538:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
    else
      A0_3538:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
    end
    if A1_3539 then
      CryAction.CreateGameObjectForEntity(A0_3538.id)
      A0_3538:SetDisplayName(A0_3538.Properties.textDisplayName)
      A0_3538:InitInventory()
      A0_3538:SpawnLootFromTable()
    end
  end
end
function ArkContainer.SetFromProperties(A0_3540)
  A0_3540:Log("SetFromProperties()")
  A0_3540.m_bVerbose = A0_3540.PropertiesInstance.bVerbose == 1
  A0_3540.m_bUsable = A0_3540.PropertiesInstance.bUsable == 1
  A0_3540:SetupModelAndPhysics()
  A0_3540:ApplyOverrideMaterial()
  GetAudioIds(A0_3540.Properties.Sound, A0_3540.m_audioIds)
end
function ArkContainer.OnLoot(A0_3541, A1_3542)
  A0_3541:OpenExternalInventory()
end
function ArkContainer.OnReset(A0_3543)
  A0_3543:ResetContainer()
  A0_3543:SetFromProperties()
  A0_3543.m_bInit = false
end
function ArkContainer.OnSpawn(A0_3544)
  CreateContainer(A0_3544)
end
function ArkContainer.OnPostLoad(A0_3545)
  A0_3545:Log("OnPostLoad")
  A0_3545:GotoState("")
  A0_3545:SetupModelAndPhysics()
  A0_3545:ApplyOverrideMaterial()
end
function ArkContainer.ApplyOverrideMaterial(A0_3546)
  local L1_3547, L2_3548
  L1_3547 = A0_3546.Properties
  L2_3548 = L1_3547.material_Material
  if L2_3548 ~= "" then
    A0_3546:SetMaterial(L2_3548)
  end
end
function ArkContainer.OnQuickLooted(A0_3549, A1_3550)
  BroadcastEvent(A0_3549, "OnQuickLooted")
end
ArkContainer.FlowEvents = {
  Outputs = {OnOpen = "bool", OnQuickLooted = "bool"}
}
