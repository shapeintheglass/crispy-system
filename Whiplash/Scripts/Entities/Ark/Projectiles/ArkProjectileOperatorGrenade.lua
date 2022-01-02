local L0_3231, L1_3232, L2_3233, L3_3234, L4_3235
L0_3231 = {}
L1_3232 = {}
L1_3232.object_GeometryFP = "Objects/weapons/RecyclerGrenade/1P/recyclergrenade.cgf"
L1_3232.bUsable = 1
L1_3232.textDisplayName = "Explosive Grenade"
L1_3232.textDescription = "Grenades that explode."
L1_3232.fHealth = 10
L1_3232.signalGroup_Damage = "3149325216937655803"
L1_3232.signalGroup_EMP = "2524450536722832464"
L2_3233 = {}
L2_3233.sType = "rigid"
L2_3233.bPhysicalize = 1
L2_3233.bRigidBody = 1
L2_3233.bPushableByPlayers = 0
L2_3233.bPushableByAI = 0
L2_3233.bRigidBodyActive = 1
L2_3233.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3233.Density = -1
L2_3233.Mass = 1
L2_3233.Speed = 14
L3_3234 = {}
L3_3234.x = 0
L3_3234.y = 0
L3_3234.z = -20
L2_3233.vGravity = L3_3234
L1_3232.Physics = L2_3233
L1_3232.bCanTriggerAreas = 1
L2_3233 = {}
L2_3233.disruptionProfile_Profile = "10739735956140212131"
L2_3233.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3233.audioTrigger_SparkSFX = ""
L1_3232.Disrupt = L2_3233
L2_3233 = {}
L2_3233.fLifetime = 1.35
L2_3233.bOverrideGravity = 1
L2_3233.fTimeBeforeOwnerCollides = 0.2
L2_3233.bDestroyOnCollision = 0
L2_3233.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3233.signalpackage_SignalPackageId = "10641886185795235783"
L2_3233.signalpackage_CriticalSignalPackageId = "10641886185795235783"
L2_3233.hitType = "ArkProjectileExplosiveGrenade"
L2_3233.bCollideWithEtherForm = false
L2_3233.fDestroyDelay = 1
L3_3234 = {}
L3_3234.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Explosive.Explosion_Proxy_01"
L3_3234.fEffectScale = 1
L2_3233.ExplosionEffect = L3_3234
L3_3234 = {}
L4_3235 = {}
L4_3235.gameNoiseType_type = "9469288860501649125"
L4_3235.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3234.Noise = L4_3235
L4_3235 = {}
L4_3235.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L4_3235.fEffectScale = 1
L4_3235.audioTrigger_SoundStart = ""
L4_3235.audioTrigger_SoundStop = ""
L3_3234.ArmedFriendlyEffect = L4_3235
L4_3235 = {}
L4_3235.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L4_3235.fEffectScale = 1
L4_3235.audioTrigger_SoundStart = ""
L4_3235.audioTrigger_SoundStop = ""
L3_3234.ArmedEnemyEffect = L4_3235
L4_3235 = {}
L4_3235.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L4_3235.fEffectScale = 1
L4_3235.audioTrigger_SoundStart = ""
L4_3235.audioTrigger_SoundStop = ""
L3_3234.DetonateEffect = L4_3235
L3_3234.textPromptUseMessage = "@use_pickup"
L3_3234.textPromptEquipMessage = "@use_equip"
L3_3234.fExplosionRadius = 5
L3_3234.fExplosionImpulse = 1500
L3_3234.fProximityRadius = 5
L3_3234.fProximitySpeed = 0.5
L3_3234.fProximityTime = 2
L3_3234.bImpendingDanger = 1
L3_3234.bShouldCheckLOS = 1
L3_3234.fHitNPCTime = 0
L3_3234.fArmingDuration = 1
L3_3234.bAutoDeploy = 1
L3_3234.cameraShake_CameraShake = "10739735956147043737"
L2_3233.Grenade = L3_3234
L1_3232.Projectile = L2_3233
L0_3231.Properties = L1_3232
L0_3231.displayName = ""
ArkProjectileOperatorGrenade = L0_3231
L0_3231 = ArkProjectileOperatorGrenade
function L1_3232(A0_3236)
  if A0_3236.Properties.bCanTriggerAreas == 1 then
    A0_3236:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3236:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3231.OnInit = L1_3232
L0_3231 = ArkProjectileOperatorGrenade
function L1_3232(A0_3237)
  local L1_3238, L2_3239, L3_3240, L4_3241
  L1_3238 = {}
  L2_3239 = {}
  L2_3239.ActionType = "CodeDefined"
  L1_3238.Use = L2_3239
  L3_3240 = A0_3237.Properties
  L3_3240 = L3_3240.Projectile
  L3_3240 = L3_3240.Grenade
  L3_3240 = L3_3240.textPromptUseMessage
  L2_3239.DisplayText = L3_3240
  L3_3240 = {}
  L3_3240.ActionType = "CodeDefined"
  L4_3241 = A0_3237.Properties
  L4_3241 = L4_3241.Projectile
  L4_3241 = L4_3241.Grenade
  L4_3241 = L4_3241.textPromptEquipMessage
  L3_3240.DisplayText = L4_3241
  L1_3238.Special = L3_3240
  return L1_3238
end
L0_3231.GetUsable = L1_3232
L0_3231 = ArkProjectileOperatorGrenade
function L1_3232(A0_3242)
  local L1_3243
  L1_3243 = A0_3242.Properties
  L1_3243 = L1_3243.textDisplayName
  A0_3242.displayName = L1_3243
end
L0_3231.UpdateDisplayName = L1_3232
L0_3231 = ArkProjectileOperatorGrenade
function L1_3232(A0_3244)
  local L1_3245, L2_3246
  L1_3245 = {}
  L1_3245.ActionType = "CodeDefined"
  L2_3246 = A0_3244.Properties
  L2_3246 = L2_3246.Projectile
  L2_3246 = L2_3246.Grenade
  L2_3246 = L2_3246.textPromptUseMessage
  L1_3245.DisplayText = L2_3246
  L1_3245.CouldChange = false
  return L1_3245
end
L0_3231.GetRemoteManipulationInteraction = L1_3232
