local L0_7204, L1_7205, L2_7206, L3_7207
L0_7204 = {}
L1_7205 = {}
L0_7204.Client = L1_7205
L1_7205 = {}
L0_7204.Server = L1_7205
L1_7205 = {}
L1_7205.radius = 10
L0_7204.Properties = L1_7205
L1_7205 = {}
L1_7205.Icon = "Item.bmp"
L1_7205.IconOnTop = 1
L0_7204.Editor = L1_7205
SoundSupressor = L0_7204
L0_7204 = SoundSupressor
function L1_7205(A0_7208)
  A0_7208:OnReset()
end
L0_7204.OnPropertyChange = L1_7205
L0_7204 = SoundSupressor
function L1_7205(A0_7209)
  A0_7209:OnReset()
end
L0_7204.OnInit = L1_7205
L0_7204 = SoundSupressor
function L1_7205(A0_7210)
  CryAction.RegisterWithAI(A0_7210.id, AIOBJECT_SNDSUPRESSOR, A0_7210.Properties)
end
L0_7204.OnReset = L1_7205
L0_7204 = SoundSupressor
function L1_7205(A0_7211)
  A0_7211:TriggerEvent(AIEVENT_DISABLE)
end
L0_7204.Event_TurnOn = L1_7205
L0_7204 = SoundSupressor
function L1_7205(A0_7212)
  A0_7212:TriggerEvent(AIEVENT_ENABLE)
end
L0_7204.Event_TurnOff = L1_7205
L0_7204 = SoundSupressor
L1_7205 = {}
L2_7206 = {}
L3_7207 = {
  SoundSupressor.Event_TurnOn,
  "bool"
}
L2_7206.TurnOn = L3_7207
L3_7207 = {
  SoundSupressor.Event_TurnOff,
  "bool"
}
L2_7206.TurnOff = L3_7207
L1_7205.Inputs = L2_7206
L2_7206 = {}
L1_7205.Outputs = L2_7206
L0_7204.FlowEvents = L1_7205
