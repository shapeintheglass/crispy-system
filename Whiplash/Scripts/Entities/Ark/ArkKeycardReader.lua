Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkKeycardReader = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    sScreenBoneName = "",
    textMessagePoweredOffMessage = "",
    textPromptUseMessage = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    fInteractAngle = 75,
    bDisallowGrenades = true,
    bEnableCollisionInteraction = 1,
    nMessageDelay = 1000,
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
  Editor = {
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    keycard_UnlockKeycard = "",
    bStartsLocked = 1,
    bUsable = 1,
    bMovePlayerOnExamine = 1
  }
}
GetArkEntityUtils(ArkKeycardReader)
SetupCollisionFiltering(ArkKeycardReader)
function ArkKeycardReader.Init(A0_4075, A1_4076)
end
function ArkKeycardReader.InitDoorAccessController(A0_4077, A1_4078)
  Ark.LinkKeyUIToDoor(A0_4077.id, A1_4078.id)
end
function ArkKeycardReader.SetFromProperties(A0_4079)
  local L1_4080
end
function ArkKeycardReader.Event_Lock(A0_4081)
  Ark.SetKeyUILocked(A0_4081.id, true)
end
function ArkKeycardReader.Event_Unlock(A0_4082)
  Ark.SetKeyUILocked(A0_4082.id, false)
end
function ArkKeycardReader.Event_PowerOn(A0_4083)
  Ark.SetKeyUIPowered(A0_4083.id, true)
end
function ArkKeycardReader.Event_PowerOff(A0_4084)
  Ark.SetKeyUIPowered(A0_4084.id, false)
end
function ArkKeycardReader.OnReset(A0_4085)
  local L1_4086
end
function ArkKeycardReader.OnSpawn(A0_4087)
  A0_4087:Log("OnSpawn")
end
ArkKeycardReader.FlowEvents = {
  Inputs = {
    Lock = {
      ArkKeycardReader.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkKeycardReader.Event_Unlock,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    Locked = "bool",
    Unlocked = "bool",
    Failed = "bool"
  }
}
