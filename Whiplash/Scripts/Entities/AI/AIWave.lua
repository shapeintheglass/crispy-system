local L0_2547, L1_2548, L2_2549, L3_2550
L0_2547 = {}
L0_2547.type = "AIWave"
L1_2548 = {}
L1_2548.Icon = "wave.bmp"
L0_2547.Editor = L1_2548
L1_2548 = {}
L0_2547.liveAIs = L1_2548
L1_2548 = {}
L0_2547.deadAIs = L1_2548
L1_2548 = {}
L0_2547.bookmarkAIs = L1_2548
L1_2548 = {}
L0_2547.toSpawnFromDeadBookmarks = L1_2548
L0_2547.nActiveCount = 0
L0_2547.nBodyCount = 0
L0_2547.nPoolQueueCount = 0
L0_2547.bEnableOnAdd = false
L0_2547.bIsEnabling = false
L0_2547.bIsPreparingBookmarks = false
L0_2547.bBookmarsHaveBeenPrepared = false
L0_2547.bDisabledAndCleared = false
AIWave = L0_2547
L0_2547 = {}
AIWaveBookmarkCache = L0_2547
function L0_2547(A0_2551)
  local L1_2552, L2_2553, L3_2554, L4_2555, L5_2556
  for L4_2555, L5_2556 in L1_2552(L2_2553) do
    if GetAIWaveFromName(L5_2556) and GetAIWaveFromName(L5_2556):GetName() == A0_2551 then
      GetAIWaveFromName(L5_2556):AddBookmarked(L4_2555)
      AIWaveBookmarkCache[L4_2555] = nil
    end
  end
end
ExecuteAIWaveBookmarkCache = L0_2547
function L0_2547(A0_2557, A1_2558)
  if GetAIWaveFromName(A1_2558) then
    GetAIWaveFromName(A1_2558):AddBookmarked(A0_2557)
  else
    AIWaveBookmarkCache[A0_2557] = A1_2558
  end
end
AddBookmarkedToWave = L0_2547
function L0_2547(A0_2559)
  local L1_2560
  L1_2560 = A0_2559.AI
  L1_2560 = L1_2560.Wave
  return GetAIWaveFromName(L1_2560)
end
GetAIWave = L0_2547
function L0_2547(A0_2561)
  if A0_2561 then
    return System.GetEntityByName(A0_2561)
  end
  return nil
end
GetAIWaveFromName = L0_2547
L0_2547 = AIWave
function L1_2548(A0_2562)
  local L1_2563, L2_2564, L3_2565, L4_2566, L5_2567, L6_2568, L7_2569, L8_2570, L9_2571
  A0_2562.bIsPreparingBookmarks = true
  L1_2563 = A0_2562.bBookmarsHaveBeenPrepared
  L1_2563 = not L1_2563
  if L2_2564 <= 0 then
    for L5_2567, L6_2568 in L2_2564(L3_2565) do
      L7_2569 = System
      L7_2569 = L7_2569.GetEntity
      L8_2570 = L5_2567
      L7_2569 = L7_2569(L8_2570)
      L8_2570 = Set
      L8_2570 = L8_2570.Get
      L9_2571 = A0_2562.liveAIs
      L8_2570 = L8_2570(L9_2571, L5_2567)
      if not L7_2569 and (L8_2570 or L1_2563) then
        L9_2571 = System
        L9_2571 = L9_2571.PrepareEntityFromPool
        L9_2571 = L9_2571(L5_2567)
        if L9_2571 then
          L9_2571 = A0_2562.nPoolQueueCount
          L9_2571 = L9_2571 + 1
          A0_2562.nPoolQueueCount = L9_2571
        else
          L9_2571 = A0_2562.GetName
          L9_2571 = L9_2571(A0_2562)
          System.Warning("Input Enable of AI Wave " .. L9_2571 .. " failed to prepare pooled entity")
        end
      end
    end
  end
  A0_2562.bBookmarsHaveBeenPrepared = true
  A0_2562.bIsPreparingBookmarks = false
