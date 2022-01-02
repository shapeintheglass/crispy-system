local L0_2349, L1_2350, L2_2351, L3_2352
L0_2349 = {}
L0_2349.type = "AIAnchor"
L1_2350 = {}
L1_2350.aianchor_AnchorType = "_wrong_type_"
L1_2350.bEnabled = 1
L1_2350.soclasses_SmartObjectClass = ""
L1_2350.groupid = -1
L1_2350.radius = 0
L0_2349.Properties = L1_2350
AIAnchor = L0_2349
L0_2349 = AIAnchor
function L1_2350(A0_2353)
  A0_2353:Register()
end
L0_2349.OnPropertyChange = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2354)
  A0_2354:Register()
end
L0_2349.OnInit = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2355)
  A0_2355.bNowEnabled = A0_2355.Properties.bEnabled
  if A0_2355.Properties.bEnabled == 0 then
    A0_2355:TriggerEvent(AIEVENT_DISABLE)
  else
    A0_2355:TriggerEvent(AIEVENT_ENABLE)
  end
end
L0_2349.OnReset = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2356)
  BroadcastEvent(A0_2356, "Use")
end
L0_2349.OnUsed = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2357)
  A0_2357.registered = nil
  if A0_2357.Properties.aianchor_AnchorType ~= "" then
    if AIAnchorTable[A0_2357.Properties.aianchor_AnchorType] == nil then
      System.Log("AIAnchor[" .. A0_2357:GetName() .. "]:  undefined type [" .. A0_2357.Properties.aianchor_AnchorType .. "] Cant register with [AISYSTEM]")
    else
      CryAction.RegisterWithAI(A0_2357.id, AIAnchorTable[A0_2357.Properties.aianchor_AnchorType], A0_2357.Properties)
      AI.ChangeParameter(A0_2357.id, AIPARAM_GROUPID, A0_2357.Properties.groupid)
      A0_2357.registered = 1
    end
  end
  A0_2357:OnReset()
end
L0_2349.Register = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2358, A1_2359)
  if A0_2358.bNowEnabled == 1 then
    BroadcastEvent(A0_2358, "Use")
  end
end
L0_2349.Event_Use = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2360)
  A0_2360:TriggerEvent(AIEVENT_ENABLE)
  A0_2360.bNowEnabled = 1
  BroadcastEvent(A0_2360, "Enable")
end
L0_2349.Event_Enable = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2361)
  A0_2361:TriggerEvent(AIEVENT_DISABLE)
  A0_2361.bNowEnabled = 0
  BroadcastEvent(A0_2361, "Disable")
end
L0_2349.Event_Disable = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2362, A1_2363)
  local L2_2364
  L2_2364 = A0_2362.Properties
  L2_2364 = L2_2364.aianchor_AnchorType
  A1_2363.aianchor_AnchorType = L2_2364
end
L0_2349.OnSave = L1_2350
L0_2349 = AIAnchor
function L1_2350(A0_2365, A1_2366)
  A0_2365.Properties.aianchor_AnchorType = A1_2366.aianchor_AnchorType
  if not A0_2365.registered then
    A0_2365:Register()
  end
end
L0_2349.OnLoad = L1_2350
L0_2349 = AIAnchor
L1_2350 = {}
L2_2351 = {}
L3_2352 = {
  AIAnchor.Event_Disable,
  "bool"
}
L2_2351.Disable = L3_2352
L3_2352 = {
  AIAnchor.Event_Enable,
  "bool"
}
L2_2351.Enable = L3_2352
L3_2352 = {
  AIAnchor.Event_Use,
  "bool"
}
L2_2351.Use = L3_2352
L1_2350.Inputs = L2_2351
L2_2351 = {}
L2_2351.Disable = "bool"
L2_2351.Enable = "bool"
L2_2351.Use = "bool"
L1_2350.Outputs = L2_2351
L0_2349.FlowEvents = L1_2350
