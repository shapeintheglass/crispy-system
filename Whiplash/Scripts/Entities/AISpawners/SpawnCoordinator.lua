local L0_2812, L1_2813, L2_2814, L3_2815
L0_2812 = {}
L0_2812.spawnedEntity = nil
L1_2813 = {}
L1_2813.commrange = 30
L1_2813.bSpeciesHostility = 1
L1_2813.soclasses_SmartObjectClass = "Actor"
L1_2813.attackrange = 70
L1_2813.special = 0
L1_2813.damageScale = 1
L1_2813.aicharacter_character = "Coordinator"
L2_2814 = {}
L2_2814.stanceScale = 1.8
L2_2814.sightrange = 50
L2_2814.FOVSecondary = 160
L2_2814.FOVPrimary = 80
L2_2814.audioScale = 1
L1_2813.Perception = L2_2814
L1_2813.species = 2
L1_2813.bInvulnerable = 0
L2_2814 = {}
L2_2814.dmgMult = 1
L2_2814.dmgRatio = 1
L1_2813.Vulnerability = L2_2814
L1_2813.accuracy = 1
L1_2813.fileModel = ""
L1_2813.horizontal_fov = 160
L0_2812.Properties = L1_2813
L1_2813 = {}
L1_2813.aibehavior_behaviour = "CoordinatorIdle"
L1_2813.soclasses_SmartObjectClass = ""
L1_2813.groupid = 173
L0_2812.PropertiesInstance = L1_2813
SpawnCoordinator = L0_2812
L0_2812 = SpawnCoordinator
L0_2812 = L0_2812.Properties
L0_2812.SpawnedEntityName = ""
L0_2812 = SpawnCoordinator
function L1_2813(A0_2816, A1_2817, A2_2818)
  local L3_2819
  L3_2819 = {}
  L3_2819.class = "Coordinator"
  L3_2819.position = A0_2816:GetPos()
  L3_2819.orientation = A0_2816:GetDirectionVector(1)
  L3_2819.scale = A0_2816:GetScale()
  L3_2819.properties = A0_2816.Properties
  L3_2819.propertiesInstance = A0_2816.PropertiesInstance
  if A0_2816.Properties.SpawnedEntityName ~= "" then
    L3_2819.name = A0_2816.Properties.SpawnedEntityName
  else
    L3_2819.name = A0_2816:GetName()
  end
  if System.SpawnEntity(L3_2819) then
    A0_2816.spawnedEntity = System.SpawnEntity(L3_2819).id
    if not System.SpawnEntity(L3_2819).Events then
      System.SpawnEntity(L3_2819).Events = {}
    end
    if not System.SpawnEntity(L3_2819).Events.Dead then
      System.SpawnEntity(L3_2819).Events.Dead = {}
    end
    table.insert(System.SpawnEntity(L3_2819).Events.Dead, {
      A0_2816.id,
      "Dead"
    })
  end
  BroadcastEvent(A0_2816, "Spawned")
end
L0_2812.Event_Spawn = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2820)
  if A0_2820.spawnedEntity then
    System.RemoveEntity(A0_2820.spawnedEntity)
    A0_2820.spawnedEntity = nil
  end
end
L0_2812.OnReset = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2821)
  local L1_2822
  L1_2822 = A0_2821.spawnedEntity
  return L1_2822
end
L0_2812.GetFlowgraphForwardingEntity = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2823)
  BroadcastEvent(A0_2823, "Spawned")
end
L0_2812.Event_Spawned = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2824, A1_2825, A2_2826)
  if A1_2825 and A1_2825.id == A0_2824.spawnedEntity then
    BroadcastEvent(A0_2824, "Dead")
  end
end
L0_2812.Event_Dead = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2827, A1_2828, A2_2829)
  local L3_2830
  L3_2830 = A0_2827.spawnedEntity
  if L3_2830 then
    if A1_2828 then
      L3_2830 = A0_2827.spawnedEntity
    elseif L3_2830 ~= A1_2828.id then
      L3_2830 = System
      L3_2830 = L3_2830.GetEntity
      L3_2830 = L3_2830(A0_2827.spawnedEntity)
      if L3_2830 and L3_2830 ~= A1_2828 then
        A0_2827.Handle_Disable(L3_2830, A1_2828, A2_2829)
      end
    end
  end
end
L0_2812.Event_Disable = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2831, A1_2832, A2_2833)
  local L3_2834
  L3_2834 = A0_2831.spawnedEntity
  if L3_2834 then
    if A1_2832 then
      L3_2834 = A0_2831.spawnedEntity
    elseif L3_2834 ~= A1_2832.id then
      L3_2834 = System
      L3_2834 = L3_2834.GetEntity
      L3_2834 = L3_2834(A0_2831.spawnedEntity)
      if L3_2834 and L3_2834 ~= A1_2832 then
        A0_2831.Handle_Enable(L3_2834, A1_2832, A2_2833)
      end
    end
  end
end
L0_2812.Event_Enable = L1_2813
L0_2812 = SpawnCoordinator
function L1_2813(A0_2835, A1_2836, A2_2837)
  local L3_2838
  L3_2838 = A0_2835.spawnedEntity
  if L3_2838 then
    if A1_2836 then
      L3_2838 = A0_2835.spawnedEntity
    elseif L3_2838 ~= A1_2836.id then
      L3_2838 = System
      L3_2838 = L3_2838.GetEntity
      L3_2838 = L3_2838(A0_2835.spawnedEntity)
      if L3_2838 and L3_2838 ~= A1_2836 then
        A0_2835.Handle_Kill(L3_2838, A1_2836, A2_2837)
      end
    end
  end
end
L0_2812.Event_Kill = L1_2813
L0_2812 = SpawnCoordinator
L1_2813 = {}
L2_2814 = {}
L3_2815 = {
  SpawnCoordinator.Event_Spawn,
  "bool"
}
L2_2814.Spawn = L3_2815
L3_2815 = {
  SpawnCoordinator.Event_Disable,
  "bool"
}
L2_2814.Disable = L3_2815
L3_2815 = {
  SpawnCoordinator.Event_Enable,
  "bool"
}
L2_2814.Enable = L3_2815
L3_2815 = {
  SpawnCoordinator.Event_Kill,
  "bool"
}
L2_2814.Kill = L3_2815
L1_2813.Inputs = L2_2814
L2_2814 = {}
L2_2814.Spawned = "bool"
L2_2814.Dead = "bool"
L1_2813.Outputs = L2_2814
L0_2812.FlowEvents = L1_2813
L0_2812 = SpawnCoordinator
L1_2813 = Coordinator
L1_2813 = L1_2813.FlowEvents
L1_2813 = L1_2813.Inputs
L1_2813 = L1_2813.Disable
L1_2813 = L1_2813[1]
L0_2812.Handle_Disable = L1_2813
L0_2812 = SpawnCoordinator
L1_2813 = Coordinator
L1_2813 = L1_2813.FlowEvents
L1_2813 = L1_2813.Inputs
L1_2813 = L1_2813.Enable
L1_2813 = L1_2813[1]
L0_2812.Handle_Enable = L1_2813
L0_2812 = SpawnCoordinator
L1_2813 = Coordinator
L1_2813 = L1_2813.FlowEvents
L1_2813 = L1_2813.Inputs
L1_2813 = L1_2813.Kill
L1_2813 = L1_2813[1]
L0_2812.Handle_Kill = L1_2813
