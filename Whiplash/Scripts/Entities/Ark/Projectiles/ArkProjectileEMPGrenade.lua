local L0_3150, L1_3151, L2_3152, L3_3153, L4_3154
L0_3150 = {}
L1_3151 = {}
L1_3151.object_GeometryFP = "Objects/weapons/EMPGrenade/3P/empgrenade3p_01.cgf"
L1_3151.bUsable = 1
L1_3151.textDisplayName = "@i_weaponEMPgrenade"
L1_3151.textDescription = "Grenades that EMP."
L1_3151.fHealth = 10
L1_3151.signalGroup_Damage = "3149325216937655803"
L1_3151.signalGroup_EMP = "2524450536722832464"
L1_3151.signalmodifier_InboundModifier = "3149325216965814264"
L2_3152 = {}
L2_3152.sType = "rigid"
L2_3152.bPhysicalize = 1
L2_3152.bRigidBody = 1
L2_3152.bPushableByPlayers = 0
L2_3152.bPushableByAI = 0
L2_3152.bRigidBodyActive = 1
L2_3152.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3152.Density = -1
L2_3152.Mass = 3
L2_3152.Speed = 20
L3_3153 = {}
L3_3153.x = 0
L3_3153.y = 0
L3_3153.z = 0
L2_3152.vGravity = L3_3153
L2_3152.fDamping = 0.85
L1_3151.Physics = L2_3152
L1_3151.bCanTriggerAreas = 1
L2_3152 = {}
L2_3152.disruptionProfile_Profile = "10739735956140212131"
L2_3152.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3152.audioTrigger_SparkSFX = ""
L1_3151.Disrupt = L2_3152
L2_3152 = {}
L2_3152.fLifetime = 1.5
L2_3152.bOverrideGravity = 0
L2_3152.fTimeBeforeOwnerCollides = 0.2
L2_3152.bDestroyOnCollision = 0
L2_3152.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3152.signalpackage_SignalPackageId = "10641886185795235992"
L2_3152.signalpackage_CriticalSignalPackageId = "10641886185835675738"
L2_3152.hitType = "ArkProjectileEMPGrenade"
L2_3152.bCollideWithEtherForm = false
L2_3152.fDestroyDelay = 0.1
L3_3153 = {}
L3_3153.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.EMP.EmpBase_00"
L3_3153.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.EMP.EmpBase_00"
L3_3153.fEffectScale = 1
L2_3152.ExplosionEffect = L3_3153
L3_3153 = {}
L4_3154 = {}
L4_3154.gameNoiseType_type = "9469288860501649125"
L4_3154.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3153.Noise = L4_3154
L3_3153.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3153.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3153.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3153.textPromptUseMessage = "@use_pickup"
L3_3153.textPromptEquipMessage = "@use_equip"
L3_3153.fExplosionRadius = 8
L3_3153.fExplosionImpulse = 10
L3_3153.fProximityRadius = 5
L3_3153.fProximitySpeed = 0.5
L3_3153.fProximityTime = 2
L3_3153.bImpendingDanger = 1
L3_3153.bShouldCheckLOS = 0
L3_3153.fHitNPCTime = 0.25
L3_3153.fArmingDuration = 2
L3_3153.cameraShake_CameraShake = "10739735956147043737"
L2_3152.Grenade = L3_3153
L1_3151.Projectile = L2_3152
L2_3152 = {}
L2_3152.organic = 0
L2_3152.mineral = 200
L2_3152.synthetic = 250
L2_3152.exotic = 0
L1_3151.RecycleData = L2_3152
L0_3150.Properties = L1_3151
L0_3150.displayName = ""
ArkProjectileEMPGrenade = L0_3150
L0_3150 = ArkProjectileEMPGrenade
function L1_3151(A0_3155)
  if A0_3155.Properties.bCanTriggerAreas == 1 then
    A0_3155:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3155:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3150.OnInit = L1_3151
L0_3150 = ArkProjectileEMPGrenade
function L1_3151(A0_3156)
  Ark.AttachInboundSignalModifier(A0_3156.id, A0_3156.Properties.signalmodifier_InboundModifier)
end
L0_3150.OnSpawn = L1_3151
L0_3150 = ArkProjectileEMPGrenade
function L1_3151(A0_3157)
  local L1_3158
  L1_3158 = A0_3157.Properties
  L1_3158 = L1_3158.textDisplayName
  A0_3157.displayName = L1_3158
end
L0_3150.UpdateDisplayName = L1_3151
