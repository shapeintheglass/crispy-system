Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTurretCountArea = {
  Properties = {
    vector_AreaSize = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  PropertiesInstance = {bVerbose = 0, bStartsEnabled = 1},
  Editor = {
    IsScalable = false,
    Icon = "Prefab.bmp",
    IconOnTop = 0
  }
}
GetArkEntityUtils(ArkTurretCountArea)
function ArkTurretCountArea.Init(A0_4651, A1_4652)
end
function ArkTurretCountArea.SetFromProperties(A0_4653)
  local L1_4654
end
function ArkTurretCountArea.OnReset(A0_4655)
  local L1_4656
end
function ArkTurretCountArea.OnSpawn(A0_4657)
  local L1_4658
end
function ArkTurretCountArea.Event_Enable(A0_4659)
  BroadcastEvent(A0_4659, "Enabled")
end
function ArkTurretCountArea.Event_Disable(A0_4660)
  BroadcastEvent(A0_4660, "Disabled")
end
ArkTurretCountArea.FlowEvents = {
  Inputs = {
    Enable = {
      ArkTurretCountArea.Event_Enable,
      "bool"
    },
    Disable = {
      ArkTurretCountArea.Event_Disable,
      "bool"
    }
  },
  Outputs = {
    Enabled = "bool",
    Disabled = "bool",
    GoodTurrets = "int",
    BrokenTurrets = "int",
    UndeployedTurrets = "int",
    TurretRepaired = "bool",
    TurretBroken = "bool",
    TurretDeployed = "bool",
    TurretUndeployed = "bool"
  }
}
