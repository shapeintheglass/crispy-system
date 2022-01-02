Script.ReloadScript("scripts/ArkEntityUtils.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkLeakable.lua")
ArkExplosiveTank = {
  Properties = {
    bUseSafeCarry = false,
    bCanTriggerAreas = 1,
    object_Model = "",
    ability_CarryRequirement = "",
    signalpackage_Explosion = "",
    textDisplayName = "",
    nExplodeDelay = 1000,
    fMaxImpulse = 1000,
    fMinRadius = 0.5,
    fMaxRadius = 1,
    fExplosionVFXScale = 1,
    cameraShake_ExplosionCameraShake = "10739735956147043737",
    fHealth = 100,
    nInstantExplosionThreshold = 100,
    signalGroup_Damage = "3149325216937655803",
    signalmodifier_SignalModifier = "3149325216958565397",
    vector_ThrowAngularImpulse = {
      x = -10,
      y = 0,
      z = 0
    },
    signalpackage_ConsumePackage = "",
    textConsumedDisplayName = "",
    bIsMimicable = true,
    Signals = {signal_Goo = ""},
    Effects = {particleeffect_Explode = "", particleeffect_Leak = ""},
    Sound = {audioTrigger_Explode = "", audioTrigger_Carry = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      bResting = 1,
      bRigidBodyActive = 1,
      Density = -1,
      Mass = -1
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    },
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    },
    AI = {ei_DangerAreaType = 0}
  },
  States = {
    "Intact",
    "PreExplode",
    "Explode",
    "Hazard",
    "Destroyed"
  },
  Editor = {
    Icon = "explosion.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0}
}
ArkMakeDerivedEntityOverride(ArkExplosiveTank, ArkLeakable, false)
function ArkExplosiveTank.Init(A0_3786, A1_3787)
  A0_3786:Log("Initializing...")
  if A0_3786.Properties.bCanTriggerAreas == 1 then
    A0_3786:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3786:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
function ArkExplosiveTank.SetFromProperties(A0_3788)
  local L1_3789
  L1_3789 = A0_3788.Properties
  A0_3788.m_bVerbose = A0_3788.PropertiesInstance.bVerbose == 1
  Ark.RemoveInboundSignalModifier(A0_3788.id, L1_3789.signalmodifier_SignalModifier)
  Ark.AttachInboundSignalModifier(A0_3788.id, L1_3789.signalmodifier_SignalModifier)
end
function ArkExplosiveTank.OnSpawn(A0_3790)
  A0_3790:Log("OnSpawn")
  A0_3790:SetFromProperties()
end
function ArkExplosiveTank.OnPostLoad(A0_3791)
  A0_3791:SetFromProperties()
end
function ArkExplosiveTank.Event_Explode(A0_3792)
  Ark.ExplodeTank(A0_3792.id)
end
function ArkExplosiveTank.Event_Activator(A0_3793, A1_3794, A2_3795)
  Ark.SetEnvironmentalHazardActivator(A0_3793.id, A2_3795.id)
end
ArkExplosiveTank.FlowEvents = {
  Inputs = {
    Explode = {
      ArkExplosiveTank.Event_Explode,
      "bool"
    },
    Activator = {
      ArkExplosiveTank.Event_Activator,
      "entity"
    }
  },
  Outputs = {
    PreExplode = "bool",
    Explode = "bool",
    Hazard = "bool",
    Destroyed = "bool"
  }
}
