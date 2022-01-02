local L0_4326, L1_4327
L0_4326 = {}
L1_4327 = {}
L1_4327.object_Model = ""
L1_4327.NavAgentTypes = "ArkAlien_Small"
L0_4326.Properties = L1_4327
L1_4327 = {}
L1_4327.IconOnTop = true
L1_4327.Icon = "Door.bmp"
L1_4327.ShowBounds = 0
L0_4326.Editor = L1_4327
ArkNavIslandJumpLink = L0_4326
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4328)
  local L1_4329
end
L0_4326.Init = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4330)
  local L1_4331
end
L0_4326.Reset = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4332)
  local L1_4333
end
L0_4326.OnPostLoad = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4334)
  local L1_4335
end
L0_4326.UpdateForEditorDisplay = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4336)
  if System.IsEditor() then
    A0_4336:Init()
    A0_4336:UpdateForEditorDisplay()
  end
end
L0_4326.OnInit = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4337)
  A0_4337:Reset()
  A0_4337:UpdateForEditorDisplay()
end
L0_4326.OnPropertyChange = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4338)
  A0_4338:Reset()
end
L0_4326.OnReset = L1_4327
L0_4326 = ArkNavIslandJumpLink
function L1_4327(A0_4339)
  A0_4339:Reset()
end
L0_4326.OnSpawn = L1_4327