end
L0_2547.PrepareBookmarkedAI = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2572)
  local L1_2573, L2_2574, L3_2575, L4_2576
  if L1_2573 > 0 then
    for L4_2576, _FORV_5_ in L1_2573(L2_2574) do
      System.ResetPoolEntity(L4_2576)
    end
  end
end
L0_2547.ResetBookmarkedAI = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2577)
  local L1_2578, L2_2579, L3_2580, L4_2581, L5_2582, L6_2583, L7_2584, L8_2585, L9_2586
  L2_2579 = A0_2577
  L1_2578 = A0_2577.GetName
  L1_2578 = L1_2578(L2_2579)
  L2_2579 = A0_2577.bDisabledAndCleared
  if L2_2579 then
    L2_2579 = System
    L2_2579 = L2_2579.Warning
    L2_2579(L3_2580)
    return
  end
  L2_2579 = ActiveWaves
  L2_2579 = L2_2579[L1_2578]
  if L2_2579 then
    L2_2579 = Set
    L2_2579 = L2_2579.New
    L2_2579 = L2_2579()
    for L6_2583, L7_2584 in L3_2580(L4_2581) do
      L8_2585 = System
      L8_2585 = L8_2585.GetEntity
      L9_2586 = L6_2583
      L8_2585 = L8_2585(L9_2586)
      if L8_2585 then
        L9_2586 = A0_2577.CheckAlive
        L9_2586 = L9_2586(A0_2577, L8_2585)
        if L9_2586 then
          L9_2586 = L8_2585.IsActive
          L9_2586 = L9_2586(L8_2585)
          if L9_2586 then
            L9_2586 = Set
            L9_2586 = L9_2586.Get
            L9_2586 = L9_2586(A0_2577.bookmarkAIs, L6_2583)
            if not L9_2586 then
              L9_2586 = L8_2585.Event_Disable
              L9_2586(L8_2585)
            end
            L9_2586 = L8_2585.AI
            L9_2586 = L9_2586.TerritoryShape
            if L9_2586 then
              Set.Add(L2_2579, L9_2586)
            end
          end
        end
      end
    end
    L3_2580(L4_2581)
    L3_2580[L1_2578] = false
    L3_2580(L4_2581, L5_2582)
    L3_2580(L4_2581)
    L3_2580(L4_2581)
  end
end
L0_2547.Event_Disable = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2587)
  local L1_2588, L2_2589, L3_2590, L4_2591
  for L4_2591, _FORV_5_ in L1_2588(L2_2589) do
    System.ReturnEntityToPool(L4_2591)
  end
end
L0_2547.ReturnBookmarkedAI = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2592)
  local L1_2593, L2_2594, L3_2595, L4_2596, L5_2597, L6_2598, L7_2599, L8_2600, L9_2601
  L2_2594 = A0_2592
  L1_2593 = A0_2592.GetName
  L1_2593 = L1_2593(L2_2594)
  L2_2594 = A0_2592.bDisabledAndCleared
  if L2_2594 then
    L2_2594 = System
    L2_2594 = L2_2594.Warning
    L2_2594(L3_2595)
    return
  end
  A0_2592.bIsEnabling = true
  L2_2594 = ActiveWaves
  L2_2594 = L2_2594[L1_2593]
  if not L2_2594 then
    L2_2594 = A0_2592.PrepareBookmarkedAI
    L2_2594(L3_2595)
    L2_2594 = false
    for L6_2598, L7_2599 in L3_2595(L4_2596) do
      L2_2594 = true
      L8_2600 = System
      L8_2600 = L8_2600.GetEntity
      L9_2601 = L6_2598
      L8_2600 = L8_2600(L9_2601)
      if L8_2600 then
        L9_2601 = A0_2592.CheckAlive
        L9_2601 = L9_2601(A0_2592, L8_2600)
        if L9_2601 then
          L9_2601 = L8_2600.AI
          L9_2601 = L9_2601.TerritoryShape
          if not L9_2601 or ActiveTerritories[L9_2601] then
            A0_2592:TryBecomeActive(L1_2593)
            if not L8_2600:IsActive() then
              A0_2592:EnableEntity(L8_2600)
            end
          elseif not L9_2601 then
            System.Warning("Input Enable of AI Wave " .. L1_2593 .. " about to fail : nil territory!")
          else
            System.Warning("Input Enable of AI Wave " .. L1_2593 .. " about to fail : territory " .. L9_2601 .. " is not active!")
          end
        end
      end
    end
    A0_2592.bIsEnabling = false
    if L3_2595 then
      L3_2595(L4_2596)
    elseif not L2_2594 then
      L6_2598 = ". It will be enabled as soon as an AI is added to it."
      L3_2595(L4_2596)
      A0_2592.bEnableOnAdd = true
    end
  end
  A0_2592.bIsEnabling = false
