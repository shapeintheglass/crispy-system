AreaTrigger = {
  Properties = {
    bEnabled = 1,
    bTriggerOnce = 0,
    bOnlyPlayers = 1,
    bOnlyLocalPlayer = 0,
    ScriptCommand = "",
    PlaySequence = "",
    bInVehicleOnly = 0,
    MultiplayerOptions = {bNetworked = 0, bPerPlayer = 0}
  },
  Client = {},
  Server = {},
  Editor = {
    Model = "Editor/Objects/T.cgf",
    Icon = "AreaTrigger.bmp",
    IsScalable = false,
    IsRotatable = true
  }
}
Net.Expose({
  Class = AreaTrigger,
  ClientMethods = {
    ClEnter = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID,
      INT8
    },
    ClLeave = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID,
      INT8
    }
  },
  ServerMethods = {},
  ServerProperties = {}
})
function AreaTrigger.OnPropertyChange(A0_8537)
  A0_8537:OnReset()
end
function AreaTrigger.OnReset(A0_8538)
  A0_8538.enabled = nil
  A0_8538.triggerOnce = tonumber(A0_8538.Properties.bTriggerOnce) ~= 0
  A0_8538.localOnly = A0_8538.Properties.MultiplayerOptions.bNetworked == 0
  A0_8538.perPlayer = tonumber(A0_8538.Properties.MultiplayerOptions.bPerPlayer) ~= 0
  A0_8538.isServer = CryAction.IsServer()
  A0_8538.isClient = CryAction.IsClient()
  A0_8538.inside = {}
  A0_8538.insideCount = 0
  if not A0_8538.localOnly then
    A0_8538.triggeredPP = {}
    A0_8538.triggeredOncePP = {}
  else
    A0_8538:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  A0_8538.triggeredOnce = nil
  A0_8538.triggered = nil
  A0_8538:Enable(false)
end
function AreaTrigger.Server.OnStartGame(A0_8539)
  A0_8539:Enable(tonumber(A0_8539.Properties.bEnabled) ~= 0)
  A0_8539:ActivateOutput("NrOfEntitiesInside", 0)
end
function AreaTrigger.Enable(A0_8540, A1_8541)
  A0_8540.enabled = A1_8541
  A0_8540:RegisterForAreaEvents(A1_8541 and 1 or 0)
end
function AreaTrigger.OnSpawn(A0_8542)
  A0_8542:OnReset()
end
function AreaTrigger.OnSave(A0_8543, A1_8544)
  local L2_8545
  L2_8545 = A0_8543.enabled
  A1_8544.enabled = L2_8545
  L2_8545 = A0_8543.triggered
  A1_8544.triggered = L2_8545
  L2_8545 = A0_8543.triggeredOnce
  A1_8544.triggeredOnce = L2_8545
end
function AreaTrigger.OnLoad(A0_8546, A1_8547)
  local L2_8548
  L2_8548 = A1_8547.enabled
  A0_8546.enabled = L2_8548
  L2_8548 = A1_8547.triggered
  A0_8546.triggered = L2_8548
  L2_8548 = A1_8547.triggeredOnce
  A0_8546.triggeredOnce = L2_8548
end
function AreaTrigger.CanTrigger(A0_8549, A1_8550)
  if not System.GetEntity(A1_8550) then
    return
  end
  if A0_8549.Properties.bOnlyPlayers ~= 0 and (not System.GetEntity(A1_8550).actor or not System.GetEntity(A1_8550).actor:IsPlayer()) then
    return false
  end
  if A0_8549.Properties.bOnlyLocalPlayer ~= 0 and System.GetEntity(A1_8550) ~= g_localActor then
    return false
  end
  if A0_8549.Properties.bInVehicleOnly ~= 0 and not System.GetEntity(A1_8550).vehicleId then
    return false
  end
  return true
end
function AreaTrigger.Trigger(A0_8551, A1_8552, A2_8553)
  local L3_8554
  L3_8554 = A0_8551.ActivateOutput
  L3_8554(A0_8551, "NrOfEntitiesInside", A0_8551.insideCount)
  L3_8554 = A0_8551.ActivateOutput
  L3_8554(A0_8551, "Sender", A1_8552 or NULL_ENTITY)
  if A2_8553 then
    L3_8554 = A0_8551.Properties
    L3_8554 = L3_8554.ScriptCommand
    if L3_8554 then
      L3_8554 = A0_8551.Properties
      L3_8554 = L3_8554.ScriptCommand
      if L3_8554 ~= "" then
        L3_8554 = loadstring
        L3_8554 = L3_8554(A0_8551.Properties.ScriptCommand)
        if L3_8554 ~= nil then
          L3_8554()
        end
      end
    end
    L3_8554 = A0_8551.Properties
    L3_8554 = L3_8554.PlaySequence
    if L3_8554 ~= "" then
      L3_8554 = Movie
      L3_8554 = L3_8554.PlaySequence
      L3_8554(A0_8551.Properties.PlaySequence)
    end
  end
end
function AreaTrigger.EnteredArea(A0_8555, A1_8556, A2_8557)
  if not A0_8555:CanTrigger(A1_8556.id, A2_8557) then
    return
  end
  A0_8555.inside[A1_8556.id] = true
  A0_8555.insideCount = A0_8555.insideCount + 1
  A0_8555:Event_Enter(A1_8556.id)
