local L0_340, L1_341, L2_342, L3_343
L0_340 = {}
L0_340.type = "Trigger"
L1_341 = {}
L1_341.DimX = 5
L1_341.DimY = 5
L1_341.DimZ = 5
L1_341.bEnabled = 1
L1_341.bKillOnTrigger = 0
L1_341.bTriggerOnce = 0
L1_341.ImpulseStrength = 200
L1_341.ImpulseFadeInTime = 1
L1_341.ImpulseDuration = 1
L1_341.MinSpeed = 15
L1_341.MaxAngleOfImpact = 15
L1_341.ScriptCommand = ""
L1_341.PlaySequence = ""
L0_340.Properties = L1_341
L0_340.boat = nil
L1_341 = {}
L1_341.x = 0
L1_341.y = 0
L1_341.z = 0
L0_340.imp = L1_341
L0_340.MaxImpulse = 0
L0_340.InitImpulseTime = 0
L0_340.TotalImpulseDuration = 0
L0_340.MinSpeed2 = 0
L1_341 = {}
L1_341.Model = "Objects/Editor/T.cgf"
L0_340.Editor = L1_341
BoatTrampolineTrigger = L0_340
L0_340 = BoatTrampolineTrigger
function L1_341(A0_344)
  A0_344:OnReset()
end
L0_340.OnPropertyChange = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_345)
  A0_345.Who = nil
  A0_345.Entered = 0
  A0_345:RegisterState("Inactive")
  A0_345:RegisterState("Empty")
  A0_345:RegisterState("Occupied")
  A0_345:OnReset()
  A0_345:Activate(1)
end
L0_340.OnInit = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_346)
  local L1_347
end
L0_340.OnShutDown = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_348, A1_349)
end
L0_340.OnSave = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_350, A1_351)
end
L0_340.OnLoad = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_352)
  local L1_353, L2_354
  L1_353 = new
  L2_354 = A0_352.GetDirectionVector
  L2_354 = L2_354(A0_352)
  L1_353 = L1_353(L2_354, L2_354(A0_352))
  A0_352.imp = L1_353
  L2_354 = A0_352
  L1_353 = A0_352.Activate
  L1_353(L2_354, 1)
  L1_353 = {}
  L2_354 = A0_352.Properties
  L2_354 = L2_354.DimX
  L2_354 = -L2_354
  L2_354 = L2_354 / 2
  L1_353.x = L2_354
  L2_354 = A0_352.Properties
  L2_354 = L2_354.DimY
  L2_354 = -L2_354
  L2_354 = L2_354 / 2
  L1_353.y = L2_354
  L2_354 = A0_352.Properties
  L2_354 = L2_354.DimZ
  L2_354 = -L2_354
  L2_354 = L2_354 / 2
  L1_353.z = L2_354
  L2_354 = {}
  L2_354.x = A0_352.Properties.DimX / 2
  L2_354.y = A0_352.Properties.DimY / 2
  L2_354.z = A0_352.Properties.DimZ / 2
  A0_352:SetBBox(L1_353, L2_354)
  A0_352.Who = nil
  A0_352.UpdateCounter = 0
  A0_352.Entered = 0
  A0_352.MinSpeed2 = A0_352.Properties.MinSpeed * A0_352.Properties.MinSpeed
  A0_352.TotalImpulseDuration = A0_352.Properties.ImpulseFadeInTime + A0_352.Properties.ImpulseDuration
  if A0_352.Properties.bEnabled == 1 then
    A0_352:GotoState("Empty")
  else
    A0_352:GotoState("Inactive")
  end
