local L0_9308, L1_9309, L2_9310
L0_9308 = {}
L1_9309 = {}
L1_9309.groupid = 173
L1_9309.aibehavior_behaviour = "TankIdle"
L1_9309.bCircularPath = 0
L1_9309.PathName = ""
L1_9309.FormationType = ""
L1_9309.bAutoDisable = 1
L0_9308.PropertiesInstance = L1_9309
L1_9309 = {}
L1_9309.soclasses_SmartObjectClass = ""
L1_9309.bAutoGenAIHidePts = 0
L1_9309.bFactionHostility = 1
L1_9309.aicharacter_character = "Tank"
L1_9309.leaderName = ""
L1_9309.followDistance = 5
L1_9309.attackrange = 100
L1_9309.commrange = 100
L1_9309.accuracy = 1
L1_9309.bCanUsePrimaryWeapon = 1
L1_9309.bCanUseSecondaryWeapon = 0
L2_9310 = {}
L2_9310.FOVPrimary = -1
L2_9310.FOVSecondary = -1
L2_9310.sightrange = 100
L2_9310.sightrangeVehicle = -1
L2_9310.stanceScale = 1
L1_9309.Perception = L2_9310
L2_9310 = {}
L2_9310.bHostileEnable = 0
L2_9310.hostileRadius = 0
L2_9310.hostilePressureInc = 0
L2_9310.bFriendlyEnable = 0
L2_9310.friendlyRadius = 0
L2_9310.friendlyPressureDec = 0
L1_9309.AIPressureAOE = L2_9310
L0_9308.Properties = L1_9309
L1_9309 = {}
L0_9308.AI = L1_9309
L1_9309 = {}
L1_9309.walkSpeed = 5
L1_9309.runSpeed = 8
L1_9309.sprintSpeed = 10
L1_9309.maneuverSpeed = 4
L1_9309.b3DMove = 0
L1_9309.minTurnRadius = 1
L1_9309.maxTurnRadius = 30
L1_9309.maxAccel = 1000000
L1_9309.maxDecel = 1000000
L1_9309.usePathfinder = 1
L2_9310 = AIPATH_DEFAULT
L1_9309.pathType = L2_9310
L1_9309.passRadius = 3
L1_9309.pathLookAhead = 5
L1_9309.pathRadius = 2
L1_9309.maneuverTrh = 2
L1_9309.velDecay = 30
L0_9308.AIMovementAbility = L1_9309
L1_9309 = {}
L0_9308.AIFireProperties = L1_9309
L0_9308.AISoundRadius = 120
L0_9308.hidesUser = 1
L0_9308.forgetTimeTarget = 16
L0_9308.forgetTimeSeek = 20
L0_9308.forgetTimeMemory = 20
VehicleBaseAI = L0_9308
L0_9308 = VehicleBaseAI
function L1_9309(A0_9311, A1_9312)
  if not A0_9311.State then
    return
  end
  if not AI then
    return
  end
  if A1_9312 == 0 then
    AI.LogEvent(" >>>> VehicleBaseAI:AIDriver disabling " .. A0_9311:GetName())
    A0_9311:ChangeFaction()
    A0_9311:TriggerEvent(AIEVENT_DRIVER_OUT)
    A0_9311.State.aiDriver = nil
    A0_9311:EnableMountedWeapons(true)
  else
    if A0_9311.health and 0 >= A0_9311.health then
      return
    end
    AI.LogEvent(" >>>> VehicleBaseAI:AIDriver enabling " .. A0_9311:GetName())
    A0_9311:TriggerEvent(AIEVENT_DRIVER_IN)
    if A0_9311.Behavior and A0_9311.Behavior.Constructor then
      A0_9311.Behavior:Constructor(A0_9311)
    end
    A0_9311:EnableMountedWeapons(false)
    return 1
  end
