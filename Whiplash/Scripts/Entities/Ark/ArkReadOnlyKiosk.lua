Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
ArkReadOnlyKiosk = {
  Properties = {
    object_Model = "",
    object_Screen = "",
    sUIElementName = "",
    nSubMatIndex = 0,
    sScreenBoneName = "",
    fInteractDistance = 1,
    fActiveDistance = 1,
    fInteractAngle = 75,
    bIsTimerKiosk = 0,
    material_ScreensaverMaterial = "",
    material_PowerOffMaterial = "",
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
    Icon = "Prefab.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bVerbose = 0,
    bStartsPowered = 1,
    bMovePlayerOnExamine = 1
  },
  FlowEvents = {
    Inputs = {}
  }
}
function GetReadOnlyKioskEventsForButtons(A0_4447)
  local L1_4448, L2_4449
  L1_4448 = A0_4447.FlowEvents
  L1_4448 = L1_4448.Inputs
  function L2_4449(A0_4450, A1_4451, A2_4452)
    ArkKioskScript.SetKioskBody(A0_4450.id, A2_4452)
  end
  A0_4447.Event_KioskBodyText = L2_4449
  L2_4449 = {
    A0_4447.Event_KioskBodyText,
    "string"
  }
  L1_4448.KioskBodyText = L2_4449
  function L2_4449(A0_4453, A1_4454, A2_4455)
    ArkKioskScript.SetKioskHeader(A0_4453.id, A2_4455)
  end
  A0_4447.Event_KioskHeaderText = L2_4449
  L2_4449 = {
    A0_4447.Event_KioskHeaderText,
    "string"
  }
  L1_4448.KioskHeaderText = L2_4449
  function L2_4449(A0_4456)
    ArkKioskScript.SetKioskPowered(A0_4456.id, true)
  end
  A0_4447.Event_KioskPowerOn = L2_4449
  L2_4449 = {
    A0_4447.Event_KioskPowerOn,
    "bool"
  }
  L1_4448.KioskPowerOn = L2_4449
  function L2_4449(A0_4457)
    ArkKioskScript.SetKioskPowered(A0_4457.id, false)
  end
  A0_4447.Event_KioskPowerOff = L2_4449
  L2_4449 = {
    A0_4447.Event_KioskPowerOff,
    "bool"
  }
  L1_4448.KioskPowerOff = L2_4449
  L2_4449 = A0_4447.FlowEvents
  L2_4449.Outputs = {PoweredOn = "bool", PoweredOff = "bool"}
end
GetArkEntityUtils(ArkReadOnlyKiosk)
SetupCollisionFiltering(ArkReadOnlyKiosk)
GetReadOnlyKioskEventsForButtons(ArkReadOnlyKiosk)
function ArkReadOnlyKiosk.Init(A0_4458, A1_4459)
end
function ArkReadOnlyKiosk.SetFromProperties(A0_4460)
  local L1_4461
end
function ArkReadOnlyKiosk.OnReset(A0_4462)
  local L1_4463
end
function ArkReadOnlyKiosk.OnSpawn(A0_4464)
  local L1_4465
end
