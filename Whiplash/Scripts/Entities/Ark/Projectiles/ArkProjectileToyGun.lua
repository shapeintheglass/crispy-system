local L0_3284, L1_3285, L2_3286, L3_3287
L0_3284 = {}
L1_3285 = {}
L1_3285.object_GeometryFP = "objects/weapons/toygun/toygun_projectile_00.cgf"
L1_3285.bCanTriggerAreas = 1
L1_3285.bCapacitive = 1
L1_3285.bInteractiveCollision = 1
L1_3285.textDisplayName = "@i_ammotoygunprojectile"
L1_3285.archetype_PickupToCollect = "ArkPickups.Ammo.ToyGunDarts"
L1_3285.nPickupCount = 1
L2_3286 = {}
L2_3286.signal_DetonationSignal = ""
L2_3286.signalpackage_Explosion = ""
L2_3286.particleeffect_ExplosionVFX = ""
L2_3286.fMinExplosionRadius = 0.25
L2_3286.fMaxExplosionRadius = 2
L2_3286.fParticleEffectScale = 1
L2_3286.fExplosionImpulse = 1
L1_3285.ExplosiveDart = L2_3286
L2_3286 = {}
L2_3286.sType = "rigid"
L2_3286.bPhysicalize = 1
L2_3286.bRigidBody = 1
L2_3286.bPushableByPlayers = 0
L2_3286.bPushableByAI = 0
L2_3286.bRigidBodyActive = 1
L2_3286.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3286.Density = -1
L2_3286.Mass = 0.05
L2_3286.Speed = 50
L2_3286.SpeedFromCamera = 10
L3_3287 = {}
L3_3287.x = 0
L3_3287.y = 0
L3_3287.z = -13
L2_3286.vGravity = L3_3287
L1_3285.Physics = L2_3286
L2_3286 = {}
L2_3286.bOverrideGravity = 0
L2_3286.fLifetime = 600
L2_3286.fTimeBeforeOwnerCollides = 0.2
L2_3286.bDestroyOnCollision = 0
L2_3286.bAlignWithVelocity = 1
L2_3286.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3286.textPromptUseMessage = "@use_pickup"
L2_3286.signalpackage_SignalPackageId = "3149325216950003142"
L2_3286.signalpackage_CriticalSignalPackageId = "3149325216966269047"
L2_3286.hitType = "ArkProjectileToyGun"
L2_3286.bCollideWithEtherForm = false
L2_3286.fDestroyDelay = 0.5
L3_3287 = {}
L3_3287.object_GeometryFP = "objects/arkeffects/weapons/generic/arkbullet_gentracermesh.cgf"
L3_3287.fLifetime = 0.35
L3_3287.Speed = 60
L2_3286.Tracer = L3_3287
L1_3285.Projectile = L2_3286
L0_3284.Properties = L1_3285
ArkProjectileToyGun = L0_3284
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3288)
  if A0_3288.Properties.bCanTriggerAreas == 1 then
    A0_3288:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3288:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
  if A0_3288.Properties.ExplosiveDart.signal_DetonationSignal ~= "" then
    Ark.RegisterForSignal(A0_3288.id, A0_3288.Properties.ExplosiveDart.signal_DetonationSignal)
  end
end
L0_3284.OnInit = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3289)
  A0_3289.m_bIsUsable = false
  A0_3289.m_bIsExplosionPending = false
  A0_3289:SetDisplayName("")
end
L0_3284.OnReInitFromPool = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3290)
  local L1_3291, L2_3292, L3_3293
  L1_3291 = A0_3290.m_bIsExplosionPending
  if not L1_3291 then
    L1_3291 = A0_3290.m_bIsUsable
    if L1_3291 then
      L1_3291 = {}
      L2_3292 = {}
      L2_3292.ActionType = "ScriptDefined"
      L1_3291.Use = L2_3292
      L3_3293 = A0_3290.Properties
      L3_3293 = L3_3293.Projectile
      L3_3293 = L3_3293.textPromptUseMessage
      L2_3292.DisplayText = L3_3293
      return L1_3291
    end
  end
end
L0_3284.GetUsable = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3294)
  local L1_3295, L2_3296
  L1_3295 = A0_3294.m_bIsExplosionPending
  if not L1_3295 then
    L1_3295 = A0_3294.m_bIsUsable
    if L1_3295 then
      L1_3295 = {}
      L1_3295.ActionType = "ScriptDefined"
      L2_3296 = A0_3294.Properties
      L2_3296 = L2_3296.Projectile
      L2_3296 = L2_3296.textPromptUseMessage
      L1_3295.DisplayText = L2_3296
      return L1_3295
    end
  end
end
L0_3284.GetRemoteManipulationInteraction = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3297)
  local L1_3298
  L1_3298 = A0_3297.m_bIsExplosionPending
  if not L1_3298 then
    L1_3298 = A0_3297.Properties
    ItemSystem.GiveItem(L1_3298.archetype_PickupToCollect, g_localActor:GetRawId(), L1_3298.nPickupCount)
    Game.ReturnToProjectilePool(A0_3297.id)
  end
end
L0_3284.Interact = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3299)
  if not A0_3299.m_bIsExplosionPending then
    if not A0_3299.m_bIsUsable then
      A0_3299:SetDisplayName(A0_3299.Properties.textDisplayName)
    end
    A0_3299.m_bIsUsable = true
  end
end
L0_3284.OnCollision = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3300, A1_3301)
  local L2_3302
  L2_3302 = A0_3300.m_bIsUsable
  A1_3301.m_bIsUsable = L2_3302
  L2_3302 = A0_3300.m_bIsExplosionPending
  A1_3301.m_bIsExplosionPending = L2_3302
end
L0_3284.OnSave = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3303, A1_3304)
  local L2_3305
  L2_3305 = A1_3304.m_bIsUsable
  A0_3303.m_bIsUsable = L2_3305
  L2_3305 = A1_3304.m_bIsExplosionPending
  A0_3303.m_bIsExplosionPending = L2_3305
end
L0_3284.OnLoad = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3306)
  local L1_3307
  L1_3307 = A0_3306.Properties
  L1_3307 = L1_3307.ExplosiveDart
  g_Vectors.temp_v1 = A0_3306:GetWorldPos()
  Particle.SpawnEffect(L1_3307.particleeffect_ExplosionVFX, g_Vectors.temp_v1, g_Vectors.v000, L1_3307.fParticleEffectScale)
  Ark.SendSignalPackageInAOE(A0_3306.id, g_localActor.id, L1_3307.signalpackage_Explosion, g_Vectors.temp_v1, L1_3307.fMinExplosionRadius, L1_3307.fMaxExplosionRadius, false, L1_3307.fExplosionImpulse)
  A0_3306.m_bIsExplosionPending = false
  Game.ReturnToProjectilePool(A0_3306.id)
end
L0_3284.Explode = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3308)
  A0_3308:Interact()
end
L0_3284.OnUsed = L1_3285
L0_3284 = ArkProjectileToyGun
function L1_3285(A0_3309)
  A0_3309:Interact()
end
L0_3284.OnRemoteManipulation = L1_3285
