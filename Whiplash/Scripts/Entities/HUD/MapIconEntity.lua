local L0_5527, L1_5528, L2_5529, L3_5530
L0_5527 = {}
L1_5528 = {}
L1_5528.Icon = "Comment.bmp"
L0_5527.Editor = L1_5528
L1_5528 = {}
L1_5528.fileModel = ""
L1_5528.ModelSubObject = ""
L1_5528.bEnabled = 1
L1_5528.sMapIcon = ""
L0_5527.Properties = L1_5528
MapIconEntity = L0_5527
L0_5527 = MapIconEntity
function L1_5528(A0_5531)
  A0_5531:OnReset()
end
L0_5527.OnInit = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5532)
  A0_5532:OnReset()
end
L0_5527.OnPropertyChange = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5533)
  if A0_5533.Properties.bEnabled == 1 then
    Game.AddTacticalEntity(A0_5533.id, eTacticalEntity_MapIcon)
  else
    Game.RemoveTacticalEntity(A0_5533.id, eTacticalEntity_MapIcon)
  end
end
L0_5527.OnReset = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5534, A1_5535)
  A0_5534.Properties.bEnabled = A1_5535.enabled
end
L0_5527.OnLoad = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5536, A1_5537)
  local L2_5538
  L2_5538 = A0_5536.Properties
  L2_5538 = L2_5538.bEnabled
  A1_5537.enabled = L2_5538
end
L0_5527.OnSave = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5539)
  A0_5539.Properties.bEnabled = 1
  Game.AddTacticalEntity(A0_5539.id, eTacticalEntity_MapIcon)
end
L0_5527.Event_Enable = L1_5528
L0_5527 = MapIconEntity
function L1_5528(A0_5540)
  A0_5540.Properties.bEnabled = 0
  Game.RemoveTacticalEntity(A0_5540.id, eTacticalEntity_MapIcon)
end
L0_5527.Event_Disable = L1_5528
L0_5527 = MapIconEntity
L1_5528 = {}
L2_5529 = {}
L3_5530 = {
  MapIconEntity.Event_Enable,
  "bool"
}
L2_5529.Enable = L3_5530
L3_5530 = {
  MapIconEntity.Event_Disable,
  "bool"
}
L2_5529.Disable = L3_5530
L1_5528.Inputs = L2_5529
L0_5527.FlowEvents = L1_5528
