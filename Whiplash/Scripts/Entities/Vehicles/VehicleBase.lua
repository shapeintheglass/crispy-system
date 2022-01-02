Script.ReloadScript("Scripts/Utils/Math.lua")
Script.ReloadScript("Scripts/Entities/Vehicles/VehicleSeat.lua")
VehicleBase = {
  State = {
    pos = {},
    aiDriver = nil
  },
  Seats = {},
  AI = {},
  Client = {},
  Server = {},
  Hit = {}
}
function VehicleBase.HasDriver(A0_9169)
  for _FORV_4_, _FORV_5_ in pairs(A0_9169.Seats) do
    if _FORV_5_.isDriver and _FORV_5_.passengerId then
      return true
    end
  end
  return false
end
function VehicleBase.GetDriverId(A0_9170)
  if A0_9170.Seats and A0_9170.Seats[1] then
    return A0_9170.Seats[1].seat:GetPassengerId()
  end
  return nil
end
function VehicleBase.Server.OnSpawnComplete(A0_9171)
  A0_9171.vehicle:OnSpawnComplete()
end
function GetNextAvailableSeat(A0_9172)
  for _FORV_4_, _FORV_5_ in pairs(A0_9172) do
    if not _FORV_5_.seat:GetPassengerId() then
      return _FORV_4_
    end
  end
  return -1
end
function VehicleBase.InitSeats(A0_9173)
  local L1_9174, L2_9175, L3_9176, L4_9177, L5_9178
  if L1_9174 then
    for L4_9177, L5_9178 in L1_9174(L2_9175) do
      mergef(L5_9178, VehicleSeat, 1)
      L5_9178:Init(A0_9173, L4_9177)
    end
  end
end
function VehicleBase.InitVehicleBase(A0_9179)
  A0_9179:OnPropertyChange()
  if A0_9179.Properties.bSyncPhysics == 0 then
    CryAction.DontSyncPhysics(A0_9179.id)
  end
end
function VehicleBase.OnPropertyChange(A0_9180)
  if A0_9180.OnPropertyChangeExtra then
    A0_9180:OnPropertyChangeExtra()
  end
end
function VehicleBase.DestroyVehicleBase(A0_9181)
  if A0_9181.DestroyAI then
    A0_9181:DestroyAI()
  end
end
function VehicleBase.GetExitPos(A0_9182, A1_9183)
  local L2_9184
  L2_9184 = A0_9182.Seats
  L2_9184 = L2_9184[A1_9183]
  if L2_9184 == nil then
    L2_9184 = Log
    L2_9184("VehicleBase:GetExitPos(seatId) - Invalid seat id: " .. tostring(A1_9183))
    return
  end
  L2_9184 = nil
  if A0_9182.Seats[A1_9183].exitHelper then
    L2_9184 = A0_9182.vehicle:MultiplyWithWorldTM(A0_9182:GetVehicleHelperPos(A0_9182.Seats[A1_9183].exitHelper))
  else
    L2_9184 = A0_9182.vehicle:MultiplyWithWorldTM(A0_9182:GetVehicleHelperPos(A0_9182.Seats[A1_9183].enterHelper))
  end
  return L2_9184
end
function VehicleBase.GetSeatPos(A0_9185, A1_9186)
  local L2_9187, L3_9188
  if A1_9186 == -1 then
    L2_9187 = Log
    L3_9188 = "Error: VehicleBase:GetSeatPos(seatId) - seatId -1 is invalid"
    L2_9187(L3_9188)
    L2_9187 = {}
    L2_9187.x = 0
    L2_9187.y = 0
    L2_9187.z = 0
    return L2_9187
  else
    L2_9187 = A0_9185.Seats
    L2_9187 = L2_9187[A1_9186]
    L2_9187 = L2_9187.enterHelper
    L3_9188 = nil
    if A0_9185.vehicle:HasHelper(L2_9187) then
      L3_9188 = A0_9185.vehicle:GetHelperWorldPos(L2_9187)
    else
      L3_9188 = A0_9185:GetHelperPos(L2_9187, HELPER_WORLD)
    end
    return L3_9188
  end
end
function VehicleBase.OnUsed(A0_9189, A1_9190, A2_9191)
  if not CryAction.IsClient() then
    return
  end
  A0_9189.vehicle:OnUsed(A1_9190.id, A2_9191)