end
L0_2547.Event_Enable = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2602)
  local L1_2603, L2_2604, L3_2605, L4_2606, L5_2607, L6_2608, L7_2609, L8_2610, L9_2611, L10_2612
  L2_2604 = A0_2602
  L1_2603 = A0_2602.GetName
  L1_2603 = L1_2603(L2_2604)
  L2_2604 = A0_2602.bDisabledAndCleared
  if L2_2604 then
    L2_2604 = System
    L2_2604 = L2_2604.Warning
    L3_2605 = "Wave: "
    L3_2605 = L3_2605 .. L4_2606 .. L5_2607
    L2_2604(L3_2605)
    return
  end
  A0_2602.bIsEnabling = true
  L2_2604 = false
  L3_2605 = false
  if not L4_2606 then
    L4_2606(L5_2607)
    for L7_2609, L8_2610 in L4_2606(L5_2607) do
      L9_2611 = System
      L9_2611 = L9_2611.GetEntity
      L10_2612 = L7_2609
      L9_2611 = L9_2611(L10_2612)
      if L9_2611 then
        L10_2612 = L9_2611.AI
        L10_2612 = L10_2612.TerritoryShape
        if not L10_2612 or ActiveTerritories[L9_2611.AI.TerritoryShape] then
          A0_2602:TryBecomeActive(L1_2603)
          if A0_2602:CheckAlive(L9_2611) then
            L2_2604 = true
            if not L9_2611:IsActive() then
              A0_2602:EnableEntity(L9_2611)
            end
          end
        end
      end
    end
  end
  A0_2602.bIsPreparingBookmarks = true
  for L7_2609, L8_2610 in L4_2606(L5_2607) do
    L9_2611 = System
    L9_2611 = L9_2611.GetEntity
    L10_2612 = L8_2610
    L9_2611 = L9_2611(L10_2612)
    if not L9_2611 then
      L10_2612 = Set
      L10_2612 = L10_2612.Set
      L10_2612(A0_2602.toSpawnFromDeadBookmarks, L8_2610, L7_2609)
      L10_2612 = System
      L10_2612 = L10_2612.PrepareEntityFromPool
      L10_2612 = L10_2612(L8_2610)
      if not L10_2612 then
        L10_2612 = A0_2602.GetName
        L10_2612 = L10_2612(A0_2602)
        System.Warning("AIWave " .. L10_2612 .. " failed to prepare pooled entity: %s", tostring(L8_2610))
      end
      L10_2612 = Set
      L10_2612 = L10_2612.Get
      L10_2612 = L10_2612(A0_2602.toSpawnFromDeadBookmarks, L8_2610)
      if not L10_2612 then
        L3_2605 = true
      end
    end
  end
  A0_2602.bIsPreparingBookmarks = false
  for L7_2609, L8_2610 in L4_2606(L5_2607) do
    L9_2611 = System
    L9_2611 = L9_2611.GetEntity
    L10_2612 = L7_2609
    L9_2611 = L9_2611(L10_2612)
    L10_2612 = System
    L10_2612 = L10_2612.GetEntity
    L10_2612 = L10_2612(L8_2610)
    if L10_2612 and (not L9_2611.AI.TerritoryShape or ActiveTerritories[L9_2611.AI.TerritoryShape]) then
      A0_2602:TryBecomeActive(L1_2603)
      if L9_2611 then
        A0_2602:SpawnEntity(L9_2611)
      else
        L10_2612.spawnedEntity = nil
        L10_2612.lastSpawnedEntity = nil
        A0_2602:SpawnEntity(L10_2612)
      end
      L3_2605 = true
      Set.Remove(A0_2602.deadAIs, L7_2609)
    end
  end
  A0_2602.bIsEnabling = false
  if not L4_2606 then
    L7_2609 = " was activated but it was not enabled"
    L4_2606(L5_2607)
  end
  if L2_2604 or L3_2605 then
    L4_2606(L5_2607)
    L7_2609 = A0_2602
    L4_2606(L5_2607, L6_2608, L7_2609)
  end
