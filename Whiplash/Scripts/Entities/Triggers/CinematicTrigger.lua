CinematicTrigger = {
  Properties = {
    fDimX = 1,
    fDimY = 1,
    fDimZ = 1,
    bEnabled = 1,
    ScriptCommand = "",
    Sequence = "",
    bTriggerOnce = 0,
    fMaxDistance = 200,
    fMinDistance = 0,
    fMinVisibleTime = 0.5,
    fDelay = 0,
    fCheckTimer = 0.25,
    fZoomMinimum = 1,
    bInVehicleOnly = 0,
    bCheckLOS = 0,
    MultiplayerOptions = {
      bNetworked = 0,
      bPerPlayer = 0,
      MinPlayers = 1
    }
  },
  VISIBILITY_TIMER_ID = 0,
  Client = {},
  Server = {},
  Editor = {
    Model = "Editor/Objects/T.cgf",
    Icon = "Trigger.bmp",
    ShowBounds = 1
  }
}
Net.Expose({
  Class = CinematicTrigger,
  ClientMethods = {
    ClEnable = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      BOOL
    },
    ClVisible = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    ClInvisible = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    ClTrigger = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    }
  },
  ServerMethods = {
    SvRequestVisible = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    },
    SvRequestInvisible = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    }
  },
  ServerProperties = {}
})
function CinematicTrigger.OnSpawn(A0_8586)
  A0_8586:OnReset()
end
function CinematicTrigger.OnPropertyChange(A0_8587)
  A0_8587:OnReset()
end
function CinematicTrigger.OnReset(A0_8588)
  local L1_8589, L2_8590, L3_8591, L4_8592
  if L1_8589 then
    for L4_8592, _FORV_5_ in L1_8589(L2_8590) do
      A0_8588:KillTimer(L4_8592)
    end
  end
  L4_8592 = A0_8588.Properties
  L4_8592 = L4_8592.fDimY
  L4_8592 = L4_8592 * 0.5
  L1_8589.x = -L3_8591
  L1_8589.y = -L4_8592
  L1_8589.z = -(A0_8588.Properties.fDimZ * 0.5)
  L2_8590.x = L3_8591
  L2_8590.z, L2_8590.y = A0_8588.Properties.fDimZ * 0.5, L4_8592
  A0_8588:SetTriggerBBox(L1_8589, L2_8590)
  A0_8588:Activate(0)
  A0_8588.timerId = 1
  A0_8588.isvisible = nil
  A0_8588.enabled = nil
  A0_8588.triggerOnce = tonumber(A0_8588.Properties.bTriggerOnce) ~= 0
  A0_8588.localOnly = A0_8588.Properties.MultiplayerOptions.bNetworked == 0
  A0_8588.perPlayer = tonumber(A0_8588.Properties.MultiplayerOptions.bPerPlayer) ~= 0
  A0_8588.minPlayers = tonumber(A0_8588.Properties.MultiplayerOptions.MinPlayers)
  if 1 > A0_8588.minPlayers then
    A0_8588.minPlayers = 1
  end
  A0_8588.isServer = CryAction.IsServer()
  A0_8588.isClient = CryAction.IsClient()
  A0_8588.visible = {}
  A0_8588.timers = {}
  if not A0_8588.localOnly then
    A0_8588.triggeredPP = {}
    A0_8588.triggeredOncePP = {}
  end
  A0_8588.triggeredOnce = nil
  A0_8588.triggered = nil
  A0_8588.visibleCount = 0
  A0_8588:Enable(tonumber(A0_8588.Properties.bEnabled) ~= 0)
  A0_8588.enableChanged = false
end
function CinematicTrigger.Enable(A0_8593, A1_8594)
  if A1_8594 then
    if A0_8593.isClient then
      A0_8593:SetTimer(A0_8593.VISIBILITY_TIMER_ID, A0_8593.Properties.fCheckTimer * 1000)
      A0_8593.last_visible_time = nil
    end
  elseif A0_8593.isClient then
    A0_8593:KillTimer(A0_8593.VISIBILITY_TIMER_ID)
  end
  if not A0_8593.localOnly and A0_8593.isServer and A1_8594 ~= A0_8593.enabled and A0_8593.otherClients then
    A0_8593.otherClients:ClEnable(g_localChannelId, A1_8594)
  end
  A0_8593.enabled = A1_8594
  A0_8593.enableChanged = true
