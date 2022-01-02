local L0_4682, L1_4683, L2_4684
L0_4682 = {}
L1_4683 = {}
L1_4683.archetype_TurretArchetype = ""
L1_4683.bSpawnOnGameStart = 0
L1_4683.bSpawnBroken = 0
L1_4683.bSpawnUndeployed = 0
L0_4682.Properties = L1_4683
L1_4683 = {}
L1_4683.Icon = "User.bmp"
L1_4683.IconOnTop = 1
L0_4682.Editor = L1_4683
ArkTurretSpawner = L0_4682
L0_4682 = ArkTurretSpawner
function L1_4683(A0_4685)
  BroadcastEvent(A0_4685, "Spawn")
end
L0_4682.Event_Spawn = L1_4683
L0_4682 = ArkTurretSpawner
L1_4683 = {}
L2_4684 = {}
L2_4684.Spawn = {
  ArkTurretSpawner.Event_Spawn,
  "void"
}
L1_4683.Inputs = L2_4684
L2_4684 = {}
L2_4684.Succeeded = "bool"
L2_4684.SpawnedEntityId = "int"
L2_4684.Failed = "bool"
L1_4683.Outputs = L2_4684
L0_4682.FlowEvents = L1_4683
