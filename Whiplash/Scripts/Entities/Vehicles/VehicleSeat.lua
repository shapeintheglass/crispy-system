local L0_9447, L1_9448
L0_9447 = {}
VehicleSeat = L0_9447
L0_9447 = VehicleSeat
function L1_9448(A0_9449, A1_9450, A2_9451)
  A0_9449.vehicleId = A1_9450.id
  A0_9449.seatId = A2_9451
  A0_9449.status = 0
  A0_9449.playerId = 0
  if System.GetEntity(A0_9449.vehicleId).vehicle then
    System.GetEntity(A0_9449.vehicleId).vehicle:AddSeat(A0_9449)
  end
end
L0_9447.Init = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9452)
  local L1_9453
end
L0_9447.OnReset = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9454, A1_9455)
  return A0_9454.seat:IsFree(A1_9455)
end
L0_9447.IsFree = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9456)
  local L1_9457, L2_9458
  L1_9457 = System
  L1_9457 = L1_9457.GetEntity
  L2_9458 = A0_9456.vehicleId
  L1_9457 = L1_9457(L2_9458)
  L2_9458 = {}
  L2_9458.x = 0
  L2_9458.y = 0
  L2_9458.z = 0
  if A0_9456.exitHelper then
    L2_9458 = L1_9457.vehicle:MultiplyWithWorldTM(L1_9457:GetVehicleHelperPos(A0_9456.exitHelper))
  elseif A0_9456.enterHelper then
    L2_9458 = L1_9457.vehicle:MultiplyWithWorldTM(L1_9457:GetVehicleHelperPos(A0_9456.enterHelper))
  end
  if LengthSqVector(L2_9458) == 0 then
    CopyVector(L2_9458, L1_9457.State.pos)
    L2_9458.z = L2_9458.z + 1
  end
  return L2_9458
end
L0_9447.GetExitPos = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9459, A1_9460)
  if A0_9459.Weapons and A0_9459.Weapons[A1_9460] then
    return A0_9459.seat:GetWeapon(i)
  else
    Log("Error: weapon index #%s invalid.", tostring(A1_9460))
  end
end
L0_9447.GetWeaponId = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9461)
  return count(A0_9461.Weapons)
end
L0_9447.GetWeaponCount = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9462)
  local L1_9463
  L1_9463 = true
  return L1_9463
end
L0_9447.IsPassengerReady = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9464)
  local L1_9465
  L1_9465 = A0_9464.isRemote
  return L1_9465
end
L0_9447.IsPassengerRemote = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9466, A1_9467)
end
L0_9447.OnUpdate = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9468)
  local L1_9469
end
L0_9447.OnUpdateView = L1_9448
L0_9447 = VehicleSeat
function L1_9448(A0_9470, A1_9471)
end
L0_9447.LoadPassenger = L1_9448
