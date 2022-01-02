local L0_7213, L1_7214, L2_7215, L3_7216
L0_7213 = {}
L1_7214 = {}
L0_7213.Client = L1_7214
L1_7214 = {}
L0_7213.Server = L1_7214
L1_7214 = {}
L1_7214.Model = "Editor/Objects/spawnpointhelper.cgf"
L1_7214.Icon = "SpawnPoint.bmp"
L1_7214.DisplayArrow = 1
L0_7213.Editor = L1_7214
L1_7214 = {}
L1_7214.teamName = ""
L1_7214.groupName = ""
L1_7214.bEnabled = 1
L1_7214.bInitialSpawn = 0
L1_7214.bDoVisTest = 1
L1_7214.destinationName = ""
L1_7214.bForceHiddenInProbes = 1
L0_7213.Properties = L1_7214
SpawnPoint = L0_7213
L0_7213 = SpawnPoint
L0_7213 = L0_7213.Server
function L1_7214(A0_7217)
  if System.IsMultiplayer() then
    g_gameRules.game:AddSpawnLocation(A0_7217.id, A0_7217.Properties.bInitialSpawn, A0_7217.Properties.bDoVisTest, A0_7217.Properties.groupName)
  end
  A0_7217:Enable(tonumber(A0_7217.Properties.bEnabled) ~= 0)
  A0_7217:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  g_gameRules.game:ClientSetTeam(g_gameRules.game:GetTeamId(A0_7217.Properties.teamName) or 0, A0_7217.id)
  if System.IsEditor() then
    A0_7217:LoadObject(0, A0_7217.Editor.Model)
  end
end
L0_7213.OnInit = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7218, A1_7219)
  if A1_7219 then
    A0_7218:DrawSlot(0, 0)
  else
    A0_7218:DrawSlot(0, 1)
  end
end
L0_7213.OnEditorSetGameMode = L1_7214
L0_7213 = SpawnPoint
L0_7213 = L0_7213.Client
function L1_7214(A0_7220)
  A0_7220:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  if not CryAction.IsServer() then
    g_gameRules.game:AddSpawnLocation(A0_7220.id, A0_7220.Properties.bInitialSpawn, A0_7220.Properties.bDoVisTest, A0_7220.Properties.groupName)
    g_gameRules.game:ClientSetTeam(g_gameRules.game:GetTeamId(A0_7220.Properties.teamName) or 0, A0_7220.id)
    A0_7220:Enable(tonumber(A0_7220.Properties.bEnabled) ~= 0)
  end
end
L0_7213.OnInit = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7221, A1_7222)
  if System.IsMultiplayer() then
    if A1_7222 then
      g_gameRules.game:EnableSpawnLocation(A0_7221.id, A0_7221.Properties.bInitialSpawn, A0_7221.Properties.groupName)
    else
      g_gameRules.game:DisableSpawnLocation(A0_7221.id, A0_7221.Properties.bInitialSpawn)
    end
  elseif A1_7222 then
    g_gameRules.game:AddSpawnLocation(A0_7221.id, A0_7221.Properties.bInitialSpawn, A0_7221.Properties.bDoVisTest, A0_7221.Properties.groupName)
  else
    g_gameRules.game:RemoveSpawnLocation(A0_7221.id, A0_7221.Properties.bInitialSpawn)
  end
  A0_7221.enabled = A1_7222
end
L0_7213.Enable = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7223)
  A0_7223:Enable(tonumber(A0_7223.Properties.bEnabled) ~= 0)
end
L0_7213.OnPropertyChange = L1_7214
L0_7213 = SpawnPoint
L0_7213 = L0_7213.Server
function L1_7214(A0_7224)
  if g_gameRules then
    g_gameRules.game:RemoveSpawnLocation(A0_7224.id, A0_7224.Properties.bInitialSpawn)
  end
end
L0_7213.OnShutDown = L1_7214
L0_7213 = SpawnPoint
L0_7213 = L0_7213.Client
function L1_7214(A0_7225)
  if g_gameRules and not CryAction.IsServer() then
    g_gameRules.game:RemoveSpawnLocation(A0_7225.id, A0_7225.Properties.bInitialSpawn)
  end
end
L0_7213.OnShutDown = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7226, A1_7227)
  A0_7226:ActivateOutput("Spawn", A1_7227.id)
end
L0_7213.Spawned = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7228)
  local L1_7229
  L1_7229 = A0_7228.enabled
  return L1_7229
end
L0_7213.IsEnabled = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7230)
  local L1_7231
  L1_7231 = g_localActor
  if L1_7231 == nil then
    return
  end
  L1_7231 = g_localActor
  A0_7230:GetWorldPos(g_Vectors.temp_v1)
  A0_7230:GetAngles(g_Vectors.temp_v2)
  g_Vectors.temp_v2.x = 0
  g_Vectors.temp_v2.y = 0
  L1_7231.arkPlayer:Spawn(g_Vectors.temp_v1, g_Vectors.temp_v2)
  A0_7230:ActivateOutput("Spawn", L1_7231.id)
end
L0_7213.Event_Spawn = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7232)
  A0_7232:Enable(true)
  BroadcastEvent(A0_7232, "Enabled")
end
L0_7213.Event_Enable = L1_7214
L0_7213 = SpawnPoint
function L1_7214(A0_7233)
  A0_7233:Enable(false)
  BroadcastEvent(A0_7233, "Disabled")
end
L0_7213.Event_Disable = L1_7214
L0_7213 = SpawnPoint
L1_7214 = {}
L2_7215 = {}
L3_7216 = {
  SpawnPoint.Event_Spawn,
  "bool"
}
L2_7215.Spawn = L3_7216
L3_7216 = {
  SpawnPoint.Event_Enable,
  "bool"
}
L2_7215.Enable = L3_7216
L3_7216 = {
  SpawnPoint.Event_Disable,
  "bool"
}
L2_7215.Disable = L3_7216
L1_7214.Inputs = L2_7215
L2_7215 = {}
L2_7215.Spawn = "entity"
L2_7215.Enabled = "bool"
L2_7215.Disabled = "bool"
L1_7214.Outputs = L2_7215
L0_7213.FlowEvents = L1_7214
