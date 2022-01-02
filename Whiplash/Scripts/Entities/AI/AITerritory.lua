Script.ReloadScript("Scripts/Entities/AI/AIWave.lua")
ActiveTerritories = {}
ActiveWaves = {}
AITerritory = {
  type = "AITerritory",
  Editor = {
    Icon = "territory.bmp"
  },
  liveAIs = {},
  deadAIs = {},
  activeWaves = {},
  historyWaves = {},
  nActiveCount = 0,
  nBodyCount = 0
}
function AddToTerritoryAndWave(A0_2439)
  if GetAIWave(A0_2439) then
    GetAIWave(A0_2439):Add(A0_2439)
  end
  if GetAITerritory(A0_2439) then
    GetAITerritory(A0_2439):Add(A0_2439)
  end
end
function NotifyDeathToTerritoryAndWave(A0_2440)
  Script.SetTimerForFunction(3000, "DeferredNotifyDeathToTerritoryAndWave", A0_2440)
end
function DeferredNotifyDeathToTerritoryAndWave(A0_2441)
  if A0_2441 and type(A0_2441) == "table" then
    if GetAIWave(A0_2441) then
      GetAIWave(A0_2441):NotifyDeath(A0_2441)
    end
    if GetAITerritory(A0_2441) then
      GetAITerritory(A0_2441):NotifyDeath(A0_2441)
    end
  end
end
function GetAITerritory(A0_2442)
  local L1_2443
  L1_2443 = A0_2442.AI
  L1_2443 = L1_2443.TerritoryShape
  return GetAITerritoryFromName(L1_2443)
end
function GetAITerritoryFromName(A0_2444)
  if A0_2444 then
    return System.GetEntityByName(A0_2444)
  end
  return nil
end
function UpdateTerritoriesActiveCounts(A0_2445)
  local L1_2446, L2_2447, L3_2448, L4_2449
  for L4_2449, _FORV_5_ in L1_2446(L2_2447) do
    if System.GetEntityByName(L4_2449) then
      System.GetEntityByName(L4_2449):UpdateActiveCount()
    end
  end
end
function AITerritory.IsWaveEnabling(A0_2450)
  local L1_2451, L2_2452, L3_2453, L4_2454
  for L4_2454, _FORV_5_ in L1_2451(L2_2452) do
    if System.GetEntity(L4_2454) and System.GetEntity(L4_2454):IsEnabling() then
      return true
    end
  end
  return L1_2451
end
function AITerritory.UpdateWavesActiveCounts(A0_2455, A1_2456)
  local L2_2457, L3_2458, L4_2459, L5_2460, L6_2461, L7_2462
  L2_2457 = Set
  L2_2457 = L2_2457.New
  L2_2457 = L2_2457()
  L3_2458 = 0
  for L7_2462, _FORV_8_ in L4_2459(L5_2460) do
    if System.GetEntity(L7_2462) then
      System.GetEntity(L7_2462):UpdateActiveCount(A1_2456)
      L3_2458 = L3_2458 + System.GetEntity(L7_2462):GetPoolQueueCount()
      if 0 >= System.GetEntity(L7_2462):GetActiveCount() then
        Set.Add(L2_2457, L7_2462)
      end
    end
  end
  for L7_2462, _FORV_8_ in L4_2459(L5_2460) do
    Set.Remove(A0_2455.activeWaves, L7_2462)
  end
  return L3_2458
end
function AITerritory.ReturnWavesBookmarkedAI(A0_2463, A1_2464)
  local L2_2465, L3_2466, L4_2467, L5_2468
  for L5_2468, _FORV_6_ in L2_2465(L3_2466) do
    if System.GetEntity(L5_2468) and System.GetEntity(L5_2468).ReturnBookmarkedAI then
      System.GetEntity(L5_2468):ReturnBookmarkedAI()
    end
  end
