local L0_4408, L1_4409, L2_4410
L0_4408 = {}
L1_4409 = {}
L1_4409.sNpcArchetype = ""
L1_4409.bSpawnOnGameStart = 0
L1_4409.bSpawnAlwaysUpdate = 0
L0_4408.Properties = L1_4409
L1_4409 = {}
L1_4409.roomContainer_wanderRoomsContainer = ""
L2_4410 = {}
L2_4410.fPlayerApproachDistanceNear = -1
L2_4410.fPlayerApproachDistanceMedium = -1
L2_4410.fPlayerApproachDistanceFar = -1
L2_4410.fPlayerApproachCDNear = -1
L2_4410.fPlayerApproachCDMedium = -1
L2_4410.fPlayerApproachCDFar = -1
L2_4410.fPlayerLoiterDistance = -1
L2_4410.fPlayerLoiterCD = -1
L1_4409.ArkDialogOverride = L2_4410
L0_4408.PropertiesInstance = L1_4409
L1_4409 = {}
L1_4409.Icon = "Cystoid.bmp"
L1_4409.IconOnTop = 1
L0_4408.Editor = L1_4409
ArkNpcSpawnTyphonNest = L0_4408
L0_4408 = ArkNpcSpawnTyphonNest
function L1_4409(A0_4411)
  BroadcastEvent(A0_4411, "Spawn")
end
L0_4408.Event_Spawn = L1_4409
L0_4408 = ArkNpcSpawnTyphonNest
L1_4409 = {}
L2_4410 = {}
L2_4410.Spawn = {
  ArkNpcSpawnTyphonNest.Event_Spawn,
  "void"
}
L1_4409.Inputs = L2_4410
L2_4410 = {}
L2_4410.Succeeded = "bool"
L2_4410.SpawnedEntityId = "int"
L2_4410.Failed = "bool"
L1_4409.Outputs = L2_4410
L0_4408.FlowEvents = L1_4409