end
function CinematicTrigger.OnLoad(A0_8595, A1_8596)
  A0_8595:OnReset()
  A0_8595:Enable(A1_8596.enabled)
  A0_8595.triggered = A1_8596.triggered
  A0_8595.triggeredOnce = A1_8596.triggeredOnce
end
function CinematicTrigger.OnSave(A0_8597, A1_8598)
  local L2_8599
  L2_8599 = A0_8597.enabled
  A1_8598.enabled = L2_8599
  L2_8599 = A0_8597.triggered
  A1_8598.triggered = L2_8599
  L2_8599 = A0_8597.triggeredOnce
  A1_8598.triggeredOnce = L2_8599
end
function CinematicTrigger.Client.ClEnable(A0_8600, A1_8601)
  if A1_8601 then
    A0_8600:SetTimer(A0_8600.VISIBILITY_TIMER_ID, A0_8600.Properties.fCheckTimer * 1000)
    A0_8600.last_visible_time = nil
  else
    A0_8600:KillTimer(A0_8600.VISIBILITY_TIMER_ID)
  end
  A0_8600.enabled = A1_8601
end
function CinematicTrigger.Server.OnPostInitClient(A0_8602, A1_8603)
  if A0_8602.enableChanged then
    A0_8602.onClient:ClEnable(A1_8603, A0_8602.enabled)
  end
end
function CinematicTrigger.Server.SvRequestVisible(A0_8604, A1_8605)
  A0_8604:Visible(A1_8605)
end
function CinematicTrigger.Server.SvRequestInvisible(A0_8606, A1_8607)
  A0_8606:Invisible(A1_8607)
end
function CinematicTrigger.Trigger(A0_8608, A1_8609)
  local L2_8610
  L2_8610 = A0_8608.triggerOnce
  if L2_8610 then
    L2_8610 = A0_8608.KillTimer
    L2_8610(A0_8608, A0_8608.VISIBILITY_TIMER_ID)
  end
  L2_8610 = A0_8608.Properties
  L2_8610 = L2_8610.ScriptCommand
  if L2_8610 then
    L2_8610 = A0_8608.Properties
    L2_8610 = L2_8610.ScriptCommand
    if L2_8610 ~= "" then
      L2_8610 = loadstring
      L2_8610 = L2_8610(A0_8608.Properties.ScriptCommand)
      if L2_8610 ~= nil then
        L2_8610()
      end
    end
  end
  L2_8610 = A0_8608.Properties
  L2_8610 = L2_8610.Sequence
  if L2_8610 ~= "" then
    L2_8610 = Movie
    L2_8610 = L2_8610.PlaySequence
    L2_8610(A0_8608.Properties.Sequence)
  end
end
function CinematicTrigger.Visible(A0_8611, A1_8612)
  if not A0_8611:CanTrigger(A1_8612) then
    return
  end
  A0_8611.visible[A1_8612] = true
  A0_8611.visibleCount = A0_8611.visibleCount + 1
  if not A0_8611.localOnly and A0_8611.visibleCount < A0_8611.minPlayers then
    return
  end
  A0_8611:Event_Visible(A1_8612)
  A0_8611:CreateTimer(A1_8612, A0_8611.Properties.fDelay * 1000)
end
function CinematicTrigger.Invisible(A0_8613, A1_8614)
  if not A0_8613:CanTrigger(A1_8614) then
    return
  end
  A0_8613.visible[A1_8614] = nil
  A0_8613.visibleCount = A0_8613.visibleCount - 1
  A0_8613:Event_Invisible(A1_8614)
end
function CinematicTrigger.CanTrigger(A0_8615, A1_8616)
  local L3_8617
  L3_8617 = A0_8615.Properties
  if L3_8617.bInVehicleOnly ~= 0 and not A1_8616.vehicle then
    return false
  end
  return true
