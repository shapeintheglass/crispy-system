ForbiddenArea = {
  Server = {},
  Client = {},
  Editor = {
    Icon = "forbiddenarea.bmp"
  },
  type = "ForbiddenArea",
  Properties = {
    bEnabled = 1,
    bReversed = 1,
    DamagePerSecond = 35,
    esDamageType = "punish",
    Delay = 5,
    bShowWarning = 1,
    bInfiniteFall = 0,
    teamName = "",
    overrideTimerLength = 0,
    bResetsObjects = 1,
    MultiplayerOptions = {bNetworked = 0}
  },
  owner = 0,
  bTimerStarted = false,
  TIMER_LENGTH = 1000
}
Net.Expose({
  Class = ForbiddenArea,
  ClientMethods = {
    ClSetOwner = {
      RELIABLE_UNORDERED,
      NO_ATTACH,
      ENTITYID
    }
  },
  ServerMethods = {
    SvSetOwner = {
      RELIABLE_UNORDERED,
      NO_ATTACH,
      ENTITYID
    }
  }
})
ForbiddenArea.AUDIO_SIGNAL = nil
function ForbiddenArea.OnSpawn(A0_6477)
  if A0_6477.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_6477:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
end
function ForbiddenArea.Server.SvSetOwner(A0_6478, A1_6479)
  A0_6478.owner = A1_6479
  A0_6478.otherClients:ClSetOwner(System.GetEntity(A1_6479).actor:GetChannel(), A1_6479 or NULL_ENTITY)
end
function ForbiddenArea.Client.ClSetOwner(A0_6480, A1_6481)
  A0_6480.owner = A1_6481
end
function ForbiddenArea.OnPropertyChange(A0_6482)
  A0_6482:OnReset()
end
function ForbiddenArea.Server.OnInit(A0_6483)
  A0_6483.inside = {}
  A0_6483.warning = {}
  A0_6483:OnReset()
end
function ForbiddenArea.Client.OnInit(A0_6484)
  if not CryAction.IsServer() then
    A0_6484.inside = {}
    A0_6484.warning = {}
    A0_6484:OnReset()
  end
end
function ForbiddenArea.Client.OnTimer(A0_6485, A1_6486, A2_6487)
  local L3_6488
  L3_6488 = A0_6485.Properties
  L3_6488 = L3_6488.bEnabled
  if L3_6488 == 0 then
    return
  end
  L3_6488 = A0_6485.GetTimerLength
  L3_6488 = L3_6488(A0_6485)
  if 0 < g_localActor.actor:GetHealth() then
    A0_6485:SetTimer(A1_6486, L3_6488)
  end
  if g_localActor then
    vehId = g_localActor.actor:GetLinkedVehicleId()
    if not true then
      if not A0_6485.reverse then
        if A0_6485:IsPlayerInside(g_localActorId) and (not A0_6485.teamId or A0_6485.teamId ~= g_gameRules.game:GetTeam(g_localActorId)) then
          A0_6485:PunishPlayer(g_localActor, L3_6488)
        end
      elseif not A0_6485:IsPlayerInside(g_localActorId) and (not A0_6485.teamId or A0_6485.teamId ~= g_gameRules.game:GetTeam(g_localActorId)) then
        A0_6485:PunishPlayer(g_localActor, L3_6488)
      end
    end
  end
