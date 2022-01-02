local L0_5354, L1_5355, L2_5356, L3_5357
L0_5354 = {}
L0_5354.type = "Tornado"
L1_5355 = {}
L1_5355.Radius = 30
L1_5355.fWanderSpeed = 10
L1_5355.FunnelEffect = "weather.tornado.large"
L1_5355.fCloudHeight = 376
L1_5355.fSpinImpulse = 9
L1_5355.fAttractionImpulse = 13
L1_5355.fUpImpulse = 18
L0_5354.Properties = L1_5355
L1_5355 = {}
L1_5355.Icon = "Tornado.bmp"
L0_5354.Editor = L1_5355
Tornado = L0_5354
L0_5354 = Tornado
function L1_5355(A0_5358)
  A0_5358:OnReset()
end
L0_5354.OnInit = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5359)
  A0_5359:OnReset()
end
L0_5354.OnPropertyChange = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5360)
  local L1_5361
end
L0_5354.OnReset = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5362)
  local L1_5363
end
L0_5354.OnShutDown = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5364, A1_5365)
end
L0_5354.Event_TargetReached = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5366, A1_5367)
end
L0_5354.Event_Enable = L1_5355
L0_5354 = Tornado
function L1_5355(A0_5368, A1_5369)
end
L0_5354.Event_Disable = L1_5355
L0_5354 = Tornado
L1_5355 = {}
L2_5356 = {}
L3_5357 = {
  Tornado.Event_Disable,
  "bool"
}
L2_5356.Disable = L3_5357
L3_5357 = {
  Tornado.Event_Enable,
  "bool"
}
L2_5356.Enable = L3_5357
L1_5355.Inputs = L2_5356
L2_5356 = {}
L2_5356.Disable = "bool"
L2_5356.Enable = "bool"
L2_5356.TargetReached = "bool"
L1_5355.Outputs = L2_5356
L0_5354.FlowEvents = L1_5355
