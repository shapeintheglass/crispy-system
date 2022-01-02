local L0_9384, L1_9385, L2_9386
L0_9384 = {}
L1_9385 = {}
L0_9384.Client = L1_9385
L1_9385 = {}
L0_9384.Server = L1_9385
L1_9385 = {}
L1_9385.bPickable = 1
L0_9384.Properties = L1_9385
L1_9385 = {}
L1_9385.Icon = "Item.bmp"
L1_9385.IconOnTop = 1
L0_9384.Editor = L1_9385
VehiclePartDetached = L0_9384
L0_9384 = VehiclePartDetached
function L1_9385(A0_9387, A1_9388)
  local L2_9389
  L2_9389 = 1
  return L2_9389
end
L0_9384.IsUsable = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9390, A1_9391)
  local L2_9392
  L2_9392 = "@grab_object"
  return L2_9392
end
L0_9384.GetUsableMessage = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9393)
  A0_9393:OnReset()
end
L0_9384.OnInit = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9394)
  A0_9394:OnReset()
end
L0_9384.OnPropertyChange = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9395)
  local L1_9396
end
L0_9384.OnReset = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9397, A1_9398)
end
L0_9384.SetObjectModel = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9399)
  local L1_9400
end
L0_9384.OnShutDown = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9401, A1_9402)
end
L0_9384.Event_TargetReached = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9403, A1_9404)
end
L0_9384.Event_Enable = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9405, A1_9406)
end
L0_9384.Event_Disable = L1_9385
L0_9384 = VehiclePartDetached
function L1_9385(A0_9407, A1_9408)
  local L2_9409
  L2_9409 = 100
  return A0_9407:GetTimeSinceLastSeen() * L2_9409 + L2_9409
end
L0_9384.GetReturnToPoolWeight = L1_9385
L0_9384 = VehiclePartDetached
L1_9385 = {}
L2_9386 = {}
L1_9385.Inputs = L2_9386
L2_9386 = {}
L1_9385.Outputs = L2_9386
L0_9384.FlowEvents = L1_9385
