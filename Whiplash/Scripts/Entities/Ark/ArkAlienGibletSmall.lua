Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkAlienGibletSmall = {
  Properties = {
    model = "Objects/characters/Aliens/AlienCorpses/AlienCorpsePieces_Small.cgf",
    particleAttachment = "lower_jiggle",
    particleeffect_particleEffect = "Characters.Aliens.Shared.Death.AlienGib_Trail_01",
    bUsable = 0,
    fInteractDelay = 1,
    staticSpawnDownTraceDistance = 25,
    staticSpawnHorizontalNavSearchRadius = 5,
    staticSpawnVerticalNavSearchRadius = 5,
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      signalpackage_collisionDamagePackage = "3149325216948552760",
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      mass = 5,
      damping = 0.35
    },
    Explosive = {
      bUseLargeFogFragments = true,
      fMinTimeToExplosion = 3,
      fMaxTimeToExplosion = 4.5,
      fImpendingDangerRadius = 7,
      fExplosionFlingForce = 40,
      fTimeNeededForExplosionTelegraph = 1,
      particleeffect_explosionTelegraphEffect = "",
      particleeffect_explosiveGibEffect = "",
      particleeffect_explosionEffect = "",
      audioTrigger_Explosion = "",
      audioTrigger_ExplosionTelegraph = ""
    },
    RecycleData = {
      organic = 5,
      mineral = 0,
      synthetic = 0,
      exotic = 10
    }
  }
}
ArkMakeContainerLite(ArkAlienGibletSmall)
function ArkAlienGibletSmall.OnSpawn(A0_3320)
  local L1_3321
  L1_3321 = A0_3320.Properties
  L1_3321 = L1_3321.Physics
  L1_3321.CollisionFiltering = {}
  L1_3321 = A0_3320.Properties
  L1_3321 = L1_3321.Physics
  L1_3321 = L1_3321.CollisionFiltering
  L1_3321.collisionType = {}
  L1_3321.collisionIgnore = {}
  for _FORV_5_, _FORV_6_ in pairs(g_PhysicsCollisionClass) do
    L1_3321.collisionType[_FORV_5_] = 0
    L1_3321.collisionIgnore[_FORV_5_] = 0
  end
  L1_3321.collisionIgnore[gcc_ai] = 1
  L1_3321.collisionIgnore[gcc_coral] = 1
  L1_3321.collisionIgnore[gcc_ragdoll] = 1
  A0_3320:SetPhysicParams(PHYSICPARAM_COLLISION_CLASS, L1_3321)
end
