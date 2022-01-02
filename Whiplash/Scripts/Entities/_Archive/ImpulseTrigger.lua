local L0_731, L1_732, L2_733, L3_734
L0_731 = {}
L0_731.type = "Trigger"
L1_732 = {}
L1_732.DimX = 5
L1_732.DimY = 5
L1_732.DimZ = 5
L1_732.bEnabled = 1
L1_732.bTriggerOnce = 0
L1_732.bKillOnTrigger = 0
L1_732.bOnlyPlayer = 0
L1_732.bOnlyMyPlayer = 1
L1_732.bOnlyAI = 0
L1_732.ImpulseStrength = 20
L1_732.ImpulseFadeInTime = 0
L1_732.ImpulseDuration = 0.1
L0_731.Properties = L1_732
L1_732 = {}
L1_732.x = 0
L1_732.y = 0
L1_732.z = 0
L0_731.imp = L1_732
L0_731.MaxImpulse = 0
L0_731.InitImpulseTime = 0
L0_731.TotalImpulseDuration = 0
L1_732 = {}
L1_732.Model = "Objects/Editor/T.cgf"
L0_731.Editor = L1_732
ImpulseTrigger = L0_731
L0_731 = ImpulseTrigger
function L1_732(A0_735)
  A0_735:OnReset()
end
L0_731.OnPropertyChange = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_736)
  A0_736.Who = nil
  A0_736.Entered = 0
  A0_736:RegisterState("Inactive")
  A0_736:RegisterState("Empty")
  A0_736:RegisterState("Occupied")
  A0_736:OnReset()
  A0_736:Activate(0)
  A0_736:TrackColliders(1)
end
L0_731.OnInit = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_737)
  local L1_738
end
L0_731.OnShutDown = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_739, A1_740)
end
L0_731.OnSave = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_741, A1_742)
end
L0_731.OnLoad = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_743)
  local L1_744, L2_745
  L1_744 = new
  L2_745 = A0_743.GetDirectionVector
  L2_745 = L2_745(A0_743)
  L1_744 = L1_744(L2_745, L2_745(A0_743))
  A0_743.imp = L1_744
  L1_744 = {}
  L2_745 = A0_743.Properties
  L2_745 = L2_745.DimX
  L2_745 = -L2_745
  L2_745 = L2_745 / 2
  L1_744.x = L2_745
  L2_745 = A0_743.Properties
  L2_745 = L2_745.DimY
  L2_745 = -L2_745
  L2_745 = L2_745 / 2
  L1_744.y = L2_745
  L2_745 = A0_743.Properties
  L2_745 = L2_745.DimZ
  L2_745 = -L2_745
  L2_745 = L2_745 / 2
  L1_744.z = L2_745
  L2_745 = {}
  L2_745.x = A0_743.Properties.DimX / 2
  L2_745.y = A0_743.Properties.DimY / 2
  L2_745.z = A0_743.Properties.DimZ / 2
  A0_743:SetBBox(L1_744, L2_745)
  A0_743.Who = nil
  A0_743.Entered = 0
  A0_743.TotalImpulseDuration = A0_743.Properties.ImpulseFadeInTime + A0_743.Properties.ImpulseDuration
  if A0_743.Properties.bEnabled == 1 then
    A0_743:GotoState("Empty")
  else
    A0_743:GotoState("Inactive")
  end
end
L0_731.OnReset = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_746, A1_747)
  if A0_746.Entered ~= 0 then
    return
  end
  AI:RegisterWithAI(A0_746.id, 0)
  BroadcastEvent(A0_746, "Enter")
  A0_746.Entered = 1
  A0_746.InitImpulseTime = _time
  A0_746:SetTimer(1)
  if A0_746.Who == nil then
    A0_746.Who = A1_747
    A0_746:GotoState("Occupied")
  end
end
L0_731.Event_Enter = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_748, A1_749)
  if A0_748.Entered == 0 then
    return
  end
  A0_748.Entered = 0
  BroadcastEvent(A0_748, "Leave")