end
function CinematicTrigger.IsVisible(A0_8618)
  local L1_8619, L2_8620, L3_8621, L4_8622
  L1_8619 = g_Vectors
  L1_8619 = L1_8619.temp_v1
  L2_8620 = g_Vectors
  L2_8620 = L2_8620.temp_v2
  L3_8621 = g_Vectors
  L3_8621 = L3_8621.temp_v3
  L4_8622 = g_Vectors
  L4_8622 = L4_8622.temp_v4
  A0_8618.pos = A0_8618:GetWorldPos(A0_8618.pos)
  L1_8619.x = A0_8618.pos.x + A0_8618.Properties.fDimX * 0.5
  L1_8619.y = A0_8618.pos.y + A0_8618.Properties.fDimY * 0.5
  L1_8619.z = A0_8618.pos.z + A0_8618.Properties.fDimZ * 0.5
  L2_8620.x = A0_8618.pos.x + A0_8618.Properties.fDimX * 0.5
  L2_8620.y = A0_8618.pos.y + A0_8618.Properties.fDimY * 0.5
  L2_8620.z = A0_8618.pos.z - A0_8618.Properties.fDimZ * 0.5
  L3_8621.x = A0_8618.pos.x + A0_8618.Properties.fDimX * 0.5
  L3_8621.y = A0_8618.pos.y - A0_8618.Properties.fDimY * 0.5
  L3_8621.z = A0_8618.pos.z + A0_8618.Properties.fDimZ * 0.5
  L4_8622.x = A0_8618.pos.x + A0_8618.Properties.fDimX * 0.5
  L4_8622.y = A0_8618.pos.y - A0_8618.Properties.fDimY * 0.5
  L4_8622.z = A0_8618.pos.z - A0_8618.Properties.fDimZ * 0.5
  if System.IsPointVisible(L1_8619) and System.IsPointVisible(L2_8620) and System.IsPointVisible(L3_8621) and System.IsPointVisible(L4_8622) then
    L1_8619.x = A0_8618.pos.x - A0_8618.Properties.fDimX * 0.5
    L1_8619.y = A0_8618.pos.y + A0_8618.Properties.fDimY * 0.5
    L1_8619.z = A0_8618.pos.z + A0_8618.Properties.fDimZ * 0.5
    L2_8620.x = A0_8618.pos.x - A0_8618.Properties.fDimX * 0.5
    L2_8620.y = A0_8618.pos.y + A0_8618.Properties.fDimY * 0.5
    L2_8620.z = A0_8618.pos.z - A0_8618.Properties.fDimZ * 0.5
    L3_8621.x = A0_8618.pos.x - A0_8618.Properties.fDimX * 0.5
    L3_8621.y = A0_8618.pos.y - A0_8618.Properties.fDimY * 0.5
    L3_8621.z = A0_8618.pos.z + A0_8618.Properties.fDimZ * 0.5
    L4_8622.x = A0_8618.pos.x - A0_8618.Properties.fDimX * 0.5
    L4_8622.y = A0_8618.pos.y - A0_8618.Properties.fDimY * 0.5
    L4_8622.z = A0_8618.pos.z - A0_8618.Properties.fDimZ * 0.5
    if System.IsPointVisible(L1_8619) and System.IsPointVisible(L2_8620) and System.IsPointVisible(L3_8621) and System.IsPointVisible(L4_8622) then
      return true
    end
  end
  return false
end
function CinematicTrigger.CheckZoom(A0_8623)
  if A0_8623.Properties.fZoomMinimum > 1 then
    if System.GetCVar("cl_fov") / (System.GetViewCameraFov() / math.pi * 180) >= A0_8623.Properties.fZoomMinimum then
      return true
    else
      return false
    end
  else
    return true
  end
