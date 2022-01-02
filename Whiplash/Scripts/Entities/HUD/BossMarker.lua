local L0_5467, L1_5468, L2_5469, L3_5470
L0_5467 = {}
L1_5468 = {}
L1_5468.Icon = "Comment.bmp"
L0_5467.Editor = L1_5468
L1_5468 = {}
L1_5468.fileModel = ""
L1_5468.ModelSubObject = ""
L1_5468.bEnabled = 1
L0_5467.Properties = L1_5468
BossMarker = L0_5467
L0_5467 = BossMarker
function L1_5468(A0_5471)
  A0_5471:OnReset()
end
L0_5467.OnInit = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5472)
  A0_5472:OnReset()
end
L0_5467.OnPropertyChange = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5473)
  if A0_5473.Properties.bEnabled == 1 then
    Game.AddTacticalEntity(A0_5473.id, eTacticalEntity_Unit)
  else
    Game.RemoveTacticalEntity(A0_5473.id, eTacticalEntity_Unit)
  end
end
L0_5467.OnReset = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5474, A1_5475)
  A0_5474.Properties.bEnabled = A1_5475.enabled
end
L0_5467.OnLoad = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5476, A1_5477)
  local L2_5478
  L2_5478 = A0_5476.Properties
  L2_5478 = L2_5478.bEnabled
  A1_5477.enabled = L2_5478
end
L0_5467.OnSave = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5479)
  A0_5479.Properties.bEnabled = 1
  BroadcastEvent(A0_5479, "Unhide")
  Game.AddTacticalEntity(A0_5479.id, eTacticalEntity_Unit)
end
L0_5467.Event_Enable = L1_5468
L0_5467 = BossMarker
function L1_5468(A0_5480)
  A0_5480.Properties.bEnabled = 0
  BroadcastEvent(A0_5480, "Hide")
  Game.RemoveTacticalEntity(A0_5480.id, eTacticalEntity_Unit)
end
L0_5467.Event_Disable = L1_5468
L0_5467 = BossMarker
L1_5468 = {}
L2_5469 = {}
L3_5470 = {
  BossMarker.Event_Enable,
  "bool"
}
L2_5469.Enable = L3_5470
L3_5470 = {
  BossMarker.Event_Disable,
  "bool"
}
L2_5469.Disable = L3_5470
L1_5468.Inputs = L2_5469
L0_5467.FlowEvents = L1_5468