end
L0_2547.Event_Spawn = L1_2548
function L0_2547(A0_2613)
  if A0_2613 and type(A0_2613) == "table" then
    BroadcastEvent(A0_2613, "Spawned")
  end
end
DelayedBroadcastEventSpawned = L0_2547
L0_2547 = AIWave
function L1_2548(A0_2614, A1_2615)
  if A0_2614.bIsPreparingBookmarks then
    return
  end
  if not ActiveWaves[A1_2615] and (not A0_2614.nPoolQueueCount or A0_2614.nPoolQueueCount <= 0) then
    ActiveWaves[A1_2615] = true
    BroadcastEvent(A0_2614, "Enabled")
  end
end
L0_2547.TryBecomeActive = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2616)
  local L1_2617, L2_2618, L3_2619, L4_2620, L5_2621, L6_2622, L7_2623
  L1_2617 = A0_2616.GetName
  L1_2617 = L1_2617(L2_2618)
  if L2_2618 then
    L5_2621 = " .'Kill' input has been triggered, but the wave has already been DisabledAndCleared. Nothing will happen."
    L2_2618(L3_2619)
    return
  end
  if L2_2618 then
    for L5_2621, L6_2622 in L2_2618(L3_2619) do
      L7_2623 = System
      L7_2623 = L7_2623.GetEntity
      L7_2623 = L7_2623(L5_2621)
      if L7_2623 and A0_2616:CheckAlive(L7_2623) and (not L7_2623.AI.TerritoryShape or ActiveTerritories[L7_2623.AI.TerritoryShape]) and L7_2623:IsActive() then
        L7_2623:Event_Kill()
      end
    end
  end
end
L0_2547.Event_Kill = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2624)
  local L1_2625, L2_2626, L3_2627, L4_2628, L5_2629
  L1_2625 = A0_2624.GetName
  L1_2625 = L1_2625(L2_2626)
  if L2_2626 then
    L5_2629 = " .'DisableAndClear' input has been triggered, but the wave has already been DisabledAndCleared. Nothing will happen."
    L2_2626(L3_2627)
    return
  end
  L2_2626(L3_2627)
  L2_2626(L3_2627)
  for L5_2629, _FORV_6_ in L2_2626(L3_2627) do
    if System.GetEntity(L5_2629) and System.GetEntity(L5_2629).whoSpawnedMe then
      System.RemoveEntity(L5_2629)
    end
  end
  for L5_2629, _FORV_6_ in L2_2626(L3_2627) do
    if System.GetEntity(L5_2629) and System.GetEntity(L5_2629).whoSpawnedMe then
      System.RemoveEntity(L5_2629)
    end
  end
  L2_2626(L3_2627)
  A0_2624.bDisabledAndCleared = true
end
L0_2547.Event_DisableAndClear = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2630, A1_2631)
  if not ActiveWaves[A0_2630:GetName()] then
    return true
  end
  if Set.Get(A0_2630.deadAIs, A1_2631.id) then
    return false
  end
  return true
end
L0_2547.AllowActorRemoval = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2632)
  A0_2632.bookmarkAIs = Set.New()
  A0_2632:OnReset()
