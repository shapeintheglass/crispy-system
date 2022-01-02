Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTrackingCamera = {
  Properties = {
    object_Model = "",
    fAreaRadius = 1,
    nTargetReevaluationInterval = 1000,
    yawJointName = "",
    bDisallowGrenades = true,
    fRadiansPerSec = 3.1,
    Sound = {audioTrigger_StartRotating = "", audioTrigger_StopRotating = ""},
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
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = ""
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
    Icon = "Hazard.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0, bStartsEnabled = 1}
}
GetArkEntityUtils(ArkTrackingCamera)
SetupCollisionFiltering(ArkTrackingCamera)
function ArkTrackingCamera.Init(A0_4641, A1_4642)
end
function ArkTrackingCamera.SetFromProperties(A0_4643)
  local L1_4644
end
function ArkTrackingCamera.OnReset(A0_4645, A1_4646)
end
function ArkTrackingCamera.OnSpawn(A0_4647)
  local L1_4648
end
function ArkTrackingCamera.Event_Enable(A0_4649)
  Ark.EnableTrackingCamera(A0_4649.id, true)
end
function ArkTrackingCamera.Event_Disable(A0_4650)
  Ark.EnableTrackingCamera(A0_4650.id, false)
end
ArkTrackingCamera.FlowEvents = {
  Inputs = {
    Enable = {
      ArkTrackingCamera.Event_Enable,
      "bool"
    },
    Disable = {
      ArkTrackingCamera.Event_Disable,
      "bool"
    }
  },
  Outputs = {
    Out = "bool",
    Enabled = "bool",
    Disabled = "bool"
  }
}