end
function VehicleBase.IsUsable(A0_9192, A1_9193)
  if A1_9193:IsOnVehicle() then
    return 0
  end
  if A0_9192.vehicle:IsUsable(A1_9193.id) ~= 0 then
    return (A0_9192.vehicle:IsUsable(A1_9193.id))
  end
  return 0
end
function VehicleBase.CanEnter(A0_9194, A1_9195)
  if g_gameRules and g_gameRules.CanEnterVehicle then
    return g_gameRules:CanEnterVehicle(A0_9194, A1_9195)
  end
end
function VehicleBase.GetSeat(A0_9196, A1_9197)
  if A0_9196.vehicle:GetSeatForPassenger(A1_9197) then
    return A0_9196.Seats[A0_9196.vehicle:GetSeatForPassenger(A1_9197)]
  end
  return nil
end
function VehicleBase.GetSeatByIndex(A0_9198, A1_9199)
  return A0_9198.Seats[A1_9199]
end
function VehicleBase.GetSeatId(A0_9200, A1_9201)
  return A0_9200.vehicle:GetSeatForPassenger(A1_9201)
end
function VehicleBase.ResetVehicleBase(A0_9202)
  A0_9202.State.pos = A0_9202:GetWorldPos(A0_9202.State.pos)
  if A0_9202.AIDriver then
    A0_9202:AIDriver(0)
  end
  A0_9202.State.aiDriver = nil
  A0_9202:OnPropertyChange()
  if A0_9202.Seats then
    for _FORV_4_, _FORV_5_ in pairs(A0_9202.Seats) do
      if _FORV_5_ and _FORV_5_.OnReset then
        _FORV_5_:OnReset()
      end
    end
  end
  if A0_9202.ResetAI then
    A0_9202:ResetAI()
  end
end
function VehicleBase.OnShutDown(A0_9203)
  Game.RemoveTacticalEntity(A0_9203.id, eTacticalEntity_Vehicle)
end
function VehicleBase.OnDestroy(A0_9204)
  A0_9204:DestroyVehicleBase()
end
function VehicleBase.UseCustomFiring(A0_9205, A1_9206)
  local L2_9207
  L2_9207 = false
  return L2_9207
end
function VehicleBase.GetFiringPos(A0_9208, A1_9209)
  return g_Vectors.v000
end
function VehicleBase.GetFiringVelocity(A0_9210)
  return g_Vectors.v000
end
function VehicleBase.OnAIShoot(A0_9211)
  local L1_9212
  L1_9212 = A0_9211.Seats
  L1_9212 = L1_9212[1]
  L1_9212 = L1_9212.GetWeaponId
  L1_9212 = L1_9212(L1_9212, 1)
  if L1_9212 then
    System.GetEntity(L1_9212):StartFire(A0_9211.id)
    System.GetEntity(L1_9212):StopFire()
  end
end
function VehicleBase.PrepareSeatMountedWeapon(A0_9213, A1_9214)
  local L2_9215, L3_9216
  L3_9216 = A0_9213
  L2_9215 = A0_9213.GetSeat
  L2_9215 = L2_9215(L3_9216, A1_9214.id)
  if L2_9215 then
    L3_9216 = A1_9214.PrepareForMountedWeaponUse
    if L3_9216 then
      L3_9216 = L2_9215.seat
      L3_9216 = L3_9216.GetWeaponId
      L3_9216 = L3_9216(L3_9216, 1)
      if L3_9216 then
        A1_9214:PrepareForMountedWeaponUse(L3_9216)
      end
    end
  end
end
function VehicleBase.IsGunner(A0_9217, A1_9218)
  if A0_9217:GetSeat(A1_9218) and A0_9217:GetSeat(A1_9218).Weapons then
    return true
  end
  return false
end
function VehicleBase.IsDriver(A0_9219, A1_9220)
  if A0_9219:GetSeat(A1_9220) and A0_9219:GetSeat(A1_9220).isDriver then
    return true
  end
  return false
end
function VehicleBase.GetVehicleHelperPos(A0_9221, A1_9222)
  local L2_9223
  A1_9222 = A1_9222 or ""
  L2_9223 = nil
  if A0_9221.vehicle:HasHelper(A1_9222) then
    L2_9223 = A0_9221.vehicle:GetHelperPos(A1_9222, true)
  else
    L2_9223 = A0_9221:GetHelperPos(A1_9222, HELPER_LOCAL)
  end
  return L2_9223
