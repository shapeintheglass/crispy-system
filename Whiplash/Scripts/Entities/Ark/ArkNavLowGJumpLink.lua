local L0_4340, L1_4341, L2_4342
L0_4340 = {}
L1_4341 = {}
L0_4340.Properties = L1_4341
L1_4341 = {}
L2_4342 = {}
L2_4342.x = 0
L2_4342.y = 1
L2_4342.z = -5
L1_4341.vector_linkDirection = L2_4342
L1_4341.NavAgentTypes = "MediumSizedCharacters ArkAlien_Large ArkAlien_Medium ArkAlien_Small ArkOperator ArkTelepath ArkWeaver"
L0_4340.PropertiesInstance = L1_4341
L1_4341 = {}
L1_4341.IconOnTop = true
L1_4341.Icon = "Door.bmp"
L1_4341.ShowBounds = 0
L0_4340.Editor = L1_4341
ArkNavLowGJumpLink = L0_4340
L0_4340 = ArkNavLowGJumpLink
function L1_4341(A0_4343)
  local L1_4344
end
L0_4340.Init = L1_4341
L0_4340 = ArkNavLowGJumpLink
function L1_4341(A0_4345)
  local L1_4346
end
L0_4340.Reset = L1_4341
L0_4340 = ArkNavLowGJumpLink
function L1_4341(A0_4347)
  local L1_4348
end
L0_4340.OnPostLoad = L1_4341
L0_4340 = ArkNavLowGJumpLink
function L1_4341(A0_4349)
  local L1_4350
end
L0_4340.UpdateForEditorDisplay = L1_4341
L0_4340 = ArkNavIslandJumpLink
function L1_4341(A0_4351)
  if System.IsEditor() then
    A0_4351:Init()
    A0_4351:UpdateForEditorDisplay()
  end
end
L0_4340.OnInit = L1_4341
L0_4340 = ArkNavIslandJumpLink
function L1_4341(A0_4352)
  A0_4352:Reset()
  A0_4352:UpdateForEditorDisplay()
end
L0_4340.OnPropertyChange = L1_4341
L0_4340 = ArkNavIslandJumpLink
function L1_4341(A0_4353)
  A0_4353:Reset()
end
L0_4340.OnReset = L1_4341
L0_4340 = ArkNavIslandJumpLink
function L1_4341(A0_4354)
  A0_4354:Reset()
end
L0_4340.OnSpawn = L1_4341
