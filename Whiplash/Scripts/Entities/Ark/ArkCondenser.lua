Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkCondenser = {
  Properties = {
    object_Model = "Objects/Environment/Props/Gameplay/Condenser_Cell_A/Condenser_Cell_A.cgf",
    textDisplayName = "@i_condenser",
    textInteractVerb = "@use_power",
    material_PoweredMaterial = "",
    bDisallowGrenades = false,
    vector_Cell1Offset = {
      x = 0,
      y = 0.1,
      z = 0.47
    },
    vector_Cell2Offset = {
      x = 0,
      y = 0.1,
      z = 0.16
    },
    object_PlugModel = "Objects/Environment/Props/Gameplay/Condenser_Cell_A/Condenser_Cell_A_Cap.cgf",
    itemarchetype_CellArchetype = "ArkPickups.Misc.CondenserCell",
    particleeffect_DrainVFX = "",
    Sound = {
      audioTrigger_PoweredStart = "",
      audioTrigger_PoweredStop = "",
      audioTrigger_CellAdded = "",
      audioTrigger_CellRemoved = "",
      audioTrigger_OnDrain = ""
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
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
    }
  },
  Editor = {
    Icon = "switch.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bVerbose = 0,
    nCellsRequired = 1,
    nStartingCells = 0
  }
}
GetArkEntityUtils(ArkCondenser)
SetupCollisionFiltering(ArkCondenser)
function ArkCondenser.Init(A0_3518, A1_3519)
end
function ArkCondenser.SetFromProperties(A0_3520)
  local L1_3521
end
function ArkCondenser.OnSpawn(A0_3522)
  local L1_3523
end
function ArkCondenser.OnReset(A0_3524)
  local L1_3525
end
function ArkCondenser.Event_DrainCells(A0_3526)
  BroadcastEvent(A0_3526, "Drain")
end
function ArkCondenser.Event_FillCells(A0_3527)
  BroadcastEvent(A0_3527, "Fill")
end
ArkCondenser.FlowEvents = {
  Inputs = {
    DrainCells = {
      ArkCondenser.Event_DrainCells,
      "bool"
    },
    FillCells = {
      ArkCondenser.Event_FillCells,
      "bool"
    }
  },
  Outputs = {Powered = "bool", Unpowered = "bool"}
}