end
L0_2547.OnInit = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2633, A1_2634)
  ActiveWaves[A0_2633:GetName()] = A1_2634.bIsActive
  A0_2633.liveAIs = Set.DeserializeValues(A1_2634.liveAIs)
  A0_2633.deadAIs = Set.DeserializeValues(A1_2634.deadAIs)
  A0_2633.toSpawnFromDeadBookmarks = Set.DeserializeEntities(A1_2634.toSpawnFromDeadBookmarks)
  A0_2633.bookmarkAIs = Set.New()
  A0_2633.bookmarkAIs = Set.DeserializeItems(A1_2634.bookmarkAIs)
  A0_2633.nActiveCount = A1_2634.nActiveCount
  A0_2633.nBodyCount = A1_2634.nBodyCount
  A0_2633.nPoolQueueCount = A1_2634.nPoolQueueCount
  A0_2633.bEnableOnAdd = A1_2634.bEnableOnAdd
  A0_2633.bIsEnabling = A1_2634.bIsEnabling
  A0_2633.bIsPreparingBookmarks = A1_2634.bIsPreparingBookmarks
  A0_2633.bBookmarsHaveBeenPrepared = A1_2634.bBookmarsHaveBeenPrepared
  A0_2633.bDisabledAndCleared = A1_2634.bDisabledAndCleared
  A0_2633.currentAssignment = A1_2634.currentAssignment
end
L0_2547.OnLoad = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2635)
  local L1_2636, L2_2637, L3_2638, L4_2639, L5_2640
  for L4_2639, L5_2640 in L1_2636(L2_2637) do
    if System.GetEntity(L4_2639) and L4_2639 ~= L5_2640 then
      if System.GetEntity(L5_2640) then
        System.GetEntity(L4_2639).whoSpawnedMe = System.GetEntity(L5_2640)
      else
        System.GetEntity(L4_2639).whoSpawnedMe = {}
        System.GetEntity(L4_2639).whoSpawnedMe.id = L5_2640
      end
    end
  end
  for L4_2639, L5_2640 in L1_2636(L2_2637) do
    if System.GetEntity(L4_2639) and L4_2639 ~= L5_2640 then
      if System.GetEntity(L5_2640) then
        System.GetEntity(L4_2639).whoSpawnedMe = System.GetEntity(L5_2640)
      else
        System.GetEntity(L4_2639).whoSpawnedMe = {}
        System.GetEntity(L4_2639).whoSpawnedMe.id = L5_2640
      end
    end
  end
end
L0_2547.OnPostLoad = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2641)
  A0_2641:Reset()
end
L0_2547.OnReset = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2642)
  local L1_2643
  L1_2643 = A0_2642.GetName
  L1_2643 = L1_2643(A0_2642)
  ActiveWaves[L1_2643] = false
  A0_2642.liveAIs = Set.New()
  A0_2642.deadAIs = Set.New()
  A0_2642.toSpawnFromDeadBookmarks = Set.New()
  ExecuteAIWaveBookmarkCache(L1_2643)
  A0_2642.nActiveCount = 0
  A0_2642.nBodyCount = 0
  A0_2642.nPoolQueueCount = 0
  A0_2642.bEnableOnAdd = false
  A0_2642.bIsEnabling = false
  A0_2642.bIsPreparingBookmarks = false
  A0_2642.bBookmarsHaveBeenPrepared = false
  A0_2642.currentAssignment = nil
  A0_2642.bDisabledAndCleared = false
