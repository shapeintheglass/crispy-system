local L0_3312, L1_3313, L2_3314, L3_3315, L4_3316
L0_3312 = {}
L1_3313 = {}
L2_3314 = {}
L2_3314.sType = "particle"
L2_3314.bPhysicalize = 1
L2_3314.bRigidBody = 1
L2_3314.bPushableByPlayers = 0
L2_3314.bPushableByAI = 0
L2_3314.bRigidBodyActive = 1
L2_3314.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3314.Density = -1
L2_3314.Mass = 1
L2_3314.Speed = 0.1
L3_3315 = {}
L3_3315.x = 0
L3_3315.y = 0
L3_3315.z = 0
L2_3314.vGravity = L3_3315
L3_3315 = {}
L3_3315.fSize = 0.25
L2_3314.Particle = L3_3315
L1_3313.Physics = L2_3314
L2_3314 = {}
L2_3314.fLifetime = 5
L2_3314.fTimeBeforeOwnerCollides = 0
L2_3314.bDestroyOnCollision = 1
L2_3314.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3314.signalpackage_SignalPackageId = "3149325216974108474"
L2_3314.signalpackage_CriticalSignalPackageId = ""
L2_3314.hitType = "ArkPhantomKineticProjectile"
L2_3314.bAlignWithVelocity = 1
L2_3314.bCollideWithEtherForm = true
L2_3314.fDestroyDelay = 0.5
L3_3315 = {}
L3_3315.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Kinetic.KineticProjectile.Revision01.Trail_01"
L3_3315.fEffectScale = 1
L2_3314.TrailEffect = L3_3315
L3_3315 = {}
L3_3315.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Kinetic.KineticProjectile.Kenetic_Explosion_00"
L3_3315.fEffectScale = 1
L2_3314.ExplosionEffect = L3_3315
L3_3315 = {}
L3_3315.fMaxSpeed = 75
L3_3315.fTurnSpeed = 5
L3_3315.fDetonationRadius = 0.85
L3_3315.fAcceleration = 45
L3_3315.fMaxBlastRadius = 1.75
L3_3315.fExplosionImpulse = 1500
L3_3315.fMinTimeToGiveUp = 0.5
L3_3315.bUsePredictiveHoming = 1
L3_3315.cameraShake_CameraShake = ""
L4_3316 = {}
L4_3316.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Kinetic.KineticProjectile.Revision01.Projectile_Mesh_00"
L4_3316.fEffectScale = 1
L3_3315.HomingProjectileEffect = L4_3316
L2_3314.HomingPsiBlast = L3_3315
L1_3313.Projectile = L2_3314
L0_3312.Properties = L1_3313
ArkProjectileHomingPsiBlast = L0_3312
