SpawnGroup = {
  Client = {},
  Server = {},
  Editor = {
    Icon = "spawngroup.bmp"
  },
  Properties = {
    objModelForSpawnGroup = "",
    teamName = "",
    bEnabled = 1,
    bDefault = 0
  }
}
SpawnGroup.NetSetup = {
  Class = SpawnGroup,
  ClientMethods = {},
  ServerMethods = {},
  ServerProperties = {}
}
function SpawnGroup.LoadModel(A0_6569)
  local L1_6570
  L1_6570 = A0_6569.Properties
  L1_6570 = L1_6570.objModelForSpawnGroup
  if string.len(L1_6570) > 0 then
    if string.lower(string.sub(L1_6570, -4)) == ".chr" or string.lower(string.sub(L1_6570, -4)) == ".cdf" or string.lower(string.sub(L1_6570, -4)) == ".cga" then
      A0_6569:LoadCharacter(0, L1_6570)
    else
      A0_6569:LoadObject(0, L1_6570)
    end
  end
  A0_6569:Physicalize(0, PE_STATIC, {mass = 0})
end
function SpawnGroup.OnSpawn(A0_6571)
  A0_6571:Activate(1)
  A0_6571:LoadModel()
end
function SpawnGroup.Server.OnInit(A0_6572)
  g_gameRules.game:SetTeam(g_gameRules.game:GetTeamId(A0_6572.Properties.teamName) or 0, A0_6572.id)
  A0_6572.default = tonumber(A0_6572.Properties.bDefault) ~= 0
end
function SpawnGroup.Server.OnStartGame(A0_6573)
  A0_6573:Enable(tonumber(A0_6573.Properties.bEnabled) ~= 0)
end
function SpawnGroup.OnPropertyChange(A0_6574)
  A0_6574:LoadModel()
end
function SpawnGroup.Server.OnShutDown(A0_6575)
  if g_gameRules then
    g_gameRules.game:RemoveSpawnGroup(A0_6575.id)
  end
end
function SpawnGroup.AddSpawnPoints(A0_6576, A1_6577)
  local L2_6578, L3_6579
  L2_6578 = 0
  L3_6579 = A0_6576.GetLinkTarget
  L3_6579 = L3_6579(A0_6576, A1_6577, L2_6578)
  while L3_6579 do
    g_gameRules.game:AddSpawnLocationToSpawnGroup(A0_6576.id, L3_6579.id)
    L3_6579:Enable(true)
    L2_6578 = L2_6578 + 1
    L3_6579 = A0_6576:GetLinkTarget(A1_6577, L2_6578)
  end
end
function SpawnGroup.RemoveSpawnPoints(A0_6580, A1_6581)
  local L2_6582, L3_6583
  L2_6582 = 0
  L3_6583 = A0_6580.GetLinkTarget
  L3_6583 = L3_6583(A0_6580, A1_6581, L2_6582)
  while L3_6583 do
    g_gameRules.game:RemoveSpawnLocationFromSpawnGroup(A0_6580.id, L3_6583.id)
    L3_6583:Enable(false)
    L2_6582 = L2_6582 + 1
    L3_6583 = A0_6580:GetLinkTarget(A1_6581, L2_6582)
  end
end
function SpawnGroup.Enable(A0_6584, A1_6585)
  local L2_6586
  L2_6586 = g_gameRules
  if not L2_6586 then
    return
  end
  if A1_6585 then
    L2_6586 = g_gameRules
    L2_6586 = L2_6586.game
    L2_6586 = L2_6586.AddSpawnGroup
    L2_6586(L2_6586, A0_6584.id)
    L2_6586 = g_gameRules
    L2_6586 = L2_6586.game
    L2_6586 = L2_6586.GetTeam
    L2_6586 = L2_6586(L2_6586, A0_6584.id)
    if A0_6584.default and L2_6586 ~= 0 then
      g_gameRules.game:SetTeamDefaultSpawnGroup(L2_6586, A0_6584.id)
    end
    A0_6584:AddSpawnPoints("spawn")
    A0_6584:AddSpawnPoints("spawnpoint")
    A0_6584:AddSpawnPoints("disruptor")
  else
    L2_6586 = g_gameRules
    L2_6586 = L2_6586.game
    L2_6586 = L2_6586.RemoveSpawnGroup
    L2_6586(L2_6586, A0_6584.id)
    L2_6586 = A0_6584.RemoveSpawnPoints
    L2_6586(A0_6584, "spawn")
    L2_6586 = A0_6584.RemoveSpawnPoints
    L2_6586(A0_6584, "spawnpoint")
    L2_6586 = A0_6584.RemoveSpawnPoints
    L2_6586(A0_6584, "disruptor")
  end
end
function SpawnGroup.IsEnabled(A0_6587)
  local L1_6588
  L1_6588 = A0_6587.enabled
  return L1_6588
end
function SpawnGroup.Event_Enable(A0_6589)
  A0_6589:Enable(true)
  if g_gameRules.SpawnGroupEnabled then
    g_gameRules:SpawnGroupEnabled(A0_6589.id, true)
  end
end
function SpawnGroup.Event_Disable(A0_6590)
  A0_6590:Enable(false)
  if g_gameRules.SpawnGroupEnabled then
    g_gameRules:SpawnGroupEnabled(A0_6590.id, false)
  end
end
SpawnGroup.FlowEvents = {
  Inputs = {
    Enable = {
      SpawnGroup.Event_Enable,
      "bool"
    },
    Disable = {
      SpawnGroup.Event_Disable,
      "bool"
    }
  }
}
Net.Expose(SpawnGroup.NetSetup)
