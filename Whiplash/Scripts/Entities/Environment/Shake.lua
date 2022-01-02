local L0_5272, L1_5273, L2_5274, L3_5275
L0_5272 = {}
L0_5272.type = "Shake"
L1_5273 = {}
L1_5273.Radius = 30
L1_5273.Shake = 0.05
L0_5272.Properties = L1_5273
L1_5273 = {}
L1_5273.Icon = "shake.bmp"
L0_5272.Editor = L1_5273
Shake = L0_5272
L0_5272 = Shake
function L1_5273(A0_5276)
  A0_5276:OnReset()
end
L0_5272.OnInit = L1_5273
L0_5272 = Shake
function L1_5273(A0_5277)
  A0_5277:OnReset()
end
L0_5272.OnPropertyChange = L1_5273
L0_5272 = Shake
function L1_5273(A0_5278)
  local L1_5279
end
L0_5272.OnReset = L1_5273
L0_5272 = Shake
function L1_5273(A0_5280)
  local L1_5281
end
L0_5272.OnShutDown = L1_5273
L0_5272 = Shake
function L1_5273(A0_5282, A1_5283)
end
L0_5272.Event_Enable = L1_5273
L0_5272 = Shake
function L1_5273(A0_5284, A1_5285)
end
L0_5272.Event_Disable = L1_5273
L0_5272 = Shake
L1_5273 = {}
L2_5274 = {}
L3_5275 = {
  Shake.Event_Disable,
  "bool"
}
L2_5274.Disable = L3_5275
L3_5275 = {
  Shake.Event_Enable,
  "bool"
}
L2_5274.Enable = L3_5275
L1_5273.Inputs = L2_5274
L2_5274 = {}
L2_5274.Disable = "bool"
L2_5274.Enable = "bool"
L1_5273.Outputs = L2_5274
L0_5272.FlowEvents = L1_5273
