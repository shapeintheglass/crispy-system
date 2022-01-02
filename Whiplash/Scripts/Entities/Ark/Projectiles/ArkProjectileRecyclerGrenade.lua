local L0_3252, L1_3253, L2_3254, L3_3255, L4_3256, L5_3257
L0_3252 = {}
L1_3253 = {}
L1_3253.object_GeometryFP = "Objects/weapons/RecyclerGrenade/3P/recyclergrenade3p_01.cgf"
L1_3253.bUsable = 1
L1_3253.textDisplayName = "@i_weaponrecyclegrenade"
L1_3253.textDescription = "@i_recyclegrenadeDesc"
L1_3253.fHealth = 10
L1_3253.signalGroup_Damage = "3149325216937655803"
L1_3253.signalGroup_EMP = "2524450536722832464"
L1_3253.signalmodifier_InboundModifier = "3149325216965814264"
L2_3254 = {}
L2_3254.sType = "rigid"
L2_3254.bPhysicalize = 1
L2_3254.bRigidBody = 1
L2_3254.bPushableByPlayers = 0
L2_3254.bPushableByAI = 0
L2_3254.bRigidBodyActive = 1
L2_3254.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3254.Density = -1
L2_3254.Mass = 3
L2_3254.Speed = 20
L3_3255 = {}
L3_3255.x = 0
L3_3255.y = 0
L3_3255.z = 0
L2_3254.vGravity = L3_3255
L2_3254.fDamping = 0.85
L1_3253.Physics = L2_3254
L1_3253.bCanTriggerAreas = 1
L2_3254 = {}
L2_3254.disruptionProfile_Profile = "10739735956140212131"
L2_3254.particleeffect_SparkVFX = "PlayerWeapons.Grenade.Generic.EMPDisrupt_00"
L2_3254.audioTrigger_SparkSFX = ""
L1_3253.Disrupt = L2_3254
L2_3254 = {}
L2_3254.fLifetime = 1.5
L2_3254.bOverrideGravity = 0
L2_3254.fTimeBeforeOwnerCollides = 0.2
L2_3254.bDestroyOnCollision = 0
L2_3254.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3254.signalpackage_SignalPackageId = "10641886185818137195"
L2_3254.signalpackage_CriticalSignalPackageId = "10641886185835675803"
L2_3254.hitType = "ArkProjectileRecyclerGrenade"
L2_3254.bCollideWithEtherForm = false
L2_3254.fDestroyDelay = 2
L3_3255 = {}
L4_3256 = {}
L4_3256.gameNoiseType_type = "9469288860501649125"
L4_3256.gameNoiseLoudness_loudness = "9469288860501649195"
L3_3255.Noise = L4_3256
L3_3255.particleeffect_ArmedFriendlyEffect = "PlayerWeapons.Grenade.Recycler.Recycler_LightingFriendlyArmed"
L3_3255.particleeffect_ArmedEnemyEffect = "PlayerWeapons.Grenade.Generic.LightingArmed_00"
L3_3255.particleeffect_DetonateEffect = "PlayerWeapons.Grenade.Generic.LightingDetonation_00"
L3_3255.textPromptUseMessage = "@use_pickup"
L3_3255.textPromptEquipMessage = "@use_equip"
L3_3255.fExplosionRadius = 6
L3_3255.fExplosionImpulse = 0
L3_3255.fProximityRadius = 5
L3_3255.fProximitySpeed = 0.5
L3_3255.fProximityTime = 0.25
L3_3255.bImpendingDanger = 1
L3_3255.bShouldCheckLOS = 1
L3_3255.fHitNPCTime = 0.25
L3_3255.fArmingDuration = 2
L3_3255.cameraShake_CameraShake = "10739735956147043737"
L2_3254.Grenade = L3_3255
L3_3255 = {}
L3_3255.particleeffect_PullEffect = "PlayerWeapons.Grenade.Recycler.Recycler_Pinch_00"
L3_3255.particleeffect_PullEffect_Cheap = "PlayerWeapons.Grenade.Recycler.Recycler_Pinch_00"
L3_3255.particleeffect_PopEffect = "PlayerWeapons.Grenade.Recycler.Recycler_Bulge_00"
L3_3255.particleeffect_PopEffect_Cheap = "PlayerWeapons.Grenade.Recycler.Recycler_Bulge_00"
L3_3255.particleeffect_FlashEffect = "PlayerWeapons.Grenade.Recycler.Recycler_Flash_00"
L3_3255.particleeffect_FlashEffect_Cheap = "PlayerWeapons.Grenade.Recycler.Recycler_Flash_00"
L3_3255.fVibrateTime = 0.35
L3_3255.fVibrationRadius = 1.75
L3_3255.fRaiseGravityZ = 0
L3_3255.fVibrationAmount = 4
L3_3255.fPullTime = 1.5
L3_3255.fGravitationalPullRadius = 10
L3_3255.fGravitationalPull = -13
L3_3255.fGravitationalPullPlayer = -26
L3_3255.fRecyclingTime = 0.65
L3_3255.fRecyclingImpulse = 0
L4_3256 = {}
L4_3256.bHideCenterObjects = 1
L4_3256.fSprayImpulseDegree = 10
L5_3257 = {}
L5_3257.min = 8
L5_3257.max = 12
L4_3256.SprayImpulseRange = L5_3257
L5_3257 = {}
L5_3257.min = 0.8
L5_3257.max = 1.2
L4_3256.SprayImpulseZeroGRange = L5_3257
L5_3257 = {}
L5_3257.min = 0.75
L5_3257.max = 0.79
L4_3256.PercentRecycleRange = L5_3257
L4_3256.nMaxIngredientsPerType = 6
L4_3256.nMaxTotalIngredients = 12
L4_3256.nMaxTotalScraps = 500
L4_3256.fPercentScrapPool = 0.42
L4_3256.fRecyclingRadius = 6
L4_3256.fRecyclingKillRadius = 1
L4_3256.signalpackage_RecyclePackageId = "10641886185795235880"
L4_3256.signalpackage_RecycleKillPackageId = "10641886185795235880"
L4_3256.particleeffect_EntityGravityEffect = "PlayerWeapons.Grenade.Recycler.RefractionPull_01"
L4_3256.particleeffect_EntityGravityEffect_Cheap = "PlayerWeapons.Grenade.Recycler.RefractionPull_01"
L4_3256.sOverrideRecycleClasses = "OverrideRecycleClasses"
L3_3255.RecycleHelper = L4_3256
L2_3254.RecyclerGrenade = L3_3255
L1_3253.Projectile = L2_3254
L2_3254 = {}
L2_3254.organic = 0
L2_3254.mineral = 0
L2_3254.synthetic = 0
L2_3254.exotic = 0
L1_3253.RecycleData = L2_3254
L0_3252.Properties = L1_3253
L0_3252.displayName = ""
ArkProjectileRecyclerGrenade = L0_3252
L0_3252 = ArkProjectileRecyclerGrenade
function L1_3253(A0_3258)
  if A0_3258.Properties.bCanTriggerAreas == 1 then
    A0_3258:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_3258:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
L0_3252.OnInit = L1_3253
L0_3252 = ArkProjectileRecyclerGrenade
function L1_3253(A0_3259)
  Ark.AttachInboundSignalModifier(A0_3259.id, A0_3259.Properties.signalmodifier_InboundModifier)
end
L0_3252.OnSpawn = L1_3253
L0_3252 = ArkProjectileRecyclerGrenade
function L1_3253(A0_3260)
  local L1_3261
  L1_3261 = A0_3260.Properties
  L1_3261 = L1_3261.textDisplayName
  A0_3260.displayName = L1_3261
end
L0_3252.UpdateDisplayName = L1_3253
