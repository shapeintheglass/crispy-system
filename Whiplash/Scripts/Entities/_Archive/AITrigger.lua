local L0_216, L1_217, L2_218, L3_219
L0_216 = {}
L0_216.type = "AITrigger"
L1_217 = {}
L1_217.modifyerName = "bridge"
L1_217.fAlarmRadius = 50
L0_216.Properties = L1_217
L1_217 = {}
L1_217.Model = "Editor/Objects/box.cgf"
L0_216.Editor = L1_217
AITrigger = L0_216
L0_216 = AITrigger
function L1_217(A0_220)
  A0_220:OnReset()
end
L0_216.OnInit = L1_217
L0_216 = AITrigger
function L1_217(A0_221)
  local L1_222
end
L0_216.OnReset = L1_217
L0_216 = AITrigger
function L1_217(A0_223, A1_224)
  AI.Event(1, A0_223.Properties.modifyerName)
  BroadcastEvent(A0_223, "Event")
  AI.Commander:OnBridgeDestroyed()
end
L0_216.Event_Event = L1_217
L0_216 = AITrigger
function L1_217(A0_225, A1_226)
  System.Log("Alarm!")
  AI.SoundEvent(A0_225:GetWorldPos(), A0_225.Properties.fAlarmRadius, AISOUND_GENERIC, g_localActor.id)
  BroadcastEvent(A0_225, "Alarm")
end
L0_216.Event_Alarm = L1_217
L0_216 = AITrigger
L1_217 = {}
L2_218 = {}
L3_219 = {
  AITrigger.Event_Alarm,
  "bool"
}
L2_218.Alarm = L3_219
L3_219 = {
  AITrigger.Event_Event,
  "bool"
}
L2_218.Event = L3_219
L1_217.Inputs = L2_218
L2_218 = {}
L2_218.Alarm = "bool"
L2_218.Event = "bool"
L1_217.Outputs = L2_218
L0_216.Events = L1_217
