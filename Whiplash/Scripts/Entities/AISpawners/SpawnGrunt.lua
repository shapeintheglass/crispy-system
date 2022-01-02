Script.ReloadScript("Scripts/Entities/AI/Grunt.lua")
SpawnGrunt = {
  spawnedEntity = nil,
  Properties = {
    commrange = 30,
    SpawnedEntityName = "",
    bSpeciesHostility = 1,
    soclasses_SmartObjectClass = "Actor",
    attackrange = 70,
    special = 0,
    aicharacter_character = "Cover",
    Perception = {
      stanceScale = 1.8,
      sightrange = 50,
      FOVSecondary = 160,
      FOVPrimary = 80,
      audioScale = 1
    },
    species = 1,
    bInvulnerable = 0,
    accuracy = 1,
    fileModel = ""
  },
  PropertiesInstance = {
    aibehavior_behaviour = "Job_StandIdle",
    soclasses_SmartObjectClass = "",
    groupid = 173
  }
}
SpawnGrunt.Properties.SpawnedEntityName = ""
function SpawnGrunt.Event_Spawn(A0_2839, A1_2840, A2_2841)
  local L3_2842
  L3_2842 = {}
  L3_2842.class = "Grunt"
  L3_2842.position = A0_2839:GetPos()
  L3_2842.orientation = A0_2839:GetDirectionVector(1)
  L3_2842.scale = A0_2839:GetScale()
  L3_2842.properties = A0_2839.Properties
  L3_2842.propertiesInstance = A0_2839.PropertiesInstance
  if A0_2839.Properties.SpawnedEntityName ~= "" then
    L3_2842.name = A0_2839.Properties.SpawnedEntityName
  else
    L3_2842.name = A0_2839:GetName()
  end
  if System.SpawnEntity(L3_2842) then
    A0_2839.spawnedEntity = System.SpawnEntity(L3_2842).id
    if not System.SpawnEntity(L3_2842).Events then
      System.SpawnEntity(L3_2842).Events = {}
    end
    if not System.SpawnEntity(L3_2842).Events.Dead then
      System.SpawnEntity(L3_2842).Events.Dead = {}
    end
    table.insert(System.SpawnEntity(L3_2842).Events.Dead, {
      A0_2839.id,
      "Dead"
    })
    if not System.SpawnEntity(L3_2842).Events.Spawned then
      System.SpawnEntity(L3_2842).Events.Spawned = {}
    end
    table.insert(System.SpawnEntity(L3_2842).Events.Spawned, {
      A0_2839.id,
      "Spawned"
    })
  end
  BroadcastEvent(A0_2839, "Spawned")
end
function SpawnGrunt.OnReset(A0_2843)
  if A0_2843.spawnedEntity then
    System.RemoveEntity(A0_2843.spawnedEntity)
    A0_2843.spawnedEntity = nil
  end
end
function SpawnGrunt.GetFlowgraphForwardingEntity(A0_2844)
  local L1_2845
  L1_2845 = A0_2844.spawnedEntity
  return L1_2845
end
function SpawnGrunt.Event_Spawned(A0_2846)
  BroadcastEvent(A0_2846, "Spawned")
end
function SpawnGrunt.Event_Dead(A0_2847, A1_2848, A2_2849)
  if A1_2848 and A1_2848.id == A0_2847.spawnedEntity then
    BroadcastEvent(A0_2847, "Dead")
  end
end
function SpawnGrunt.Event_Disable(A0_2850, A1_2851, A2_2852)
  local L3_2853
  L3_2853 = A0_2850.spawnedEntity
  if L3_2853 then
    if A1_2851 then
      L3_2853 = A0_2850.spawnedEntity
    elseif L3_2853 ~= A1_2851.id then
      L3_2853 = System
      L3_2853 = L3_2853.GetEntity
      L3_2853 = L3_2853(A0_2850.spawnedEntity)
      if L3_2853 and L3_2853 ~= A1_2851 then
        A0_2850.Handle_Disable(L3_2853, A1_2851, A2_2852)
      end
    end
  end
end
function SpawnGrunt.Event_Enable(A0_2854, A1_2855, A2_2856)
  local L3_2857
  L3_2857 = A0_2854.spawnedEntity
  if L3_2857 then
    if A1_2855 then
      L3_2857 = A0_2854.spawnedEntity
    elseif L3_2857 ~= A1_2855.id then
      L3_2857 = System
      L3_2857 = L3_2857.GetEntity
      L3_2857 = L3_2857(A0_2854.spawnedEntity)
      if L3_2857 and L3_2857 ~= A1_2855 then
        A0_2854.Handle_Enable(L3_2857, A1_2855, A2_2856)
      end
    end
  end
end
function SpawnGrunt.Event_Kill(A0_2858, A1_2859, A2_2860)
  local L3_2861
  L3_2861 = A0_2858.spawnedEntity
  if L3_2861 then
    if A1_2859 then
      L3_2861 = A0_2858.spawnedEntity
    elseif L3_2861 ~= A1_2859.id then
      L3_2861 = System
      L3_2861 = L3_2861.GetEntity
      L3_2861 = L3_2861(A0_2858.spawnedEntity)
      if L3_2861 and L3_2861 ~= A1_2859 then
        A0_2858.Handle_Kill(L3_2861, A1_2859, A2_2860)
      end
    end
  end
end
function SpawnGrunt.Event_Spawn(A0_2862, A1_2863, A2_2864)
  local L3_2865
  L3_2865 = A0_2862.spawnedEntity
  if L3_2865 then
    if A1_2863 then
      L3_2865 = A0_2862.spawnedEntity
    elseif L3_2865 ~= A1_2863.id then
      L3_2865 = System
      L3_2865 = L3_2865.GetEntity
      L3_2865 = L3_2865(A0_2862.spawnedEntity)
      if L3_2865 and L3_2865 ~= A1_2863 then
        A0_2862.Handle_Spawn(L3_2865, A1_2863, A2_2864)
      end
    end
  end
end
function SpawnGrunt.Event_Spawned(A0_2866, A1_2867, A2_2868)
  if A1_2867 and A1_2867.id == A0_2866.spawnedEntity then
    BroadcastEvent(A0_2866, "Spawned")
  end
end
SpawnGrunt.FlowEvents = {
  Inputs = {
    Spawn = {
      SpawnGrunt.Event_Spawn,
      "bool"
    },
    Disable = {
      SpawnGrunt.Event_Disable,
      "bool"
    },
    Enable = {
      SpawnGrunt.Event_Enable,
      "bool"
    },
    Hide = {
      SpawnGrunt.Event_Hide,
      "bool"
    },
    Kill = {
      SpawnGrunt.Event_Kill,
      "bool"
    },
    Spawn = {
      SpawnGrunt.Event_Spawn,
      "bool"
    }
  },
  Outputs = {
    Spawned = "bool",
    Dead = "bool",
    Spawned = "bool"
  }
}
SpawnGrunt.Handle_Disable = Grunt.FlowEvents.Inputs.Disable[1]
SpawnGrunt.Handle_Enable = Grunt.FlowEvents.Inputs.Enable[1]
SpawnGrunt.Handle_Kill = Grunt.FlowEvents.Inputs.Kill[1]
SpawnGrunt.Handle_Spawn = Grunt.FlowEvents.Inputs.Spawn[1]
