Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkKeypad = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    ability_HackRequirement = "",
    sScreenBoneName = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    bEnableCollisionInteraction = 1,
    textMessagePoweredOffMessage = "",
    textPromptUseMessage = "",
    fInteractAngle = 75,
    nValidationDelay = 1000,
    nMessageDelay = 1000,
    nSuccessDelay = 1000,
    nIdleDelay = 1000,
    bDisallowGrenades = true,
    nCodeLength = 4,
    textDisplayName = "",
    bHideDisplayName = 1,
    Materials = {
      material_LockedMaterial = "",
      material_UnlockedMaterial = "",
      material_PowerOffMaterial = ""
    },
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = "",
      vector_SparkPosOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      vector_SparkRotOffset = {
        x = 0,
        y = 0,
        z = 0
      }
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {Icon = "Prefab.bmp", IconOnTop = 1},
  PropertiesInstance = {
    keycode_UnlockCode = "",
    bStartsLocked = 1,
    bVerbose = 0,
    bMovePlayerOnExamine = 1,
    ability_HackRequirementOverride = ""
  }
}
GetArkEntityUtils(ArkKeypad)
SetupCollisionFiltering(ArkKeypad)
ArkMakeHackable(ArkKeypad)
function ArkKeypad.Init(A0_4088, A1_4089)
  A0_4088:SetDisplayName(A0_4088.Properties.textDisplayName)
end
function ArkKeypad.InitDoorAccessController(A0_4090, A1_4091)
  Ark.LinkKeyUIToDoor(A0_4090.id, A1_4091.id)
  A0_4090.PropertiesInstance.bVerbose = A1_4091.PropertiesInstance.bVerbose
  A0_4090.m_bInit = false
  A0_4090:Init(true)
end
function ArkKeypad.SetFromProperties(A0_4092)
  local L1_4093
end
function ArkKeypad.Event_Lock(A0_4094)
  Ark.SetKeyUILocked(A0_4094.id, true)
end
function ArkKeypad.Event_Unlock(A0_4095)
  Ark.SetKeyUILocked(A0_4095.id, false)
end
function ArkKeypad.Event_PowerOn(A0_4096)
  Ark.SetKeyUIPowered(A0_4096.id, true)
end
function ArkKeypad.Event_PowerOff(A0_4097)
  Ark.SetKeyUIPowered(A0_4097.id, false)
end
function ArkKeypad.OnReset(A0_4098)
  local L1_4099
end
function ArkKeypad.OnSpawn(A0_4100)
  local L1_4101
end
ArkKeypad.FlowEvents = {
  Inputs = {
    Lock = {
      ArkKeypad.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkKeypad.Event_Unlock,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    Locked = "bool",
    Unlocked = "bool",
    Hacked = "bool",
    Failed = "bool",
    CodeInput = "string"
  }
}
