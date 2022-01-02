local L0_6591, L1_6592
L0_6591 = {}
L1_6592 = {}
L0_6591.Client = L1_6592
L1_6592 = {}
L0_6591.Server = L1_6592
L1_6592 = {}
L1_6592.Icon = "spectator.bmp"
L1_6592.DisplayArrow = 1
L0_6591.Editor = L1_6592
L1_6592 = {}
L1_6592.bEnabled = 1
L0_6591.Properties = L1_6592
SpectatorPoint = L0_6591
L0_6591 = SpectatorPoint
L0_6591 = L0_6591.Server
function L1_6592(A0_6593)
  A0_6593:Enable(tonumber(A0_6593.Properties.bEnabled) ~= 0)
  A0_6593:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_6591.OnInit = L1_6592
L0_6591 = SpectatorPoint
L0_6591 = L0_6591.Client
function L1_6592(A0_6594)
  if not CryAction.IsServer() then
    A0_6594:Enable(tonumber(A0_6594.Properties.bEnabled) ~= 0)
  end
  A0_6594:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_6591.OnInit = L1_6592
L0_6591 = SpectatorPoint
function L1_6592(A0_6595, A1_6596)
  if A1_6596 then
    g_gameRules.game:AddSpectatorLocation(A0_6595.id)
  else
    g_gameRules.game:RemoveSpectatorLocation(A0_6595.id)
  end
  A0_6595.enabled = A1_6596
end
L0_6591.Enable = L1_6592
L0_6591 = SpectatorPoint
L0_6591 = L0_6591.Server
function L1_6592(A0_6597)
  if g_gameRules then
    g_gameRules.game:RemoveSpectatorLocation(A0_6597.id)
  end
end
L0_6591.OnShutDown = L1_6592
L0_6591 = SpectatorPoint
L0_6591 = L0_6591.Client
function L1_6592(A0_6598)
  if g_gameRules and not CryAction.IsServer() then
    g_gameRules.game:RemoveSpectatorLocation(A0_6598.id)
  end
end
L0_6591.OnShutDown = L1_6592
L0_6591 = SpectatorPoint
function L1_6592(A0_6599)
  local L1_6600
  L1_6600 = A0_6599.enabled
  return L1_6600
end
L0_6591.IsEnabled = L1_6592