end
function AreaTrigger.LeftArea(A0_8558, A1_8559, A2_8560)
  if not A0_8558:CanTrigger(A1_8559.id, A2_8560) then
    return
  end
  A0_8558.inside[A1_8559.id] = nil
  A0_8558.insideCount = A0_8558.insideCount - 1
  A0_8558:Event_Leave(A1_8559.id)
end
function AreaTrigger.Server.OnEnterArea(A0_8561, A1_8562, A2_8563)
  if A0_8561:CanTrigger(A1_8562.id) then
    A0_8561:EnteredArea(A1_8562, A2_8563)
  end
end
function AreaTrigger.Server.OnLeaveArea(A0_8564, A1_8565, A2_8566)
  A0_8564:LeftArea(A1_8565, A2_8566)
end
function AreaTrigger.Client.OnEnterArea(A0_8567, A1_8568, A2_8569)
  if not A0_8567:CanTrigger(A1_8568.id) then
    return
  end
  if not A0_8567.localOnly or A0_8567.isServer then
    return
  end
  A0_8567:EnteredArea(A1_8568, A2_8569)
end
function AreaTrigger.Client.OnLeaveArea(A0_8570, A1_8571, A2_8572)
  if not A0_8570.localOnly or A0_8570.isServer then
    return
  end
  A0_8570:LeftArea(A1_8571, A2_8572)
end
function AreaTrigger.Event_Enter(A0_8573, A1_8574)
  if not A0_8573.enabled then
    return
  end
  if A0_8573.triggerOnce then
    if A0_8573.localOnly then
      if A0_8573.triggeredOnce then
        return
      end
    elseif A0_8573.perPlayer and A0_8573.triggeredOncePP[A1_8574] then
      return
    elseif not A0_8573.perPlayer and A0_8573.triggeredOnce then
      return
    end
  end
  A0_8573.triggered = true
  A0_8573.triggeredOnce = true
  if not A0_8573.localOnly and A1_8574 then
    A0_8573.triggeredPP[A1_8574] = true
    A0_8573.triggeredOncePP[A1_8574] = true
  end
  A0_8573:Trigger(A1_8574, true)
  A0_8573:ActivateOutput("Enter", A1_8574 or NULL_ENTITY)
  if not A0_8573.localOnly and A0_8573.isServer then
    A0_8573.otherClients:ClEnter(g_localChannelId, A1_8574 or NULL_ENTITY, A0_8573.insideCount)
  end
end
function AreaTrigger.Event_Leave(A0_8575, A1_8576)
  if not A0_8575.enabled then
    return
  end
  if A0_8575.localOnly and not A0_8575.triggered then
    return
  end
  if A0_8575.perPlayer then
    if not A0_8575.localOnly and A1_8576 and not A0_8575.triggeredPP[A1_8576] then
      return
    end
  elseif not A0_8575.triggered then
    return
  end
  if A0_8575.insideCount == 0 then
    A0_8575.triggered = nil
  end
  if not A0_8575.localOnly and A1_8576 and A0_8575.insideCount == 0 then
    A0_8575.triggeredPP[A1_8576] = nil
  end
  A0_8575:Trigger(A1_8576, false)
  A0_8575:ActivateOutput("Leave", A1_8576 or NULL_ENTITY)
  if not A0_8575.localOnly and A0_8575.isServer then
    A0_8575.otherClients:ClLeave(g_localChannelId, A1_8576 or NULL_ENTITY, A0_8575.insideCount)
  end
end
function AreaTrigger.Client.ClEnter(A0_8577, A1_8578, A2_8579)
  A0_8577.insideCount = A2_8579
  A0_8577.inside[A1_8578] = true
  A0_8577:Trigger(A1_8578, true)
  A0_8577:ActivateOutput("Enter", A1_8578)
end
function AreaTrigger.Client.ClLeave(A0_8580, A1_8581, A2_8582)
  A0_8580.insideCount = A2_8582
  A0_8580.inside[A1_8581] = nil
  A0_8580:Trigger(A1_8581, false)
  A0_8580:ActivateOutput("Sender", A1_8581)
  A0_8580:ActivateOutput("NrOfEntitiesInside", A2_8582)
  A0_8580:ActivateOutput("Leave", A1_8581)
end
function AreaTrigger.Event_Enable(A0_8583)
  local L1_8584
  L1_8584 = A0_8583.Enable
  L1_8584(A0_8583, true)
  L1_8584 = next
  L1_8584 = L1_8584(A0_8583.inside)
  if L1_8584 then
    A0_8583:Event_Enter(L1_8584)
  end
  A0_8583:ActivateOutput("NrOfEntitiesInside", A0_8583.insideCount)
  BroadcastEvent(A0_8583, "Enable")
end
function AreaTrigger.Event_Disable(A0_8585)
  A0_8585:Enable(false)
  BroadcastEvent(A0_8585, "Disable")
end
AreaTrigger.FlowEvents = {
  Inputs = {
    Disable = {
      AreaTrigger.Event_Disable,
      "bool"
    },
    Enable = {
      AreaTrigger.Event_Enable,
      "bool"
    },
    Enter = {
      AreaTrigger.Event_Enter,
      "bool"
    },
    Leave = {
      AreaTrigger.Event_Leave,
      "bool"
    }
  },
  Outputs = {
    Disable = "bool",
    Enable = "bool",
    Enter = "entity",
    Leave = "entity",
    NrOfEntitiesInside = "int",
    Sender = "entity",
    Faction = "string"
  }
}
