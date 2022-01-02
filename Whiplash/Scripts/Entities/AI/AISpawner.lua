local L0_2380, L1_2381, L2_2382, L3_2383
L0_2380 = {}
L1_2381 = {}
L0_2380.Client = L1_2381
L1_2381 = {}
L0_2380.Server = L1_2381
L1_2381 = {}
L1_2381.Model = "Editor/Objects/Particles.cgf"
L1_2381.Icon = "SpawnPoint.bmp"
L1_2381.DisplayArrow = 1
L0_2380.Editor = L1_2381
L1_2381 = {}
L1_2381.NumUnits = 2
L1_2381.Limit = 4
L1_2381.bLimitStop = 1
L1_2381.bDoVisCheck = 0
L0_2380.Properties = L1_2381
L0_2380.unitsCounter = 0
L0_2380.totalUnitsCounter = 0
L0_2380.isEnabled = 0
L1_2381 = {}
L0_2380.visDummys = L1_2381
L1_2381 = {}
L0_2380.spawnedIds = L1_2381
L0_2380.spawnedIdsSize = 0
AISpawner = L0_2380
L0_2380 = AISpawner
L0_2380 = L0_2380.Server
function L1_2381(A0_2384)
  AI.LogEvent("AISpawner.Server:OnInit >>>")
  A0_2384:OnReset()
  A0_2384:CreateDummy()
end
L0_2380.OnInit = L1_2381
L0_2380 = AISpawner
L0_2380 = L0_2380.Server
function L1_2381(A0_2385)
  A0_2385:RemoveDummy()
end
L0_2380.OnShutDown = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2386)
  A0_2386:CreateDummy()
end
L0_2380.OnPropertyChange = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2387)
  A0_2387.unitsCounter = 0
  A0_2387.totalUnitsCounter = 0
  A0_2387.isEnabled = 0
  A0_2387.spawnedIds = {}
  A0_2387.spawnedIdsSize = 0
end
L0_2380.OnReset = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2388, A1_2389)
  local L2_2390
  L2_2390 = A0_2388.unitsCounter
  A1_2389.unitsCounter = L2_2390
  L2_2390 = A0_2388.totalUnitsCounter
  A1_2389.totalUnitsCounter = L2_2390
  L2_2390 = A0_2388.isEnabled
  A1_2389.isEnabled = L2_2390
  L2_2390 = A0_2388.spawnedIds
  A1_2389.spawnedIds = L2_2390
  L2_2390 = A0_2388.spawnedIdsSize
  A1_2389.spawnedIdsSize = L2_2390
end
L0_2380.OnSave = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2391, A1_2392)
  local L2_2393
  L2_2393 = A1_2392.unitsCounter
  A0_2391.unitsCounter = L2_2393
  L2_2393 = A1_2392.totalUnitsCounter
  A0_2391.totalUnitsCounter = L2_2393
  L2_2393 = A1_2392.isEnabled
  A0_2391.isEnabled = L2_2393
  L2_2393 = A1_2392.spawnedIds
  A0_2391.spawnedIds = L2_2393
  L2_2393 = A1_2392.spawnedIdsSize
  A0_2391.spawnedIdsSize = L2_2393
end
L0_2380.OnLoad = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2394)
  A0_2394.unitsCounter = A0_2394.unitsCounter - 1
  if A0_2394.isEnabled == 0 then
    return
  end
  if A0_2394.unitsCounter < A0_2394.Properties.NumUnits then
    A0_2394:SpawnInitially()
  end
end
L0_2380.UnitDown = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2395, A1_2396)
  if System.GetEntity(A1_2396) == nil then
    return
  end
  System.GetEntity(A1_2396).spawnedEntity = nil
  if System.GetEntity(A1_2396).Event_SpawnKeep then
    System.GetEntity(A1_2396):Event_SpawnKeep()
  elseif System.GetEntity(A1_2396).SpawnCopyAndLoad then
    System.GetEntity(A1_2396):SpawnCopyAndLoad()
  end
  if System.GetEntity(A1_2396).spawnedEntity and System.GetEntity(System.GetEntity(A1_2396).spawnedEntity) then
    if System.GetEntity(A1_2396).PropertiesInstance.bAutoDisable ~= 1 then
      AI.AutoDisable(System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).id, 0)
    end
    if System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).class == "Scout" then
      AI.AutoDisable(System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).id, 0)
    end
    System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).AI.spawnerListenerId = A0_2395.id
    A0_2395.unitsCounter = A0_2395.unitsCounter + 1
    A0_2395.totalUnitsCounter = A0_2395.totalUnitsCounter + 1
    A0_2395:FindSpawnReinfPoint()
    System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).AI.reinfPoint = g_SignalData.ObjectName
    System.GetEntity(System.GetEntity(A1_2396).spawnedEntity):SetName(System.GetEntity(System.GetEntity(A1_2396).spawnedEntity):GetName() .. "_spawned")
    AI.Signal(SIGNALFILTER_SENDER, 0, "NEW_SPAWN", System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).id, g_SignalData)
    A0_2395.spawnedIds[A0_2395.spawnedIdsSize] = System.GetEntity(System.GetEntity(A1_2396).spawnedEntity).id
    A0_2395.spawnedIdsSize = A0_2395.spawnedIdsSize + 1
  end