end
function VehicleBase.RequestSeatByPosition(A0_9224, A1_9225)
  local L2_9226, L3_9227, L4_9228, L5_9229, L6_9230, L7_9231, L8_9232, L9_9233
  L2_9226 = System
  L2_9226 = L2_9226.GetEntity
  L3_9227 = A1_9225
  L2_9226 = L2_9226(L3_9227)
  L3_9227 = L2_9226
  L2_9226 = L2_9226.GetWorldPos
  L2_9226 = L2_9226(L3_9227)
  L3_9227 = 10
  for L7_9231, L8_9232 in L4_9228(L5_9229) do
    L9_9233 = L8_9232.enterHelper
    if L9_9233 then
      L9_9233 = L8_9232.passengerId
      if not L9_9233 then
        L9_9233 = L8_9232.useBoundsForEntering
        if L9_9233 ~= nil then
          L9_9233 = L8_9232.useBoundsForEntering
        else
          if L9_9233 == true then
            L9_9233 = A0_9224.vehicle
            L9_9233 = L9_9233.IsInsideRadius
            L9_9233 = L9_9233(L9_9233, L2_9226, 1)
            if L9_9233 then
              return L7_9231
            end
        end
        else
          L9_9233 = nil
          if A0_9224.vehicle:HasHelper(L8_9232.enterHelper) then
            L9_9233 = A0_9224.vehicle:GetHelperWorldPos(L8_9232.enterHelper)
          else
            L9_9233 = A0_9224:GetHelperPos(L8_9232.enterHelper, HELPER_WORLD)
          end
          if L3_9227 >= DistanceSqVectors(L2_9226, L9_9233) then
            return L7_9231
          end
        end
      end
    end
  end
  return L4_9228
end
function VehicleBase.RequestClosestSeat(A0_9234, A1_9235)
  local L2_9236, L3_9237, L4_9238, L5_9239, L6_9240, L7_9241, L8_9242, L9_9243, L10_9244
  L2_9236 = System
  L2_9236 = L2_9236.GetEntity
  L3_9237 = A1_9235
  L2_9236 = L2_9236(L3_9237)
  L3_9237 = L2_9236
  L2_9236 = L2_9236.GetWorldPos
  L2_9236 = L2_9236(L3_9237)
  L3_9237 = 100000
  L4_9238 = nil
  for L8_9242, L9_9243 in L5_9239(L6_9240) do
    L10_9244 = L9_9243.enterHelper
    if L10_9244 then
      L10_9244 = L9_9243.IsFree
      L10_9244 = L10_9244(L9_9243, A1_9235)
      if L10_9244 then
        L10_9244 = nil
        if A0_9234.vehicle:HasHelper(L9_9243.enterHelper) then
          L10_9244 = A0_9234.vehicle:GetHelperWorldPos(L9_9243.enterHelper)
        else
          L10_9244 = A0_9234:GetHelperPos(L9_9243.enterHelper, HELPER_WORLD)
        end
        if L3_9237 >= DistanceSqVectors(L2_9236, L10_9244) then
          L3_9237 = DistanceSqVectors(L2_9236, L10_9244)
          L4_9238 = L8_9242
        end
      end
    end
  end
  if L4_9238 then
    if L5_9239 then
      L8_9242 = L4_9238
      L5_9239(L6_9240)
    end
  elseif L5_9239 then
    L5_9239(L6_9240)
  end
  return L4_9238
end
function VehicleBase.RequestMostPrioritarySeat(A0_9245, A1_9246)
  local L2_9247, L3_9248, L4_9249, L5_9250, L6_9251, L7_9252, L8_9253
  L2_9247 = System
  L2_9247 = L2_9247.GetEntity
  L3_9248 = A1_9246
  L2_9247 = L2_9247(L3_9248)
  L3_9248 = L2_9247
  L2_9247 = L2_9247.GetWorldPos
  L2_9247 = L2_9247(L3_9248)
  L3_9248 = nil
  L4_9249 = A0_9245.Seats
  L4_9249 = L4_9249[1]
  if L5_9250 then
    return L5_9250
  end
  for L8_9253, _FORV_9_ in L5_9250(L6_9251) do
    if _FORV_9_.enterHelper and _FORV_9_.Weapons and _FORV_9_:IsFree(A1_9246) then
      if AI then
        AI.LogEvent(System.GetEntity(A1_9246):GetName() .. " found seat " .. L8_9253)
      end
      return L8_9253
    end
  end
  for L8_9253, _FORV_9_ in L5_9250(L6_9251) do
    if _FORV_9_.enterHelper and _FORV_9_:IsFree(A1_9246) then
      if AI then
        AI.LogEvent(System.GetEntity(A1_9246):GetName() .. " found seat " .. L8_9253)
      end
      return L8_9253
    end
  end
  return
