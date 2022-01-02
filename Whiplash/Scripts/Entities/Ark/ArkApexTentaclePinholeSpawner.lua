Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkApexTentaclePinholeSpawner = {
  Properties = {
    nNumToSpawn = 3,
    fMinDistBetweenTargets = 3,
    archetype_TentacleArchetype = "",
    fCreationDuration = 0,
    fDestructionDuration = 0,
    PlayerAcquisition = {
      nPlayerReevaluationFrequency = 200,
      fPlayerSpeedThreshold = 2,
      fInFrontOfPlayerPreference = 5
    },
    InitialTargetAcquisition = {
      fTargetAcquisitionRange = 10,
      fIdealAngleSeparation = 45,
      fIdealTargetDepth = 8
    },
    Effects = {
      particleeffect_Inactive = "",
      particleeffect_Creation = "",
      particleeffect_Active = "",
      particleeffect_Destruction = ""
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
GetArkEntityUtils(ArkApexTentaclePinholeSpawner)
function ArkApexTentaclePinholeSpawner.Init(A0_3357, A1_3358)
end
function ArkApexTentaclePinholeSpawner.SetFromProperties(A0_3359)
  local L1_3360
end
function ArkApexTentaclePinholeSpawner.OnReset(A0_3361, A1_3362)
end
function ArkApexTentaclePinholeSpawner.OnSpawn(A0_3363)
  local L1_3364
end