end
function ForbiddenArea.PunishPlayer(A0_6489, A1_6490, A2_6491)
  local L3_6492, L4_6493, L5_6494
  L3_6492 = A1_6490.actor
  if L3_6492 then
    L3_6492 = A1_6490.actor
    L4_6493 = L3_6492
    L3_6492 = L3_6492.IsImmuneToForbiddenArea
    L3_6492 = L3_6492(L4_6493)
  end
  L4_6493 = A1_6490.actor
  L5_6494 = L4_6493
  L4_6493 = L4_6493.GetSpectatorMode
  L4_6493 = L4_6493(L5_6494)
  if L4_6493 == 0 then
    L5_6494 = A1_6490
    L4_6493 = A1_6490.IsDead
    L4_6493 = L4_6493(L5_6494)
  elseif L4_6493 or L3_6492 then
    return
  end
  L4_6493 = -1
  L5_6494 = A0_6489.Properties
  L5_6494 = L5_6494.bInfiniteFall
  if L5_6494 ~= 0 then
    L5_6494 = g_gameRules
    L5_6494 = L5_6494.game
    L5_6494 = L5_6494.GetHitTypeId
    L5_6494 = L5_6494(L5_6494, "punishFall")
    L4_6493 = L5_6494
  else
    L5_6494 = g_gameRules
    L5_6494 = L5_6494.game
    L5_6494 = L5_6494.GetHitTypeId
    L5_6494 = L5_6494(L5_6494, A0_6489.Properties.esDamageType)
    L4_6493 = L5_6494
  end
  L5_6494 = A0_6489.dps
  L5_6494 = L5_6494 * (A2_6491 / 1000)
  if not A0_6489.owner or A0_6489.owner == 0 then
    g_gameRules.game:ClientSelfHarm(L5_6494, 0, -1, L4_6493, {
      x = 0,
      y = 0,
      z = 0
    }, {
      x = 0,
      y = 0,
      z = 1
    }, {
      x = 0,
      y = 0,
      z = -1
    })
  else
    g_gameRules.game:ClientSelfHarmByEntity(A0_6489.owner, L5_6494, 0, -1, L4_6493, {
      x = 0,
      y = 0,
      z = 0
    }, {
      x = 0,
      y = 0,
      z = 1
    }, {
      x = 0,
      y = 0,
      z = -1
    })
  end
end
function ForbiddenArea.DamageVehicle(A0_6495, A1_6496, A2_6497)
  local L3_6498, L4_6499
  L3_6498 = A0_6495.Properties
  L3_6498 = L3_6498.bInfiniteFall
  if L3_6498 == 0 then
    L3_6498 = A0_6495.Properties
    L3_6498 = L3_6498.esDamageType
    if L3_6498 ~= "punish" then
      L3_6498 = A0_6495.Properties
      L3_6498 = L3_6498.esDamageType
    end
  elseif L3_6498 == "punishFall" then
    return
  end
  L3_6498 = g_gameRules
  L3_6498 = L3_6498.game
  L4_6499 = L3_6498
  L3_6498 = L3_6498.GetHitTypeId
  L3_6498 = L3_6498(L4_6499, A0_6495.Properties.esDamageType)
  L4_6499 = A0_6495.dps
  L4_6499 = L4_6499 * A2_6497
  L4_6499 = L4_6499 * 10
  g_gameRules.game:ServerHarmVehicle(A1_6496, L4_6499, 0, L3_6498, {
    x = 0,
    y = 0,
    z = 0
  }, {
    x = 0,
    y = 0,
    z = 1
  }, {
    x = 0,
    y = 0,
    z = -1
  })
end
function ForbiddenArea.ActorEnteredArea(A0_6500, A1_6501)
  for _FORV_6_, _FORV_7_ in ipairs(A0_6500.inside) do
    if _FORV_7_ == A1_6501.id then
      break
    end
  end
  if true then
    return
  end
  table.insert(A0_6500.inside, A1_6501.id)
end
function ForbiddenArea.Client.OnEnterArea_Internal(A0_6502, A1_6503)
  if not A0_6502.teamId or A0_6502.teamId ~= g_gameRules.game:GetTeam(A1_6503.id) then
    if not A0_6502.reverse then
      A0_6502.warning[A1_6503.id] = A0_6502.delay
      if g_localActorId and g_localActorId == A1_6503.id and A1_6503.actor:GetSpectatorMode() == 0 and not A1_6503:IsDead() then
        if A1_6503.actor:IsImmuneToForbiddenArea() then
          A0_6502:SetTimer(0, A0_6502.delay * 1000)
        else
          if A0_6502.showWarning then
            g_gameRules.game:ForbiddenAreaWarning(true, A0_6502.delay, A1_6503.id)
            GameAudio.PlaySignal(A0_6502.AUDIO_SIGNAL)
            GameAudio.Announce("LeavingMap", 0)
          end
          A0_6502:SetTimer(0, A0_6502.delay * 1000)
        end
      end
    else
      A0_6502.warning[A1_6503.id] = nil
      if g_localActorId and g_localActorId == A1_6503.id then
        if A0_6502.showWarning then
          g_gameRules.game:ForbiddenAreaWarning(false, 0, A1_6503.id)
          GameAudio.StopSignal(A0_6502.AUDIO_SIGNAL)
        end
        A0_6502:KillTimer(0)
      end
    end
  end
