Script.ReloadScript("Scripts/Entities/Physics/RigidBodyEx.lua")
DangerousRigidBody = {
  Properties = {
    bCurrentlyDealingDamage = 0,
    bDoesFriendlyFireDamage = 0,
    fDamageToDeal = 10000,
    fTimeBetweenHits = 0.5
  }
}
MakeDerivedEntity(DangerousRigidBody, RigidBodyEx)
function DangerousRigidBody.Event_MakeDangerous(A0_6381, A1_6382, A2_6383)
  Game.SetDangerousRigidBodyDangerStatus(A0_6381.id, true, A2_6383.id)
  A0_6381:ActivateOutput("IsDangerous", true)
end
function DangerousRigidBody.Event_MakeNotDangerous(A0_6384)
  Game.SetDangerousRigidBodyDangerStatus(A0_6384.id, false, 0)
  A0_6384:ActivateOutput("IsDangerous", false)
end
DangerousRigidBody.FlowEvents = {
  Inputs = {
    MakeDangerous = {
      DangerousRigidBody.Event_MakeDangerous,
      "entity"
    },
    MakeNotDangerous = {
      DangerousRigidBody.Event_MakeNotDangerous,
      "any"
    }
  },
  Outputs = {IsDangerous = "bool"}
}
mergef(DangerousRigidBody.FlowEvents, RigidBodyEx.FlowEvents, 1)