end
function CinematicTrigger.IsInRange(A0_8624)
  local L1_8625, L2_8626
  L1_8625 = g_localActor
  if not L1_8625 then
    return
  end
  L2_8626 = A0_8624
  L1_8625 = A0_8624.GetWorldPos
  L1_8625 = L1_8625(L2_8626, g_Vectors.temp_v1)
  L2_8626 = g_localActor
  L2_8626 = L2_8626.GetWorldPos
  L2_8626 = L2_8626(L2_8626, g_Vectors.temp_v2)
  if vecDistanceSq(L1_8625, L2_8626) < A0_8624.Properties.fMinDistance * A0_8624.Properties.fMinDistance or vecDistanceSq(L1_8625, L2_8626) > A0_8624.Properties.fMaxDistance * A0_8624.Properties.fMaxDistance then
    return false
  end
  return true
end
function CinematicTrigger.CheckLOS(A0_8627)
  local L1_8628, L2_8629
  L1_8628 = A0_8627.Properties
  L1_8628 = L1_8628.bCheckLOS
  if L1_8628 == 0 then
    L1_8628 = true
    return L1_8628
  end
  L1_8628 = g_localActor
  if not L1_8628 then
    return
  end
  L2_8629 = A0_8627
  L1_8628 = A0_8627.GetWorldPos
  L1_8628 = L1_8628(L2_8629, g_Vectors.temp_v1)
  L2_8629 = System
  L2_8629 = L2_8629.GetViewCameraPos
  L2_8629 = L2_8629(g_Vectors.temp_v2)
  return System.RayTraceCheck(L2_8629, L1_8628, g_localActor:GetRawId(), A0_8627:GetRawId(), gcc_coral + gcc_transparent)
end
function CinematicTrigger.CreateTimer(A0_8630, A1_8631, A2_8632)
  local L3_8633
  L3_8633 = A0_8630.timerId
  if L3_8633 > 1023 then
    L3_8633 = 1
  end
  L3_8633 = L3_8633 + 1
  A0_8630.timerId = L3_8633
  A0_8630.timers[L3_8633] = A1_8631
  A0_8630:SetTimer(L3_8633, A2_8632)
end
function CinematicTrigger.Client.OnTimer(A0_8634, A1_8635, A2_8636)
  if A1_8635 == A0_8634.VISIBILITY_TIMER_ID then
    if A0_8634:IsInRange() and A0_8634:IsVisible() and A0_8634:CheckZoom() and A0_8634:CheckLOS() then
      if not A0_8634.isvisible then
        if not A0_8634.last_visible_time then
          A0_8634.last_visible_time = _time
        end
        if _time - A0_8634.last_visible_time > A0_8634.Properties.fMinVisibleTime then
          if A0_8634.isServer then
            A0_8634:Visible(g_localActorId)
          else
            A0_8634.server:SvRequestVisible(g_localActorId)
          end
          A0_8634.isvisible = true
        end
      end
    else
      if A0_8634.last_visible_time and A0_8634.isvisible then
        if A0_8634.isServer then
          A0_8634:Invisible(g_localActorId)
        else
          A0_8634.server:SvRequestInvisible(g_localActorId)
        end
        A0_8634.isvisible = nil
      end
      A0_8634.last_visible_time = nil
    end
    A0_8634:SetTimer(A0_8634.VISIBILITY_TIMER_ID, A0_8634.Properties.fCheckTimer * 1000)
  elseif A0_8634.localOnly and not A0_8634.isServer then
    A0_8634:Event_Trigger(g_localActorId)
  end
end
function CinematicTrigger.Server.OnTimer(A0_8637, A1_8638, A2_8639)
  local L3_8640
  L3_8640 = A0_8637.VISIBILITY_TIMER_ID
  if A1_8638 ~= L3_8640 then
    L3_8640 = A0_8637.timers
    L3_8640 = L3_8640[A1_8638]
    if not L3_8640 then
      return
    end
    A0_8637:Event_Trigger(L3_8640)
  end
end
function CinematicTrigger.Event_Enable(A0_8641)
  A0_8641:Enable(true)
  BroadcastEvent(A0_8641, "Enable")
end
function CinematicTrigger.Event_Disable(A0_8642)
  A0_8642:Enable(false)
  BroadcastEvent(A0_8642, "Disable")
