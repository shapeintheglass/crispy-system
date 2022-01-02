local L0_933, L1_934, L2_935, L3_936
L0_933 = {}
L0_933.type = "Trigger"
L1_934 = {}
L1_934.DimX = 5
L1_934.DimY = 5
L1_934.DimZ = 5
L1_934.bEnabled = 1
L1_934.EnterDelay = 0
L1_934.ExitDelay = 0
L1_934.bOnlyPlayer = 1
L1_934.bOnlyMyPlayer = 0
L1_934.bOnlyAI = 0
L1_934.bOnlySpecialAI = 0
L1_934.bKillOnTrigger = 0
L1_934.bTriggerOnce = 0
L1_934.ScriptCommand = ""
L1_934.PlaySequence = ""
L1_934.aianchorAIAction = ""
L1_934.TextInstruction = ""
L1_934.bActivateWithUseButton = 0
L1_934.bInVehicleOnly = 0
L1_934.iNeededKey = 0
L1_934.bKeepKeycardAfterUse = 0
L0_933.Properties = L1_934
L1_934 = {}
L1_934.Model = "Objects/Editor/T.cgf"
L1_934.ShowBounds = 1
L0_933.Editor = L1_934
L0_933.bLocked = false
ProximityKeyTrigger = L0_933
L0_933 = ProximityKeyTrigger
function L1_934(A0_937)
  A0_937:OnReset()
end
L0_933.OnPropertyChange = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_938)
  A0_938:Activate(0)
  A0_938:SetUpdateType(eUT_Physics)
  A0_938:TrackColliders(1)
  A0_938.Who = nil
  A0_938.Entered = 0
  A0_938.bLocked = 0
  A0_938.bTriggered = 0
  A0_938:RegisterState("Inactive")
  A0_938:RegisterState("Empty")
  A0_938:RegisterState("Occupied")
  A0_938:RegisterState("OccupiedUse")
  A0_938:OnReset()
end
L0_933.OnInit = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_939)
  local L1_940
end
L0_933.OnShutDown = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_941, A1_942)
  A1_942:WriteInt(A0_941.bTriggered)
  A1_942:WriteInt(A0_941.bLocked)
  if A0_941.Who then
    if A0_941.Who == _localplayer then
      A1_942:WriteInt(0)
    else
      A1_942:WriteInt(A0_941.Who.id)
    end
  else
    A1_942:WriteInt(-1)
  end
end
L0_933.OnSave = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_943, A1_944)
  A0_943.bTriggered = A1_944:ReadInt()
  A0_943.bLocked = A1_944:ReadInt()
  A0_943.WhoID = A1_944:ReadInt()
  if A0_943.WhoID < 0 then
    A0_943.WhoID = nil
  elseif A0_943.WhoID == 0 then
    A0_943.WhoID = 0
  end
end
L0_933.OnLoad = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_945, A1_946)
  A0_945.bTriggered = A1_946:ReadInt()
  A0_945.bLocked = A1_946:ReadInt()
end
L0_933.OnLoadRELEASE = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_947)
  local L1_948, L2_949
  L2_949 = A0_947
  L1_948 = A0_947.KillTimer
  L1_948(L2_949)
  A0_947.bTriggered = 0
  L1_948 = {}
  L2_949 = A0_947.Properties
  L2_949 = L2_949.DimX
  L2_949 = -L2_949
  L2_949 = L2_949 / 2
  L1_948.x = L2_949
  L2_949 = A0_947.Properties
  L2_949 = L2_949.DimY
  L2_949 = -L2_949
  L2_949 = L2_949 / 2
  L1_948.y = L2_949
  L2_949 = A0_947.Properties
  L2_949 = L2_949.DimZ
  L2_949 = -L2_949
  L2_949 = L2_949 / 2
  L1_948.z = L2_949
  L2_949 = {}
  L2_949.x = A0_947.Properties.DimX / 2
  L2_949.y = A0_947.Properties.DimY / 2
  L2_949.z = A0_947.Properties.DimZ / 2
  A0_947:SetBBox(L1_948, L2_949)
  A0_947.Who = nil
  A0_947.UpdateCounter = 0
  A0_947.Entered = 0
  if A0_947.Properties.bEnabled == 1 then
    A0_947:GotoState("Empty")
  else
    A0_947:GotoState("Inactive")
  end
  if A0_947.Properties.iNeededKey ~= -1 then
    A0_947.bLocked = 1
  else
    A0_947.bLocked = 0
  end
