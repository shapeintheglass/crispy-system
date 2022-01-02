local L0_3163, L1_3164, L2_3165, L3_3166, L4_3167
L0_3163 = {}
L1_3164 = {}
L1_3164.object_GeometryFP = "Objects/weapons/RecyclerGrenade/1P/recyclergrenade.cgf"
L1_3164.bUsable = 1
L1_3164.textDisplayName = "Explosive Grenade"
L1_3164.textDescription = "Grenades that explode."
L1_3164.fHealth = 30
L1_3164.signalGroup_Damage = "3149325216937655803"
L1_3164.signalGroup_EMP = "2524450536722832464"
L2_3165 = {}
L2_3165.sType = "rigid"
L2_3165.bPhysicalize = 1
L2_3165.bRigidBody = 1
L2_3165.bPushableByPlayers = 0
L2_3165.bPushableByAI = 0
L2_3165.bRigidBodyActive = 1
L2_3165.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3165.Density = -1
L2_3165.Mass = 25
L2_3165.Speed = 20
L3_3166 = {}
L3_3166.x = 0
L3_3166.y = 0
L3_3166.z = 0
L2_3165.vGravity = L3_3166
L2_3165.fDamping = 0.85
L1_3164.Physics = L2_3165
L1_3164.bCanTriggerAreas = 1
L2_3165 = {}
L2_3165.disruptionProfile_Profile = "10739735956140212131"
L2_3165.particleeffect_SparkVFX = ""
L2_3165.audioTrigger_SparkSFX = ""
L1_3164.Disrupt = L2_3165
L2_3165 = {}
L2_3165.fLifetime = 3.25
L2_3165.bOverrideGravity = 0
L2_3165.fTimeBeforeOwnerCollides = 0.2
L2_3165.bDestroyOnCollision = 0
L2_3165.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3165.signalpackage_SignalPackageId = "10641886185795235783"
L2_3165.signalpackage_CriticalSignalPackageId = "10641886185835675585"
L2_3165.hitType = "ArkProjectileExplosiveGrenade"
L2_3165.bCollideWithEtherForm = false
L2_3165.fDestroyDelay = 1.5
L3_3166 = {}
L3_3166.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Explosive.Explosive_00"
L3_3166.fEffectScale = 1
L4_3167 = {}
L4_3167.x = 0
L4_3167.y = 0
L4_3167.z = 1
L3_3166.vDirection = L4_3167
L2_3165.ExplosionEffect = L3_3166
L3_3166 = {}
L3_3166.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3166.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3166.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L4_3167 = {}
L4_3167.gameNoiseType_type = "9469288860501649125"
L4_3167.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3166.Noise = L4_3167
L3_3166.textPromptUseMessage = "@use_pickup"
L3_3166.textPromptEquipMessage = "@use_equip"
L3_3166.fExplosionRadius = 8
L3_3166.fExplosionImpulse = 1500
L3_3166.fProximityRadius = 5
L3_3166.fProximitySpeed = 0.5
L3_3166.fProximityTime = 2
L3_3166.bImpendingDanger = 1
L3_3166.bShouldCheckLOS = 1
L3_3166.bShouldBreakGlass = 1
L3_3166.fHitNPCTime = 0.5
L3_3166.fArmingDuration = 1
L3_3166.cameraShake_CameraShake = "10739735956147043737"
L2_3165.Grenade = L3_3166
L1_3164.Projectile = L2_3165
L0_3163.Properties = L1_3164
L0_3163.displayName = ""
ArkProjectileExplosiveGrenade = L0_3163
L0_3163 = ArkProjectileExplosiveGrenade
function L1_3164(A0_3168)
  if A0_3168.Properties.bCanTriggerAreas == 1 then
    A0_3168:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3168:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3163.OnInit = L1_3164
L0_3163 = ArkProjectileExplosiveGrenade
function L1_3164(A0_3169)
  local L1_3170
  L1_3170 = A0_3169.Properties
  L1_3170 = L1_3170.textDisplayName
  A0_3169.displayName = L1_3170
end
L0_3163.UpdateDisplayName = L1_3164
