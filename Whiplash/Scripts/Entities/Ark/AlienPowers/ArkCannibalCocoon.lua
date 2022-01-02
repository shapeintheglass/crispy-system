Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkCannibalCocoon = {
  Properties = {
    object_Model = "Objects/characters/Aliens/Cannibal/cocoon.cgf",
    bUsable = 0,
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      Mass = -1
    },
    AI = {bUsedAsDynamicObstacle = 1}
  },
  Editor = {Icon = "", IconOnTop = 1}
}
GetArkEntityUtils(ArkCannibalCocoon)
SetupCollisionFiltering(ArkCannibalCocoon)