end
function ForbiddenArea.Client.OnEnterArea(A0_6504, A1_6505, A2_6506)
  if A1_6505.actor then
    A0_6504:ActorEnteredArea(A1_6505)
    A0_6504.Client.OnEnterArea_Internal(A0_6504, A1_6505)
  end
end
function ForbiddenArea.ActorLeftArea(A0_6507, A1_6508)
  local L2_6509, L3_6510, L4_6511, L5_6512, L6_6513
  L2_6509 = false
  for L6_6513, _FORV_7_ in L3_6510(L4_6511) do
    if _FORV_7_ == A1_6508.id then
      L2_6509 = true
      table.remove(A0_6507.inside, L6_6513)
      break
    end
  end
  return L2_6509
end
function ForbiddenArea.Client.OnLeaveArea_Internal(A0_6514, A1_6515, A2_6516)
  if not A0_6514.teamId or A0_6514.teamId ~= g_gameRules.game:GetTeam(A1_6515.id) then
    if A0_6514.reverse then
      if A2_6516 then
        A0_6514.warning[A1_6515.id] = A0_6514.delay
        if g_localActorId and g_localActorId == A1_6515.id and A1_6515.actor:GetSpectatorMode() == 0 and not A1_6515:IsDead() then
          if A1_6515.actor:IsImmuneToForbiddenArea() then
            A0_6514:SetTimer(0, A0_6514.delay * 1000)
          else
            if A0_6514.showWarning then
              g_gameRules.game:ForbiddenAreaWarning(true, A0_6514.delay, A1_6515.id)
              GameAudio.PlaySignal(A0_6514.AUDIO_SIGNAL)
              GameAudio.Announce("LeavingMap", 0)
            end
            A0_6514:SetTimer(0, A0_6514.delay * 1000)
          end
        end
      end
    else
      A0_6514.warning[A1_6515.id] = nil
      if g_localActorId and g_localActorId == A1_6515.id then
        if A0_6514.showWarning then
          g_gameRules.game:ForbiddenAreaWarning(false, 0, A1_6515.id)
          GameAudio.StopSignal(A0_6514.AUDIO_SIGNAL)
        end
        A0_6514:KillTimer(0)
      end
    end
  end
end
function ForbiddenArea.Client.OnLeaveArea(A0_6517, A1_6518, A2_6519)
  local L3_6520
  L3_6520 = A1_6518.actor
  if L3_6520 then
    L3_6520 = A0_6517.ActorLeftArea
    L3_6520 = L3_6520(A0_6517, A1_6518)
    A0_6517.Client.OnLeaveArea_Internal(A0_6517, A1_6518, L3_6520)
  end
end
function ForbiddenArea.OnSave(A0_6521, A1_6522)
  A1_6522.inside = A0_6521.inside
end
function ForbiddenArea.OnLoad(A0_6523, A1_6524)
  A0_6523:OnReset()
  A0_6523.inside = A1_6524.inside
end
function ForbiddenArea.OnReset(A0_6525)
  A0_6525.reverse = tonumber(A0_6525.Properties.bReversed) ~= 0
  A0_6525.delay = tonumber(A0_6525.Properties.Delay)
  A0_6525.dps = tonumber(A0_6525.Properties.DamagePerSecond)
  A0_6525.showWarning = tonumber(A0_6525.Properties.bShowWarning) ~= 0
  A0_6525.warning = {}
  A0_6525.isServer = CryAction.IsServer()
  A0_6525.isClient = CryAction.IsClient()
  if A0_6525.Properties.teamName ~= "" then
    A0_6525.teamId = g_gameRules.game:GetTeamId(A0_6525.Properties.teamName)
    if A0_6525.teamId == 0 then
      A0_6525.teamId = nil
    end
  end
  if A0_6525.Properties.bEnabled ~= 0 then
    g_gameRules.game:AddForbiddenArea(A0_6525.id)
  end
  A0_6525:RegisterForAreaEvents(A0_6525.Properties.bEnabled and 1 or 0)
end
function ForbiddenArea.IsPlayerInside(A0_6526, A1_6527)
  for _FORV_5_, _FORV_6_ in pairs(A0_6526.inside) do
    if _FORV_6_ == A1_6527 then
      return true
    end
  end
  return false
