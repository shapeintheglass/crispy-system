local L0_8277, L1_8278, L2_8279, L3_8280
L0_8277 = {}
L0_8277.type = "ViewDistController"
L1_8278 = {}
L1_8278.MaxViewDist = 25
L1_8278.fFadeTime = 1
L0_8277.Properties = L1_8278
L1_8278 = {}
L1_8278.Model = "Editor/Objects/T.cgf"
L0_8277.Editor = L1_8278
ViewDist = L0_8277
L0_8277 = ViewDist
function L1_8278(A0_8281)
  A0_8281:SetFlagsExtended(ENTITY_FLAG_EXTENDED_NEEDS_MOVEINSIDE, 0)
end
L0_8277.OnSpawn = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8282, A1_8283)
  local L2_8284
  L2_8284 = A0_8282.outsideViewDist
  A1_8283.outsideViewDist = L2_8284
  L2_8284 = A0_8282.occupied
  A1_8283.occupied = L2_8284
  L2_8284 = A0_8282.fadeamt
  A1_8283.fadeamt = L2_8284
  L2_8284 = A0_8282.lasttime
  A1_8283.lasttime = L2_8284
  L2_8284 = A0_8282.exitfrom
  A1_8283.exitfrom = L2_8284
end
L0_8277.OnSave = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8285, A1_8286)
  local L2_8287
  L2_8287 = A1_8286.outsideViewDist
  A0_8285.outsideViewDist = L2_8287
  L2_8287 = A1_8286.occupied
  A0_8285.occupied = L2_8287
  L2_8287 = A1_8286.fadeamt
  A0_8285.fadeamt = L2_8287
  L2_8287 = A1_8286.lasttime
  A0_8285.lasttime = L2_8287
  L2_8287 = A1_8286.exitfrom
  A0_8285.exitfrom = L2_8287
end
L0_8277.OnLoad = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8288)
  A0_8288.outsideViewDist = 0
  A0_8288.occupied = 0
  A0_8288:OnReset()
  A0_8288.outsideViewDist = System.ViewDistanceGet()
  A0_8288:RegisterForAreaEvents(1)
end
L0_8277.OnInit = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8289)
  A0_8289:OnReset()
end
L0_8277.OnPropertyChange = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8290)
  if A0_8290.occupied == 1 then
    A0_8290:OnLeaveArea()
  end
  A0_8290.occupied = 0
  A0_8290:KillTimer(0)
end
L0_8277.OnReset = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8291, A1_8292, A2_8293, A3_8294)
  A0_8291:FadeViewDist(A3_8294)
end
L0_8277.OnProceedFadeArea = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8295)
  System.ViewDistanceSet(A0_8295.outsideViewDist)
end
L0_8277.ResetValues = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8296, A1_8297, A2_8298)
  if A0_8296.occupied == 1 then
    return
  end
  A0_8296.outsideViewDist = System.ViewDistanceGet()
  A0_8296.occupied = 1
end
L0_8277.OnEnterArea = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8299, A1_8300, A2_8301)
  A0_8299:ResetValues()
  A0_8299.occupied = 0
end
L0_8277.OnLeaveArea = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8302)
  A0_8302:RegisterForAreaEvents(0)
end
L0_8277.OnShutDown = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8303, A1_8304)
  if A0_8303.occupied == 0 then
    if A0_8303.fadeamt and A0_8303.fadeamt < 1 then
      A0_8303:ResetValues()
    end
    A0_8303:OnEnterArea()
    A0_8303.fadeamt = 0
    A0_8303.lasttime = _time
    A0_8303.exitfrom = nil
  end
  A0_8303:SetTimer(0, 1)
  BroadcastEvent(A0_8303, "Enable")
end
L0_8277.Event_Enable = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8305, A1_8306)
  if A0_8305.occupied == 1 then
    A0_8305.occupied = 0
    A0_8305.fadeamt = 0
    A0_8305.lasttime = _time
    A0_8305.exitfrom = 1
  end
  A0_8305:SetTimer(0, 1)
  BroadcastEvent(A0_8305, "Disable")
end
L0_8277.Event_Disable = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8307)
  local L1_8308, L2_8309
  L2_8309 = A0_8307
  L1_8308 = A0_8307.SetTimer
  L1_8308(L2_8309, 0, 1)
  L1_8308 = A0_8307.fadeamt
  if L1_8308 then
    L1_8308 = _time
    L2_8309 = A0_8307.lasttime
    L1_8308 = L1_8308 - L2_8309
    L2_8309 = _time
    A0_8307.lasttime = L2_8309
    L2_8309 = A0_8307.fadeamt
    L2_8309 = L2_8309 + L1_8308 / A0_8307.Properties.fFadeTime
    A0_8307.fadeamt = L2_8309
    L2_8309 = A0_8307.fadeamt
    if L2_8309 >= 1 then
      A0_8307.fadeamt = 1
      L2_8309 = A0_8307.KillTimer
      L2_8309(A0_8307, 0)
    end
    L2_8309 = A0_8307.fadeamt
    if A0_8307.exitfrom then
      L2_8309 = 1 - L2_8309
    end
    L2_8309 = math.sqrt(L2_8309)
    A0_8307:FadeViewDist(L2_8309)
  else
    L2_8309 = A0_8307
    L1_8308 = A0_8307.KillTimer
    L1_8308(L2_8309, 0)
  end
end
L0_8277.OnTimer = L1_8278
L0_8277 = ViewDist
function L1_8278(A0_8310, A1_8311)
  A1_8311 = math.sqrt(A1_8311)
  System.ViewDistanceSet(Lerp(A0_8310.outsideViewDist, A0_8310.Properties.MaxViewDist, A1_8311))
end
L0_8277.FadeViewDist = L1_8278
L0_8277 = ViewDist
L1_8278 = {}
L2_8279 = {}
L3_8280 = {
  ViewDist.Event_Disable,
  "bool"
}
L2_8279.Disable = L3_8280
L3_8280 = {
  ViewDist.Event_Enable,
  "bool"
}
L2_8279.Enable = L3_8280
L1_8278.Inputs = L2_8279
L2_8279 = {}
L2_8279.Disable = "bool"
L2_8279.Enable = "bool"
L1_8278.Outputs = L2_8279
L0_8277.FlowEvents = L1_8278
