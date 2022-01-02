Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkTyphonGateScreen = {
  Properties = {
    object_Model = "objects/environment/props/tech/screen_utility_a/screen_interactive_a.cga",
    object_Screen = "Objects/Environment/Props/Transtar/Screen_Interactive_A/screen_interactive_a_uiquad.cga",
    sUIElementName = "DanielleTyphonGate",
    nSubMatIndex = 0,
    sScreenBoneName = "helper_screen",
    fInteractDistance = 2.25,
    fActiveDistance = 15,
    fInteractAngle = 75,
    bDisallowGrenades = true,
    bEnableCollisionInteraction = 1,
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
      particleeffect_SparkVFX = "LevelShared.Sparks.ElectricalBox03",
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
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0, bMovePlayerOnExamine = 1}
}
GetArkEntityUtils(ArkTyphonGateScreen)
SetupCollisionFiltering(ArkTyphonGateScreen)
function ArkTyphonGateScreen.Init(A0_4700, A1_4701)
end
function ArkTyphonGateScreen.SetFromProperties(A0_4702)
  local L1_4703
end
function ArkTyphonGateScreen.OnReset(A0_4704)
  local L1_4705
end
function ArkTyphonGateScreen.OnSpawn(A0_4706)
  local L1_4707
end
ArkTyphonGateScreen.FlowEvents = {
  Inputs = {},
  Outputs = {
    PoweredOn = "bool",
    PoweredOff = "bool",
    ButtonPressed = "bool"
  }
}