end
L0_9308.AIDriver = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9313)
  if not AI then
    return
  end
  A0_9313.AI = {}
  CryAction.RegisterWithAI(A0_9313.id, A0_9313.AIType, A0_9313.Properties, A0_9313.PropertiesInstance, A0_9313.AIMovementAbility)
  AI.ChangeParameter(A0_9313.id, AIPARAM_FORGETTIME_TARGET, A0_9313.forgetTimeTarget)
  AI.ChangeParameter(A0_9313.id, AIPARAM_FORGETTIME_SEEK, A0_9313.forgetTimeSeek)
  AI.ChangeParameter(A0_9313.id, AIPARAM_FORGETTIME_MEMORY, A0_9313.forgetTimeMemory)
  if A0_9313.AICombatClass then
    AI.ChangeParameter(A0_9313.id, AIPARAM_COMBATCLASS, A0_9313.AICombatClass)
  end
  if A0_9313.Properties.Perception.config and A0_9313.Properties.Perception.config ~= "" then
    AI.RegisterTargetTrack(A0_9313.id, A0_9313.Properties.Perception.config, A0_9313.Properties.Perception.TargetTracks.targetLimit, A0_9313.Properties.Perception.TargetTracks.classThreat)
  end
  if A0_9313.Properties.bAutoGenAIHidePts and A0_9313.Properties.bAutoGenAIHidePts == 1 then
    A0_9313:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_9313:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
end
L0_9308.InitAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9314)
  if not AI then
    return
  end
  A0_9314.AI = {}
  A0_9314:AIDriver(0)
  AI.ResetParameters(A0_9314.id, false, A0_9314.Properties, A0_9314.PropertiesInstance, nil)
  if A0_9314.AICombatClass then
    AI.ChangeParameter(A0_9314.id, AIPARAM_COMBATCLASS, A0_9314.AICombatClass)
  end
  AI.ChangeParameter(A0_9314.id, AIPARAM_FORGETTIME_TARGET, A0_9314.forgetTimeTarget)
  AI.ChangeParameter(A0_9314.id, AIPARAM_FORGETTIME_SEEK, A0_9314.forgetTimeSeek)
  AI.ChangeParameter(A0_9314.id, AIPARAM_FORGETTIME_MEMORY, A0_9314.forgetTimeMemory)
  if A0_9314.Properties.bAutoGenAIHidePts and A0_9314.Properties.bAutoGenAIHidePts == 1 then
    A0_9314:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_9314:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
  if A0_9314.Properties.Perception.config and A0_9314.Properties.Perception.config ~= "" then
    AI.RegisterTargetTrack(A0_9314.id, A0_9314.Properties.Perception.config, A0_9314.Properties.Perception.TargetTracks.targetLimit, A0_9314.Properties.Perception.TargetTracks.classThreat)
  end
end
L0_9308.ResetAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9315, A1_9316)
  local L2_9317
  L2_9317 = {}
  A0_9315.AI = L2_9317
  L2_9317 = A1_9316.AI
  if L2_9317 then
    L2_9317 = A1_9316.AI
    A0_9315.AI = L2_9317
  end
  L2_9317 = A0_9315.Properties
  if L2_9317 then
    L2_9317 = A0_9315.Properties
    L2_9317 = L2_9317.aicharacter_character
    if L2_9317 then
      L2_9317 = AICharacter
      L2_9317 = L2_9317[A0_9315.Properties.aicharacter_character]
      if L2_9317 and L2_9317.OnLoad then
        L2_9317.OnLoad(A0_9315, A1_9316)
      end
    end
  end
end
L0_9308.OnLoadAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9318, A1_9319)
  local L2_9320
  L2_9320 = A0_9318.AI
  if L2_9320 then
    L2_9320 = A0_9318.AI
    A1_9319.AI = L2_9320
  end
  L2_9320 = A0_9318.Properties
  if L2_9320 then
    L2_9320 = A0_9318.Properties
    L2_9320 = L2_9320.aicharacter_character
    if L2_9320 then
      L2_9320 = AICharacter
      L2_9320 = L2_9320[A0_9318.Properties.aicharacter_character]
      if L2_9320 and L2_9320.OnSave then
        L2_9320.OnSave(A0_9318, A1_9319)
      end
    end
  end
end
L0_9308.OnSaveAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9321)
  local L1_9322
end
L0_9308.DestroyAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9323, A1_9324, A2_9325)
  if not AI then
    return
  end
  if A0_9323.Seats then
    for _FORV_6_, _FORV_7_ in pairs(A0_9323.Seats) do
      if _FORV_7_.passengerId then
        AI.Signal(SIGNALFILTER_SENDER, 0, A1_9324, _FORV_7_.passengerId, A2_9325)
      end
    end
  end
end
L0_9308.SignalCrew = L1_9309
function L0_9308(A0_9326)
  if A0_9326.AIProperties then
    mergef(A0_9326, A0_9326.AIProperties, 1)
  end
  A0_9326.AIProperties = nil
  mergef(A0_9326, VehicleBaseAI, 1)