end
L0_340.OnReset = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_355, A1_356)
  local L2_357, L3_358, L4_359, L5_360, L6_361, L7_362, L8_363
  L2_357 = System
  L2_357 = L2_357.LogToConsole
  L3_358 = "Something entered "
  L2_357(L3_358)
  L2_357 = A0_355.Entered
  if L2_357 ~= 0 then
    return
  end
  L2_357 = AI
  L3_358 = L2_357
  L2_357 = L2_357.RegisterWithAI
  L4_359 = A0_355.id
  L5_360 = 0
  L2_357(L3_358, L4_359, L5_360)
  if A1_356 then
    L2_357 = A1_356.type
    if L2_357 == "Vehicle" then
      L2_357 = new
      L4_359 = A1_356
      L3_358 = A1_356.GetVelocity
      L8_363 = L3_358(L4_359)
      L2_357 = L2_357(L3_358, L4_359, L5_360, L6_361, L7_362, L8_363, L3_358(L4_359))
      L3_358 = new
      L4_359 = A0_355.imp
      L3_358 = L3_358(L4_359)
      L3_358.z = 0
      L4_359 = 0
      L5_360 = 0
      L6_361 = 360
      L7_362 = L2_357.x
      if L7_362 == 0 then
        L7_362 = L2_357.y
      else
        if L7_362 ~= 0 then
          L7_362 = L3_358.x
          if L7_362 == 0 then
            L7_362 = L3_358.y
          else
            if L7_362 ~= 0 then
              L2_357.z = 0
              L7_362 = L2_357.x
              L8_363 = L2_357.x
              L7_362 = L7_362 * L8_363
              L8_363 = L2_357.y
              L8_363 = L8_363 * L2_357.y
              L4_359 = L7_362 + L8_363
              L7_362 = NormalizeVector
              L8_363 = L2_357
              L7_362(L8_363)
              L7_362 = NormalizeVector
              L8_363 = L3_358
              L7_362(L8_363)
              L7_362 = dotproduct3d
              L8_363 = L2_357
              L7_362 = L7_362(L8_363, L3_358)
              L7_362 = 1 - L7_362
              L6_361 = L7_362 * 180
          end
          else
            L6_361 = 0
            L7_362 = L2_357.z
            L8_363 = L2_357.z
            L4_359 = L7_362 * L8_363
          end
      end
      else
        L7_362 = L2_357.z
        if L7_362 ~= 0 then
          L7_362 = L3_358.z
          if L7_362 ~= 0 then
            L7_362 = L2_357.z
            L8_363 = L2_357.z
            L4_359 = L7_362 * L8_363
            L2_357.z = 1
            L7_362 = NormalizeVector
            L8_363 = L3_358
            L7_362(L8_363)
            L7_362 = dotproduct3d
            L8_363 = L2_357
            L7_362 = L7_362(L8_363, L3_358)
            L7_362 = 1 - L7_362
            L6_361 = L7_362 * 180
          else
            L6_361 = 0
            L7_362 = L2_357.x
            L8_363 = L2_357.x
            L7_362 = L7_362 * L8_363
            L8_363 = L2_357.y
            L8_363 = L8_363 * L2_357.y
            L4_359 = L7_362 + L8_363
          end
        else
          return
        end
      end
      L7_362 = System
      L7_362 = L7_362.LogToConsole
      L8_363 = "Boat entered with speed2="
      L8_363 = L8_363 .. L4_359 .. "Angle=" .. L6_361
      L7_362(L8_363)
      L7_362 = A0_355.MinSpeed2
      if L4_359 >= L7_362 then
        L7_362 = A0_355.Properties
        L7_362 = L7_362.MaxAngleOfImpact
        if L6_361 <= L7_362 then
          L7_362 = A0_355.Properties
          L7_362 = L7_362.ScriptCommand
          if L7_362 then
            L7_362 = A0_355.Properties
            L7_362 = L7_362.ScriptCommand
            if L7_362 ~= "" then
              L7_362 = dostring
              L8_363 = A0_355.Properties
              L8_363 = L8_363.ScriptCommand
              L7_362(L8_363)
            end
          end
          L7_362 = A0_355.Properties
          L7_362 = L7_362.PlaySequence
          if L7_362 ~= "" then
            L7_362 = System
            L7_362 = L7_362.LogToConsole
            L8_363 = "Playing sequence: "
            L8_363 = L8_363 .. A0_355.Properties.PlaySequence
            L7_362(L8_363)
            L7_362 = Movie
            L7_362 = L7_362.PlaySequence
            L8_363 = A0_355.Properties
            L8_363 = L8_363.PlaySequence
            L7_362(L8_363)
          end
          L7_362 = BroadcastEvent
          L8_363 = A0_355
          L7_362(L8_363, "Enter")
          A0_355.boat = A1_356
          L7_362 = A0_355.Entered
          if L7_362 == 0 then
            L7_362 = L3_358.x
            if L7_362 == 0 then
              L7_362 = L3_358.y
            elseif L7_362 ~= 0 then
              L7_362 = A0_355.boat
              L7_362 = L7_362.boat_params
              L7_362 = L7_362.fMass
              L8_363 = new
              L8_363 = L8_363(L2_357)
              L8_363.x = L3_358.x - L8_363.x
              L8_363.y = L3_358.y - L8_363.y
              L8_363.z = 0
              if L8_363.x ~= 0 or L8_363.y ~= 0 then
                NormalizeVector(L8_363)
                A0_355.boat:AddImpulseObj(L8_363, L7_362 * sqrt(L8_363.x * L8_363.x + L8_363.y * L8_363.y) * 10)
              end
            end
          end
          A0_355.Entered = 1
          L7_362 = new
          L8_363 = A0_355.boat
          L8_363 = L8_363.GetAngles
          L8_363 = L8_363(L8_363)
          L7_362 = L7_362(L8_363, L8_363(L8_363))
          A0_355.InitialAngle = L7_362
          L7_362 = _time
          A0_355.InitImpulseTime = L7_362
          L8_363 = A0_355
          L7_362 = A0_355.SetTimer
          L7_362(L8_363, 1)
          L7_362 = A0_355.boat
          L7_362 = L7_362.boat_params
          L7_362 = L7_362.fMass
          L7_362 = L7_362 / 800
          L8_363 = A0_355.Properties
          L8_363 = L8_363.ImpulseStrength
          L7_362 = L7_362 * L8_363
          A0_355.MaxImpulse = L7_362
          L7_362 = A0_355.Who
          if L7_362 == nil then
            L7_362 = player
            A0_355.Who = L7_362
            L8_363 = A0_355
            L7_362 = A0_355.GotoState
            L7_362(L8_363, "Occupied")
          end
        end
      end
    end
  end
  if A1_356 then
    L2_357 = System
    L2_357 = L2_357.LogToConsole
    L3_358 = "Player "
    L5_360 = A1_356
    L4_359 = A1_356.GetName
    L4_359 = L4_359(L5_360)
    L5_360 = " Enter BoatTrampolineTrigger "
    L7_362 = A0_355
    L6_361 = A0_355.GetName
    L6_361 = L6_361(L7_362)
    L3_358 = L3_358 .. L4_359 .. L5_360 .. L6_361
    L2_357(L3_358)
  end