end
function AITerritory.ResetWavesBookmarkedAI(A0_2469, A1_2470)
  local L2_2471, L3_2472, L4_2473, L5_2474
  for L5_2474, _FORV_6_ in L2_2471(L3_2472) do
    if System.GetEntity(L5_2474) and System.GetEntity(L5_2474).ResetBookmarkedAI then
      System.GetEntity(L5_2474):ResetBookmarkedAI()
    end
  end
end
function AITerritory.PrepareWavesBookmarkedAI(A0_2475)
  local L1_2476, L2_2477, L3_2478, L4_2479
  for L4_2479, _FORV_5_ in L1_2476(L2_2477) do
    if System.GetEntity(L4_2479) and System.GetEntity(L4_2479).PrepareBookmarkedAI and ActiveWaves[System.GetEntity(L4_2479).GetName()] then
      System.GetEntity(L4_2479):PrepareBookmarkedAI()
    end
  end
end
function AITerritory.Event_Disable(A0_2480)
  local L1_2481, L2_2482, L3_2483, L4_2484, L5_2485, L6_2486, L7_2487
  L1_2481 = A0_2480.GetName
  L1_2481 = L1_2481(L2_2482)
  if L2_2482 then
    for L5_2485, L6_2486 in L2_2482(L3_2483) do
      L7_2487 = System
      L7_2487 = L7_2487.GetEntity
      L7_2487 = L7_2487(L5_2485)
      if L7_2487 and A0_2480:CheckAlive(L7_2487) and L7_2487:IsActive() then
        L7_2487:Event_Disable()
      end
    end
    L2_2482(L3_2483)
    L2_2482[L1_2481] = false
    L2_2482(L3_2483, L4_2484)
    L2_2482(L3_2483)
  end
end
function AITerritory.Event_Enable(A0_2488)
  if not ActiveTerritories[A0_2488:GetName()] then
    ActiveTerritories[A0_2488:GetName()] = true
    A0_2488:PrepareWavesBookmarkedAI()
    Script.SetTimerForFunction(500, "DelayedEvent_Enable", A0_2488)
    A0_2488:UpdateActiveCount()
  end
end
function DelayedEvent_Enable(A0_2489)
  local L1_2490, L2_2491, L3_2492, L4_2493, L5_2494, L6_2495
  if A0_2489 then
    if L1_2490 == "table" then
      L1_2490(L2_2491, L3_2492)
      for L4_2493, L5_2494 in L1_2490(L2_2491) do
        L6_2495 = System
        L6_2495 = L6_2495.GetEntity
        L6_2495 = L6_2495(L4_2493)
        if L6_2495 and A0_2489:CheckAlive(L6_2495) and (not L6_2495.AI.Wave or ActiveWaves[L6_2495.AI.Wave]) and not L6_2495:IsActive() then
          L6_2495:Event_Enable()
        end
      end
    end
  end
end
function AITerritory.Event_Kill(A0_2496)
  local L1_2497, L2_2498, L3_2499, L4_2500, L5_2501, L6_2502, L7_2503
  L1_2497 = A0_2496.GetName
  L1_2497 = L1_2497(L2_2498)
  if L2_2498 then
    for L5_2501, L6_2502 in L2_2498(L3_2499) do
      L7_2503 = System
      L7_2503 = L7_2503.GetEntity
      L7_2503 = L7_2503(L5_2501)
      if L7_2503 and A0_2496:CheckAlive(L7_2503) and L7_2503:IsActive() then
        L7_2503:Event_Kill()
      end
    end
  end