end
L0_2547.Reset = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2644, A1_2645)
  A1_2645.bIsActive = ActiveWaves[A0_2644:GetName()]
  A1_2645.liveAIs = Set.SerializeValues(A0_2644.liveAIs)
  A1_2645.deadAIs = Set.SerializeValues(A0_2644.deadAIs)
  A1_2645.toSpawnFromDeadBookmarks = Set.SerializeEntities(A0_2644.toSpawnFromDeadBookmarks)
  A1_2645.bookmarkAIs = Set.SerializeItems(A0_2644.bookmarkAIs)
  A1_2645.nActiveCount = A0_2644.nActiveCount
  A1_2645.nBodyCount = A0_2644.nBodyCount
  A1_2645.nPoolQueueCount = A0_2644.nPoolQueueCount
  A1_2645.bEnableOnAdd = A0_2644.bEnableOnAdd
  A1_2645.bIsEnabling = A0_2644.bIsEnabling
  A1_2645.bIsPreparingBookmarks = A0_2644.bIsPreparingBookmarks
  A1_2645.bBookmarsHaveBeenPrepared = A0_2644.bBookmarsHaveBeenPrepared
  A1_2645.bDisabledAndCleared = A0_2644.bDisabledAndCleared
  A1_2645.currentAssignment = A0_2644.currentAssignment
end
L0_2547.OnSave = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2646)
  A0_2646:ResetBookmarkedAI()
end
L0_2547.OnHidden = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2647, A1_2648)
  local L2_2649
  L2_2649 = A1_2648.whoSpawnedMe
  if L2_2649 then
    L2_2649 = A1_2648.whoSpawnedMe
    L2_2649 = L2_2649.id
    return L2_2649
  else
    L2_2649 = A1_2648.id
    return L2_2649
  end
end
L0_2547.GetStaticEntityID = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2650, A1_2651)
  local L2_2652, L3_2653
  L3_2653 = A0_2650
  L2_2652 = A0_2650.GetName
  L2_2652 = L2_2652(L3_2653)
  L3_2653 = A1_2651.AI
  L3_2653 = L3_2653.Wave
  if L2_2652 == L3_2653 then
    L3_2653 = A0_2650.GetStaticEntityID
    L3_2653 = L3_2653(A0_2650, A1_2651)
    if Set.Get(A0_2650.bookmarkAIs, A1_2651.id) then
      if not Set.Get(A0_2650.toSpawnFromDeadBookmarks, A1_2651.id) then
        Set.Add(A0_2650.liveAIs, A1_2651.id, L3_2653)
        A0_2650:AddFromBookmark(A1_2651)
      end
    else
      Set.Add(A0_2650.liveAIs, A1_2651.id, L3_2653)
      A0_2650:AddNormal(A1_2651)
    end
  end
end
L0_2547.Add = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2654, A1_2655)
  if A1_2655:IsActive() then
    if not A1_2655.AI.TerritoryShape or ActiveTerritories[A1_2655.AI.TerritoryShape] then
      if not ActiveWaves[A0_2654:GetName()] and A0_2654.bEnableOnAdd then
        A0_2654:EnableEntity(A1_2655)
      end
      A0_2654.bEnableOnAdd = false
      if ActiveWaves[A0_2654:GetName()] then
        A0_2654:UpdateActiveCount()
        return
      end
    end
  end
  A1_2655:Event_Disable()
end
L0_2547.AddNormal = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2656, A1_2657)
  local L2_2658
  L2_2658 = A0_2656.nPoolQueueCount
  L2_2658 = L2_2658 - 1
  A0_2656.nPoolQueueCount = L2_2658
  L2_2658 = A0_2656.GetName
  L2_2658 = L2_2658(A0_2656)
  if not A1_2657.AI.TerritoryShape or ActiveTerritories[A1_2657.AI.TerritoryShape] then
    A1_2657:Activate(1)
    A0_2656:EnableEntity(A1_2657)
    A0_2656:TryBecomeActive(L2_2658)
    A0_2656:UpdateActiveCount()
  end
end
L0_2547.AddFromBookmark = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2659, A1_2660)
  Set.Add(A0_2659.bookmarkAIs, A1_2660)
end
L0_2547.AddBookmarked = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2661, A1_2662)
  local L2_2663, L3_2664
  L2_2663 = Set
  L2_2663 = L2_2663.Get
  L3_2664 = A0_2661.toSpawnFromDeadBookmarks
  L2_2663 = L2_2663(L3_2664, A1_2662.id)
  if L2_2663 then
    L3_2664 = System
    L3_2664 = L3_2664.GetEntity
    L3_2664 = L3_2664(L2_2663)
    if L3_2664 then
      if L3_2664.whoSpawnedMe then
        L3_2664.whoSpawnedMe = A1_2662
      end
      A1_2662.spawnedEntity = nil
      A0_2661:SpawnEntity(L3_2664)
    end
    Set.Remove(A0_2661.deadAIs, L2_2663)
    Set.Remove(A0_2661.toSpawnFromDeadBookmarks, A1_2662.id)
  end
