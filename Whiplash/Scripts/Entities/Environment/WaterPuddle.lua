local L0_5402, L1_5403, L2_5404, L3_5405
L0_5402 = {}
L0_5402.type = "WaterPuddle"
L1_5403 = {}
L1_5403.bThisIsAPuddle = 0
L0_5402.Properties = L1_5403
L1_5403 = {}
L1_5403.Model = "Editor/Objects/T.cgf"
L1_5403.Icon = "Water.bmp"
L1_5403.ShowBounds = 1
L1_5403.IsScalable = false
L1_5403.IsRotatable = true
L0_5402.Editor = L1_5403
WaterPuddle = L0_5402
L0_5402 = WaterPuddle
function L1_5403(A0_5406)
  local L1_5407
end
L0_5402.OnPropertyChange = L1_5403
L0_5402 = WaterPuddle
function L1_5403(A0_5408)
  local L1_5409
  L1_5409 = 0
  return L1_5409
end
L0_5402.IsShapeOnly = L1_5403
L0_5402 = WaterPuddle
function L1_5403(A0_5410)
  A0_5410:Hide(1)
  A0_5410:ActivateOutput("Hidden", true)
end
L0_5402.Event_Hide = L1_5403
L0_5402 = WaterPuddle
function L1_5403(A0_5411)
  A0_5411:Hide(0)
  A0_5411:ActivateOutput("UnHidden", true)
end
L0_5402.Event_UnHide = L1_5403
L0_5402 = WaterPuddle
L1_5403 = {}
L2_5404 = {}
L3_5405 = {
  WaterPuddle.Event_Hide,
  "bool"
}
L2_5404.Hide = L3_5405
L3_5405 = {
  WaterPuddle.Event_UnHide,
  "bool"
}
L2_5404.UnHide = L3_5405
L1_5403.Inputs = L2_5404
L2_5404 = {}
L2_5404.Hidden = "bool"
L2_5404.UnHidden = "bool"
L1_5403.Outputs = L2_5404
L0_5402.FlowEvents = L1_5403