end
function AITerritory.Event_Spawn(A0_2504)
  local L1_2505, L2_2506, L3_2507, L4_2508, L5_2509, L6_2510, L7_2511, L8_2512, L9_2513
  L1_2505 = false
  L2_2506 = false
  L3_2507 = A0_2504.GetName
  L3_2507 = L3_2507(L4_2508)
  if not L4_2508 then
    L4_2508[L3_2507] = true
    L4_2508(L5_2509, L6_2510)
    for L7_2511, L8_2512 in L4_2508(L5_2509) do
      L9_2513 = System
      L9_2513 = L9_2513.GetEntity
      L9_2513 = L9_2513(L7_2511)
      if L9_2513 and A0_2504:CheckAlive(L9_2513) and (not L9_2513.AI.Wave or ActiveWaves[L9_2513.AI.Wave]) and not L9_2513:IsActive() then
        L9_2513:Event_Enable()
        L1_2505 = true
      end
    end
  end
  for L7_2511, L8_2512 in L4_2508(L5_2509) do
    L9_2513 = System
    L9_2513 = L9_2513.GetEntity
    L9_2513 = L9_2513(L7_2511)
    if L9_2513 and not L9_2513.AI.Wave and (not L9_2513.whoSpawnedMe or not L9_2513.whoSpawnedMe.spawnedEntity) then
      L9_2513:Event_Spawn()
      L2_2506 = true
      Set.Remove(A0_2504.deadAIs, L9_2513.id)
    end
  end
  if L1_2505 or L2_2506 then
    L4_2508(L5_2509)
    L7_2511 = A0_2504
    L4_2508(L5_2509, L6_2510, L7_2511)
  end
end
function DelayedBroadcastEventSpawned(A0_2514)
  if A0_2514 and type(A0_2514) == "table" then
    BroadcastEvent(A0_2514, "Spawned")
  end
end
function AITerritory.Event_DisableAndClear(A0_2515)
  local L1_2516, L2_2517, L3_2518, L4_2519, L5_2520
  L1_2516 = A0_2515.GetName
  L1_2516 = L1_2516(L2_2517)
  for L5_2520, _FORV_6_ in L2_2517(L3_2518) do
    if System.GetEntity(L5_2520) then
      System.GetEntity(L5_2520):Event_DisableAndClear()
    end
  end
  L2_2517[L1_2516] = false
  L2_2517(L3_2518, L4_2519)
  L2_2517(L3_2518)
end
function AITerritory.OnInit(A0_2521)
  A0_2521:OnReset()
end
function AITerritory.OnLoad(A0_2522, A1_2523)
  ActiveTerritories[A0_2522:GetName()] = A1_2523.bIsActive
  A0_2522.liveAIs = Set.DeserializeEntities(A1_2523.liveAIs)
  A0_2522.deadAIs = Set.DeserializeEntities(A1_2523.deadAIs)
  A0_2522.activeWaves = Set.DeserializeEntities(A1_2523.activeWaves)
  A0_2522.historyWaves = Set.DeserializeEntities(A1_2523.historyWaves)
  A0_2522.nActiveCount = A1_2523.nActiveCount
  A0_2522.nBodyCount = A1_2523.nBodyCount
end
function AITerritory.OnReset(A0_2524)
  ActiveTerritories[A0_2524:GetName()] = false
  A0_2524.liveAIs = Set.New()
  A0_2524.deadAIs = Set.New()
  A0_2524.activeWaves = Set.New()
  A0_2524.historyWaves = Set.New()
  A0_2524.nActiveCount = 0
  A0_2524.nBodyCount = 0
end
function AITerritory.OnSave(A0_2525, A1_2526)
  A1_2526.bIsActive = ActiveTerritories[A0_2525:GetName()]
  A1_2526.liveAIs = Set.SerializeEntities(A0_2525.liveAIs)
  A1_2526.deadAIs = Set.SerializeEntities(A0_2525.deadAIs)
  A1_2526.activeWaves = Set.SerializeEntities(A0_2525.activeWaves)
  A1_2526.historyWaves = Set.SerializeEntities(A0_2525.historyWaves)
  A1_2526.nActiveCount = A0_2525.nActiveCount
  A1_2526.nBodyCount = A0_2525.nBodyCount
