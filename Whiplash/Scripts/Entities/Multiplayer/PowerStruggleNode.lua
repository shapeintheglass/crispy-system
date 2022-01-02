Script.ReloadScript("Scripts/Entities/AlienTech/AlienTech.lua")
PowerStruggleNode = new(AlienTech)
PowerStruggleNode.Properties.ControlRadius = 8
PowerStruggleNode.Properties.ControlHeight = 5
PowerStruggleNode.Properties.ControlOffsetZ = 0
PowerStruggleNode.Properties.DebugDraw = 0
PowerStruggleNode.Properties.Letter = ""
PowerStruggleNode.NumTimesEmerged = 0
PowerStruggleNode.UseableChildEntity = 0
function PowerStruggleNode.Server.OnInit(A0_6547)
  if not A0_6547.bInitialized then
    A0_6547:OnReset()
    A0_6547.bInitialized = 1
  end
end
function PowerStruggleNode.Client.OnInit(A0_6548)
  if not A0_6548.bInitialized then
    A0_6548:OnReset()
    A0_6548.bInitialized = 1
  end
end
function PowerStruggleNode.OnReset(A0_6549)
  local L1_6550, L2_6551, L3_6552, L4_6553, L5_6554
  L1_6550 = A0_6549.Properties
  L1_6550 = L1_6550.ControlRadius
  L2_6551 = A0_6549.Properties
  L2_6551 = L2_6551.ControlOffsetZ
  L3_6552 = A0_6549.Properties
  L3_6552 = L3_6552.ControlHeight
  L4_6553 = {}
  L5_6554 = -L1_6550
  L4_6553.x = L5_6554
  L5_6554 = -L1_6550
  L4_6553.y = L5_6554
  L4_6553.z = L2_6551
  L5_6554 = {}
  L5_6554.x = L1_6550
  L5_6554.y = L1_6550
  L5_6554.z = L3_6552 + L2_6551
  A0_6549:SetTriggerBBox(L4_6553, L5_6554)
  A0_6549:SetViewDistRatio(255)
  if System.IsEditor() then
    if A0_6549.Properties.DebugDraw ~= 0 then
      A0_6549:Activate(1)
      CryAction.ForceGameObjectUpdate(A0_6549.id, true)
    else
      A0_6549:Activate(0)
    end
  end
end
function PowerStruggleNode.OnPropertyChange(A0_6555)
  A0_6555:OnReset()
end
function PowerStruggleNode.Server.OnUpdate(A0_6556)
  local L1_6557, L2_6558, L3_6559
  L1_6557 = System
  L1_6557 = L1_6557.IsEditor
  L1_6557 = L1_6557()
  if L1_6557 then
    L1_6557 = A0_6556.Properties
    L1_6557 = L1_6557.DebugDraw
    if L1_6557 ~= 0 then
      L2_6558 = A0_6556
      L1_6557 = A0_6556.GetWorldPos
      L1_6557 = L1_6557(L2_6558)
      L2_6558 = A0_6556.Properties
      L2_6558 = L2_6558.ControlRadius
      L3_6559 = A0_6556.Properties
      L3_6559 = L3_6559.ControlHeight
      L1_6557.z = L1_6557.z + A0_6556.Properties.ControlOffsetZ
      Game.DebugDrawCone(L1_6557.x, L1_6557.y, L1_6557.z, L2_6558, L3_6559, 60, 60, 255, 150)
    end
  end
end
function PowerStruggleNode.ActivateNode(A0_6560)
  Log("PowerStruggleNode:ActivateNode()")
  BroadcastEvent(A0_6560, "Activated")
  A0_6560:SetViewDistRatio(255)
end
function PowerStruggleNode.DeActivateNode(A0_6561)
  BroadcastEvent(A0_6561, "DeActivatedImmediately")
  A0_6561:Event_Buried()
end
function PowerStruggleNode.Event_Buried(A0_6562)
  Log("PowerStruggleNode:Event_Buried()")
  g_gameRules.game:SendGameRulesObjectiveEntitySignal(A0_6562.id, 0)
end
function PowerStruggleNode.Event_Emerging(A0_6563)
  Log("PowerStruggleNoed:Event_Emerging()")
  if A0_6563.NumTimesEmerged == 0 then
    BroadcastEvent(A0_6563, "OnFirstEmerging")
  else
    BroadcastEvent(A0_6563, "OnRepeatEmerging")
  end
  BroadcastEvent(A0_6563, "OnAnyEmerging")
  A0_6563.NumTimesEmerged = A0_6563.NumTimesEmerged + 1
end
function PowerStruggleNode.Event_Emerged(A0_6564)
  Log("PowerStruggleNode:Event_Emerged()")
  g_gameRules.game:SendGameRulesObjectiveEntitySignal(A0_6564.id, 1)
end
function PowerStruggleNode.Event_Burying(A0_6565)
  Log("PowerStruggleNoed:Event_Burying()")
end
function PowerStruggleNode.Event_ShowIcon(A0_6566)
  Log("PowerStruggleNoed:Event_ShowIcon()")
end
function PowerStruggleNode.IsUsable(A0_6567, A1_6568)
  A0_6567.UseableChildEntity = g_gameRules.game:CanUsePowerStruggleNode(A1_6568.id, A0_6567.id)
  return A0_6567.UseableChildEntity
end
PowerStruggleNode.FlowEvents = {
  Inputs = {
    Buried = {
      PowerStruggleNode.Event_Buried,
      "any"
    },
    Emerging = {
      PowerStruggleNode.Event_Emerging,
      "any"
    },
    Emerged = {
      PowerStruggleNode.Event_Emerged,
      "any"
    },
    Burying = {
      PowerStruggleNode.Event_Burying,
      "any"
    },
    ShowIcon = {
      CrashSiteLocation.Event_ShowIcon,
      "any"
    }
  },
  Outputs = {
    Activated = "bool",
    OnFirstEmerging = "bool",
    OnRepeatEmerging = "bool",
    OnAnyEmerging = "bool",
    DeActivated = "bool",
    DeActivatedImmediately = "bool"
  }
}