end
function VehicleBase.RequestSeat(A0_9254, A1_9255)
  for _FORV_7_, _FORV_8_ in pairs(A0_9254.Seats) do
    if _FORV_8_:IsFree(A1_9255) then
      return _FORV_7_
    end
  end
  return nil
end
function VehicleBase.EnterVehicle(A0_9256, A1_9257, A2_9258, A3_9259)
  return A0_9256.vehicle:EnterVehicle(A1_9257, A2_9258, A3_9259)
end
function VehicleBase.LeaveVehicle(A0_9260, A1_9261, A2_9262)
  if AI then
    AI.Signal(SIGNALFILTER_SENDER, 0, "exited_vehicle", A1_9261)
  end
  return A0_9260.vehicle:ExitVehicle(A1_9261)
end
function VehicleBase.ReserveSeat(A0_9263, A1_9264, A2_9265)
  local L3_9266
  L3_9266 = A0_9263.Seats
  L3_9266 = L3_9266[A2_9265]
  L3_9266.passengerId = A1_9264
end
function VehicleBase.IsDead(A0_9267)
  return A0_9267.vehicle:IsDestroyed()
end
function VehicleBase.GetWeaponVelocity(A0_9268, A1_9269)
  return A0_9268:GetFiringVelocity()
end
function VehicleBase.OnShoot(A0_9270, A1_9271, A2_9272)
  if A1_9271.userId and A0_9270:GetSeat(A1_9271.userId) and A0_9270:GetSeat(A1_9271.userId).Animations and A0_9270:GetSeat(A1_9271.userId).Animations.weaponRecoil then
    if System.GetEntity(A1_9271.userId):IsDead() then
      return
    end
    System.GetEntity(A1_9271.userId):StartAnimation(0, A0_9270:GetSeat(A1_9271.userId).Animations.weaponRecoil, 0, 1.0E-9, 1, false)
  end
  return true
end
function VehicleBase.SpawnVehicleBase(A0_9273)
  if A0_9273.OnPreSpawn then
    A0_9273:OnPreSpawn()
  end
  if _G[A0_9273.class .. "Properties"] then
    mergef(A0_9273, _G[A0_9273.class .. "Properties"], 1)
  end
  if A0_9273.OnPreInit then
    A0_9273:OnPreInit()
  end
  A0_9273:InitVehicleBase()
  A0_9273.ProcessMovement = nil
  if A0_9273.OnPostSpawn then
    A0_9273:OnPostSpawn()
  end
  if A0_9273.AIMovementAbility and A0_9273.Properties.aiSpeedMult and A0_9273.Properties.aiSpeedMult ~= 1 then
    if A0_9273.AIMovementAbility.walkSpeed then
      A0_9273.AIMovementAbility.walkSpeed = A0_9273.AIMovementAbility.walkSpeed * A0_9273.Properties.aiSpeedMult
    end
    if A0_9273.AIMovementAbility.runSpeed then
      A0_9273.AIMovementAbility.runSpeed = A0_9273.AIMovementAbility.runSpeed * A0_9273.Properties.aiSpeedMult
    end
    if A0_9273.AIMovementAbility.sprintSpeed then
      A0_9273.AIMovementAbility.sprintSpeed = A0_9273.AIMovementAbility.sprintSpeed * A0_9273.Properties.aiSpeedMult
    end
    if A0_9273.AIMovementAbility.maneuverSpeed then
      A0_9273.AIMovementAbility.maneuverSpeed = A0_9273.AIMovementAbility.maneuverSpeed * A0_9273.Properties.aiSpeedMult
    end
  end
  if A0_9273.InitAI then
    A0_9273:InitAI()
  end
  A0_9273:InitSeats()
  A0_9273:OnReset()
  ApplyCollisionFiltering(A0_9273, GetCollisionFiltering(A0_9273))
  Game.AddTacticalEntity(A0_9273.id, eTacticalEntity_Vehicle)
