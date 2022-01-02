local L0_4395, L1_4396, L2_4397
L0_4395 = {}
L1_4396 = {}
L1_4396.sNpcArchetype = "ArkNpcs.Cystoids.Cystoid"
L1_4396.bSpawnOnGameStart = 0
L1_4396.bSpawnAlwaysUpdate = 0
L0_4395.Properties = L1_4396
L1_4396 = {}
L1_4396.roomContainer_wanderRoomsContainer = ""
L2_4397 = {}
L2_4397.fPlayerApproachDistanceNear = -1
L2_4397.fPlayerApproachDistanceMedium = -1
L2_4397.fPlayerApproachDistanceFar = -1
L2_4397.fPlayerApproachCDNear = -1
L2_4397.fPlayerApproachCDMedium = -1
L2_4397.fPlayerApproachCDFar = -1
L2_4397.fPlayerLoiterDistance = -1
L2_4397.fPlayerLoiterCD = -1
L1_4396.ArkDialogOverride = L2_4397
L0_4395.PropertiesInstance = L1_4396
L1_4396 = {}
L1_4396.Icon = "Cystoid.bmp"
L1_4396.IconOnTop = 1
L0_4395.Editor = L1_4396
ArkNpcSpawnCystoid = L0_4395
L0_4395 = ArkNpcSpawnCystoid
function L1_4396(A0_4398)
  BroadcastEvent(A0_4398, "Spawn")
end
L0_4395.Event_Spawn = L1_4396
L0_4395 = ArkNpcSpawnCystoid
L1_4396 = {}
L2_4397 = {}
L2_4397.Spawn = {
  ArkNpcSpawnCystoid.Event_Spawn,
  "void"
}
L1_4396.Inputs = L2_4397
L2_4397 = {}
L2_4397.Succeeded = "bool"
L2_4397.SpawnedEntityId = "int"
L2_4397.Failed = "bool"
L1_4396.Outputs = L2_4397
L0_4395.FlowEvents = L1_4396
