Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkApexTentacleNest = {
  Properties = {
    object_Model = "",
    object_DestroyedModel = "",
    signalGroup_Damage = "3149325216937655803",
    signalmodifier_InboundModifier = "3149325216976359587",
    signalGroup_Trigger = "",
    nPrimedDuration = 750,
    fActiveDuration = -1,
    archetype_SpawnerArchetype = "",
    material_PrimedMaterial = "",
    fHealth = 100,
    metaTags_TagsToIgnore = "9469288860498988665",
    metaTags_ArkMetaTags = "",
    signal_NullWave = "3149325216915549045",
    fNullWaveDeaccumulation = 0.5,
    faction_ArkFaction = "17591291352619661944",
    scanningDisplayName = "",
    anim_IdleAnim = "",
    anim_ActivateAnim = "",
    anim_DeactivateAnim = "",
    sSpawnLoc = "",
    Gloo = {
      signal_GlooSignal = "3149325216915549017",
      fGlooDrainRate = 200,
      fGlooActivationAmount = 0
    },
    ContainerInfo = {
      es_ContainerSize = "",
      textInteractVerb = "@use_search",
      loottable_ContainerLootTable = ""
    },
    OneG = {
      fMonitorRadius = 6,
      fTargetSpeedThreshold = 1.5,
      fPlayerSpeedThreshold = 2
    },
    ZeroG = {
      fMonitorRadius = 6,
      fTargetSpeedThreshold = 1.5,
      fPlayerSpeedThreshold = 2
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
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 1,
      Density = -1,
      Mass = 1
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
      audioTrigger_Activate = "",
      audioTrigger_Deactivate = "",
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
GetArkEntityUtils(ArkApexTentacleNest)
SetupCollisionFiltering(ArkApexTentacleNest)
function ArkApexTentacleNest.Init(A0_3347, A1_3348)
end
function ArkApexTentacleNest.SetFromProperties(A0_3349)
  local L1_3350
end
function ArkApexTentacleNest.OnReset(A0_3351, A1_3352)
  A0_3351:Log("OnReset")
  A0_3351.m_bInit = false
  A0_3351:SetFromProperties()
end
function ArkApexTentacleNest.OnSpawn(A0_3353)
  Ark.RemoveInboundSignalModifier(A0_3353.id, A0_3353.Properties.signalmodifier_InboundModifier)
  Ark.AttachInboundSignalModifier(A0_3353.id, A0_3353.Properties.signalmodifier_InboundModifier)
end
function ArkApexTentacleNest.Event_Trigger(A0_3354, A1_3355, A2_3356)
  Ark.TriggerTyphonNest(A0_3354.id, A2_3356.id)
end
ArkApexTentacleNest.FlowEvents = {
  Inputs = {
    Trigger = {
      ArkApexTentacleNest.Event_Trigger,
      "entity"
    }
  },
  Outputs = {
    Triggered = "entity",
    Spawned = "entity",
    Exploded = "bool"
  }
}
