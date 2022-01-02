Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkClock = {
  Properties = {
    object_Model = "",
    anim_Animation = "",
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
    Icon = "clock.bmp",
    IconOnTop = 1,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkClock)
SetupCollisionFiltering(ArkClock)
function ArkClock.Init(A0_3510, A1_3511)
end
function ArkClock.SetFromProperties(A0_3512)
  local L1_3513
end
function ArkClock.OnSpawn(A0_3514)
  local L1_3515
end
function ArkClock.OnReset(A0_3516)
  local L1_3517
end