end
L0_2547.OnEntityPreparedFromPool = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2665, A1_2666)
  local L2_2667
  L2_2667 = Set
  L2_2667 = L2_2667.Get
  L2_2667 = L2_2667(A0_2665.liveAIs, A1_2666.id)
  if L2_2667 then
    L2_2667 = A0_2665.GetStaticEntityID
    L2_2667 = L2_2667(A0_2665, A1_2666)
    Set.Remove(A0_2665.liveAIs, A1_2666.id)
    Set.Add(A0_2665.deadAIs, A1_2666.id, L2_2667)
    A0_2665:UpdateActiveCount(true)
    A0_2665.nBodyCount = A0_2665.nBodyCount + 1
    A0_2665:ActivateOutput("BodyCount", A0_2665.nBodyCount)
  end
end
L0_2547.NotifyDeath = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2668)
  local L1_2669
  L1_2669 = A0_2668.bIsEnabling
  return L1_2669
end
L0_2547.IsEnabling = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2670)
  if A0_2670.nPoolQueueCount >= 0 then
    return A0_2670.nPoolQueueCount
  end
  return 0
end
L0_2547.GetPoolQueueCount = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2671)
  local L1_2672
  L1_2672 = A0_2671.nActiveCount
  return L1_2672
end
L0_2547.GetActiveCount = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2673, A1_2674)
  local L2_2675, L3_2676, L4_2677, L5_2678, L6_2679, L7_2680, L8_2681, L9_2682, L10_2683, L11_2684
  L3_2676 = A0_2673
  L2_2675 = A0_2673.IsEnabling
  L2_2675 = L2_2675(L3_2676)
  if L2_2675 then
    return
  end
  L3_2676 = A0_2673
  L2_2675 = A0_2673.GetName
  L2_2675 = L2_2675(L3_2676)
  L4_2677 = A0_2673
  L3_2676 = A0_2673.GetPoolQueueCount
  L3_2676 = L3_2676(L4_2677)
  L4_2677 = Set
  L4_2677 = L4_2677.New
  L4_2677 = L4_2677()
  if L5_2678 then
    for L8_2681, L9_2682 in L5_2678(L6_2679) do
      L10_2683 = System
      L10_2683 = L10_2683.GetEntity
      L11_2684 = L8_2681
      L10_2683 = L10_2683(L11_2684)
      if L10_2683 then
        L11_2684 = L10_2683.IsDead
        L11_2684 = L11_2684(L10_2683)
        if not L11_2684 then
          L11_2684 = L10_2683.IsActive
          L11_2684 = L11_2684(L10_2683)
          if L11_2684 then
            L3_2676 = L3_2676 + 1
          end
        end
        L11_2684 = L10_2683.AI
        L11_2684 = L11_2684.TerritoryShape
        if L11_2684 then
          Set.Add(L4_2677, L11_2684)
        end
      end
    end
  end
  if L3_2676 ~= L5_2678 then
    A0_2673.nActiveCount = L3_2676
    if L5_2678 == 0 then
      L8_2681 = A0_2673.nActiveCount
      L5_2678(L6_2679, L7_2680, L8_2681)
      L5_2678(L6_2679)
    end
    if A1_2674 then
      if L5_2678 == 0 then
        L5_2678(L6_2679, L7_2680)
      end
    end
  end
end
L0_2547.UpdateActiveCount = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2685, A1_2686)
  if A1_2686:IsDead() then
    A0_2685:NotifyDeath(A1_2686)
    return false
  end
  return true
