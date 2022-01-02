local L0_1067, L1_1068, L2_1069, L3_1070
L0_1067 = {}
L0_1067.type = "Trigger"
L1_1068 = {}
L1_1068.DimX = 5
L1_1068.DimY = 5
L1_1068.DimZ = 5
L1_1068.bEnabled = 1
L1_1068.EnterDelay = 0
L1_1068.ExitDelay = 0
L1_1068.bOnlyPlayer = 1
L1_1068.bOnlyMyPlayer = 0
L0_1067.Properties = L1_1068
L1_1068 = {}
L1_1068.Model = "Objects/Editor/T.cgf"
L1_1068.ShowBounds = 1
L0_1067.Editor = L1_1068
L0_1067.Who = nil
L0_1067.Enabled = 1
L0_1067.Entered = 0
SmartProximityTrigger = L0_1067
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1071)
  A0_1071:OnReset()
end
L0_1067.OnPropertyChange = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1072)
  A0_1072:OnReset()
end
L0_1067.OnInit = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1073)
  local L1_1074
end
L0_1067.OnShutDown = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1075)
  local L1_1076, L2_1077
  L1_1076 = {}
  L2_1077 = A0_1075.Properties
  L2_1077 = L2_1077.DimX
  L2_1077 = -L2_1077
  L2_1077 = L2_1077 / 2
  L1_1076.x = L2_1077
  L2_1077 = A0_1075.Properties
  L2_1077 = L2_1077.DimY
  L2_1077 = -L2_1077
  L2_1077 = L2_1077 / 2
  L1_1076.y = L2_1077
  L2_1077 = A0_1075.Properties
  L2_1077 = L2_1077.DimZ
  L2_1077 = -L2_1077
  L2_1077 = L2_1077 / 2
  L1_1076.z = L2_1077
  L2_1077 = {}
  L2_1077.x = A0_1075.Properties.DimX / 2
  L2_1077.y = A0_1075.Properties.DimY / 2
  L2_1077.z = A0_1075.Properties.DimZ / 2
  A0_1075:SetBBox(L1_1076, L2_1077)
  A0_1075.Enabled = A0_1075.Properties.bEnabled
  A0_1075.Who = nil
  A0_1075.UpdateCounter = 0
  A0_1075.Entered = 0
  A0_1075:GotoState("Empty")
end
L0_1067.OnReset = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1078, A1_1079)
  if A0_1078.Enabled ~= 1 or A0_1078.Entered ~= 0 then
    return
  end
  A0_1078.Entered = 1
  if A1_1079 then
    System.LogToConsole("Player " .. A1_1079:GetName() .. " Enter SmartProximityTrigger " .. A0_1078:GetName())
  end
  BroadcastEvent(A0_1078, "Enter")
end
L0_1067.Event_Enter = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1080, A1_1081)
  if A0_1080.Enabled ~= 1 or A0_1080.Entered == 0 then
    return
  end
  System.LogToConsole("Player " .. A1_1081:GetName() .. " Leave SmartProximityTrigger " .. A0_1080:GetName())
  BroadcastEvent(A0_1080, "Leave")
end
L0_1067.Event_Leave = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1082, A1_1083)
  A0_1082.Enabled = 1
  BroadcastEvent(A0_1082, "Enable")
end
L0_1067.Event_Enable = L1_1068
L0_1067 = SmartProximityTrigger
function L1_1068(A0_1084, A1_1085)
  A0_1084.Enabled = 0
  A0_1084:GotoState("Empty")
  BroadcastEvent(A0_1084, "Disable")
end
L0_1067.Event_Disable = L1_1068
L0_1067 = SmartProximityTrigger
L1_1068 = {}
function L2_1069(A0_1086)
  local L1_1087
  A0_1086.Who = nil
  A0_1086.UpdateCounter = 0
  A0_1086.Entered = 0
  A0_1086.StartEnterDelay = nil
