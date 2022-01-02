Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkWorkstationScreen = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    sScreenBoneName = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    fInteractAngle = 75,
    bEnableCollisionInteraction = 1,
    nIdleDelay = 5000,
    ability_HackRequirement = "",
    textDisplayName = "",
    tutorial_ContextualTutorial = "",
    bHideTutorialOnOwner = 1,
    bDisallowGrenades = true,
    material_ScreensaverMaterial = "",
    material_PowerOffMaterial = "",
    ei_ObjectMapIcon = "",
    bIsKasma = 0,
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
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    },
    Sound = {audioTrigger_PowerLP = "", audioTrigger_PowerStop = ""}
  },
  Editor = {
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    workstation_Workstation = "",
    bStartsPowered = 1,
    bStartsUnlocked = 0,
    bVerbose = 0,
    bMovePlayerOnExamine = 1,
    ability_HackRequirementOverride = ""
  }
}
GetArkEntityUtils(ArkWorkstationScreen)
SetupCollisionFiltering(ArkWorkstationScreen)
ArkMakeHackable(ArkWorkstationScreen)
function ArkWorkstationScreen.Init(A0_4708, A1_4709)
end
function ArkWorkstationScreen.SetFromProperties(A0_4710)
  local L1_4711
end
function ArkWorkstationScreen.Event_PowerOn(A0_4712)
  Ark.SetStationUIPowered(A0_4712.id, true)
end
function ArkWorkstationScreen.Event_PowerOff(A0_4713)
  Ark.SetStationUIPowered(A0_4713.id, false)
end
function ArkWorkstationScreen.Event_Lock(A0_4714)
  Ark.SetStationUILocked(A0_4714.id, true)
end
function ArkWorkstationScreen.Event_Unlock(A0_4715)
  Ark.SetStationUILocked(A0_4715.id, false)
end
function ArkWorkstationScreen.Event_ClearKeypad(A0_4716)
  Ark.ClearWorkstationKeypad(A0_4716.id)
end
function ArkWorkstationScreen.OnReset(A0_4717)
  A0_4717:Activate(0)
end
function ArkWorkstationScreen.OnSpawn(A0_4718)
  local L1_4719
end
ArkWorkstationScreen.FlowEvents = {
  Inputs = {
    PowerOn = {
      ArkWorkstationScreen.Event_PowerOn,
      "bool"
    },
    PowerOff = {
      ArkWorkstationScreen.Event_PowerOff,
      "bool"
    },
    Unlock = {
      ArkWorkstationScreen.Event_Unlock,
      "bool"
    },
    Lock = {
      ArkWorkstationScreen.Event_Lock,
      "bool"
    },
    ClearKeypad = {
      ArkWorkstationScreen.Event_ClearKeypad,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    PoweredOn = "bool",
    PoweredOff = "bool",
    Locked = "bool",
    LoggedIn = "bool",
    RootMenu = "bool",
    EmailApp = "bool",
    EmailAcquired = "string",
    DownloadApp = "bool",
    UtilityApp = "bool",
    UtilityUsed = "string",
    UtilityOutput = "string"
  }
}
