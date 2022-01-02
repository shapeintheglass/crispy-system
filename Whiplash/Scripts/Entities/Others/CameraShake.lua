local L0_6638, L1_6639, L2_6640
L0_6638 = {}
L1_6639 = {}
L2_6640 = {}
L2_6640.x = 0
L2_6640.y = 0
L2_6640.z = 0
L1_6639.vector_Position = L2_6640
L1_6639.fRadius = 10
L1_6639.fStrength = 1
L1_6639.fDuration = 2
L1_6639.fFrequency = 0.5
L0_6638.Properties = L1_6639
L1_6639 = {}
L1_6639.Icon = "shake.bmp"
L0_6638.Editor = L1_6639
CameraShake = L0_6638
L0_6638 = CameraShake
function L1_6639(A0_6641)
  local L1_6642
end
L0_6638.OnPropertyChange = L1_6639
L0_6638 = CameraShake
function L1_6639(A0_6643, A1_6644)
  g_gameRules:ClientViewShake(A0_6643.Properties.vector_Position, nil, 0, A0_6643.Properties.fRadius, A0_6643.Properties.fStrength, A0_6643.Properties.fDuration, A0_6643.Properties.fFrequency)
end
L0_6638.Event_Shake = L1_6639
L0_6638 = CameraShake
L1_6639 = {}
L2_6640 = {}
L2_6640.Shake = {
  CameraShake.Event_Shake,
  "bool"
}
L1_6639.Inputs = L2_6640
L2_6640 = {}
L1_6639.Outputs = L2_6640
L0_6638.FlowEvents = L1_6639
