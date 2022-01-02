local L0_1016, L1_1017, L2_1018, L3_1019
L0_1016 = {}
L0_1016.type = "Pusher"
L1_1017 = {}
L1_1017.fImpulse = 10
L1_1017.bEnabled = 1
L1_1017.bOnce = 0
L0_1016.Properties = L1_1017
L1_1017 = {}
L1_1017.Model = "Objects/Editor/T.cgf"
L0_1016.Editor = L1_1017
Pusher = L0_1016
L0_1016 = Pusher
function L1_1017(A0_1020)
  A0_1020:OnReset()
end
L0_1016.OnInit = L1_1017
L0_1016 = Pusher
function L1_1017(A0_1021)
  local L1_1022
  L1_1022 = A0_1021.Properties
  L1_1022 = L1_1022.bEnabled
  A0_1021.isEnabled = L1_1022
end
L0_1016.OnReset = L1_1017
L0_1016 = Pusher
function L1_1017(A0_1023, A1_1024, A2_1025)
  local L3_1026, L4_1027
  L3_1026 = A0_1023.isEnabled
  if L3_1026 == 0 then
    return
  end
  L3_1026 = A1_1024.Who
  if not L3_1026 then
    return
  end
  L4_1027 = L3_1026.theVehicle
  if not L4_1027 then
    return
  end
  if not L4_1027.driverT then
    return
  end
  if L4_1027.driverT.entity ~= L3_1026 then
    return
  end
  L4_1027:AddImpulseObj(A0_1023:GetDirectionVector(), A0_1023.Properties.fImpulse)
  if A0_1023.Properties.bOnce == 1 then
    A0_1023.isEnabled = 0
  end
end
L0_1016.Event_Push = L1_1017
L0_1016 = Pusher
function L1_1017(A0_1028)
  local L1_1029
end
L0_1016.OnShutDown = L1_1017
L0_1016 = Pusher
function L1_1017(A0_1030, A1_1031)
  A0_1030.isEnabled = 1
end
L0_1016.Event_Enable = L1_1017
L0_1016 = Pusher
function L1_1017(A0_1032, A1_1033)
  A0_1032.isEnabled = 0
end
L0_1016.Event_Disable = L1_1017
L0_1016 = Pusher
L1_1017 = {}
L2_1018 = {}
L3_1019 = {
  Pusher.Event_Disable,
  "bool"
}
L2_1018.Disable = L3_1019
L3_1019 = {
  Pusher.Event_Enable,
  "bool"
}
L2_1018.Enable = L3_1019
L3_1019 = {
  Pusher.Event_Push,
  "bool"
}
L2_1018.Push = L3_1019
L1_1017.Inputs = L2_1018
L2_1018 = {}
L2_1018.Disable = "bool"
L2_1018.Enable = "bool"
L2_1018.Push = "bool"
L1_1017.Outputs = L2_1018
L0_1016.FlowEvents = L1_1017
