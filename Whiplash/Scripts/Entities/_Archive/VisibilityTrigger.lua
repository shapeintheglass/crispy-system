local L0_1177, L1_1178, L2_1179, L3_1180
L0_1177 = {}
L0_1177.type = "Trigger"
L1_1178 = {}
L1_1178.DimX = 1
L1_1178.DimY = 1
L1_1178.DimZ = 1
L1_1178.Distance = 100
L1_1178.bEnabled = 1
L1_1178.EnterDelay = 0
L1_1178.ExitDelay = 0
L1_1178.bTriggerOnce = 0
L1_1178.ScriptCommand = ""
L1_1178.PlaySequence = ""
L1_1178.TextInstruction = ""
L1_1178.bUseKey = 0
L0_1177.Properties = L1_1178
L1_1178 = {}
L1_1178.Model = "Editor/Objects/Vis.cgf"
L1_1178.ShowBounds = 1
L0_1177.Editor = L1_1178
VisibilityTrigger = L0_1177
L0_1177 = VisibilityTrigger
function L1_1178(A0_1181)
  A0_1181:OnReset()
end
L0_1177.OnPropertyChange = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1182)
  A0_1182:Activate(0)
  A0_1182:SetUpdateType(eUT_Visible)
  A0_1182:SetRegisterInSectors(1)
  A0_1182:RegisterState("Disabled")
  A0_1182:RegisterState("Visible")
  A0_1182:RegisterState("Invisible")
  A0_1182:OnReset()
end
L0_1177.OnInit = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1183)
  local L1_1184
end
L0_1177.OnShutDown = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1185, A1_1186)
  A1_1186:WriteInt(A0_1185.bTriggered)
end
L0_1177.OnSave = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1187, A1_1188)
  A0_1187.bTriggered = A1_1188:ReadInt()
end
L0_1177.OnLoad = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1189)
  local L1_1190, L2_1191
  L2_1191 = A0_1189
  L1_1190 = A0_1189.KillTimer
  L1_1190(L2_1191)
  A0_1189.bTriggered = 0
  A0_1189.bVisible = 0
  L1_1190 = {}
  L2_1191 = A0_1189.Properties
  L2_1191 = L2_1191.DimX
  L2_1191 = -L2_1191
  L2_1191 = L2_1191 / 2
  L1_1190.x = L2_1191
  L2_1191 = A0_1189.Properties
  L2_1191 = L2_1191.DimY
  L2_1191 = -L2_1191
  L2_1191 = L2_1191 / 2
  L1_1190.y = L2_1191
  L2_1191 = A0_1189.Properties
  L2_1191 = L2_1191.DimZ
  L2_1191 = -L2_1191
  L2_1191 = L2_1191 / 2
  L1_1190.z = L2_1191
  L2_1191 = {}
  L2_1191.x = A0_1189.Properties.DimX / 2
  L2_1191.y = A0_1189.Properties.DimY / 2
  L2_1191.z = A0_1189.Properties.DimZ / 2
  A0_1189:SetBBox(L1_1190, L2_1191)
  A0_1189:SetUpdateRadius(A0_1189.Properties.Distance)
  if A0_1189.Properties.bEnabled == 1 then
    A0_1189:GotoState("Invisible")
  else
    A0_1189:GotoState("Disabled")
  end
end
L0_1177.OnReset = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1192, A1_1193)
  if A0_1192.bVisible ~= 0 then
    return
  end
  if A0_1192.Properties.bTriggerOnce == 1 and A0_1192.bTriggered == 1 then
    return
  end
  A0_1192.bTriggered = 1
  A0_1192.bVisible = 1
  if A0_1192.Properties.ScriptCommand and A0_1192.Properties.ScriptCommand ~= "" then
    dostring(A0_1192.Properties.ScriptCommand)
  end
  if A0_1192.Properties.PlaySequence ~= "" then
    Movie.PlaySequence(A0_1192.Properties.PlaySequence)
  end
  BroadcastEvent(A0_1192, "Visible")
  A0_1192:GotoState("Visible")
  System.Log("* VISIBLE")
end
L0_1177.Event_Visible = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1194, A1_1195)
  if A0_1194.bVisible == 0 then
    return
  end
  A0_1194.bVisible = 0
  BroadcastEvent(A0_1194, "Invisible")
  if A0_1194.Properties.bTriggerOnce == 1 then
    A0_1194:GotoState("Disabled")
  else
    A0_1194:GotoState("Invisible")
  end
  System.Log("* INVISIBLE")