end
L0_933.OnReset = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_950, A1_951)
  if A0_950:GetState() == "Inactive" then
    return
  end
  if A0_950.Entered ~= 0 then
    return
  end
  if A0_950.Properties.bTriggerOnce == 1 and A0_950.bTriggered == 1 then
    return
  end
  A0_950.bTriggered = 1
  A0_950.Entered = 1
  if A0_950.Properties.ScriptCommand and A0_950.Properties.ScriptCommand ~= "" then
    dostring(A0_950.Properties.ScriptCommand)
  end
  if A0_950.Properties.PlaySequence ~= "" then
    Movie.PlaySequence(A0_950.Properties.PlaySequence)
  end
  BroadcastEvent(A0_950, "Enter")
  AI:RegisterWithAI(A0_950.id, 0)
end
L0_933.Event_Enter = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_952, A1_953)
  if A0_952.Entered == 0 then
    return
  end
  A0_952.Entered = 0
  BroadcastEvent(A0_952, "Leave")
  if A0_952.Properties.bTriggerOnce == 1 then
    A0_952:GotoState("Inactive")
  end
end
L0_933.Event_Leave = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_954, A1_955)
  A0_954:GotoState("Empty")
  BroadcastEvent(A0_954, "Enable")
end
L0_933.Event_Enable = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_956, A1_957)
  A0_956:GotoState("Inactive")
  AI:RegisterWithAI(A0_956.id, 0)
  BroadcastEvent(A0_956, "Disable")
end
L0_933.Event_Disable = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_958, A1_959)
  A0_958.bLocked = 0
  BroadcastEvent(A0_958, "Unlocked")
end
L0_933.Event_Unlocked = L1_934
L0_933 = ProximityKeyTrigger
function L1_934(A0_960, A1_961)
  if A0_960.Properties.bOnlyPlayer ~= 0 and A1_961.type ~= "Player" then
    return 0
  end
  if A0_960.Properties.bOnlySpecialAI ~= 0 and A1_961.ai ~= nil and A1_961.Properties.special == 0 then
    return 0
  end
  if A0_960.Properties.bOnlyAI ~= 0 and A1_961.ai == nil then
    return 0
  end
  if A0_960.Properties.bOnlyMyPlayer ~= 0 and A1_961 ~= _localplayer then
    return 0
  end
  if A0_960.Properties.bInVehicleOnly ~= 0 and not A1_961.theVehicle then
    return 0
  end
  if A1_961:IsDead() then
    return 0
  end
  return 1
end
L0_933.IsValidSource = L1_934
L0_933 = ProximityKeyTrigger
L1_934 = {}
function L2_935(A0_962)
  AI:RegisterWithAI(A0_962.id, 0)
end
L1_934.OnBeginState = L2_935
function L2_935(A0_963)
  local L1_964
end
L1_934.OnEndState = L2_935
L0_933.Inactive = L1_934
L0_933 = ProximityKeyTrigger
L1_934 = {}
function L2_935(A0_965)
  A0_965.Who = nil
  A0_965.UpdateCounter = 0
  A0_965.Entered = 0
  if A0_965.Properties.aianchorAIAction ~= "" then
    AI:RegisterWithAI(A0_965.id, AIAnchor[A0_965.Properties.aianchorAIAction])
  end
end
L1_934.OnBeginState = L2_935
function L2_935(A0_966)
  A0_966:GotoState("Occupied")
end
L1_934.OnTimer = L2_935
function L2_935(A0_967, A1_968, A2_969)
  if A0_967:IsValidSource(A1_968) == 0 then
    return
  end
  if A1_968.ai == nil and A0_967.Properties.bActivateWithUseButton ~= 0 then
    A0_967.Who = A1_968
    A0_967:GotoState("OccupiedUse")
    return
  end
  if 0 < A0_967.Properties.EnterDelay then
    if A0_967.Who == nil then
      A0_967.Who = A1_968
      A0_967:SetTimer(A0_967.Properties.EnterDelay * 1000)
    end
  else
    A0_967.Who = A1_968
    A0_967:GotoState("Occupied")
  end
