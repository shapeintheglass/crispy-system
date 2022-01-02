Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkApexTentacleSpawner = {
  Properties = {
    fHeight = 5,
    fWidth = 5,
    fMinDistBetweenSpawns = 0.3,
    nNumToSpawn = 3,
    nTimeForRespawn = 0,
    fMinDistBetweenTargets = 3,
    archetype_TentacleArchetype0 = "",
    archetype_TentacleArchetype1 = "",
    archetype_TentacleArchetype2 = "",
    archetype_TentacleArchetype3 = "",
    archetype_TentacleArchetype4 = "",
    archetype_TentacleArchetype5 = "",
    archetype_TentacleArchetype6 = "",
    archetype_TentacleArchetype7 = "",
    archetype_TentacleArchetype8 = "",
    archetype_TentacleArchetype9 = "",
    PlayerAcquisition = {
      nPlayerReevaluationFrequency = 200,
      fPlayerSpeedThreshold = 2,
      fInFrontOfPlayerPreference = 5
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
  Editor = {Icon = "Hazard.bmp", IconOnTop = 0},
  PropertiesInstance = {bStartsEnabled = 1}
}
GetArkEntityUtils(ArkApexTentacleSpawner)
function ArkApexTentacleSpawner.Init(A0_3365, A1_3366)
end
function ArkApexTentacleSpawner.SetFromProperties(A0_3367)
  local L1_3368
end
function ArkApexTentacleSpawner.Event_Enable(A0_3369)
  Ark.EnableTentacleSpawner(A0_3369.id, true)
end
function ArkApexTentacleSpawner.Event_Disable(A0_3370)
  Ark.EnableTentacleSpawner(A0_3370.id, false)
end
function ArkApexTentacleSpawner.OnReset(A0_3371, A1_3372)
end
function ArkApexTentacleSpawner.OnSpawn(A0_3373)
  local L1_3374
end
ArkApexTentacleSpawner.FlowEvents = {
  Inputs = {
    Enable = {
      ArkApexTentacleSpawner.Event_Enable,
      "bool"
    },
    Disable = {
      ArkApexTentacleSpawner.Event_Disable,
      "bool"
    }
  }
}
