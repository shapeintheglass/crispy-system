local L0_3159, L1_3160, L2_3161, L3_3162
L0_3159 = {}
L1_3160 = {}
L2_3161 = {}
L2_3161.sType = "particle"
L2_3161.bPhysicalize = 1
L2_3161.bRigidBody = 1
L2_3161.bPushableByPlayers = 0
L2_3161.bPushableByAI = 0
L2_3161.bRigidBodyActive = 1
L2_3161.signalpackage_collisionDamagePackage = "3149325216948552760"
L2_3161.Density = -1
L2_3161.Mass = 1
L2_3161.Speed = 5
L3_3162 = {}
L3_3162.x = 0
L3_3162.y = 0
L3_3162.z = 0
L2_3161.vGravity = L3_3162
L3_3162 = {}
L3_3162.fSize = 0.25
L2_3161.Particle = L3_3162
L1_3160.Physics = L2_3161
L2_3161 = {}
L2_3161.fLifetime = 5
L2_3161.fTimeBeforeOwnerCollides = 0.2
L2_3161.bDestroyOnCollision = 1
L2_3161.metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071"
L2_3161.signalpackage_SignalPackageId = "10641886185795227267"
L2_3161.signalpackage_CriticalSignalPackageId = ""
L2_3161.hitType = "ArkPhantomKineticProjectile"
L2_3161.bCollideWithEtherForm = false
L2_3161.fDestroyDelay = 0.5
L3_3162 = {}
L3_3162.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Voltaic.ElectricBall.ElectricBall_00"
L3_3162.fEffectScale = 1
L2_3161.ProjectileEffect = L3_3162
L3_3162 = {}
L3_3162.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Kinetic.KineticProjectile.Revision01.Trail_01"
L3_3162.fEffectScale = 1
L2_3161.TrailEffect = L3_3162
L3_3162 = {}
L3_3162.particleeffect_ParticleEffect = "Characters.Aliens.Phantom.Voltaic.ElectricBlast.ElectricExplosion"
L3_3162.fEffectScale = 1
L2_3161.ExplosionEffect = L3_3162
L3_3162 = {}
L3_3162.fMaxSpeed = 20
L3_3162.fTurnSpeed = 25
L3_3162.fDetonationRadius = 0.75
L3_3162.fAcceleration = 10
L3_3162.fMaxBlastRadius = 1.25
L2_3161.EMPLightningBall = L3_3162
L1_3160.Projectile = L2_3161
L0_3159.Properties = L1_3160
ArkProjectileEMPLightningBall = L0_3159
