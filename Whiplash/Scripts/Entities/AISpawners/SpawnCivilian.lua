Script.ReloadScript("Scripts/Entities/AI/Civilian.lua")
SpawnCivilian = {
  spawnedEntity = nil,
  Properties = {
    fileModel = "",
    attackrange = 0,
    commrange = 30,
    special = 0,
    aicharacter_character = "Hostage",
    Perception = {
      stanceScale = 1.8,
      sightrange = 50,
      FOVSecondary = 160,
      FOVPrimary = 80,
      audioScale = 1
    },
    species = 10,
    bInvulnerable = 0,
    bSpeciesHostility = 0,
    accuracy = 1,
    soclasses_SmartObjectClass = "Actor"
  },
  PropertiesInstance = {
    aibehavior_behaviour = "Job_StandIdle",
    soclasses_SmartObjectClass = "",
    groupid = 173
  }
}
SpawnCivilian.Properties.SpawnedEntityName = ""
function SpawnCivilian.Event_Spawn(A0_2789, A1_2790, A2_2791)
  local L3_2792
  L3_2792 = {}
  L3_2792.class = "Civilian"
  L3_2792.position = A0_2789:GetPos()
  L3_2792.orientation = A0_2789:GetDirectionVector(1)
  L3_2792.scale = A0_2789:GetScale()
  L3_2792.properties = A0_2789.Properties
  L3_2792.propertiesInstance = A0_2789.PropertiesInstance
  if A0_2789.Properties.SpawnedEntityName ~= "" then
    L3_2792.name = A0_2789.Properties.SpawnedEntityName
  else
    L3_2792.name = A0_2789:GetName()
  end
  if System.SpawnEntity(L3_2792) then
    A0_2789.spawnedEntity = System.SpawnEntity(L3_2792).id
    if not System.SpawnEntity(L3_2792).Events then
      System.SpawnEntity(L3_2792).Events = {}
    end
    if not System.SpawnEntity(L3_2792).Events.Dead then
      System.SpawnEntity(L3_2792).Events.Dead = {}
    end
    table.insert(System.SpawnEntity(L3_2792).Events.Dead, {
      A0_2789.id,
      "Dead"
    })
  end
  BroadcastEvent(A0_2789, "Spawned")
end
function SpawnCivilian.OnReset(A0_2793)
  if A0_2793.spawnedEntity then
    System.RemoveEntity(A0_2793.spawnedEntity)
    A0_2793.spawnedEntity = nil
  end
end
function SpawnCivilian.GetFlowgraphForwardingEntity(A0_2794)
  local L1_2795
  L1_2795 = A0_2794.spawnedEntity
  return L1_2795
end
function SpawnCivilian.Event_Spawned(A0_2796)
  BroadcastEvent(A0_2796, "Spawned")
end
function SpawnCivilian.Event_Dead(A0_2797, A1_2798, A2_2799)
  if A1_2798 and A1_2798.id == A0_2797.spawnedEntity then
    BroadcastEvent(A0_2797, "Dead")
  end
end
function SpawnCivilian.Event_Disable(A0_2800, A1_2801, A2_2802)
  local L3_2803
  L3_2803 = A0_2800.spawnedEntity
  if L3_2803 then
    if A1_2801 then
      L3_2803 = A0_2800.spawnedEntity
    elseif L3_2803 ~= A1_2801.id then
      L3_2803 = System
      L3_2803 = L3_2803.GetEntity
      L3_2803 = L3_2803(A0_2800.spawnedEntity)
      if L3_2803 and L3_2803 ~= A1_2801 then
        A0_2800.Handle_Disable(L3_2803, A1_2801, A2_2802)
      end
    end
  end
end
function SpawnCivilian.Event_Enable(A0_2804, A1_2805, A2_2806)
  local L3_2807
  L3_2807 = A0_2804.spawnedEntity
  if L3_2807 then
    if A1_2805 then
      L3_2807 = A0_2804.spawnedEntity
    elseif L3_2807 ~= A1_2805.id then
      L3_2807 = System
      L3_2807 = L3_2807.GetEntity
      L3_2807 = L3_2807(A0_2804.spawnedEntity)
      if L3_2807 and L3_2807 ~= A1_2805 then
        A0_2804.Handle_Enable(L3_2807, A1_2805, A2_2806)
      end
    end
  end
end
function SpawnCivilian.Event_Kill(A0_2808, A1_2809, A2_2810)
  local L3_2811
  L3_2811 = A0_2808.spawnedEntity
  if L3_2811 then
    if A1_2809 then
      L3_2811 = A0_2808.spawnedEntity
    elseif L3_2811 ~= A1_2809.id then
      L3_2811 = System
      L3_2811 = L3_2811.GetEntity
      L3_2811 = L3_2811(A0_2808.spawnedEntity)
      if L3_2811 and L3_2811 ~= A1_2809 then
        A0_2808.Handle_Kill(L3_2811, A1_2809, A2_2810)
      end
    end
  end
end
SpawnCivilian.FlowEvents = {
  Inputs = {
    Spawn = {
      SpawnCivilian.Event_Spawn,
      "bool"
    },
    Disable = {
      SpawnCivilian.Event_Disable,
      "bool"
    },
    Enable = {
      SpawnCivilian.Event_Enable,
      "bool"
    },
    Kill = {
      SpawnCivilian.Event_Kill,
      "bool"
    }
  },
  Outputs = {Spawned = "bool", Dead = "bool"}
}
SpawnCivilian.Handle_Disable = Civilian.FlowEvents.Inputs.Disable[1]
SpawnCivilian.Handle_Enable = Civilian.FlowEvents.Inputs.Enable[1]
SpawnCivilian.Handle_Kill = Civilian.FlowEvents.Inputs.Kill[1]
