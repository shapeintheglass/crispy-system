local L0_3271, L1_3272, L2_3273, L3_3274
L0_3271 = {}
L1_3272 = {}
L2_3273 = {}
L2_3273.sType = "particle"
L2_3273.bPhysicalize = 1
L2_3273.bRigidBody = 1
L2_3273.bPushableByPlayers = 0
L2_3273.bPushableByAI = 0
L2_3273.bRigidBodyActive = 1
L2_3273.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3273.Density = -1
L2_3273.Mass = 1
L2_3273.Speed = 5
L3_3274 = {}
L3_3274.x = 0
L3_3274.y = 0
L3_3274.z = 0
L2_3273.vGravity = L3_3274
L3_3274 = {}
L3_3274.fSize = 0.25
L2_3273.Particle = L3_3274
L1_3272.Physics = L2_3273
L2_3273 = {}
L2_3273.fDelayBeforeExplosion = 0.5
L2_3273.fFlareRadius = 5
L2_3273.fFlareLifetime = 5
L2_3273.bDrawDebugSpheres = true
L2_3273.particleeffect_TravelEffect = ""
L2_3273.particleeffect_ExplosionTelegraphEffect = ""
L2_3273.particleeffect_ExplosionEffect = ""
L2_3273.signalpackage_travelBlindnessPackageId = "0"
L2_3273.signalpackage_FlareExplosionPackage = "0"
L2_3273.fFlareExplosionMinimumSignalPercent = 0.5
L2_3273.travelBlindnessMinEffectiveAngle = 70
L2_3273.travelBlindnessMaxEffectiveAngle = 15
L2_3273.travelBlindnessMaxEffectiveDistance = 10
L2_3273.travelBlindnessMinEffectiveDistance = 30
L2_3273.travelBlindnessPulseTime = 0.1
L2_3273.radiationHazardArchetype = "ArkProjectiles.AlienPowers.SolarFlareRadiationHazard"
L1_3272.Flare = L2_3273
L2_3273 = {}
L2_3273.fLifetime = 15
L2_3273.fTimeBeforeOwnerCollides = 0
L2_3273.bDestroyOnCollision = 0
L2_3273.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3273.signalpackage_SignalPackageId = "3149325216974108474"
L2_3273.signalpackage_CriticalSignalPackageId = ""
L2_3273.hitType = "ArkPhantomKineticProjectile"
L2_3273.bAlignWithVelocity = 1
L2_3273.bCollideWithEtherForm = true
L2_3273.fDestroyDelay = 0
L3_3274 = {}
L3_3274.particleeffect_ParticleEffect = ""
L3_3274.fEffectScale = 1
L2_3273.TrailEffect = L3_3274
L3_3274 = {}
L3_3274.particleeffect_ParticleEffect = ""
L3_3274.fEffectScale = 1
L2_3273.ExplosionEffect = L3_3274
L1_3272.Projectile = L2_3273
L0_3271.Properties = L1_3272
ArkProjectileSolarFlare = L0_3271
