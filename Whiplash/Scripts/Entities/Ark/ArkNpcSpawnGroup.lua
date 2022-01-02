local L0_4403, L1_4404, L2_4405
L0_4403 = {}
L1_4404 = {}
L1_4404.bSpawnOnGameStart = 0
L0_4403.Properties = L1_4404
L1_4404 = {}
L1_4404.Icon = "spawngroup.bmp"
L1_4404.IconOnTop = 1
L0_4403.Editor = L1_4404
ArkNpcSpawnGroup = L0_4403
L0_4403 = ArkNpcSpawnGroup
function L1_4404(A0_4406)
  BroadcastEvent(A0_4406, "OnInit")
end
L0_4403.OnInit = L1_4404
L0_4403 = ArkNpcSpawnGroup
function L1_4404(A0_4407)
  BroadcastEvent(A0_4407, "Spawn")
end
L0_4403.Event_Spawn = L1_4404
L0_4403 = ArkNpcSpawnGroup
L1_4404 = {}
L2_4405 = {}
L2_4405.Spawn = {
  ArkNpcSpawnGroup.Event_Spawn,
  "void"
}
L1_4404.Inputs = L2_4405
L2_4405 = {}
L2_4405.SpawnRequested = "bool"
L1_4404.Outputs = L2_4405
L0_4403.FlowEvents = L1_4404
