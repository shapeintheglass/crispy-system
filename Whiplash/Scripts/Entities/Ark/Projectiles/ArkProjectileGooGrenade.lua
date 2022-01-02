local L0_3186, L1_3187, L2_3188, L3_3189, L4_3190
L0_3186 = {}
L1_3187 = {}
L1_3187.object_GeometryFP = "Objects/weapons/AlienLure/3P/alienlure3p_01.cgf"
L1_3187.bUsable = 1
L1_3187.textDisplayName = "@i_weapongoogrenade"
L1_3187.textDescription = "Grenades that shoot goo"
L1_3187.fHealth = 10
L1_3187.signalGroup_Damage = "3149325216937655803"
L1_3187.signalGroup_EMP = "2524450536722832464"
L1_3187.signalmodifier_InboundModifier = "3149325216965814264"
L2_3188 = {}
L2_3188.sType = "rigid"
L2_3188.bPhysicalize = 1
L2_3188.bRigidBody = 1
L2_3188.bPushableByPlayers = 0
L2_3188.bPushableByAI = 0
L2_3188.bRigidBodyActive = 1
L2_3188.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3188.Density = -1
L2_3188.Mass = 3
L2_3188.Speed = 20
L3_3189 = {}
L3_3189.x = 0
L3_3189.y = 0
L3_3189.z = 0
L2_3188.vGravity = L3_3189
L2_3188.fDamping = 0.85
L1_3187.Physics = L2_3188
L1_3187.bCanTriggerAreas = 1
L2_3188 = {}
L2_3188.disruptionProfile_Profile = "10739735956140212131"
L2_3188.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3188.audioTrigger_SparkSFX = ""
L1_3187.Disrupt = L2_3188
L2_3188 = {}
L2_3188.fLifetime = 1.5
L2_3188.bOverrideGravity = 0
L2_3188.fTimeBeforeOwnerCollides = 0.2
L2_3188.bDestroyOnCollision = 0
L2_3188.metaTags_SneakAttackTargetTags = ""
L2_3188.signalpackage_SignalPackageId = "10641886185795235813"
L2_3188.signalpackage_CriticalSignalPackageId = "3149325216965838666"
L2_3188.hitType = "ArkProjectileGooGrenade"
L2_3188.bCollideWithEtherForm = false
L2_3188.fDestroyDelay = 1
L3_3189 = {}
L3_3189.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3189.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3189.fEffectScale = 1
L2_3188.DestroyEffect = L3_3189
L3_3189 = {}
L3_3189.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Lure.LureFlare_00"
L3_3189.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Lure.LureFlare_00"
L3_3189.fEffectScale = 13
L2_3188.AOEEffect = L3_3189
L3_3189 = {}
L4_3190 = {}
L4_3190.gameNoiseType_type = "9469288860501649125"
L4_3190.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3189.Noise = L4_3190
L3_3189.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3189.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3189.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3189.textPromptUseMessage = "@use_pickup"
L3_3189.textPromptEquipMessage = "@use_equip"
L3_3189.fExplosionRadius = 13
L3_3189.fExplosionImpulse = 0
L3_3189.fProximityRadius = 10
L3_3189.fProximitySpeed = 0.5
L3_3189.fProximityTime = 2
L3_3189.fPulseDuration = 8
L3_3189.fPulseFrequency = 1
L3_3189.bImpendingDanger = 0
L3_3189.bShouldCheckLOS = 1
L3_3189.fHitNPCTime = 0.25
L3_3189.fArmingDuration = 2
L3_3189.cameraShake_CameraShake = "10739735956147043737"
L2_3188.Grenade = L3_3189
L3_3189 = {}
L3_3189.fGravityTime = 0.1
L3_3189.fGooSpawnDegree = 30
L3_3189.fMagicTestHeight = 5
L3_3189.fNumPerPulse = 2
L3_3189.archetype_ammo = "ArkProjectiles.Gloo.GlooGrenadeShot"
L3_3189.archetype_ammoTarget = "ArkProjectiles.Gloo.GlooGrenadeShot_Target"
L3_3189.archetype_ammoMagic = "ArkProjectiles.Gloo.GlooAccretion"
L2_3188.GooGrenade = L3_3189
L1_3187.Projectile = L2_3188
L2_3188 = {}
L2_3188.organic = 0
L2_3188.mineral = 150
L2_3188.synthetic = 150
L2_3188.exotic = 100
L1_3187.RecycleData = L2_3188
L0_3186.Properties = L1_3187
L0_3186.displayName = ""
ArkProjectileGooGrenade = L0_3186
L0_3186 = ArkProjectileGooGrenade
function L1_3187(A0_3191)
  if A0_3191.Properties.bCanTriggerAreas == 1 then
    A0_3191:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3191:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3186.OnInit = L1_3187
L0_3186 = ArkProjectileGooGrenade
function L1_3187(A0_3192)
  Ark.AttachInboundSignalModifier(A0_3192.id, A0_3192.Properties.signalmodifier_InboundModifier)
end
L0_3186.OnSpawn = L1_3187
L0_3186 = ArkProjectileGooGrenade
function L1_3187(A0_3193)
  local L1_3194
  L1_3194 = A0_3193.Properties
  L1_3194 = L1_3194.textDisplayName
  A0_3193.displayName = L1_3194
end
L0_3186.UpdateDisplayName = L1_3187
