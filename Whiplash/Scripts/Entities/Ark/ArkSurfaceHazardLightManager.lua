Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkSurfaceHazardLightManager = {
  Properties = {
    fMinBrightness = 0,
    fMaxBrightness = 1,
    fMinParticleStrength = 0,
    fMaxParticleStrength = 1,
    fMaxFogDensity = 1,
    fFogFadeTime = 0.5
  },
  Editor = {
    Icon = "smartobject.bmp",
    IconOnTop = 1,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkSurfaceHazardLightManager)
function ArkSurfaceHazardLightManager.Init(A0_4539, A1_4540)
end
function ArkSurfaceHazardLightManager.SetFromProperties(A0_4541)
  local L1_4542
end
