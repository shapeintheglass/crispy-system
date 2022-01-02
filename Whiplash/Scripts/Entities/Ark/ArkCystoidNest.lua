Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkCystoidNest = {
  Properties = {
    object_Model = "",
    signalGroup_Damage = "3149325216937655803",
    signalmodifier_InboundModifier = "3149325216976359587",
    signalGroup_Trigger = "",
    nPrimedDuration = 750,
    nCystoidsToSpawn = 5,
    archetype_CystoidArchetype = "",
    material_PrimedMaterial = "",
    fHealth = 100,
    metaTags_TagsToIgnore = "9469288860498988665",
    metaTags_ArkMetaTags = "",
    signal_NullWave = "3149325216915549045",
    fNullWaveDeaccumulation = 0.5,
    faction_ArkFaction = "17591291352619661944",
    scanningDisplayName = "@npc_cystoidnest",
    anim_IdleAnim = "",
    fHazardRadius = 10,
    nHazardPulseDelay = 250,
    signalpackage_HazardPackage = "10641886185795235206",
    OneG = {
      fMonitorRadius = 6,
      fTargetSpeedThreshold = 1.5,
      fPlayerSpeedThreshold = 2,
      fSpawnImpulse = 0.3
    },
    ZeroG = {
      fMonitorRadius = 6,
      fTargetSpeedThreshold = 1.5,
      fPlayerSpeedThreshold = 2,
      fSpawnImpulse = 0.3
    },
    Effects = {
      sParticleAttachmentName = "fx_attachMainBody",
      particleeffect_Spawn = "Characters.Aliens.Cystoid.Nest.CystoidSpawn",
      particleeffect_Destroyed = "Characters.Aliens.Cystoid.Nest.DeathExplosion"
    },
    AI = {bUsedAsDynamicObstacle = 1},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      bResting = 1,
      bRigidBodyActive = 1,
      Density = 1,
      Mass = -1
    },
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    },
    Sound = {
      audioTrigger_Explode = "",
      audioTrigger_Triggered = "",
      audioTrigger_ExistStart = ""
    }
  },
  Editor = {
    Icon = "animobject.bmp",
    IconOnTop = 1,
    IsScalable = false,
    ArchetypeEntityObjectClassName = "Entity::ArkNpcSpawnTyphonNest"
  },
  PropertiesInstance = {bAutoDisable = 1, bUsedAsDynamicObstacle = 1}
}
GetArkEntityUtils(ArkCystoidNest)
SetupCollisionFiltering(ArkCystoidNest)
function ArkCystoidNest.Init(A0_3551, A1_3552)
end
function ArkCystoidNest.SetFromProperties(A0_3553)
  local L1_3554
end
function ArkCystoidNest.OnReset(A0_3555, A1_3556)
  A0_3555:Log("OnReset")
  A0_3555.m_bInit = false
  A0_3555:SetFromProperties()
end
function ArkCystoidNest.OnSpawn(A0_3557)
  Ark.RemoveInboundSignalModifier(A0_3557.id, A0_3557.Properties.signalmodifier_InboundModifier)
  Ark.AttachInboundSignalModifier(A0_3557.id, A0_3557.Properties.signalmodifier_InboundModifier)
end
function ArkCystoidNest.Event_Trigger(A0_3558, A1_3559, A2_3560)
  Ark.TriggerTyphonNest(A0_3558.id, A2_3560.id)
end
ArkCystoidNest.FlowEvents = {
  Inputs = {
    Trigger = {
      ArkCystoidNest.Event_Trigger,
      "entity"
    }
  },
  Outputs = {
    Triggered = "entity",
    Spawned = "entity",
    Exploded = "bool"
  }
}