end
function AITerritory.Add(A0_2527, A1_2528)
  local L2_2529, L3_2530
  L3_2530 = A0_2527
  L2_2529 = A0_2527.GetName
  L2_2529 = L2_2529(L3_2530)
  L3_2530 = A1_2528.AI
  L3_2530 = L3_2530.TerritoryShape
  if L2_2529 == L3_2530 then
    L3_2530 = A1_2528.AI
    L3_2530 = L3_2530.Wave
    if L3_2530 and System.GetEntityByName(L3_2530) then
      Set.Add(A0_2527.activeWaves, System.GetEntityByName(L3_2530).id)
      Set.Add(A0_2527.historyWaves, System.GetEntityByName(L3_2530).id)
    end
    if A1_2528:IsDead() then
      Set.Add(A0_2527.deadAIs, A1_2528.id)
    elseif not Set.Get(A0_2527.deadAIs, A1_2528.id) then
      Set.Add(A0_2527.liveAIs, A1_2528.id)
      if A1_2528:IsActive() and ActiveTerritories[L2_2529] then
        A0_2527:UpdateActiveCount()
      else
        A1_2528:Event_Disable()
      end
    end
  end
end
function AITerritory.NotifyDeath(A0_2531, A1_2532)
  if Set.Get(A0_2531.liveAIs, A1_2532.id) then
    Set.Remove(A0_2531.liveAIs, A1_2532.id)
    Set.Add(A0_2531.deadAIs, A1_2532.id)
    A0_2531:UpdateActiveCount(true)
    A0_2531.nBodyCount = A0_2531.nBodyCount + 1
    A0_2531:ActivateOutput("BodyCount", A0_2531.nBodyCount)
  end
end
function WaveAllowActorRemoval(A0_2533)
  if GetAIWave(A0_2533) then
    return GetAIWave(A0_2533):AllowActorRemoval(A0_2533)
  else
    return true
  end
end
function AITerritory.UpdateActiveCount(A0_2534, A1_2535)
  local L2_2536, L3_2537, L4_2538, L5_2539, L6_2540, L7_2541, L8_2542, L9_2543
  L3_2537 = A0_2534
  L2_2536 = A0_2534.IsWaveEnabling
  L2_2536 = L2_2536(L3_2537)
  if L2_2536 then
    return
  end
  L3_2537 = A0_2534
  L2_2536 = A0_2534.GetName
  L2_2536 = L2_2536(L3_2537)
  L3_2537 = A0_2534.UpdateWavesActiveCounts
  L3_2537 = L3_2537(L4_2538, L5_2539)
  if L4_2538 then
    for L7_2541, L8_2542 in L4_2538(L5_2539) do
      L9_2543 = System
      L9_2543 = L9_2543.GetEntity
      L9_2543 = L9_2543(L7_2541)
      if L9_2543 and A0_2534:CheckAlive(L9_2543) and L9_2543:IsActive() then
        L3_2537 = L3_2537 + 1
      end
    end
  end
  if L3_2537 ~= L4_2538 then
    A0_2534.nActiveCount = L3_2537
    L7_2541 = A0_2534.nActiveCount
    L4_2538(L5_2539, L6_2540, L7_2541)
    if A1_2535 then
      if L4_2538 == 0 then
        L4_2538(L5_2539, L6_2540)
      end
    end
  end
end
function AITerritory.CheckAlive(A0_2544, A1_2545)
  if A1_2545:IsDead() then
    A0_2544:NotifyDeath(A1_2545)
    return false
  end
  return true
end
function AITerritory.OnHidden(A0_2546)
  A0_2546:ResetWavesBookmarkedAI()
end
AITerritory.FlowEvents = {
  Inputs = {
    Disable = {
      AITerritory.Event_Disable,
      "bool"
    },
    Enable = {
      AITerritory.Event_Enable,
      "bool"
    },
    Kill = {
      AITerritory.Event_Kill,
      "bool"
    },
    Spawn = {
      AITerritory.Event_Spawn,
      "bool"
    },
    DisableAndClear = {
      AITerritory.Event_DisableAndClear,
      "bool"
    }
  },
  Outputs = {
    ActiveCount = "int",
    BodyCount = "int",
    Dead = "bool",
    Disabled = "bool",
    Enabled = "bool",
    Spawned = "bool"
  }
}
