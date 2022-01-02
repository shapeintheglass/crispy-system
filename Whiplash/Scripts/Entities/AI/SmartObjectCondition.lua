local L0_2775, L1_2776, L2_2777
L0_2775 = {}
L0_2775.type = "SmartObjectCondition"
L1_2776 = {}
L1_2776.bEnabled = true
L1_2776.bIncludeInNavigation = true
L1_2776.bRelativeToTarget = false
L2_2777 = {}
L2_2777.soclass_Class = "BasicEntity"
L2_2777.sostate_State = "Idle"
L2_2777.object_Model = ""
L1_2776.Object = L2_2777
L2_2777 = {}
L2_2777.soclass_Class = "AIOBJECT_ACTOR"
L2_2777.sostate_State = "Idle"
L2_2777.object_Model = ""
L1_2776.User = L2_2777
L2_2777 = {}
L2_2777.fDistance = 10
L2_2777.fOrientation = 360
L1_2776.Limits = L2_2777
L2_2777 = {}
L2_2777.fMinimum = 0.5
L2_2777.fMaximum = 15
L2_2777.fMemory = 1
L1_2776.Delay = L2_2777
L2_2777 = {}
L2_2777.fProximity = 1
L2_2777.fOrientation = 0
L2_2777.fVisibility = 0
L2_2777.fRandomness = 0.25
L1_2776.Multipliers = L2_2777
L2_2777 = {}
L2_2777.soaction_Name = ""
L2_2777.sostate_ObjectState = "Busy"
L2_2777.sostate_UserState = "Busy"
L1_2776.Action = L2_2777
L0_2775.Properties = L1_2776
L1_2776 = {}
L1_2776.Model = "Editor/Objects/Pyramid.cgf"
L0_2775.Editor = L1_2776
SmartObjectCondition = L0_2775
L0_2775 = SmartObjectCondition
function L1_2776(A0_2778)
  local L1_2779
end
L0_2775.OnPropertyChange = L1_2776
L0_2775 = SmartObjectCondition
function L1_2776(A0_2780)
  local L1_2781
end
L0_2775.OnInit = L1_2776
L0_2775 = SmartObjectCondition
function L1_2776(A0_2782)
  A0_2782:Register()
end
L0_2775.OnReset = L1_2776
L0_2775 = SmartObjectCondition
function L1_2776(A0_2783)
  local L1_2784
end
L0_2775.Register = L1_2776
