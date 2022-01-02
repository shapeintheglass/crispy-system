Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkBasicEntity.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkWorkstationScreen.lua")
ArkSecurityStationScreen = {
  PropertiesInstance = {
    securitystation_SecurityStation = "",
    bStartsPowered = 1,
    bStartsUnlocked = 0,
    bVerbose = 0,
    bMovePlayerOnExamine = 1,
    ability_HackRequirementOverride = "",
    tutorial_ContextualTutorial = ""
  }
}
ArkMakeDerivedEntityOverride(ArkSecurityStationScreen, ArkWorkstationScreen, true)
function ArkSecurityStationScreen.Event_Refresh(A0_4519)
  Ark.RefreshSecurityStationRoster(A0_4519.id)
end
function ArkSecurityStationScreen.OnSpawn(A0_4520)
  local L1_4521
end
function ArkSecurityStationScreen.Event_OverrideLocation(A0_4522, A1_4523, A2_4524)
  Ark.OverrideSecurityStationLocation(A0_4522.id, A2_4524)
end
ArkSecurityStationScreen.FlowEvents = {
  Inputs = {
    PowerOn = {
      ArkSecurityStationScreen.Event_PowerOn,
      "bool"
    },
    PowerOff = {
      ArkSecurityStationScreen.Event_PowerOff,
      "bool"
    },
    Refresh = {
      ArkSecurityStationScreen.Event_Refresh,
      "bool"
    },
    location_OverrideLocation = {
      ArkSecurityStationScreen.Event_OverrideLocation,
      "string"
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
    PersonnelUsed = "string",
    UtilityApp = "bool",
    UtilityUsed = "string",
    UtilityOutput = "string"
  }
}
