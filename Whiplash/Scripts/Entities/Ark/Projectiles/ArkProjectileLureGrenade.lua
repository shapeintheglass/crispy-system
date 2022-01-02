local L0_3200, L1_3201, L2_3202, L3_3203, L4_3204
L0_3200 = {}
L1_3201 = {}
L1_3201.object_GeometryFP = "Objects/weapons/AlienLure/3P/alienlure3p_01.cgf"
L1_3201.bUsable = 1
L1_3201.textDisplayName = "@i_weaponluregrenade"
L1_3201.textDescription = "Grenades that lure aliens."
L1_3201.fHealth = 10
L1_3201.signalGroup_Damage = "3149325216937655803"
L1_3201.signalGroup_EMP = "2524450536722832464"
L1_3201.signalmodifier_InboundModifier = "3149325216965814264"
L2_3202 = {}
L2_3202.sType = "rigid"
L2_3202.bPhysicalize = 1
L2_3202.bRigidBody = 1
L2_3202.bPushableByPlayers = 0
L2_3202.bPushableByAI = 0
L2_3202.bRigidBodyActive = 1
L2_3202.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3202.Density = -1
L2_3202.Mass = 3
L2_3202.Speed = 20
L3_3203 = {}
L3_3203.x = 0
L3_3203.y = 0
L3_3203.z = 0
L2_3202.vGravity = L3_3203
L2_3202.fDamping = 0.85
L1_3201.Physics = L2_3202
L1_3201.bCanTriggerAreas = 1
L2_3202 = {}
L2_3202.disruptionProfile_Profile = "10739735956140212131"
L2_3202.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3202.audioTrigger_SparkSFX = ""
L1_3201.Disrupt = L2_3202
L2_3202 = {}
L2_3202.fLifetime = 1.5
L2_3202.bOverrideGravity = 0
L2_3202.fTimeBeforeOwnerCollides = 0.2
L2_3202.bDestroyOnCollision = 0
L2_3202.metaTags_SneakAttackTargetTags = ""
L2_3202.signalpackage_SignalPackageId = "10641886185830927780"
L2_3202.signalpackage_CriticalSignalPackageId = "10641886185830927780"
L2_3202.hitType = "ArkProjectileLureGrenade"
L2_3202.bCollideWithEtherForm = false
L2_3202.fDestroyDelay = 1
L3_3203 = {}
L3_3203.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3203.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Generic.SelfDestruct_00"
L3_3203.fEffectScale = 1
L2_3202.DestroyEffect = L3_3203
L3_3203 = {}
L3_3203.particleeffect_ParticleEffect = "PlayerWeapons.Grenade.Lure.LureFlare_00"
L3_3203.particleeffect_ParticleEffect_Cheap = "PlayerWeapons.Grenade.Lure.LureFlare_00"
L3_3203.fEffectScale = 13
L2_3202.AOEEffect = L3_3203
L3_3203 = {}
L4_3204 = {}
L4_3204.gameNoiseType_type = "9469288860501649125"
L4_3204.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3203.Noise = L4_3204
L3_3203.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Generic.LightingFriendlyArmed_00"
L3_3203.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3203.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3203.textPromptUseMessage = "@use_pickup"
L3_3203.textPromptEquipMessage = "@use_equip"
L3_3203.fExplosionRadius = 13
L3_3203.fExplosionRadiusPartialG = 25
L3_3203.fExplosionImpulse = 0
L3_3203.fProximityRadius = 10
L3_3203.fProximitySpeed = 0.5
L3_3203.fProximityTime = 2
L3_3203.fPulseDuration = 8
L3_3203.fPulseFrequency = 0.1
L3_3203.bImpendingDanger = 0
L3_3203.bShouldCheckLOS = 1
L3_3203.fHitNPCTime = 0.25
L3_3203.fArmingDuration = 2
L3_3203.cameraShake_CameraShake = "10739735956147043737"
L2_3202.Grenade = L3_3203
L1_3201.Projectile = L2_3202
L2_3202 = {}
L2_3202.organic = 0
L2_3202.mineral = 150
L2_3202.synthetic = 150
L2_3202.exotic = 100
L1_3201.RecycleData = L2_3202
L0_3200.Properties = L1_3201
L0_3200.displayName = ""
ArkProjectileLureGrenade = L0_3200
L0_3200 = ArkProjectileLureGrenade
function L1_3201(A0_3205)
  if A0_3205.Properties.bCanTriggerAreas == 1 then
    A0_3205:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3205:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3200.OnInit = L1_3201
L0_3200 = ArkProjectileLureGrenade
function L1_3201(A0_3206)
  Ark.AttachInboundSignalModifier(A0_3206.id, A0_3206.Properties.signalmodifier_InboundModifier)
end
L0_3200.OnSpawn = L1_3201
L0_3200 = ArkProjectileLureGrenade
function L1_3201(A0_3207)
  local L1_3208
  L1_3208 = A0_3207.Properties
  L1_3208 = L1_3208.textDisplayName
  A0_3207.displayName = L1_3208
end
L0_3200.UpdateDisplayName = L1_3201
