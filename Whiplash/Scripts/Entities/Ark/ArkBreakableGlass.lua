Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkBreakableGlass = {
  Properties = {
    object_Model = "",
    audioOcclusion = 1,
    audioOcclusionBroken = 0,
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      Mass = -1
    }
  }
}
GetArkEntityUtils(ArkBreakableGlass)
SetupCollisionFiltering(ArkBreakableGlass)
function ArkBreakableGlass.SetFromProperties(A0_3422)
  A0_3422:SetupModelAndPhysics()
end
function ArkBreakableGlass.OnBreakable2d(A0_3423)
  A0_3423:ActivateOutput("Break", true)
end
function ArkBreakableGlass.OnReset(A0_3424, A1_3425)
  A0_3424:SetFromProperties()
end
function ArkBreakableGlass.OnSpawn(A0_3426)
  A0_3426:SetFromProperties()
end
ArkBreakableGlass.FlowEvents = {
  Outputs = {Break = "int"}
}
