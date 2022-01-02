Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkItem = {
  Properties = {
    Sound = {audioTrigger_PickupSFX = "", audioTrigger_InventorySFX = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bResting = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      Density = 100,
      Mass = -1
    },
    sType = "",
    object_GeometryTP = "",
    material_MaterialTP = "",
    object_GeometryFP = "",
    material_MaterialFP = "",
    textDisplayName = "@i_defaultPickup",
    textDescription = "",
    textDescriptionAdditional = "",
    textDescriptionFabPlan = "",
    metaTags_ArkMetaTags = "",
    glintconfig_GlintConfig = "16934642289625103724",
    bImportant = 0,
    gameMetric_MetricPickedUp = "",
    iDismantleCount = 0,
    bDisallowGrenades = true,
    bIsAlienGiblet = false,
    bRandomizeQuality = false,
    bLockQuality = false,
    fInteractDistanceOverride = 0,
    fInteractOuterAimDistanceOverride = 0,
    Stacks = {
      iCount = 1,
      iMaxCount = 10,
      iFabricationCount = 0,
      iRandomMin = 1,
      iRandomMax = 10,
      bRandomizeCount = 0,
      bStackable = 0,
      iDropIncrement = 1
    },
    fLerpSpeed = 9,
    Inventory = {
      bAddToInventory = 1,
      iWidth = 1,
      iHeight = 1,
      sIcon = "",
      ei_ItemCategory = 0
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    },
    bConsumable = 1,
    bDroppable = 1,
    bUsable = 0,
    bIsMimicable = true,
    bAvailableForRandom = 1,
    bCanBeFavorited = 0,
    bIsTrash = 0,
    bIsPlotCritical = 0,
    sHUDIcon = "",
    sStylizedIcon = "",
    bSurvivalMode = false,
    bDeprecated = false,
    bRequireDoomClock = 0,
    bRandomizeBasedOnFabPlans = 0,
    fDropDistance = 2,
    fDropHeightOffset = 0,
    fDropRotationMin = 1,
    fDropRotationMax = 15,
    bCanTriggerAreas = 0,
    bGooCannotAttachInGravity = 0,
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    },
    ei_ItemQuality = -1
  },
  PropertiesInstance = {iCountOverride = 0, ei_ItemQuality = -1},
  Editor = {
    Icon = "Seed.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  m_bVerbose = false,
  m_usable = 1,
  m_bWasPickedUp = false,
  displayName = "",
  inventoryName = ""
}
GetArkEntityUtils(ArkItem)
SetupCollisionFiltering(ArkItem)
function ArkItem.GetRemoteManipulationInteraction(A0_2982)
  local L1_2983
  L1_2983 = {}
  L1_2983.ActionType = "Pickup"
  L1_2983.CouldChange = false
  return L1_2983
end
function ArkItem.PlaySFX(A0_2984, A1_2985)
  local L2_2986
  L2_2986 = Sound
  L2_2986 = L2_2986.GetAudioTriggerID
  L2_2986 = L2_2986(A1_2985)
  g_localActor:ExecuteAudioTrigger(L2_2986, A0_2984:GetDefaultAuxAudioProxyID())
end
function ArkItem.SetItemUsable(A0_2987)
  local L1_2988
  A0_2987.m_usable = 1
end
function ArkItem.IsPlotCritical(A0_2989)
  return A0_2989.Properties.bIsPlotCritical
end
function ArkItem.UpdateDisplayName(A0_2990)
  local L1_2991
  L1_2991 = A0_2990.Properties
  L1_2991 = L1_2991.textDisplayName
  A0_2990.displayName = L1_2991
end
function ArkItem.UpdateInventoryName(A0_2992)
  return A0_2992.Properties.textDisplayName
end
function ArkItem.PickUp(A0_2993, A1_2994)
  return (A0_2993.arkitem:PickUp(g_localActor.id, A1_2994))
end
function ArkItem.OnUpdateAppearance(A0_2995)
  A0_2995:Log("OnUpdateAppearance not overriden or unused")
end
function ArkItem.Event_Hide(A0_2996)
  A0_2996:Hide(1)
end
function ArkItem.Event_Unhide(A0_2997)
  A0_2997:Hide(0)
end
function ArkItem.OnPickup(A0_2998, A1_2999)
  A0_2998.m_bWasPickedUp = true
  BroadcastEvent(A0_2998, "OnPickup")
  A0_2998:ActivateOutput("ItemType", A0_2998.Properties.sType)
  A0_2998:UpdateDisplayName()
  Ark.ModifyGameMetric(A0_2998.Properties.gameMetric_MetricPickedUp, A0_2998.arkitem:GetCount())
  A0_2998.arkitem:SetPhysicalizeAsStatic(false, false)
