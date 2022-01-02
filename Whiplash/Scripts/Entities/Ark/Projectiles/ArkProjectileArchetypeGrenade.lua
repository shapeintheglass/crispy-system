local L0_3110, L1_3111, L2_3112, L3_3113, L4_3114
L0_3110 = {}
L1_3111 = {}
L1_3111.object_GeometryFP = "Objects/weapons/AlienLure/3P/alienlure3p_01.cgf"
L1_3111.bUsable = 1
L1_3111.textDisplayName = "@i_weaponluregrenade"
L1_3111.textDescription = "Grenades that lure aliens."
L1_3111.fHealth = 10
L1_3111.signalGroup_Damage = "3149325216937655803"
L1_3111.signalGroup_EMP = "2524450536722832464"
L1_3111.signalmodifier_InboundModifier = "3149325216965814264"
L2_3112 = {}
L2_3112.sType = "rigid"
L2_3112.bPhysicalize = 1
L2_3112.bRigidBody = 1
L2_3112.bPushableByPlayers = 0
L2_3112.bPushableByAI = 0
L2_3112.bRigidBodyActive = 1
L2_3112.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3112.Density = -1
L2_3112.Mass = 3
L2_3112.Speed = 20
L3_3113 = {}
L3_3113.x = 0
L3_3113.y = 0
L3_3113.z = 0
L2_3112.vGravity = L3_3113
L2_3112.fDamping = 0.85
L1_3111.Physics = L2_3112
L1_3111.bCanTriggerAreas = 1
L2_3112 = {}
L2_3112.disruptionProfile_Profile = "10739735956140212131"
L2_3112.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3112.audioTrigger_SparkSFX = ""
L1_3111.Disrupt = L2_3112
L2_3112 = {}
L2_3112.fLifetime = 1.5
L2_3112.bOverrideGravity = 0
L2_3112.fTimeBeforeOwnerCollides = 0.2
L2_3112.bDestroyOnCollision = 0
L2_3112.metaTags_SneakAttackTargetTags = ""
L2_3112.signalpackage_SignalPackageId = "10641886185830927780"
L2_3112.signalpackage_CriticalSignalPackageId = "10641886185830927780"
L2_3112.hitType = "ArkProjectileLureGrenade"
L2_3112.bCollideWithEtherForm = false
L2_3112.fDestroyDelay = 1
L3_3113 = {}
L3_3113.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3113.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3113.fEffectScale = 1
L2_3112.DestroyEffect = L3_3113
L3_3113 = {}
L3_3113.particleeffect_ParticleEffect = ""
L3_3113.particleeffect_ParticleEffect_Cheap = ""
L3_3113.fEffectScale = 13
L2_3112.AOEEffect = L3_3113
L3_3113 = {}
L4_3114 = {}
L4_3114.gameNoiseType_type = "9469288860501649125"
L4_3114.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3113.Noise = L4_3114
L3_3113.particleeffect_ArmedFriendlyEffect = ""
L3_3113.particleeffect_ArmedEnemyEffect = ""
L3_3113.particleeffect_DetonateEffect = ""
L3_3113.textPromptUseMessage = "@use_pickup"
L3_3113.textPromptEquipMessage = "@use_equip"
L3_3113.fExplosionRadius = 13
L3_3113.fExplosionImpulse = 0
L3_3113.fProximityRadius = 10
L3_3113.fProximitySpeed = 0.5
L3_3113.fProximityTime = 2
L3_3113.fPulseDuration = 8
L3_3113.fPulseFrequency = 0.1
L3_3113.bImpendingDanger = 0
L3_3113.bShouldCheckLOS = 1
L3_3113.fHitNPCTime = 0.25
L3_3113.fArmingDuration = 2
L3_3113.cameraShake_CameraShake = ""
L3_3113.archetype_ArchetypeToSpawn = ""
L2_3112.Grenade = L3_3113
L1_3111.Projectile = L2_3112
L2_3112 = {}
L2_3112.organic = 0
L2_3112.mineral = 150
L2_3112.synthetic = 150
L2_3112.exotic = 100
L1_3111.RecycleData = L2_3112
L0_3110.Properties = L1_3111
L0_3110.displayName = ""
ArkProjectileArchetypeGrenade = L0_3110
L0_3110 = ArkProjectileArchetypeGrenade
function L1_3111(A0_3115)
  if A0_3115.Properties.bCanTriggerAreas == 1 then
    A0_3115:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3115:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3110.OnInit = L1_3111
L0_3110 = ArkProjectileArchetypeGrenade
function L1_3111(A0_3116)
  Ark.AttachInboundSignalModifier(A0_3116.id, A0_3116.Properties.signalmodifier_InboundModifier)
end
L0_3110.OnSpawn = L1_3111
L0_3110 = ArkProjectileArchetypeGrenade
function L1_3111(A0_3117)
  local L1_3118
  L1_3118 = A0_3117.Properties
  L1_3118 = L1_3118.textDisplayName
  A0_3117.displayName = L1_3118
end
L0_3110.UpdateDisplayName = L1_3111