end
L0_340.Event_Enter = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_364, A1_365)
  if A0_364.Entered == 0 then
    return
  end
  A0_364.Entered = 0
  if A1_365 ~= nil then
    System.LogToConsole("Player " .. A1_365:GetName() .. " Leave BoatTrampolineTrigger " .. A0_364:GetName())
  end
  BroadcastEvent(A0_364, "Leave")
end
L0_340.Event_Leave = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_366, A1_367)
  A0_366:GotoState("Empty")
  BroadcastEvent(A0_366, "Enable")
end
L0_340.Event_Enable = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_368, A1_369)
  A0_368:GotoState("Inactive")
  AI:RegisterWithAI(A0_368.id, 0)
  BroadcastEvent(A0_368, "Disable")
end
L0_340.Event_Disable = L1_341
L0_340 = BoatTrampolineTrigger
function L1_341(A0_370)
  local L1_371, L2_372
  L2_372 = A0_370.InitialAngle
  if A0_370.boat then
    if A0_370.Properties.ImpulseFadeInTime > 0 then
      L1_371 = (_time - A0_370.InitImpulseTime) / A0_370.Properties.ImpulseFadeInTime
    else
      L1_371 = 1
    end
    if L1_371 > 1 then
      L1_371 = 1
    end
    System.LogToConsole("Applying impulse =" .. A0_370.MaxImpulse * L1_371)
    A0_370.boat:AddImpulseObj(A0_370.imp, A0_370.MaxImpulse * L1_371)
    if _time - A0_370.InitImpulseTime >= A0_370.TotalImpulseDuration and 0 <= A0_370.TotalImpulseDuration then
      A0_370:KillTimer()
      A0_370:Event_Leave(A0_370, A0_370.Who)
      A0_370.boat = nil
      if 0 < A0_370.Properties.bKillOnTrigger then
        Server:RemoveEntity(A0_370.id)
      elseif 0 < A0_370.Properties.bTriggerOnce then
        A0_370:GotoState("Inactive")
      else
        A0_370:GotoState("Empty")
      end
    else
      A0_370:SetTimer(1)
    end
  end