end
function ArkItem.OnUsedFromInventory(A0_3000, A1_3001)
  if A1_3001 == g_localActor then
    A0_3000:PlaySFX(A0_3000.Properties.Sound.audioTrigger_InventorySFX)
  end
  A0_3000:ActivateOutput("UsedFromInventory", true)
end
function ArkItem.OnUsedFromWorld(A0_3002, A1_3003)
  A0_3002:Log("OnUsedFromWorld not overridden.")
end
function ArkItem.OnInventoryTransfer(A0_3004, A1_3005, A2_3006)
  A0_3004:Log("ArkItem:OnInventoryTransfer")
  if A2_3006 == g_localActor then
    A0_3004:Log("target inventory was player")
    A1_3005:RegisterListenerForOnMyContainerClose(A0_3004)
  else
    A0_3004:Log("target inventory was a container")
  end
end
function ArkItem.OnMyContainerClose(A0_3007)
  A0_3007:Log("OnMyContainerClose()")
  BroadcastEvent(A0_3007, "OnMyContainerClose")
end
function ArkItem.OnInit(A0_3008)
  local L1_3009
  L1_3009 = A0_3008.Properties
  L1_3009 = L1_3009.bCanTriggerAreas
  if L1_3009 == 1 then
    L1_3009 = A0_3008.SetFlags
    L1_3009(A0_3008, ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    L1_3009 = A0_3008.SetFlags
    L1_3009(A0_3008, ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
  L1_3009 = A0_3008.GetMaterial
  L1_3009 = L1_3009(A0_3008)
  if L1_3009 == nil then
    L1_3009 = A0_3008:GetMaterial(0)
  end
end
function ArkItem.OnStartGame(A0_3010)
  A0_3010:Log("OnStartGame")
  if System.IsEditor() then
    A0_3010:Init(true)
  end
end
function ArkItem.Init(A0_3011, A1_3012)
  A0_3011:Log("OnStartGame")
  Ark.SetGlintConfig(A0_3011.id, A0_3011.Properties.glintconfig_GlintConfig)
  if A1_3012 then
    Ark.SetShouldGlint(A0_3011.id, true)
  end
end
function ArkItem.SetupModelAndPhysics(A0_3013, A1_3014)
end
function ArkItem.OnDestroy(A0_3015)
  Ark.SetShouldGlint(A0_3015.id, false)
end
function ArkItem.OnReset(A0_3016, A1_3017)
  Ark.SetShouldGlint(A0_3016.id, false)
end
function ArkItem.OnPostLoad(A0_3018)
  A0_3018:Log("OnPostLoad()")
  Ark.SetShouldGlint(A0_3018.id, true)
end
function ArkItem.OnSpawn(A0_3019)
  A0_3019.bRigidBodyActive = 1
  if not System.IsEditing() then
    Ark.SetGlintConfig(A0_3019.id, A0_3019.Properties.glintconfig_GlintConfig)
    Ark.SetShouldGlint(A0_3019.id, true)
  end
end
function CreateArkItemTable(A0_3020)
  local L1_3021
  L1_3021 = _G
  L1_3021 = L1_3021[A0_3020]
  if not L1_3021 then
    L1_3021 = _G
    L1_3021[A0_3020] = new(ArkItem)
  end
end
function ArkItem.OnUnHidden(A0_3022)
  local L1_3023
end
function ArkItem.CanUse(A0_3024)
  local L1_3025
  L1_3025 = A0_3024.Properties
  L1_3025 = L1_3025.bUsable
  L1_3025 = L1_3025 ~= 0
  return L1_3025
end
function ArkItem.Event_EnableGlint(A0_3026)
  Ark.SetShouldGlint(A0_3026.id, true)
end
function ArkItem.Event_DisableGlint(A0_3027)
  Ark.SetShouldGlint(A0_3027.id, false)
end
function ArkItem.ConsumedItem(A0_3028, A1_3029)
  A0_3028:ActivateOutput("OnConsumed", true)
end
function ArkItem.PhysicalizeThis(A0_3030, A1_3031, A2_3032)
  A0_3030:Log("PhysicalizeThis:  Slot - " .. A1_3031 .. " PhysType - " .. A2_3032)
  EntityCommon.PhysicalizeRigid(A0_3030, A1_3031, A0_3030.Properties.Physics, A0_3030.bRigidBodyActive, A2_3032)
end
ArkItem.FlowEvents = {
  Inputs = {
    Hide = {
      ArkItem.Event_Hide,
      "bool"
    },
    Unhide = {
      ArkItem.Event_Unhide,
      "bool"
    },
    EnableGlint = {
      ArkItem.Event_EnableGlint,
      "bool"
    },
    DisableGlint = {
      ArkItem.Event_DisableGlint,
      "bool"
    }
  },
  Outputs = {
    OnPickup = "bool",
    ItemType = "string",
    UsedFromInventory = "bool",
    OnMyContainerClose = "bool",
    OnConsumed = "bool"
  }
}
