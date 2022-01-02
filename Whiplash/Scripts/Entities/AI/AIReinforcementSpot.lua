local L0_2367, L1_2368, L2_2369, L3_2370
L0_2367 = {}
L0_2367.type = "AIReinforcementSpot"
L1_2368 = {}
L1_2368.bEnabled = 1
L1_2368.groupid = 173
L1_2368.radius = 30
L1_2368.AvoidWhenTargetInRadius = 15
L1_2368.bWhenAllAlerted = 1
L1_2368.bWhenInCombat = 1
L1_2368.iGroupBodyCount = 2
L1_2368.eiReinforcementType = 0
L0_2367.Properties = L1_2368
AIReinforcementSpot = L0_2367
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2371)
  A0_2371:Register()
end
L0_2367.OnInit = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2372)
  A0_2372:Register()
end
L0_2367.OnPropertyChange = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2373)
  A0_2373.bNowEnabled = A0_2373.Properties.bEnabled
  if A0_2373.Properties.bEnabled == 0 then
    A0_2373:TriggerEvent(AIEVENT_DISABLE)
  else
    A0_2373:TriggerEvent(AIEVENT_ENABLE)
  end
  A0_2373:ActivateOutput("GroupID", A0_2373.Properties.groupid)
end
L0_2367.OnReset = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2374)
  if A0_2374.Properties.aianchor_AnchorType ~= "" then
    CryAction.RegisterWithAI(A0_2374.id, AIAnchorTable.REINFORCEMENT_SPOT, A0_2374.Properties)
    AI.ChangeParameter(A0_2374.id, AIPARAM_GROUPID, A0_2374.Properties.groupid)
  end
  A0_2374:OnReset()
end
L0_2367.Register = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2375, A1_2376)
  A0_2375:TriggerEvent(AIEVENT_ENABLE)
  A0_2375.bNowEnabled = 1
  A0_2375:ActivateOutput("GroupID", A0_2375.Properties.groupid)
end
L0_2367.Event_Enable = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2377, A1_2378)
  A0_2377:TriggerEvent(AIEVENT_DISABLE)
  A0_2377.bNowEnabled = 0
end
L0_2367.Event_Disable = L1_2368
L0_2367 = AIReinforcementSpot
function L1_2368(A0_2379)
  A0_2379:TriggerEvent(AIEVENT_DISABLE)
  A0_2379.bNowEnabled = 0
  A0_2379:ActivateOutput("GroupID", A0_2379.Properties.groupid)
  A0_2379:ActivateOutput("Called", true)
end
L0_2367.Alarm = L1_2368
L0_2367 = AIReinforcementSpot
L1_2368 = {}
L2_2369 = {}
L3_2370 = {
  AIReinforcementSpot.Event_Enable,
  "bool"
}
L2_2369.Enable = L3_2370
L3_2370 = {
  AIReinforcementSpot.Event_Disable,
  "bool"
}
L2_2369.Disable = L3_2370
L1_2368.Inputs = L2_2369
L2_2369 = {}
L2_2369.Called = "bool"
L2_2369.GroupID = "int"
L1_2368.Outputs = L2_2369
L0_2367.FlowEvents = L1_2368
