local L0_3119, L1_3120, L2_3121, L3_3122, L4_3123
L0_3119 = {}
L1_3120 = {}
L1_3120.object_GeometryFP = "objects/weapons/toygun/toygun_projectile_00.cgf"
L1_3120.bCanTriggerAreas = 1
L1_3120.bCapacitive = 1
L1_3120.bInteractiveCollision = 1
L1_3120.textDisplayName = "@i_ammotoygunprojectile"
L1_3120.archetype_PickupToCollect = "ArkPickups.Ammo.ToyGunDarts"
L1_3120.nPickupCount = 1
L2_3121 = {}
L2_3121.sType = "rigid"
L2_3121.bPhysicalize = 1
L2_3121.bRigidBody = 1
L2_3121.bPushableByPlayers = 0
L2_3121.bPushableByAI = 0
L2_3121.bRigidBodyActive = 1
L2_3121.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3121.Density = -1
L2_3121.Mass = 0.05
L2_3121.Speed = 50
L2_3121.SpeedFromCamera = 10
L3_3122 = {}
L3_3122.x = 0
L3_3122.y = 0
L3_3122.z = -13
L2_3121.vGravity = L3_3122
L1_3120.Physics = L2_3121
L2_3121 = {}
L2_3121.bOverrideGravity = 0
L2_3121.fLifetime = 600
L2_3121.fTimeBeforeOwnerCollides = 0.2
L2_3121.bDestroyOnCollision = 0
L2_3121.bAlignWithVelocity = 1
L2_3121.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3121.textPromptUseMessage = "@use_pickup"
L2_3121.signalpackage_SignalPackageId = "10641886185795235783"
L2_3121.signalpackage_CriticalSignalPackageId = "10641886185835675585"
L2_3121.hitType = "ArkProjectileToyGun"
L2_3121.bCollideWithEtherForm = false
L2_3121.fDestroyDelay = 0.5
L3_3122 = {}
L3_3122.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.EMP.EmpBase_00"
L3_3122.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.EMP.EmpBase_00"
L3_3122.fEffectScale = 1
L2_3121.ExplosionEffect = L3_3122
L3_3122 = {}
L4_3123 = {}
L4_3123.gameNoiseType_type = "9469288860501649125"
L4_3123.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3122.Noise = L4_3123
L3_3122.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3122.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3122.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3122.textPromptUseMessage = "@use_pickup"
L3_3122.textPromptEquipMessage = "@use_equip"
L3_3122.fExplosionRadius = 3
L3_3122.fExplosionImpulse = 4
L3_3122.fPulseDuration = 0
L3_3122.fPulseFrequency = 0
L3_3122.bImpendingDanger = 0
L3_3122.bShouldCheckLOS = 1
L3_3122.fHitNPCTime = 0
L3_3122.cameraShake_CameraShake = "10739735956147043737"
L2_3121.Grenade = L3_3122
L3_3122 = {}
L3_3122.nNumBouncesAllowed = 10
L2_3121.BounceGrenade = L3_3122
L1_3120.Projectile = L2_3121
L0_3119.Properties = L1_3120
ArkProjectileBounceGrenade = L0_3119
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3124)
  if A0_3124.Properties.bCanTriggerAreas == 1 then
    A0_3124:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3124:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3119.OnInit = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3125)
  A0_3125.m_bIsUsable = false
  A0_3125.m_bIsExplosionPending = false
  A0_3125:SetDisplayName("")
end
L0_3119.OnReInitFromPool = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3126)
  local L1_3127, L2_3128, L3_3129
  L1_3127 = A0_3126.m_bIsExplosionPending
  if not L1_3127 then
    L1_3127 = A0_3126.m_bIsUsable
    if L1_3127 then
      L1_3127 = {}
      L2_3128 = {}
      L2_3128.ActionType = "ScriptDefined"
      L1_3127.Use = L2_3128
      L3_3129 = A0_3126.Properties
      L3_3129 = L3_3129.Projectile
      L3_3129 = L3_3129.textPromptUseMessage
      L2_3128.DisplayText = L3_3129
      return L1_3127
    end
  end
end
L0_3119.GetUsable = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3130)
  local L1_3131, L2_3132
  L1_3131 = A0_3130.m_bIsExplosionPending
  if not L1_3131 then
    L1_3131 = A0_3130.m_bIsUsable
    if L1_3131 then
      L1_3131 = {}
      L1_3131.ActionType = "ScriptDefined"
      L2_3132 = A0_3130.Properties
      L2_3132 = L2_3132.Projectile
      L2_3132 = L2_3132.textPromptUseMessage
      L1_3131.DisplayText = L2_3132
      return L1_3131
    end
  end
end
L0_3119.GetRemoteManipulationInteraction = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3133)
  local L1_3134
  L1_3134 = A0_3133.m_bIsExplosionPending
  if not L1_3134 then
    L1_3134 = A0_3133.Properties
    ItemSystem.GiveItem(L1_3134.archetype_PickupToCollect, g_localActor:GetRawId(), L1_3134.nPickupCount)
    Game.ReturnToProjectilePool(A0_3133.id)
  end
end
L0_3119.Interact = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3135)
  if not A0_3135.m_bIsExplosionPending then
    if not A0_3135.m_bIsUsable then
      A0_3135:SetDisplayName(A0_3135.Properties.textDisplayName)
    end
    A0_3135.m_bIsUsable = true
  end
end
L0_3119.OnCollision = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3136, A1_3137)
  local L2_3138
  L2_3138 = A0_3136.m_bIsUsable
  A1_3137.m_bIsUsable = L2_3138
  L2_3138 = A0_3136.m_bIsExplosionPending
  A1_3137.m_bIsExplosionPending = L2_3138
end
L0_3119.OnSave = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3139, A1_3140)
  local L2_3141
  L2_3141 = A1_3140.m_bIsUsable
  A0_3139.m_bIsUsable = L2_3141
  L2_3141 = A1_3140.m_bIsExplosionPending
  A0_3139.m_bIsExplosionPending = L2_3141
end
L0_3119.OnLoad = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3142)
  local L1_3143
  L1_3143 = A0_3142.Properties
  L1_3143 = L1_3143.ExplosiveDart
  g_Vectors.temp_v1 = A0_3142:GetWorldPos()
  Particle.SpawnEffect(L1_3143.particleeffect_ExplosionVFX, g_Vectors.temp_v1, g_Vectors.v000, L1_3143.fParticleEffectScale)
  Ark.SendSignalPackageInAOE(A0_3142.id, g_localActor.id, L1_3143.signalpackage_Explosion, g_Vectors.temp_v1, L1_3143.fMinExplosionRadius, L1_3143.fMaxExplosionRadius, false, L1_3143.fExplosionImpulse)
  A0_3142.m_bIsExplosionPending = false
  Game.ReturnToProjectilePool(A0_3142.id)
end
L0_3119.Explode = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3144)
  A0_3144:Interact()
end
L0_3119.OnUsed = L1_3120
L0_3119 = ArkProjectileBounceGrenade
function L1_3120(A0_3145)
  A0_3145:Interact()
end
L0_3119.OnRemoteManipulation = L1_3120