end
L1_934.OnEnterArea = L2_935
L0_933.Empty = L1_934
L0_933 = ProximityKeyTrigger
L1_934 = {}
function L2_935(A0_970)
  A0_970:Event_Enter(A0_970.Who)
  if A0_970.Properties.bKillOnTrigger == 1 then
    Server:RemoveEntity(A0_970.id)
  end
end
L1_934.OnBeginState = L2_935
function L2_935(A0_971)
  A0_971:Event_Leave(A0_971, A0_971.Who)
  if A0_971.Properties.bTriggerOnce ~= 1 then
    A0_971:GotoState("Empty")
  end
end
L1_934.OnTimer = L2_935
function L2_935(A0_972, A1_973, A2_974)
  if A0_972:IsValidSource(A1_973) == 0 then
    return
  end
  if A0_972.Properties.ExitDelay == 0 then
    A0_972.Properties.ExitDelay = 0.01
  end
  A0_972:SetTimer(A0_972.Properties.ExitDelay * 1000)
end
L1_934.OnLeaveArea = L2_935
L0_933.Occupied = L1_934
L0_933 = ProximityKeyTrigger
L1_934 = {}
function L2_935(A0_975)
  A0_975:Activate(1)
end
L1_934.OnBeginState = L2_935
function L2_935(A0_976)
  A0_976:Activate(0)
end
L1_934.OnEndState = L2_935
function L2_935(A0_977)
  if A0_977.WhoID then
    if A0_977.WhoID == 0 then
      A0_977.Who = _localplayer
    else
      A0_977.Who = System.GetEntity(A0_977.WhoID)
    end
    A0_977.WhoID = nil
  end
  if A0_977.Who.cnt and not A0_977.Who.cnt.use_pressed then
    if 0 < strlen(A0_977.Properties.TextInstruction) then
      Hud.label = A0_977.Properties.TextInstruction
    end
    return
  end
  if A0_977.bLocked ~= 0 then
    if A0_977.Who.keycards and A0_977.Who.keycards[A0_977.Properties.iNeededKey] == 1 then
      if A0_977.Properties.bKeepKeycardAfterUse == 0 then
        A0_977.Who.keycards[A0_977.Properties.iNeededKey] = 0
      end
      A0_977:Event_Unlocked(A0_977)
      System.LogToConsole("Trigger unlocked !")
    else
      return 0
    end
  end
  if 0 < A0_977.Properties.EnterDelay then
    A0_977:SetTimer(A0_977.Properties.EnterDelay * 1000)
  else
    A0_977:GotoState("Occupied")
  end
end
L1_934.OnUpdate = L2_935
function L2_935(A0_978)
  A0_978:GotoState("Occupied")
end
L1_934.OnTimer = L2_935
function L2_935(A0_979, A1_980, A2_981)
  if A0_979.Who == A1_980 then
    A0_979:GotoState("Empty")
  end
end
L1_934.OnLeaveArea = L2_935
L0_933.OccupiedUse = L1_934
L0_933 = ProximityKeyTrigger
L1_934 = {}
L2_935 = {}
L3_936 = {
  ProximityKeyTrigger.Event_Disable,
  "bool"
}
L2_935.Disable = L3_936
L3_936 = {
  ProximityKeyTrigger.Event_Enable,
  "bool"
}
L2_935.Enable = L3_936
L3_936 = {
  ProximityKeyTrigger.Event_Enter,
  "bool"
}
L2_935.Enter = L3_936
L3_936 = {
  ProximityKeyTrigger.Event_Leave,
  "bool"
}
L2_935.Leave = L3_936
L3_936 = {
  ProximityKeyTrigger.Event_Unlocked,
  "bool"
}
L2_935.Leave = L3_936
L1_934.Inputs = L2_935
L2_935 = {}
L2_935.Disable = "bool"
L2_935.Enable = "bool"
L2_935.Enter = "bool"
L2_935.Leave = "bool"
L2_935.Leave = "bool"
L1_934.Outputs = L2_935
L0_933.FlowEvents = L1_934
