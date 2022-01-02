local L0_2763, L1_2764, L2_2765
L0_2763 = {}
L0_2763.type = "SmartObject"
L1_2764 = {}
L1_2764.soclasses_SmartObjectClass = ""
L0_2763.Properties = L1_2764
L1_2764 = {}
L1_2764.Model = "Editor/Objects/anchor.cgf"
L1_2764.Icon = "smartobject.bmp"
L1_2764.IconOnTop = 1
L0_2763.Editor = L1_2764
SmartObject = L0_2763
L0_2763 = SmartObject
function L1_2764(A0_2766)
  local L1_2767
end
L0_2763.OnInit = L1_2764
L0_2763 = SmartObject
function L1_2764(A0_2768)
  local L1_2769
end
L0_2763.OnReset = L1_2764
L0_2763 = SmartObject
function L1_2764(A0_2770)
  BroadcastEvent(A0_2770, "Used")
end
L0_2763.OnUsed = L1_2764
L0_2763 = SmartObject
function L1_2764(A0_2771, A1_2772)
  A0_2771:ActivateOutput("NavigationStarted", A1_2772 or NULL_ENTITY)
end
L0_2763.OnNavigationStarted = L1_2764
L0_2763 = SmartObject
function L1_2764(A0_2773, A1_2774)
  BroadcastEvent(A0_2773, "Used")
end
L0_2763.Event_Used = L1_2764
L0_2763 = SmartObject
L1_2764 = {}
L2_2765 = {}
L2_2765.Used = {
  SmartObject.Event_Used,
  "bool"
}
L1_2764.Inputs = L2_2765
L2_2765 = {}
L2_2765.Used = "bool"
L2_2765.NavigationStarted = "entity"
L1_2764.Outputs = L2_2765
L0_2763.FlowEvents = L1_2764