end
function ForbiddenArea.GetTimerLength(A0_6528)
  local L1_6529
  L1_6529 = A0_6528.Properties
  L1_6529 = L1_6529.overrideTimerLength
  if L1_6529 == 0 then
    L1_6529 = A0_6528.TIMER_LENGTH
  end
  return L1_6529
end
function ForbiddenArea.Server.OnShutDown(A0_6530)
  if g_gameRules then
    g_gameRules.game:RemoveForbiddenArea(A0_6530.id)
  end
end
function ForbiddenArea.Client.OnShutDown(A0_6531)
  if g_gameRules and not CryAction.IsServer() then
    g_gameRules.game:RemoveForbiddenArea(A0_6531.id)
  end
end
function ForbiddenArea.OnLocalPlayerRevived(A0_6532)
  if A0_6532.Properties.bEnabled ~= 0 then
    A0_6532.bTimerStarted = true
  else
    A0_6532:KillTimer(0)
  end
end
function ForbiddenArea.OnLocalPlayerImmunityOff(A0_6533)
  local L1_6534
  L1_6534 = A0_6533.Properties
  L1_6534 = L1_6534.bEnabled
  if L1_6534 ~= 0 then
    L1_6534 = g_localActorId
    if L1_6534 ~= nil then
      L1_6534 = System
      L1_6534 = L1_6534.GetEntity
      L1_6534 = L1_6534(g_localActorId)
      if L1_6534 and L1_6534.actor then
        if A0_6533:IsPlayerInside(g_localActorId) then
          A0_6533.Client.OnEnterArea_Internal(A0_6533, L1_6534)
        else
          A0_6533.Client.OnLeaveArea_Internal(A0_6533, L1_6534, true)
        end
      end
    end
  end
end
function ForbiddenArea.OnLocalPlayerImmunityOn(A0_6535)
  local L1_6536
  L1_6536 = A0_6535.Properties
  L1_6536 = L1_6536.bEnabled
  if L1_6536 ~= 0 then
    L1_6536 = g_localActorId
    if L1_6536 ~= nil then
      L1_6536 = System
      L1_6536 = L1_6536.GetEntity
      L1_6536 = L1_6536(g_localActorId)
      if L1_6536 and L1_6536.actor then
        if A0_6535:IsPlayerInside(g_localActorId) then
          A0_6535.Client.OnLeaveArea_Internal(A0_6535, L1_6536, true)
        else
          A0_6535.Client.OnEnterArea_Internal(A0_6535, L1_6536)
        end
      end
    end
  end
end
function ForbiddenArea.Event_Enable(A0_6537)
  if A0_6537.Properties.bEnabled ~= 1 then
    A0_6537.Properties.bEnabled = 1
    BroadcastEvent(A0_6537, "Enabled")
    g_gameRules.game:AddForbiddenArea(A0_6537.id)
    A0_6537:SetTimer(0, A0_6537.delay * 1000)
    A0_6537:RegisterForAreaEvents(1)
  end
end
function ForbiddenArea.Event_Disable(A0_6538)
  if A0_6538.Properties.bEnabled ~= 0 then
    A0_6538.Properties.bEnabled = 0
    BroadcastEvent(A0_6538, "Disabled")
    g_gameRules.game:RemoveForbiddenArea(A0_6538.id)
    A0_6538:RegisterForAreaEvents(0)
  end
end
function ForbiddenArea.Event_SetOwner(A0_6539, A1_6540, A2_6541)
  A0_6539.owner = A2_6541.id
  if A0_6539.bNetworked ~= 0 then
    if A0_6539.isServer then
      if g_localChannelId ~= nil then
        A0_6539.otherClients:ClSetOwner(g_localChannelId, A0_6539.owner or NULL_ENTITY)
      else
        A0_6539.allClients:ClSetOwner(A0_6539.owner or NULL_ENTITY)
      end
    else
      A0_6539.server:SvSetOwner(A0_6539.owner or NULL_ENTITY)
    end
  end
end
ForbiddenArea.FlowEvents = {
  Inputs = {
    Disable = {
      ForbiddenArea.Event_Disable,
      "bool"
    },
    Enable = {
      ForbiddenArea.Event_Enable,
      "bool"
    },
    SetOwner = {
      ForbiddenArea.Event_SetOwner,
      "entity"
    }
  },
  Outputs = {Disabled = "bool", Enabled = "bool"}
}