end
L1_1068.OnBeginState = L2_1069
function L2_1069(A0_1088)
  local L1_1089
end
L1_1068.OnEndState = L2_1069
function L2_1069(A0_1090)
  local L1_1091
  A0_1090.StartEnterDelay = nil
end
L1_1068.OnTimer = L2_1069
function L2_1069(A0_1092, A1_1093)
  if A0_1092.Enabled ~= 1 then
    return
  end
  if A0_1092.Properties.bOnlyPlayer ~= 0 and A1_1093.type ~= "Player" then
    return
  end
  if A0_1092.Properties.bOnlyMyPlayer ~= 0 and A1_1093 ~= _localplayer then
    return
  end
  if A0_1092.Who == nil then
    if 0 < A0_1092.Properties.EnterDelay then
      if A0_1092.StartEnterDelay == nil then
        A0_1092:SetTimer(500)
        System.LogToConsole("tada!")
        A0_1092.StartEnterDelay = _time * 1000
      elseif _time * 1000 - A0_1092.StartEnterDelay >= A0_1092.Properties.EnterDelay * 1000 then
        A0_1092.Who = A1_1093
        A0_1092.StartEnterDelay = nil
        A0_1092:KillTimer()
        A0_1092:GotoState("Occupied")
      else
        A0_1092:SetTimer(500)
      end
    else
      A0_1092.Who = A1_1093
      A0_1092:GotoState("Occupied")
    end
  end
end
L1_1068.OnContact = L2_1069
L0_1067.Empty = L1_1068
L0_1067 = SmartProximityTrigger
L1_1068 = {}
function L2_1069(A0_1094)
  A0_1094:Event_Enter(A0_1094.Who)
end
L1_1068.OnBeginState = L2_1069
function L2_1069(A0_1095)
  local L1_1096
end
L1_1068.OnEndState = L2_1069
function L2_1069(A0_1097)
  A0_1097:Event_Enter(A0_1097.Who)
end
L1_1068.OnTimer = L2_1069
function L2_1069(A0_1098, A1_1099)
  if A0_1098.Enabled ~= 1 then
    return
  end
  if A0_1098.Properties.bOnlyPlayer ~= 0 and A1_1099.type ~= "Player" then
    return
  end
  if A0_1098.Properties.bOnlyMyPlayer ~= 0 and A1_1099 ~= _localplayer then
    return
  end
  if A0_1098.Properties.ExitDelay == 0 then
    A0_1098.Properties.ExitDelay = 0.01
  end
  A0_1098:SetTimer(A0_1098.Properties.ExitDelay * 1000)
end
L1_1068.OnContact = L2_1069
function L2_1069(A0_1100)
  System.LogToConsole("Sending on leave")
  A0_1100:Event_Leave(A0_1100, A0_1100.Who)
  A0_1100:GotoState("Empty")
end
L1_1068.OnTimer = L2_1069
L0_1067.Occupied = L1_1068
L0_1067 = SmartProximityTrigger
L1_1068 = {}
L2_1069 = {}
L3_1070 = {
  SmartProximityTrigger.Event_Disable,
  "bool"
}
L2_1069.Disable = L3_1070
L3_1070 = {
  SmartProximityTrigger.Event_Enable,
  "bool"
}
L2_1069.Enable = L3_1070
L3_1070 = {
  SmartProximityTrigger.Event_Enter,
  "bool"
}
L2_1069.Enter = L3_1070
L3_1070 = {
  SmartProximityTrigger.Event_Leave,
  "bool"
}
L2_1069.Leave = L3_1070
L1_1068.Inputs = L2_1069
L2_1069 = {}
L2_1069.Disable = "bool"
L2_1069.Enable = "bool"
L2_1069.Enter = "bool"
L2_1069.Leave = "bool"
L1_1068.Outputs = L2_1069
L0_1067.FlowEvents = L1_1068