end
CreateVehicleAI = L0_9308
L0_9308 = VehicleBaseAI
function L1_9309(A0_9327, A1_9328)
  if not AI then
    return
  end
  if A0_9327:IsDriver(A1_9328.id) then
    A0_9327:ChangeFaction(A1_9328, 1)
  end
  A0_9327:PrepareSeatMountedWeapon(A1_9328)
end
L0_9308.UserEntered = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9329, A1_9330)
  if not AI then
    return
  end
  AI.Signal(0, 1, "STOP_VEHICLE", A0_9329.id)
end
L0_9308.Act_Unload = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9331)
  if not AI then
    return
  end
  A0_9331:DisableAI()
  if A0_9331.AI.spawnerListenerId and System.GetEntity(A0_9331.AI.spawnerListenerId) then
    System.GetEntity(A0_9331.AI.spawnerListenerId):UnitDown()
  end
  A0_9331:TriggerEvent(AIEVENT_AGENTDIED)
  if A0_9331.AI.MaybeNextLevel then
    A0_9331:MaybeNextLevel()
  end
end
L0_9308.OnVehicleDestroyedAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9332)
  local L1_9333
end
L0_9308.OnVehicleImmobilized = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9334)
  A0_9334:SignalCrew("SHARED_LEAVE_ME_VEHICLE")
  if A0_9334.AIDriver then
    A0_9334:AIDriver(0)
  end
end
L0_9308.DisableAI = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9335, A1_9336)
  local L2_9337, L3_9338, L4_9339, L5_9340, L6_9341, L7_9342, L8_9343, L9_9344, L10_9345, L11_9346
  for L5_9340, L6_9341 in L2_9337(L3_9338) do
    L7_9342 = L6_9341.seat
    L7_9342 = L7_9342.GetWeaponCount
    L7_9342 = L7_9342(L8_9343)
    for L11_9346 = 1, L7_9342 do
      if L6_9341.seat:GetWeaponId(L11_9346) == A1_9336.id then
        return L5_9340
      end
    end
  end
  return L2_9337
end
L0_9308.GetSeatWithWeapon = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9347, A1_9348, A2_9349)
  local L3_9350
  L3_9350 = AI
  if not L3_9350 then
    return
  end
  if A2_9349 == 0 or A2_9349 == nil then
    L3_9350 = AI
    L3_9350 = L3_9350.ChangeParameter
    L3_9350(A0_9347.id, AIPARAM_FACTION, "")
    L3_9350 = A0_9347.AI
    L3_9350.hostileSet = nil
    return
  end
  L3_9350 = AI
  L3_9350 = L3_9350.GetFactionOf
  L3_9350 = L3_9350(A1_9348.id)
  if A0_9347.Properties.bHidesPlayer == 1 and A2_9349 == 1 and A1_9348.ai == nil and L3_9350 ~= A0_9347.defaultFaction then
    return
  end
  AI.ChangeParameter(A0_9347.id, AIPARAM_FACTION, L3_9350)
  A0_9347.AI.hostileSet = 1
end
L0_9308.ChangeFaction = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9351)
  local L1_9352, L2_9353, L3_9354, L4_9355, L5_9356, L6_9357, L7_9358, L8_9359
  L1_9352 = {}
  L2_9353 = A0_9351.class
  L1_9352.class = L2_9353
  L3_9354 = A0_9351
  L2_9353 = A0_9351.GetPos
  L2_9353 = L2_9353(L3_9354)
  L1_9352.position = L2_9353
  L3_9354 = A0_9351
  L2_9353 = A0_9351.GetDirectionVector
  L4_9355 = 1
  L2_9353 = L2_9353(L3_9354, L4_9355)
  L1_9352.orientation = L2_9353
  L3_9354 = A0_9351
  L2_9353 = A0_9351.GetScale
  L2_9353 = L2_9353(L3_9354)
  L1_9352.scale = L2_9353
  L2_9353 = A0_9351.Properties
  L1_9352.properties = L2_9353
  L2_9353 = A0_9351.PropertiesInstance
  L1_9352.propertiesInstance = L2_9353
  L2_9353 = 1
  L3_9354 = L1_9352.position
  L4_9355 = L1_9352.position
  L4_9355 = L4_9355.x
  L4_9355 = L4_9355 + L5_9356
  L4_9355 = L4_9355 - L2_9353
  L3_9354.x = L4_9355
  L3_9354 = L1_9352.position
  L4_9355 = L1_9352.position
  L4_9355 = L4_9355.y
  L4_9355 = L4_9355 + L5_9356
  L4_9355 = L4_9355 - L2_9353
  L3_9354.y = L4_9355
  L4_9355 = A0_9351
  L3_9354 = A0_9351.GetName
  L3_9354 = L3_9354(L4_9355)
  L1_9352.name = L3_9354
  L3_9354 = System
  L3_9354 = L3_9354.SpawnEntity
  L4_9355 = L1_9352
  L3_9354 = L3_9354(L4_9355)
  if L3_9354 then
    L4_9355 = L3_9354.id
    A0_9351.spawnedEntity = L4_9355
    L4_9355 = L3_9354.Events
    if not L4_9355 then
      L4_9355 = {}
      L3_9354.Events = L4_9355
    end
    L4_9355 = L3_9354.Events
    for L8_9359, _FORV_9_ in L5_9356(L6_9357) do
      if not L4_9355[L8_9359] then
        L4_9355[L8_9359] = {}
      end
      table.insert(L4_9355[L8_9359], {
        A0_9351.id,
        L8_9359
      })
    end
    L5_9356(L6_9357, L7_9358)
  end