end
L0_2380.SpawnUnit = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2397)
  local L1_2398, L2_2399
  L1_2398 = A0_2397.CountLinks
  L1_2398 = L1_2398(L2_2399)
  if L1_2398 < 1 then
    return L2_2399
  end
  if L2_2399 == 0 then
    while true do
      if A0_2397:GetLink(L2_2399) then
        AI.LogEvent(" >>>FindSpawnProtoUnitIdx checking " .. L2_2399)
        if AI.GetTypeOf(A0_2397:GetLink(L2_2399).id) ~= AIOBJECT_WAYPOINT then
          return A0_2397:GetLink(L2_2399).id
        end
      end
      if L1_2398 == 1 then
        return
      end
    end
  else
    for _FORV_5_, _FORV_6_ in L2_2399(A0_2397.visDummys) do
      if _FORV_6_:UnSeenFrames() > 100 then
        return _FORV_5_
      end
    end
  end
  return L2_2399
end
L0_2380.FindSpawnProtoUnitId = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2400)
  local L1_2401, L2_2402, L3_2403, L4_2404, L5_2405
  L1_2401 = Log
  L2_2402 = "FindSpawnReinfPoint"
  L1_2401(L2_2402)
  L2_2402 = A0_2400
  L1_2401 = A0_2400.GetPos
  L1_2401 = L1_2401(L2_2402)
  L2_2402 = g_localActor
  if L2_2402 then
    L2_2402 = g_localActor
    L3_2403 = L2_2402
    L2_2402 = L2_2402.GetPos
    L2_2402 = L2_2402(L3_2403)
    L1_2401 = L2_2402
  end
  L2_2402 = 100000000
  L3_2403 = 0
  L4_2404 = 0
  L5_2405 = A0_2400.GetLink
  L5_2405 = L5_2405(A0_2400, L4_2404)
  while L5_2405 do
    if AI.GetTypeOf(L5_2405.id) == AIOBJECT_WAYPOINT and L2_2402 > DistanceSqVectors(L1_2401, L5_2405:GetPos()) then
      L2_2402 = DistanceSqVectors(L1_2401, L5_2405:GetPos())
      L3_2403 = L4_2404
    end
    L4_2404 = L4_2404 + 1
    L5_2405 = A0_2400:GetLink(L4_2404)
  end
  L5_2405 = A0_2400:GetLink(L3_2403)
  g_SignalData.ObjectName = L5_2405:GetName()
  Log("FindSpawnReinfPoint end")
end
L0_2380.FindSpawnReinfPoint = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2406)
  local L1_2407
  L1_2407 = Log
  L1_2407("SpawnInitially")
  while true do
    L1_2407 = A0_2406.unitsCounter
    if L1_2407 < A0_2406.Properties.NumUnits then
      L1_2407 = A0_2406.totalUnitsCounter
      if L1_2407 == A0_2406.Properties.Limit then
        L1_2407 = A0_2406.Event_Limit
        L1_2407(A0_2406)
        L1_2407 = A0_2406.isEnabled
        if L1_2407 == 0 then
          return
        end
      end
      L1_2407 = A0_2406.FindSpawnProtoUnitId
      L1_2407 = L1_2407(A0_2406)
      if L1_2407 == 0 then
        AI.LogEvent(" >>>Spawning initially : Can't find valid spawn proto/point")
        return
      end
      A0_2406:SpawnUnit(L1_2407)
    end
  end
  L1_2407 = Log
  L1_2407("SpawnInitially end")
end
L0_2380.SpawnInitially = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2408)
  for _FORV_4_, _FORV_5_ in pairs(A0_2408.visDummys) do
    System.RemoveEntity(_FORV_5_.id)
  end
  A0_2408.visDummys = {}
