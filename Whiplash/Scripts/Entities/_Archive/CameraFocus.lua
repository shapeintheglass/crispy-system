local L0_385, L1_386, L2_387, L3_388
L0_385 = {}
L0_385.type = "CameraFocus"
L1_386 = {}
L1_386.Model = "Objects/Editor/T.cgf"
L0_385.Editor = L1_386
CameraFocus = L0_385
L0_385 = CameraFocus
function L1_386(A0_389)
  A0_389:Activate(0)
end
L0_385.OnInit = L1_386
L0_385 = CameraFocus
function L1_386(A0_390)
  A0_390:GotoState("Inactive")
end
L0_385.OnReset = L1_386
L0_385 = CameraFocus
function L1_386(A0_391, A1_392)
end
L0_385.OnContact = L1_386
L0_385 = CameraFocus
function L1_386(A0_393, A1_394)
end
L0_385.OnDamage = L1_386
L0_385 = CameraFocus
function L1_386(A0_395)
  local L1_396
end
L0_385.OnShutDown = L1_386
L0_385 = CameraFocus
function L1_386(A0_397, A1_398, A2_399)
end
L0_385.OnEvent = L1_386
L0_385 = CameraFocus
function L1_386(A0_400, A1_401)
end
L0_385.OnSave = L1_386
L0_385 = CameraFocus
function L1_386(A0_402, A1_403)
end
L0_385.OnLoad = L1_386
L0_385 = CameraFocus
function L1_386(A0_404, A1_405)
end
L0_385.OnWrite = L1_386
L0_385 = CameraFocus
function L1_386(A0_406, A1_407)
end
L0_385.OnRead = L1_386
L0_385 = CameraFocus
function L1_386(A0_408)
  A0_408:GotoState("Active")
end
L0_385.Event_Enable = L1_386
L0_385 = CameraFocus
function L1_386(A0_409)
  A0_409:GotoState("Inactive")
end
L0_385.Event_Disable = L1_386
L0_385 = CameraFocus
L1_386 = {}
function L2_387(A0_410)
  A0_410:Activate(1)
end
L1_386.OnBeginState = L2_387
function L2_387(A0_411)
  A0_411:Activate(0)
end
L1_386.OnEndState = L2_387
function L2_387(A0_412)
  local L1_413
end
L1_386.OnUpdate = L2_387
L0_385.Active = L1_386
L0_385 = CameraFocus
L1_386 = {}
function L2_387(A0_414)
  A0_414:Activate(0)
end
L1_386.OnBeginState = L2_387
L0_385.Inactive = L1_386
L0_385 = CameraFocus
L1_386 = {}
L2_387 = {}
L3_388 = {
  CameraFocus.Event_Disable,
  "bool"
}
L2_387.Disable = L3_388
L3_388 = {
  CameraFocus.Event_Enable,
  "bool"
}
L2_387.Enable = L3_388
L1_386.Inputs = L2_387
L2_387 = {}
L2_387.Disable = "bool"
L2_387.Enable = "bool"
L1_386.Outputs = L2_387
L0_385.FlowEvents = L1_386
