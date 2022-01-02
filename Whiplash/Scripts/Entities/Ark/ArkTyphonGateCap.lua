Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTyphonGateCap = {
  Properties = {
    object_Model = "",
    Effects = {
      particleeffect_ActiveVFX = "",
      particleeffect_InactiveVFX = "",
      fScaleMaxWidth = 10
    },
    Sound = {
      audioTrigger_ActiveStart = "",
      audioTrigger_ActiveStop = "",
      audioTrigger_InactiveStart = "",
      audioTrigger_InactiveStop = "",
      audioTrigger_PowerOff = ""
    },
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = ""
    },
    Glow = {
      sSkinAttachmentName = "skin",
      color_InactiveGlowColor = {
        x = 0,
        y = 1,
        z = 0
      },
      color_ActiveGlowColor = {
        x = 1,
        y = 0,
        z = 0
      },
      color_OffGlowColor = {
        x = 1,
        y = 1,
        z = 1
      },
      fActiveGlowAmount = 50,
      fInactiveGlowAmount = 50,
      fOffGlowAmount = 0,
      nGlowSubmatIdA = 0,
      nGlowSubmatIdB = -1,
      bUseGlow = 0
    },
    Animation = {
      anim_ActiveAnim = "",
      anim_InactiveAnim = "",
      anim_OffAnim = "",
      anim_OnAnim = ""
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 1,
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
    Icon = "smartobject.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0, fVfxStrengthOverride = -1}
}
GetArkEntityUtils(ArkTyphonGateCap)
SetupCollisionFiltering(ArkTyphonGateCap)
function ArkTyphonGateCap.Init(A0_4696, A1_4697)
end
function ArkTyphonGateCap.SetFromProperties(A0_4698)
  local L1_4699
end
ArkTyphonGateCap.FlowEvents = {
  Inputs = {},
  Outputs = {}
}
