Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkAreaHazard = {
  Properties = {
    bIsCarryable = 1,
    bUseSafeCarry = false,
    object_Model = "",
    carryHeightOffset = 0,
    carryForwardOffset = 0,
    signalpackage_AreaHazard = "",
    fAreaHazardRadius = 1,
    nAreaHazardInterval = 1000,
    ability_CarryRequirement = "",
    material_IntactMaterial = "",
    material_HazardMaterial = "",
    signalGroup_Damaging = "3149325216937655803",
    particleeffect_Hazard = "",
    ei_TransparencyMode = 0,
    textDisplayName = "Name Not Set",
    bHideDisplayName = 0,
    bShowDangerIcon = 1,
    Sound = {
      audioTrigger_Carry = "",
      audioTrigger_HoldCarryStart = "",
      audioTrigger_HoldCarryCancel = ""
    },
    AI = {bUsedAsDynamicObstacle = 0},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 1,
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
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    }
  },
  Editor = {Icon = "Hazard.bmp", IconOnTop = 1},
  PropertiesInstance = {bHazardStartsActive = 0, bUsedAsDynamicObstacle = 1}
}
GetArkEntityUtils(ArkAreaHazard)
SetupCollisionFiltering(ArkAreaHazard)
function ArkAreaHazard.Init(A0_3380, A1_3381)
  A0_3380:Log("Initializing...")
end
function ArkAreaHazard.SetFromProperties(A0_3382)
  local L1_3383
  L1_3383 = A0_3382.Properties
  A0_3382:SetDisplayName(A0_3382.Properties.textDisplayName)
end
function ArkAreaHazard.GetUsable(A0_3384)
  if A0_3384:GetPhysicalStats().mass > 0 and A0_3384.Properties.bIsCarryable == 1 then
    ({}).Use, ({}).ActionType = {}, "Carry"
  end
  return {}
end
function ArkAreaHazard.GetRemoteManipulationInteraction(A0_3385)
  local L1_3386
  L1_3386 = {}
  if A0_3385:GetPhysicalStats().mass > 0 and A0_3385.Properties.bIsCarryable == 1 then
    L1_3386.ActionType = "Carry"
  end
  L1_3386.CouldChange = false
  return L1_3386
end
function ArkAreaHazard.OnReset(A0_3387, A1_3388)
  A0_3387:SetFromProperties()
end
function ArkAreaHazard.OnSpawn(A0_3389)
  A0_3389:SetFromProperties()
end