end
L0_1177.Event_Invisible = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1196, A1_1197)
  A0_1196:GotoState("Invisible")
  BroadcastEvent(A0_1196, "Enable")
end
L0_1177.Event_Enable = L1_1178
L0_1177 = VisibilityTrigger
function L1_1178(A0_1198, A1_1199)
  A0_1198:GotoState("Disabled")
  BroadcastEvent(A0_1198, "Disable")
end
L0_1177.Event_Disable = L1_1178
L0_1177 = VisibilityTrigger
L1_1178 = {}
L0_1177.Disabled = L1_1178
L0_1177 = VisibilityTrigger
L1_1178 = {}
function L2_1179(A0_1200)
  local L1_1201
  A0_1200.bVisible = 0
end
L1_1178.OnBeginState = L2_1179
function L2_1179(A0_1202)
  A0_1202.OnUpdateCalled = nil
  A0_1202:GotoState("Visible")
end
L1_1178.OnTimer = L2_1179
function L2_1179(A0_1203)
  if A0_1203.OnUpdateCalled == nil then
    A0_1203.OnUpdateCalled = 1
    if A0_1203.Properties.bUseKey ~= 0 then
      A0_1203.OnUpdateCalled = nil
      A0_1203:GotoState("VisibleUse")
      return
    end
    if A0_1203.Properties.EnterDelay ~= 0 then
      A0_1203:SetTimer(A0_1203.Properties.EnterDelay * 1000)
    else
      A0_1203.OnUpdateCalled = nil
      A0_1203:GotoState("Visible")
    end
  end
end
L1_1178.OnUpdate = L2_1179
L0_1177.Invisible = L1_1178
L0_1177 = VisibilityTrigger
L1_1178 = {}
function L2_1179(A0_1204)
  A0_1204.ExitDelay = A0_1204.Properties.ExitDelay
  A0_1204:Event_Visible(A0_1204)
end
L1_1178.OnBeginState = L2_1179
function L2_1179(A0_1205)
  if A0_1205.ExitDelay ~= 0 then
    A0_1205:SetTimer(A0_1205.ExitDelay * 1000)
    A0_1205.ExitDelay = 0
  else
    A0_1205:Event_Invisible(A0_1205)
  end
  A0_1205.ExitDelay = A0_1205.Properties.ExitDelay
end
L1_1178.OnTimer = L2_1179
function L2_1179(A0_1206)
  A0_1206:SetTimer(200)
end
L1_1178.OnUpdate = L2_1179
L0_1177.Visible = L1_1178
L0_1177 = VisibilityTrigger
L1_1178 = {}
function L2_1179(A0_1207)
  local L1_1208
end
L1_1178.OnBeginState = L2_1179
function L2_1179(A0_1209)
  A0_1209:GotoState("Invisible")
end
L1_1178.OnTimer = L2_1179
function L2_1179(A0_1210)
  A0_1210:SetTimer(200)
  if _localplayer and _localplayer.cnt and _localplayer.cnt.use_pressed then
    A0_1210:GotoState("Visible")
  elseif Hud then
    Hud.label = A0_1210.Properties.TextInstruction
  end
end
L1_1178.OnUpdate = L2_1179
L0_1177.VisibleUse = L1_1178
L0_1177 = VisibilityTrigger
L1_1178 = {}
L2_1179 = {}
L3_1180 = {
  VisibilityTrigger.Event_Disable,
  "bool"
}
L2_1179.Disable = L3_1180
L3_1180 = {
  VisibilityTrigger.Event_Enable,
  "bool"
}
L2_1179.Enable = L3_1180
L3_1180 = {
  VisibilityTrigger.Event_Invisible,
  "bool"
}
L2_1179.Invisible = L3_1180
L3_1180 = {
  VisibilityTrigger.Event_Visible,
  "bool"
}
L2_1179.Visible = L3_1180
L1_1178.Inputs = L2_1179
L2_1179 = {}
L2_1179.Disable = "bool"
L2_1179.Enable = "bool"
L2_1179.Invisible = "bool"
L2_1179.Visible = "bool"
L1_1178.Outputs = L2_1179
L0_1177.FlowEvents = L1_1178
