Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkLevelTransitionDoor = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sScreenBoneName = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    fInteractDistance = 2,
    fActiveDistance = 1,
    fInteractAngle = 75,
    nMessageDelay = 1000,
    textConfirmLabelPrefix = "",
    textConfirmQuery = "",
    textPromptUseMessage = "@use_object",
    ei_ObjectMapIcon = "",
    bShowUnderFog = true,
    postEffect_DialogPostEffect = "9805661808544907835",
    Materials = {
      material_LockedMaterial = "",
      material_UnlockedMaterial = "",
      material_PowerOffMaterial = ""
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
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
    }
  },
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 0,
    IsScalable = false
  },
  PropertiesInstance = {
    location_Destination = "",
    keycard_UnlockKeycard = "",
    bVerbose = 0,
    bStartsLocked = 0,
    bMovePlayerOnExamine = 1,
    bStartsInaccessible = 0,
    textInaccessibleText = "",
    bIsTrialGated = 1,
    bImageLeft = 0
  }
}
GetArkEntityUtils(ArkLevelTransitionDoor)
function ArkLevelTransitionDoor.SetFromProperties(A0_4198)
  local L1_4199
end
function ArkLevelTransitionDoor.Init(A0_4200, A1_4201)
end
function ArkLevelTransitionDoor.OnReset(A0_4202)
  local L1_4203
end
function ArkLevelTransitionDoor.OnSpawn(A0_4204)
  local L1_4205
end
function ArkLevelTransitionDoor.OnDestroy(A0_4206)
  local L1_4207
end
function ArkLevelTransitionDoor.Event_SetStateInaccessibleOn(A0_4208)
  Ark.SetLevelTransitionDoorInaccessible(A0_4208.id, true)
end
function ArkLevelTransitionDoor.Event_SetStateInaccessibleOff(A0_4209)
  Ark.SetLevelTransitionDoorInaccessible(A0_4209.id, false)
end
function ArkLevelTransitionDoor.Event_SetTextInaccessible(A0_4210, A1_4211, A2_4212)
  Ark.SetLevelTransitionDoorInaccessibleText(A0_4210.id, A2_4212)
end
function ArkLevelTransitionDoor.Event_Lock(A0_4213)
  Ark.SetKeyUILocked(A0_4213.id, true)
end
function ArkLevelTransitionDoor.Event_Unlock(A0_4214)
  Ark.SetKeyUILocked(A0_4214.id, false)
end
function ArkLevelTransitionDoor.Event_DisableLevelLoad(A0_4215)
  Ark.EnableLevelTransitionDoorLevelLoad(A0_4215.id, false)
end
function ArkLevelTransitionDoor.Event_EnableLevelLoad(A0_4216)
  Ark.EnableLevelTransitionDoorLevelLoad(A0_4216.id, true)
end
function ArkLevelTransitionDoor.Event_ImageLeft(A0_4217)
  BroadcastEvent(A0_4217, "ImageLeft")
end
function ArkLevelTransitionDoor.Event_ImageRight(A0_4218)
  BroadcastEvent(A0_4218, "ImageRight")
end
ArkLevelTransitionDoor.FlowEvents = {
  Inputs = {
    SetStateInaccessibleOn = {
      ArkLevelTransitionDoor.Event_SetStateInaccessibleOn,
      "bool"
    },
    SetStateInaccessibleOff = {
      ArkLevelTransitionDoor.Event_SetStateInaccessibleOff,
      "bool"
    },
    SetTextInaccessible = {
      ArkLevelTransitionDoor.Event_SetTextInaccessible,
      "string"
    },
    Lock = {
      ArkLevelTransitionDoor.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkLevelTransitionDoor.Event_Unlock,
      "bool"
    },
    DisableLevelLoad = {
      ArkLevelTransitionDoor.Event_DisableLevelLoad,
      "bool"
    },
    EnableLevelLoad = {
      ArkLevelTransitionDoor.Event_EnableLevelLoad,
      "bool"
    },
    ImageLeft = {
      ArkLevelTransitionDoor.Event_ImageLeft,
      "bool"
    },
    ImageRight = {
      ArkLevelTransitionDoor.Event_ImageRight,
      "bool"
    }
  },
  Outputs = {
    Cancelled = "bool",
    Confirmed = "bool",
    Used = "bool",
    Locked = "bool",
    Unlocked = "bool",
    Inaccessible = "bool"
  }
}
