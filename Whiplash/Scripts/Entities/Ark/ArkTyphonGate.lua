Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTyphonGate = {
  Properties = {
    object_Model = "",
    fProximityRange = 2,
    fSuppressDuration = 5,
    vector_linkOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    character_DialogCharacter = "",
    surfaceTypeName = "mat_Glass_Healing",
    fPlayerLoiterDist = 4,
    fPlayerLoiterTime = 10,
    fActivationDelay = 0.2,
    fNudgeImpulseScale = 15,
    fGateDepth = 0.5,
    Effects = {
      fProximityHeight = 0.5,
      fProximityWidth = 0.5,
      particleeffect_ProximityVFX = "",
      posteffect_PlayerMarkedPostEffect = ""
    },
    Sound = {audioTrigger_ProximityStart = "", audioTrigger_ProximityStop = ""},
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
    Icon = "Door.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    fGateHeight = 3,
    fGateWidth = 2,
    bStartsPowered = 1,
    bVerbose = 0
  }
}
GetArkEntityUtils(ArkTyphonGate)
function ArkTyphonGate.Init(A0_4686, A1_4687)
end
function ArkTyphonGate.SetFromProperties(A0_4688)
  local L1_4689
end
function ArkTyphonGate.Event_PowerOn(A0_4690)
  Ark.SetTyphonGatePowered(A0_4690.id, true)
end
function ArkTyphonGate.Event_PowerOff(A0_4691)
  Ark.SetTyphonGatePowered(A0_4691.id, false)
end
function ArkTyphonGate.Event_Unlock(A0_4692, A1_4693)
  Ark.SetTyphonGateSuppressed(A0_4692.id, A1_4693.id)
end
function ArkTyphonGate.Event_Suppress(A0_4694)
  Ark.SetTyphonGateSuppressed(A0_4694.id)
end
function ArkTyphonGate.Event_MarkTargets(A0_4695)
  Ark.MarkTyphonGateTargets(A0_4695.id)
end
ArkTyphonGate.FlowEvents = {
  Inputs = {
    PowerOn = {
      ArkTyphonGate.Event_PowerOn,
      "bool"
    },
    PowerOff = {
      ArkTyphonGate.Event_PowerOff,
      "bool"
    },
    Suppress = {
      ArkTyphonGate.Event_Suppress,
      "bool"
    },
    MarkTargets = {
      ArkTyphonGate.Event_MarkTargets,
      "bool"
    }
  },
  Outputs = {
    Active = "bool",
    Inactive = "bool",
    PoweredOff = "bool",
    Spark = "bool"
  }
}
