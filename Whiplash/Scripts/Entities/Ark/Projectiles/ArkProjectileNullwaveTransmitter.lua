local L0_3222, L1_3223, L2_3224, L3_3225, L4_3226
L0_3222 = {}
L1_3223 = {}
L1_3223.object_GeometryFP = "Objects/weapons/Nullwave_Transmitter/3P/nullwave3p_01.cgf"
L1_3223.bUsable = 1
L1_3223.textDisplayName = "@i_weaponNullwaveTransmitter"
L1_3223.textDescription = "Grenades that transmit no waves."
L1_3223.fHealth = 10
L1_3223.signalGroup_Damage = "3149325216937655803"
L1_3223.signalGroup_EMP = "2524450536722832464"
L1_3223.signalmodifier_InboundModifier = "3149325216965814264"
L2_3224 = {}
L2_3224.sType = "rigid"
L2_3224.bPhysicalize = 1
L2_3224.bRigidBody = 1
L2_3224.bPushableByPlayers = 0
L2_3224.bPushableByAI = 0
L2_3224.bRigidBodyActive = 1
L2_3224.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3224.Density = -1
L2_3224.Mass = 3
L2_3224.Speed = 20
L3_3225 = {}
L3_3225.x = 0
L3_3225.y = 0
L3_3225.z = 0
L2_3224.vGravity = L3_3225
L2_3224.fDamping = 0.85
L1_3223.Physics = L2_3224
L1_3223.bCanTriggerAreas = 1
L2_3224 = {}
L2_3224.disruptionProfile_Profile = "10739735956140212131"
L2_3224.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3224.audioTrigger_SparkSFX = ""
L1_3223.Disrupt = L2_3224
L2_3224 = {}
L2_3224.fLifetime = 1.5
L2_3224.bOverrideGravity = 0
L2_3224.fTimeBeforeOwnerCollides = 0.2
L2_3224.bDestroyOnCollision = 0
L2_3224.metaTags_SneakAttackTargetTags = ""
L2_3224.signalpackage_SignalPackageId = "10641886185795235359"
L2_3224.signalpackage_CriticalSignalPackageId = "10641886185795235359"
L2_3224.hitType = "ArkProjectileNullwaveTransmitter"
L2_3224.bCollideWithEtherForm = true
L2_3224.fDestroyDelay = 0.1
L3_3225 = {}
L3_3225.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.NullWaveGenerator.NullWave_Explosion_00"
L3_3225.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.NullWaveGenerator.NullWave_Explosion_00"
L3_3225.fEffectScale = 15
L2_3224.ExplosionEffect = L3_3225
L3_3225 = {}
L3_3225.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3225.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3225.fEffectScale = 1
L2_3224.DestroyEffect = L3_3225
L3_3225 = {}
L4_3226 = {}
L4_3226.gameNoiseType_type = "9469288860501649125"
L4_3226.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3225.Noise = L4_3226
L3_3225.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3225.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3225.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3225.textPromptUseMessage = "@use_pickup"
L3_3225.textPromptEquipMessage = "@use_equip"
L3_3225.fExplosionRadius = 10
L3_3225.fExplosionImpulse = 0
L3_3225.fProximityRadius = 6
L3_3225.fProximitySpeed = 0.5
L3_3225.fProximityTime = 2
L3_3225.fPulseDuration = 0.1
L3_3225.fPulseFrequency = 0.1
L3_3225.bShouldCheckLOS = 0
L3_3225.fHitNPCTime = 0.25
L3_3225.fArmingDuration = 2
L3_3225.cameraShake_CameraShake = "10739735956147043737"
L2_3224.Grenade = L3_3225
L1_3223.Projectile = L2_3224
L2_3224 = {}
L2_3224.organic = 0
L2_3224.mineral = 100
L2_3224.synthetic = 100
L2_3224.exotic = 150
L1_3223.RecycleData = L2_3224
L0_3222.Properties = L1_3223
L0_3222.displayName = ""
ArkProjectileNullwaveTransmitter = L0_3222
L0_3222 = ArkProjectileNullwaveTransmitter
function L1_3223(A0_3227)
  if A0_3227.Properties.bCanTriggerAreas == 1 then
    A0_3227:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3227:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3222.OnInit = L1_3223
L0_3222 = ArkProjectileNullwaveTransmitter
function L1_3223(A0_3228)
  Ark.AttachInboundSignalModifier(A0_3228.id, A0_3228.Properties.signalmodifier_InboundModifier)
end
L0_3222.OnSpawn = L1_3223
L0_3222 = ArkProjectileNullwaveTransmitter
function L1_3223(A0_3229)
  local L1_3230
  L1_3230 = A0_3229.Properties
  L1_3230 = L1_3230.textDisplayName
  A0_3229.displayName = L1_3230
end
L0_3222.UpdateDisplayName = L1_3223