end
function VehicleBase.Client.OnHit(A0_9274, A1_9275)
end
function VehicleBase.ProcessPassengerDamage(A0_9276, A1_9277, A2_9278, A3_9279, A4_9280, A5_9281)
  return A0_9276.vehicle:ProcessPassengerDamage(A1_9277, A2_9278, A3_9279, A4_9280, A5_9281)
end
function VehicleBase.OnActorSitDown(A0_9282, A1_9283, A2_9284)
  local L3_9285, L4_9286
  L3_9285 = System
  L3_9285 = L3_9285.GetEntity
  L4_9286 = A2_9284
  L3_9285 = L3_9285(L4_9286)
  if not L3_9285 then
    L4_9286 = Log
    L4_9286("Error: entity for player id <%s> could not be found. %s", tostring(A2_9284))
    return
  end
  L4_9286 = A0_9282.Seats
  L4_9286 = L4_9286[A1_9283]
  if not L4_9286 then
    Log("Error: entity for player id <%s> could not be found!", tostring(A2_9284))
    return
  end
  if g_gameRules.OnEnterVehicleSeat then
    g_gameRules:OnEnterVehicleSeat(A0_9282, L4_9286, A2_9284)
  end
  if L4_9286.isDriver then
    A0_9282:SetTimer(AISOUND_TIMER, AISOUND_TIMEOUT)
  end
  L4_9286.passengerId = A2_9284
  L3_9285.vehicleId = A0_9282.id
  L3_9285.AI.theVehicle = A0_9282
  if CryAction.HasAI(A2_9284) and L4_9286.isDriver then
    A0_9282.State.aiDriver = 1
    if A0_9282.AIDriver then
      if L3_9285.actor and L3_9285.actor:GetHealth() > 0 then
        A0_9282:AIDriver(1)
      else
        A0_9282:AIDriver(0)
      end
    end
  end
  if not L3_9285.ai then
    if A0_9282.hidesUser == 1 then
      if AI and not (L4_9286.Sounds and 0 < L4_9286.seat:GetWeaponCount() and L4_9286.Sounds.inout == 1) then
        AI.ChangeParameter(A2_9284, AIPARAM_INVISIBLE, 1)
      end
    end
    if AI and L4_9286.isDriver then
      CopyVector(g_SignalData.point, g_Vectors.v000)
      CopyVector(g_SignalData.point2, g_Vectors.v000)
      g_SignalData.iValue = AIUSEOP_VEHICLE
      g_SignalData.iValue2 = 1
      g_SignalData.fValue = 1
      g_SignalData.id = L4_9286.vehicleId
      AI.Signal(SIGNALFILTER_LEADER, 1, "ORD_USE", A2_9284, g_SignalData)
    end
    A0_9282:EnableMountedWeapons(false)
  end
  if L4_9286.isDriver and AI.GetFactionOf(L3_9285.id) and A0_9282.ChangeFaction then
    A0_9282:ChangeFaction(L3_9285, 1)
  else
  end
  if AI then
    if 0 < L4_9286.seat:GetWeaponCount() then
      AI.Signal(SIGNALFILTER_SENDER, 1, "entered_vehicle_gunner", A2_9284)
    else
      AI.Signal(SIGNALFILTER_SENDER, 1, "entered_vehicle", A2_9284)
    end
    AI.Signal(SIGNALFILTER_SENDER, 9, "ENTERING_END", A2_9284)
  end
end
function VehicleBase.OnActorChangeSeat(A0_9287, A1_9288, A2_9289)
  local L3_9290
  L3_9290 = Log
  L3_9290("ai changed a seat")
  L3_9290 = A0_9287.GetSeat
  L3_9290 = L3_9290(A0_9287, A1_9288)
  if not L3_9290 then
    Log("Error: VehicleBase:OnActorChangeSeat() could not find passenger id %s on the vehicle", tostring(A1_9288))
    return
  end
  L3_9290.passengerId = nil
  if g_gameRules and g_gameRules.OnLeaveVehicleSeat then
    g_gameRules:OnLeaveVehicleSeat(A0_9287, L3_9290, A1_9288, A2_9289)
  end
  if not passenger then
    return
  end
  passenger.vehicleId = nil
  passenger.vehicleSeatId = nil
  if passenger.ai and passenger:IsDead() then
    return
  end
  if L3_9290.isDriver then
    A0_9287.State.aiDriver = nil
    if passenger.ai and A2_9289 and A0_9287.AIDriver then
      A0_9287:AIDriver(0)
    end
  end
  BroadcastEvent(A0_9287, "PassengerExit")