end
function CinematicTrigger.Event_Visible(A0_8643, A1_8644)
  if not A0_8643.enabled then
    return
  end
  if A0_8643.triggerOnce then
    if A0_8643.localOnly then
      if A0_8643.triggeredOnce then
        return
      end
    elseif A0_8643.perPlayer and A0_8643.triggeredOncePP[A1_8644] then
      return
    elseif not A0_8643.perPlayer and A0_8643.triggeredOnce then
      return
    end
  end
  A0_8643.triggered = true
  A0_8643.triggeredOnce = true
  if not A0_8643.localOnly and A1_8644 then
    A0_8643.triggeredPP[A1_8644] = true
    A0_8643.triggeredOncePP[A1_8644] = true
  end
  Log("%s:Event_Visible(%s)", A0_8643:GetName(), EntityName(A1_8644))
  BroadcastEvent(A0_8643, "Visible")
  if not A0_8643.localOnly and A0_8643.isServer then
    A0_8643.otherClients:ClVisible(g_localChannelId, A1_8644 or NULL_ENTITY)
  end
end
function CinematicTrigger.Client.ClVisible(A0_8645, A1_8646)
  Log("%s.Client:ClVisible(%s)", A0_8645:GetName(), EntityName(A1_8646))
  BroadcastEvent(A0_8645, "Visible")
end
function CinematicTrigger.Event_Invisible(A0_8647, A1_8648)
  if not A0_8647.enabled then
    return
  end
  if A0_8647.localOnly and not A0_8647.triggered then
    return
  end
  if A0_8647.perPlayer then
    if not A0_8647.localOnly and A1_8648 and not A0_8647.triggeredPP[A1_8648] then
      return
    end
  elseif not A0_8647.triggered then
    return
  end
  A0_8647.triggered = nil
  if not A0_8647.localOnly and A1_8648 then
    A0_8647.triggeredPP[A1_8648] = nil
  end
  Log("%s:Event_Invisible(%s)", A0_8647:GetName(), EntityName(A1_8648))
  BroadcastEvent(A0_8647, "Invisible")
  if not A0_8647.localOnly and A0_8647.isServer then
    A0_8647.otherClients:ClInvisible(g_localChannelId, A1_8648 or NULL_ENTITY)
  end
end
function CinematicTrigger.Client.ClInvisible(A0_8649, A1_8650)
  Log("%s.Client:ClInvisible(%s)", A0_8649:GetName(), EntityName(A1_8650))
  BroadcastEvent(A0_8649, "Invisible")
end
function CinematicTrigger.Event_Trigger(A0_8651, A1_8652)
  Log("%s:Trigger(%s)", A0_8651:GetName(), EntityName(A1_8652))
  A0_8651:Trigger(A1_8652)
  BroadcastEvent(A0_8651, "Trigger")
  if not A0_8651.localOnly and A0_8651.isServer then
    A0_8651.otherClients:ClTrigger(g_localChannelId, A1_8652 or NULL_ENTITY)
  end
end
function CinematicTrigger.Client.ClTrigger(A0_8653, A1_8654)
  Log("%s.Client:ClTrigger(%s)", A0_8653:GetName(), EntityName(A1_8654))
  A0_8653:Trigger(A1_8654)
  BroadcastEvent(A0_8653, "Trigger")
end
CinematicTrigger.FlowEvents = {
  Inputs = {
    Disable = {
      CinematicTrigger.Event_Disable,
      "bool"
    },
    Enable = {
      CinematicTrigger.Event_Enable,
      "bool"
    },
    Invisible = {
      CinematicTrigger.Event_Invisible,
      "bool"
    },
    Visible = {
      CinematicTrigger.Event_Visible,
      "bool"
    },
    Trigger = {
      CinematicTrigger.Event_Trigger,
      "bool"
    }
  },
  Outputs = {
    Disable = "bool",
    Enable = "bool",
    Invisible = "bool",
    Visible = "bool",
    Trigger = "bool"
  }
}