end
L0_731.Event_Leave = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_750, A1_751)
  A0_750:GotoState("Empty")
  BroadcastEvent(A0_750, "Enable")
end
L0_731.Event_Enable = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_752, A1_753)
  A0_752:GotoState("Inactive")
  AI:RegisterWithAI(A0_752.id, 0)
  BroadcastEvent(A0_752, "Disable")
end
L0_731.Event_Disable = L1_732
L0_731 = ImpulseTrigger
function L1_732(A0_754)
  local L1_755
  if A0_754.Who then
    if A0_754.Properties.ImpulseFadeInTime > 0 then
      L1_755 = (_time - A0_754.InitImpulseTime) / A0_754.Properties.ImpulseFadeInTime
    else
      L1_755 = 1
    end
    if L1_755 > 1 then
      L1_755 = 1
    end
    A0_754.Who:AddImpulseObj(A0_754.imp, A0_754.Properties.ImpulseStrength * L1_755)
    if _time - A0_754.InitImpulseTime >= A0_754.TotalImpulseDuration and 0 <= A0_754.TotalImpulseDuration then
      A0_754:SetTimer(2000)
      A0_754.Who = nil
    else
      A0_754:SetTimer(1)
    end
  else
    A0_754:Event_Leave(A0_754, A0_754.Who)
    if 0 < A0_754.Properties.bKillOnTrigger then
      Server:RemoveEntity(A0_754.id)
    elseif 0 < A0_754.Properties.bTriggerOnce then
      A0_754:GotoState("Inactive")
    else
      A0_754:GotoState("Empty")
    end
    A0_754:KillTimer()
  end
end
L0_731.OnTimeF = L1_732
L0_731 = ImpulseTrigger
L1_732 = {}
function L2_733(A0_756)
  printf("ImpulseTrigger deactivating")
end
L1_732.OnBeginState = L2_733
function L2_733(A0_757)
  printf("ImpulseTrigger activating")
end
L1_732.OnEndState = L2_733
L0_731.Inactive = L1_732
L0_731 = ImpulseTrigger
L1_732 = {}
function L2_733(A0_758)
  local L1_759
  A0_758.Who = nil
end
L1_732.OnBeginState = L2_733
function L2_733(A0_760, A1_761)
  if A0_760.Properties.bOnlyPlayer ~= 0 and A1_761.type ~= "Player" then
    return
  end
  if A0_760.Properties.bOnlyAI ~= 0 and A1_761.ai == nil then
    return
  end
  if A0_760.Properties.bOnlyMyPlayer ~= 0 and A1_761 ~= _localplayer then
    return
  end
  if A0_760.Who == nil then
    A0_760.Who = A1_761
    A0_760:GotoState("Occupied")
  end
end
L1_732.OnEnterArea = L2_733
L2_733 = ImpulseTrigger
L2_733 = L2_733.OnTimeF
L1_732.OnTimer = L2_733
L0_731.Empty = L1_732
L0_731 = ImpulseTrigger
L1_732 = {}
function L2_733(A0_762)
  A0_762:Event_Enter(A0_762.Who)
end
L1_732.OnBeginState = L2_733
L2_733 = ImpulseTrigger
L2_733 = L2_733.OnTimeF
L1_732.OnTimer = L2_733
L0_731.Occupied = L1_732
L0_731 = ImpulseTrigger
L1_732 = {}
L2_733 = {}
L3_734 = {
  ImpulseTrigger.Event_Disable,
  "bool"
}
L2_733.Disable = L3_734
L3_734 = {
  ImpulseTrigger.Event_Enable,
  "bool"
}
L2_733.Enable = L3_734
L3_734 = {
  ImpulseTrigger.Event_Enter,
  "bool"
}
L2_733.Enter = L3_734
L3_734 = {
  ImpulseTrigger.Event_Leave,
  "bool"
}
L2_733.Leave = L3_734
L1_732.Inputs = L2_733
L2_733 = {}
L2_733.Disable = "bool"
L2_733.Enable = "bool"
L2_733.Enter = "bool"
L2_733.Leave = "bool"
L1_732.Outputs = L2_733
L0_731.FlowEvents = L1_732