end
L0_340.OnTimeF = L1_341
L0_340 = BoatTrampolineTrigger
L1_341 = {}
function L2_342(A0_373)
  printf("BoatTrampolineTrigger deactivating")
end
L1_341.OnBeginState = L2_342
function L2_342(A0_374)
  printf("BoatTrampolineTrigger activating")
end
L1_341.OnEndState = L2_342
L0_340.Inactive = L1_341
L0_340 = BoatTrampolineTrigger
L1_341 = {}
function L2_342(A0_375)
  local L1_376
  A0_375.Who = nil
  A0_375.UpdateCounter = 0
  A0_375.Entered = 0
end
L1_341.OnBeginState = L2_342
function L2_342(A0_377, A1_378)
  if A0_377.Who == nil then
    A0_377.Who = A1_378
    A0_377:GotoState("Occupied")
  end
end
L1_341.OnContact = L2_342
function L2_342(A0_379, A1_380, A2_381)
  if A0_379.Who == nil then
    A0_379.Who = A1_380
    A0_379:GotoState("Occupied")
  end
end
L1_341.OnEnterArea = L2_342
L2_342 = BoatTrampolineTrigger
L2_342 = L2_342.OnTimeF
L1_341.OnTimer = L2_342
L0_340.Empty = L1_341
L0_340 = BoatTrampolineTrigger
L1_341 = {}
function L2_342(A0_382)
  A0_382:Event_Enter(A0_382.Who)
  System.LogToConsole("Enter occupied")
end
L1_341.OnBeginState = L2_342
function L2_342(A0_383, A1_384)
end
L1_341.OnContact = L2_342
L2_342 = BoatTrampolineTrigger
L2_342 = L2_342.OnTimeF
L1_341.OnTimer = L2_342
L0_340.Occupied = L1_341
L0_340 = BoatTrampolineTrigger
L1_341 = {}
L2_342 = {}
L3_343 = {
  BoatTrampolineTrigger.Event_Disable,
  "bool"
}
L2_342.Disable = L3_343
L3_343 = {
  BoatTrampolineTrigger.Event_Enable,
  "bool"
}
L2_342.Enable = L3_343
L3_343 = {
  BoatTrampolineTrigger.Event_Enter,
  "bool"
}
L2_342.Enter = L3_343
L3_343 = {
  BoatTrampolineTrigger.Event_Leave,
  "bool"
}
L2_342.Leave = L3_343
L1_341.Inputs = L2_342
L2_342 = {}
L2_342.Disable = "bool"
L2_342.Enable = "bool"
L2_342.Enter = "bool"
L2_342.Leave = "bool"
L1_341.Outputs = L2_342
L0_340.FlowEvents = L1_341
