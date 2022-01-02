local L0_4399, L1_4400, L2_4401
L0_4399 = {}
L1_4400 = {}
L1_4400.sNpcArchetype = ""
L1_4400.bSpawnOnGameStart = 0
L1_4400.bSpawnCorpse = 0
L1_4400.bSpawnDormant = 0
L1_4400.bSpawnBroken = 0
L1_4400.bRigorMortis = 0
L1_4400.bSpawnAlwaysUpdate = 0
L1_4400.pose_PoseAnim = ""
L0_4399.Properties = L1_4400
L1_4400 = {}
L1_4400.roomContainer_wanderRoomsContainer = ""
L2_4401 = {}
L2_4401.fPlayerApproachDistanceNear = -1
L2_4401.fPlayerApproachDistanceMedium = -1
L2_4401.fPlayerApproachDistanceFar = -1
L2_4401.fPlayerApproachCDNear = -1
L2_4401.fPlayerApproachCDMedium = -1
L2_4401.fPlayerApproachCDFar = -1
L2_4401.fPlayerLoiterDistance = -1
L2_4401.fPlayerLoiterCD = -1
L1_4400.ArkDialogOverride = L2_4401
L0_4399.PropertiesInstance = L1_4400
L1_4400 = {}
L1_4400.Icon = "User.bmp"
L1_4400.IconOnTop = 1
L0_4399.Editor = L1_4400
ArkNpcSpawner = L0_4399
L0_4399 = ArkNpcSpawner
function L1_4400(A0_4402)
  BroadcastEvent(A0_4402, "Spawn")
end
L0_4399.Event_Spawn = L1_4400
L0_4399 = ArkNpcSpawner
L1_4400 = {}
L2_4401 = {}
L2_4401.Spawn = {
  ArkNpcSpawner.Event_Spawn,
  "void"
}
L1_4400.Inputs = L2_4401
L2_4401 = {}
L2_4401.Succeeded = "bool"
L2_4401.SpawnedEntityId = "int"
L2_4401.Failed = "bool"
L1_4400.Outputs = L2_4401
L0_4399.FlowEvents = L1_4400