end
L0_9308.SpawnCopyAndLoad = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9360, A1_9361)
  local L2_9362, L3_9363
  L2_9362 = AI
  if not L2_9362 then
    return
  end
  L2_9362 = 0
  L3_9363 = A0_9360.GetLink
  L3_9363 = L3_9363(A0_9360, L2_9362)
  while L3_9363 do
    if L3_9363 and L3_9363.Event_SpawnKeep then
      L3_9363:Event_SpawnKeep()
      if L3_9363.PropertiesInstance.bAutoDisable ~= 1 then
        AI.AutoDisable(System.GetEntity(L3_9363.spawnedEntity).id, 0)
      end
      System.GetEntity(L3_9363.spawnedEntity):SetName(System.GetEntity(L3_9363.spawnedEntity):GetName() .. "_vspawned")
      if System.GetEntity(L3_9363.spawnedEntity) then
        g_SignalData.fValue = L2_9362 + 1
        g_SignalData.id = A1_9361.id
        g_SignalData.iValue2 = 1
        AI.Signal(SIGNALFILTER_SENDER, 0, "ACT_ENTERVEHICLE", System.GetEntity(L3_9363.spawnedEntity).id, g_SignalData)
      end
    end
    L2_9362 = L2_9362 + 1
    L3_9363 = A0_9360:GetLink(L2_9362)
  end
end
L0_9308.LoadLinked = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9364, A1_9365)
  local L2_9366, L3_9367, L4_9368, L5_9369, L6_9370, L7_9371
  if not L2_9366 then
    return
  end
  for L5_9369, L6_9370 in L2_9366(L3_9367) do
    L7_9371 = L6_9370.GetPassengerId
    L7_9371 = L7_9371()
    if L7_9371 then
      AI.AutoDisable(L7_9371, A1_9365)
    end
  end
end
L0_9308.AutoDisablePassangers = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9372, A1_9373)
  if A0_9372.class == "Asian_helicopter" then
    for _FORV_5_, _FORV_6_ in pairs(A0_9372.Seats) do
      if _FORV_6_.passengerId and System.GetEntity(_FORV_6_.passengerId) ~= nil and _FORV_6_.isDriver and A1_9373.id == System.GetEntity(_FORV_6_.passengerId).id then
        Script.SetTimerForFunction(4000, "VehicleBaseAI.PassengerDeadExplode", A0_9372)
      end
    end
  end
end
L0_9308.OnPassengerDead = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9374)
  g_gameRules:CreateExplosion(A0_9374.id, A0_9374.id, 1000, A0_9374:GetPos(), nil, 10)
end
L0_9308.PassengerDeadExplode = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9375, A1_9376)
  local L2_9377, L3_9378, L4_9379, L5_9380, L6_9381
  if A1_9376 then
    L2_9377 = count
    L2_9377 = L2_9377(L3_9378)
    for L6_9381 = 1, L2_9377 do
      if A0_9375:GetSeatByIndex(L6_9381) and A0_9375:GetSeatByIndex(L6_9381):GetPassengerId() == A1_9376 then
        return true
      end
    end
  end
end
L0_9308.IsEntityOnVehicle = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9382)
  return A0_9382.Properties.bCanUsePrimaryWeapon
end
L0_9308.IsAllowedToUsePrimaryWeapon = L1_9309
L0_9308 = VehicleBaseAI
function L1_9309(A0_9383)
  return A0_9383.Properties.bCanUseSecondaryWeapon
end
L0_9308.IsAllowedToUseSecondaryWeapon = L1_9309