end
L0_2547.CheckAlive = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2687, A1_2688)
  A1_2688:Event_Enable()
  if A0_2687.currentAssignment then
    A0_2687:IndividualDispatchSetAssignment(A1_2688)
  end
end
L0_2547.EnableEntity = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2689, A1_2690)
  local L2_2691, L3_2692
  L3_2692 = A1_2690
  L2_2691 = A1_2690.Event_Spawn
  L2_2691(L3_2692)
  L2_2691 = A0_2689.currentAssignment
  if L2_2691 then
    L2_2691 = nil
    L3_2692 = A1_2690.whoSpawnedMe
    if L3_2692 then
      L3_2692 = A1_2690.whoSpawnedMe
      L2_2691 = L3_2692.lastSpawnedEntity
    else
      L2_2691 = A1_2690.lastSpawnedEntity
    end
    if L2_2691 then
      L3_2692 = System
      L3_2692 = L3_2692.GetEntity
      L3_2692 = L3_2692(L2_2691)
      A0_2689:IndividualDispatchSetAssignment(L3_2692)
    end
  end
end
L0_2547.SpawnEntity = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2693, A1_2694, A2_2695)
  A0_2693:ClearAssignment()
  A0_2693.currentAssignment = {}
  A0_2693.currentAssignment.assignment = A1_2694
  A0_2693.currentAssignment.data = {}
  if A2_2695 ~= nil then
    mergef(A0_2693.currentAssignment.data, A2_2695, 1)
  end
  A0_2693:DispatchSetAssignment()
end
L0_2547.SetAssignment = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2696)
  A0_2696.currentAssignment = nil
  A0_2696:DispatchClearAssignment()
end
L0_2547.ClearAssignment = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2697)
  local L1_2698, L2_2699, L3_2700, L4_2701
  for L4_2701, _FORV_5_ in L1_2698(L2_2699) do
    if System.GetEntity(L4_2701) and System.GetEntity(L4_2701):IsActive() and System.GetEntity(L4_2701).SetAssignment then
      System.GetEntity(L4_2701):SetAssignment(A0_2697.currentAssignment.assignment, A0_2697.currentAssignment.data)
    end
  end
end
L0_2547.DispatchSetAssignment = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2702)
  local L1_2703, L2_2704, L3_2705, L4_2706
  for L4_2706, _FORV_5_ in L1_2703(L2_2704) do
    if System.GetEntity(L4_2706) and System.GetEntity(L4_2706):IsActive() and System.GetEntity(L4_2706).ClearAssignment then
      System.GetEntity(L4_2706):ClearAssignment()
    end
  end
end
L0_2547.DispatchClearAssignment = L1_2548
L0_2547 = AIWave
function L1_2548(A0_2707, A1_2708)
  if A1_2708 and A1_2708.SetAssignment then
    A1_2708:SetAssignment(A0_2707.currentAssignment.assignment, A0_2707.currentAssignment.data)
  end
end
L0_2547.IndividualDispatchSetAssignment = L1_2548
L0_2547 = AIWave
L1_2548 = {}
L2_2549 = {}
L3_2550 = {
  AIWave.Event_Disable,
  "bool"
}
L2_2549.Disable = L3_2550
L3_2550 = {
  AIWave.Event_Enable,
  "bool"
}
L2_2549.Enable = L3_2550
L3_2550 = {
  AIWave.Event_Kill,
  "bool"
}
L2_2549.Kill = L3_2550
L3_2550 = {
  AIWave.Event_Spawn,
  "bool"
}
L2_2549.Spawn = L3_2550
L3_2550 = {
  AIWave.Event_DisableAndClear,
  "bool"
}
L2_2549.DisableAndClear = L3_2550
L1_2548.Inputs = L2_2549
L2_2549 = {}
L2_2549.ActiveCount = "int"
L2_2549.BodyCount = "int"
L2_2549.Dead = "bool"
L2_2549.Disabled = "bool"
L2_2549.Enabled = "bool"
L2_2549.Spawned = "bool"
L1_2548.Outputs = L2_2549
L0_2547.FlowEvents = L1_2548