end
L0_2380.RemoveDummy = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2409)
  local L1_2410, L2_2411, L3_2412, L4_2413, L5_2414, L6_2415, L7_2416, L8_2417, L9_2418
  L1_2410 = Log
  L2_2411 = "createdummy start"
  L1_2410(L2_2411)
  L2_2411 = A0_2409
  L1_2410 = A0_2409.RemoveDummy
  L1_2410(L2_2411)
  L1_2410 = A0_2409.Properties
  L1_2410 = L1_2410.bDoVisCheck
  if L1_2410 == 0 then
    return
  end
  L1_2410 = 0
  L3_2412 = A0_2409
  L2_2411 = A0_2409.GetLink
  L4_2413 = L1_2410
  L2_2411 = L2_2411(L3_2412, L4_2413)
  while L2_2411 do
    L3_2412 = AI
    L3_2412 = L3_2412.GetTypeOf
    L4_2413 = L2_2411.id
    L3_2412 = L3_2412(L4_2413)
    L4_2413 = AIOBJECT_WAYPOINT
    if L3_2412 ~= L4_2413 then
      L3_2412 = A0_2409
      L4_2413 = {}
      L4_2413.class = "Dummy"
      L6_2415 = L2_2411
      L5_2414 = L2_2411.GetPos
      L5_2414 = L5_2414(L6_2415)
      L4_2413.position = L5_2414
      L6_2415 = L2_2411
      L5_2414 = L2_2411.GetName
      L5_2414 = L5_2414(L6_2415)
      L6_2415 = "_VisDummy"
      L5_2414 = L5_2414 .. L6_2415
      L4_2413.name = L5_2414
      L5_2414 = System
      L5_2414 = L5_2414.SpawnEntity
      L6_2415 = L4_2413
      L5_2414 = L5_2414(L6_2415)
      L3_2412 = L5_2414
      L6_2415 = L3_2412
      L5_2414 = L3_2412.LoadObject
      L7_2416 = 0
      L8_2417 = "objects/box_nodraw.cgf"
      L5_2414(L6_2415, L7_2416, L8_2417)
      L6_2415 = L2_2411
      L5_2414 = L2_2411.GetLocalBBox
      L6_2415 = L5_2414(L6_2415)
      L8_2417 = L3_2412
      L7_2416 = L3_2412.SetLocalBBox
      L9_2418 = L5_2414
      L7_2416(L8_2417, L9_2418, L6_2415)
      L7_2416 = A0_2409.visDummys
      L8_2417 = L2_2411.id
      L7_2416[L8_2417] = L3_2412
    end
    L1_2410 = L1_2410 + 1
    L4_2413 = A0_2409
    L3_2412 = A0_2409.GetLink
    L5_2414 = L1_2410
    L3_2412 = L3_2412(L4_2413, L5_2414)
    L2_2411 = L3_2412
  end
  L3_2412 = Log
  L4_2413 = "createdummy end"
  L3_2412(L4_2413)
end
L0_2380.CreateDummy = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2419, A1_2420)
  A0_2419.isEnabled = 1
  A0_2419:SpawnInitially()
  BroadcastEvent(A0_2419, "Enable")
end
L0_2380.Event_Enable = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2421, A1_2422)
  A0_2421.isEnabled = 0
  BroadcastEvent(A0_2421, "Disable")
end
L0_2380.Event_Disable = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2423, A1_2424)
  if A0_2423.Properties.bLimitStop ~= 0 then
    A0_2423:Event_Disable()
  end
  BroadcastEvent(A0_2423, "Limit")
end
L0_2380.Event_Limit = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2425, A1_2426)
  local L2_2427, L3_2428, L4_2429, L5_2430, L6_2431
  for L5_2430, L6_2431 in L2_2427(L3_2428) do
    if System.GetEntity(L6_2431) then
      AI.AutoDisable(System.GetEntity(L6_2431).id, 1)
      if System.GetEntity(L6_2431).AutoDisablePassangers then
        System.GetEntity(L6_2431):AutoDisablePassangers(1)
      end
    end
  end
  L2_2427(L3_2428, L4_2429)
end
L0_2380.Event_AutoDisableOn = L1_2381
L0_2380 = AISpawner
function L1_2381(A0_2432, A1_2433)
  local L2_2434, L3_2435, L4_2436, L5_2437, L6_2438
  for L5_2437, L6_2438 in L2_2434(L3_2435) do
    if System.GetEntity(L6_2438) then
      AI.AutoDisable(System.GetEntity(L6_2438).id, 0)
      if System.GetEntity(L6_2438).AutoDisablePassangers then
        System.GetEntity(L6_2438):AutoDisablePassangers(0)
      end
    end
  end
  L2_2434(L3_2435, L4_2436)
end
L0_2380.Event_AutoDisableOff = L1_2381
L0_2380 = AISpawner
L1_2381 = {}
L2_2382 = {}
L3_2383 = {
  AISpawner.Event_Enable,
  "bool"
}
L2_2382.Enable = L3_2383
L3_2383 = {
  AISpawner.Event_Disable,
  "bool"
}
L2_2382.Disable = L3_2383
L3_2383 = {
  AISpawner.Event_AutoDisableOn,
  "bool"
}
L2_2382.AutoDisableOn = L3_2383
L3_2383 = {
  AISpawner.Event_AutoDisableOff,
  "bool"
}
L2_2382.AutoDisableOff = L3_2383
L1_2381.Inputs = L2_2382
L2_2382 = {}
L2_2382.Limit = "bool"
L1_2381.Outputs = L2_2382
L0_2380.FlowEvents = L1_2381
