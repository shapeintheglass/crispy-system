Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkLeakable = {
  Properties = {
    object_Model = "",
    material_Material = "",
    signalpackage_LeakHazard = "",
    bRecycleLeaks = 1,
    nRecycleDuration = 0,
    fLeakAngle = 10,
    fMinLeakLength = 0.5,
    fMaxLeakLength = 1,
    nMaxLeaks = 1,
    fChanceOfLeak = 0.25,
    fMinDistanceBetweenLeaks = 0.1,
    fMaxHostileAdjustmentAngle = 25,
    nHostileAdjustmentFreqency = 500,
    nHazardInterval = 100,
    nLeakDuration = -1,
    nCameraVFXInterval = 1000,
    fSelfLeakImpulse = 0,
    fAttachedGooScaleFactor = 0.5,
    signalGroup_Piercing = "3149325216937655803",
    Signals = {signal_Goo = ""},
    Effects = {
      particleeffect_Leak = "",
      fMinLeakLength = 1,
      fMaxLeakLength = 4
    },
    Sound = {audioTrigger_LeakStart = "", audioTrigger_LeakStop = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      Mass = -1
    },
    AI = {ei_DangerAreaType = 0}
  },
  States = {"Intact", "Hazard"},
  TargetClassBlackList = {
    LightningArc = true,
    ArkElectricalBox = true,
    SinglePlayer = true,
    ExtendedClip = true,
    NoWeapon = true,
    ArkLeakable = true,
    ArkProjectileGoo = true
  },
  Editor = {
    Icon = "Hazard.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bValveStartsOpen = 1,
    bVerbose = 0,
    bDrawTargetPoints = 0,
    bForceEffectVAClip = 0,
    fMinLeakLengthOverride = -1,
    fMaxLeakLengthOverride = -1,
    fAllowedAngle = -1,
    fAllowedAngleOffset = 0
  }
}
GetArkEntityUtils(ArkLeakable)
SetupCollisionFiltering(ArkLeakable)
function ArkLeakable.Init(A0_4189, A1_4190)
  A0_4189:Activate(1)
end
function ArkLeakable.SetFromProperties(A0_4191)
  A0_4191:SetMaterial(A0_4191.Properties.material_Material)
end
function ArkLeakable.OnReset(A0_4192, A1_4193)
  A0_4192:Activate(1)
  A0_4192:SetFromProperties()
end
function ArkLeakable.OnSpawn(A0_4194)
  A0_4194:SetFromProperties()
end
function ArkLeakable.Event_ValveOpen(A0_4195)
  Ark.SetLeakableValveState(A0_4195.id, true)
  BroadcastEvent(A0_4195, "ValveOpened")
end
function ArkLeakable.Event_ValveClose(A0_4196)
  Ark.SetLeakableValveState(A0_4196.id, false)
  BroadcastEvent(A0_4196, "ValveClosed")
end
function ArkLeakable.Event_Repair(A0_4197)
  BroadcastEvent(A0_4197, "Repaired")
end
ArkLeakable.FlowEvents = {
  Inputs = {
    ValveOpen = {
      ArkLeakable.Event_ValveOpen,
      "bool"
    },
    ValveClose = {
      ArkLeakable.Event_ValveClose,
      "bool"
    },
    Repair = {
      ArkLeakable.Event_Repair,
      "bool"
    }
  },
  Outputs = {
    ValveOpened = "bool",
    ValveClosed = "bool",
    Repaired = "bool",
    OnHit = "bool",
    Leaking = "bool",
    EntityId = "entity"
  }
}
