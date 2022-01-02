System.Log("Loading AIAlertness.lua")
AIAlertness = {
  type = "AIAlertness",
  Properties = {bEnabled = 1},
  Editor = {
    Model = "Editor/Objects/box.cgf"
  }
}
function AIAlertness.OnPropertyChange(A0_2335)
  A0_2335:Register()
end
function AIAlertness.OnInit(A0_2336)
  A0_2336:Register()
end
function AIAlertness.OnReset(A0_2337)
  A0_2337.bNowEnabled = A0_2337.Properties.bEnabled
  if A0_2337.Properties.bEnabled == 0 then
    A0_2337:TriggerEvent(AIEVENT_DISABLE)
  else
    A0_2337:TriggerEvent(AIEVENT_ENABLE)
  end
end
function AIAlertness.Register(A0_2338)
  CryAction.RegisterWithAI(A0_2338.id, AIOBJECT_GLOBALALERTNESS)
  A0_2338:OnReset()
end
function AIAlertness.Event_Enable(A0_2339)
  A0_2339:TriggerEvent(AIEVENT_ENABLE)
  A0_2339.bNowEnabled = 1
  BroadcastEvent(A0_2339, "Enable")
end
function AIAlertness.Event_Disable(A0_2340)
  A0_2340:TriggerEvent(AIEVENT_DISABLE)
  A0_2340.bNowEnabled = 0
  BroadcastEvent(A0_2340, "Disable")
end
function AIAlertness.SetAlertness(A0_2341, A1_2342)
  if A0_2341.bNowEnabled then
    if A1_2342 == 0 then
      A0_2341:Event_Green()
    elseif A1_2342 == 1 then
      A0_2341:Event_Orange()
    elseif A1_2342 == 2 then
      A0_2341:Event_Red()
    end
  end
end
function AIAlertness.Event_Green(A0_2343, A1_2344)
  AI.LogEvent("GLOBAL ALERTNESS STATE:  GREEN")
  BroadcastEvent(A0_2343, "Green")
end
function AIAlertness.Event_Orange(A0_2345, A1_2346)
  AI.LogEvent("GLOBAL ALERTNESS STATE:  ORANGE")
  BroadcastEvent(A0_2345, "Orange")
end
function AIAlertness.Event_Red(A0_2347, A1_2348)
  AI.LogEvent("GLOBAL ALERTNESS STATE:  RED")
  BroadcastEvent(A0_2347, "Red")
end
AIAlertness.FlowEvents = {
  Inputs = {
    Disable = {
      AIAlertness.Event_Disable,
      "bool"
    },
    Enable = {
      AIAlertness.Event_Enable,
      "bool"
    },
    Green = {
      AIAlertness.Event_Green,
      "bool"
    },
    Orange = {
      AIAlertness.Event_Orange,
      "bool"
    },
    Red = {
      AIAlertness.Event_Red,
      "bool"
    }
  },
  Outputs = {
    Disable = "bool",
    Enable = "bool",
    Green = "bool",
    Orange = "bool",
    Red = "bool"
  }
}
