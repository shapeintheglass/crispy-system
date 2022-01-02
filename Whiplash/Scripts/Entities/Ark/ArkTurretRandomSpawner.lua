local L0_4678, L1_4679, L2_4680
L0_4678 = {}
L1_4679 = {}
L2_4680 = {}
L2_4680.archetype_DefaultTurret = ""
L2_4680.archetype_LaserTurret = ""
L2_4680.archetype_GlooTurret = ""
L2_4680.archetype_FlameTurret = ""
L1_4679.TurretArchetypes = L2_4680
L0_4678.Properties = L1_4679
L1_4679 = {}
L1_4679.bSpawnOnGameStart = 0
L1_4679.bSpawnBroken = 0
L1_4679.bSpawnUndeployed = 0
L2_4680 = {}
L2_4680.bDefaultTurret = true
L2_4680.bLaserTurret = true
L2_4680.bGlooTurret = true
L2_4680.bFlameTurret = false
L1_4679.SpawnableTurrets = L2_4680
L0_4678.PropertiesInstance = L1_4679
L1_4679 = {}
L1_4679.Icon = "User.bmp"
L1_4679.IconOnTop = 1
L0_4678.Editor = L1_4679
ArkTurretRandomSpawner = L0_4678
L0_4678 = ArkTurretRandomSpawner
function L1_4679(A0_4681)
  BroadcastEvent(A0_4681, "Spawn")
end
L0_4678.Event_Spawn = L1_4679
L0_4678 = ArkTurretRandomSpawner
L1_4679 = {}
L2_4680 = {}
L2_4680.Spawn = {
  ArkTurretRandomSpawner.Event_Spawn,
  "void"
}
L1_4679.Inputs = L2_4680
L2_4680 = {}
L2_4680.Succeeded = "bool"
L2_4680.SpawnedEntityId = "int"
L2_4680.Failed = "bool"
L1_4679.Outputs = L2_4680
L0_4678.FlowEvents = L1_4679