end
function VehicleBase.OnActorStandUp(A0_9291, A1_9292, A2_9293)
  local L3_9294
  L3_9294 = A0_9291.GetSeat
  L3_9294 = L3_9294(A0_9291, A1_9292)
  if not L3_9294 then
    Log("Error: VehicleBase:OnActorStandUp() could not find passenger id %s on the vehicle", tostring(A1_9292))
    return
  end
  L3_9294.passengerId = nil
  if g_gameRules and g_gameRules.OnLeaveVehicleSeat then
    g_gameRules:OnLeaveVehicleSeat(A0_9291, L3_9294, A1_9292, A2_9293)
  end
  if not System.GetEntity(A1_9292) then
    return
  end
  System.GetEntity(A1_9292).vehicleId = nil
  System.GetEntity(A1_9292).vehicleSeatId = nil
  if System.GetEntity(A1_9292).ai and System.GetEntity(A1_9292):IsDead() then
    return
  end
  if L3_9294.isDriver then
    A0_9291.State.aiDriver = nil
    if A2_9293 and A0_9291.AIDriver and CryAction.HasAI(A1_9292) then
      A0_9291:AIDriver(0)
    end
  end
  if System.GetEntity(A1_9292).ai ~= 1 and A2_9293 then
    if A0_9291.ChangeFaction then
      A0_9291:ChangeFaction()
    end
    if AI then
      AI.Signal(SIGNALFILTER_LEADERENTITY, 0, "ORD_LEAVE_VEHICLE", A1_9292)
      AI.Signal(SIGNALFILTER_GROUPONLY, 0, "ORDER_EXIT_VEHICLE", A1_9292)
      System.GetEntity(A1_9292).AI.theVehicle = nil
    end
  end
  if A0_9291.AI.unloadCount then
    A0_9291.AI.unloadCount = A0_9291.AI.unloadCount - 1
  end
  if A0_9291.AI.unloadCount == 0 then
    AI.Signal(SIGNALFILTER_SENDER, 9, "UNLOAD_DONE", A0_9291.id)
  end
  if A2_9293 and System.GetEntity(A1_9292).AI.theVehicle ~= nil and AI then
    AI.Signal(SIGNALFILTER_SENDER, 0, "EXIT_VEHICLE_STAND", System.GetEntity(A1_9292).id)
  end
  if not System.GetEntity(A1_9292).ai then
    if AI then
      AI.ChangeParameter(A1_9292, AIPARAM_INVISIBLE, 0)
    end
    A0_9291:EnableMountedWeapons(true)
  end
  if AI then
    AI.Signal(SIGNALFILTER_SENDER, 9, "EXITING_END", A1_9292)
  end
  BroadcastEvent(A0_9291, "PassengerExit")
end
function VehicleBase.EnableMountedWeapons(A0_9295, A1_9296)
  local L2_9297, L3_9298, L4_9299, L5_9300, L6_9301, L7_9302, L8_9303, L9_9304, L10_9305, L11_9306, L12_9307
  if not L2_9297 then
    return
  end
  if not L2_9297 then
    return
  end
  for L5_9300, L6_9301 in L2_9297(L3_9298) do
    L7_9302 = L6_9301.seat
    L7_9302 = L7_9302.GetWeaponCount
    L7_9302 = L7_9302(L8_9303)
    for L11_9306 = 1, L7_9302 do
      L12_9307 = L6_9301.seat
      L12_9307 = L12_9307.GetWeaponId
      L12_9307 = L12_9307(L12_9307, L11_9306)
      if L12_9307 then
        if A1_9296 then
          AI.SetSmartObjectState(L12_9307, "Idle")
        else
          AI.SetSmartObjectState(L12_9307, "Busy")
        end
      end
    end
  end
end
