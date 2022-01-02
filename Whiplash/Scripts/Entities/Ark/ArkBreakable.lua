Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkBreakable = {
  Properties = {
    bUseSafeCarry = false,
    object_Model = "",
    object_ModelDestroyed = "",
    material_MaterialDestroyed = "",
    particleeffect_DestroyEffect = "",
    particleeffect_DamageEffect = "",
    fDamageEffectWindow = 0.3,
    signalgroup_SignalGroup = "",
    ability_CarryRequirement = "",
    textDisplayName = "",
    bHideDisplayName = false,
    bIsMimicable = true,
    fMaxHealth = 100,
    bCanTriggerAreas = 0,
    bRegenerateNavMesh = false,
    bGooCannotAttachInGravity = 0,
    ei_TransparencyMode = 0,
    carryDirection = {
      x = 0,
      y = 0,
      z = 0
    },
    carryHeightOffset = 0,
    carryForwardOffset = 0,
    vector_throwParticleOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    bIsCarryable = 0,
    vector_ThrowAngularImpulse = {
      x = -10,
      y = 0,
      z = 0
    },
    Sound = {audioTrigger_Carry = "", audioTrigger_DestroySound = ""},
    AI = {bUsedAsDynamicObstacle = 1},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      bResting = 1,
      bRigidBodyActive = 1,
      Density = -1,
      Mass = -1
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    }
  },
  Editor = {
    Icon = "explosion.bmp",
    IsScalable = false
  },
  PropertiesInstance = {bIsBroken = false, bUsedAsDynamicObstacle = 1}
}
GetArkEntityUtils(ArkBreakable)
SetupCollisionFiltering(ArkBreakable)
function ArkBreakable.Init(A0_3412, A1_3413)
  A0_3412:SetDisplayName(A0_3412.Properties.textDisplayName)
end
function ArkBreakable.GetUsable(A0_3414)
  if A0_3414:GetPhysicalStats().mass > 0 and A0_3414.Properties.bIsCarryable == 1 then
    ({}).ActionType = "Carry"
    if A0_3414.Properties.ability_CarryRequirement == "" then
      ({}).DisplayText = ""
    end
    ;({}).Use = {}
  end
  return {}
end
function ArkBreakable.GetRemoteManipulationInteraction(A0_3415)
  local L1_3416
  L1_3416 = {}
  if A0_3415:GetPhysicalStats().mass > 0 and A0_3415.Properties.bIsCarryable == 1 and A0_3415.Properties.ability_CarryRequirement then
    L1_3416.ActionType = "Carry"
  end
  L1_3416.CouldChange = false
  return L1_3416
end
function ArkBreakable.OnPropertyChange(A0_3417)
  A0_3417.breakable:LoadParameters()
end
function ArkBreakable.OnBreak(A0_3418)
  A0_3418:ActivateOutput("Broken", true)
end
function ArkBreakable.OnRepair(A0_3419)
  A0_3419:ActivateOutput("Repaired", true)
end
function ArkBreakable.Event_Break(A0_3420)
  A0_3420.breakable:SetHealth(0)
  A0_3420:OnBreak()
end
function ArkBreakable.Event_Repair(A0_3421)
  A0_3421.breakable:SetHealth(A0_3421.Properties.fMaxHealth)
  A0_3421:OnRepair()
end
ArkBreakable.FlowEvents = {
  Inputs = {
    Break = {
      ArkBreakable.Event_Break,
      "bool"
    },
    Repair = {
      ArkBreakable.Event_Repair,
      "bool"
    }
  },
  Outputs = {Broken = "bool", Repaired = "bool"}
}
