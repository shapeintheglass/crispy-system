ProximityTrigger = {
  Properties = {
    DimX = 5,
    DimY = 5,
    DimZ = 5,
    bEnabled = 1,
    EnterDelay = 0,
    ExitDelay = 0,
    bTriggerAny = 0,
    bTriggerOnPlayer = 1,
    bTriggerOnAI = 0,
    bTriggerOnSpecialAI = 0,
    TriggerOnSelectedEntity = "None",
    bRemoveOnTrigger = 0,
    bTriggerOnce = 0,
    ScriptCommand = "",
    PlaySequence = "",
    bInVehicleOnly = 0,
    bOnlyOneEntity = 0,
    UsableMessage = "",
    bActivateWithUseButton = 0,
    MultiplayerOptions = {bNetworked = 0, bPerPlayer = 0}
  },
  Client = {},
  Server = {},
  Editor = {
    Model = "Editor/Objects/T.cgf",
    Icon = "Trigger.bmp",
    ShowBounds = 1,
    IsScalable = false,
    IsRotatable = false
  }
}
Net.Expose({
  Class = ProximityTrigger,
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
  ServerMethods = {
    SvRequestUse = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      ENTITYID
    }
  },
  ServerProperties = {}
})
function ProximityTrigger.OnPropertyChange(A0_8655)
  A0_8655:OnReset()
end
function ProximityTrigger.OnReset(A0_8656)
  local L1_8657, L2_8658, L3_8659, L4_8660
  A0_8656.bUsesExactSelectedEntity = false
  A0_8656.bUsesWildcardSelectedEntity = false
  if L1_8657 ~= "None" then
    if L1_8657 ~= "" then
      if L1_8657 and L1_8657 > 1 then
        if L1_8657 < 5 then
          L4_8660 = A0_8656.GetName
          L4_8660 = L4_8660(A0_8656)
          L2_8658(L3_8659, L4_8660, L4_8660(A0_8656))
        end
        A0_8656.bUsesWildcardSelectedEntity = true
        L4_8660 = 1
        A0_8656.stringRootSelectedEntity = L2_8658
      else
        A0_8656.bUsesExactSelectedEntity = true
      end
    end
  end
  if L1_8657 then
    for L4_8660, _FORV_5_ in L1_8657(L2_8658) do
      A0_8656:KillTimer(L4_8660)
    end
  end
  A0_8656.timerId = 0
  A0_8656.enabled = nil
  L1_8657 = L1_8657 ~= 0
  A0_8656.usable = L1_8657
  L1_8657 = L1_8657 ~= 0
  A0_8656.triggerOnce = L1_8657
  L1_8657 = L1_8657 == 0
  A0_8656.localOnly = L1_8657
  L1_8657 = L1_8657 ~= 0
  A0_8656.perPlayer = L1_8657
  A0_8656.isServer = L1_8657
  A0_8656.isClient = L1_8657
  A0_8656.inside = L1_8657
  A0_8656.timers = L1_8657
  if not L1_8657 then
    A0_8656.triggeredPP = L1_8657
    A0_8656.triggeredOncePP = L1_8657
  else
    L4_8660 = 0
    L1_8657(L2_8658, L3_8659, L4_8660)
  end
  A0_8656.triggeredOnce = nil
  A0_8656.triggered = nil
  A0_8656.insideCount = 0
  L1_8657.x = L2_8658
  L1_8657.y = L2_8658
  L1_8657.z = L2_8658
  L2_8658.x = L3_8659
  L2_8658.y = L3_8659
  L2_8658.z = L3_8659
  L4_8660 = A0_8656
  L3_8659(L4_8660, L1_8657, L2_8658)
  L4_8660 = A0_8656
  L3_8659(L4_8660)
  L4_8660 = A0_8656
  L3_8659(L4_8660, ENTITY_UPDATE_PHYSICS)
  L4_8660 = A0_8656
  L3_8659(L4_8660, false)
end
function ProximityTrigger.Server.OnStartGame(A0_8661)
  A0_8661:Enable(tonumber(A0_8661.Properties.bEnabled) ~= 0)
  A0_8661:RegisterForAreaEvents(1)
  A0_8661:ActivateOutput("IsInside", 0)
end
function ProximityTrigger.Enable(A0_8662, A1_8663)
  A0_8662.enabled = A1_8663
  if not A1_8663 then
    A0_8662.inside = {}
  end
end
function ProximityTrigger.OnSpawn(A0_8664)
  A0_8664:OnReset()
end
function ProximityTrigger.OnDestroy(A0_8665)
  local L1_8666
end
function ProximityTrigger.OnSave(A0_8667, A1_8668)
  local L2_8669
  L2_8669 = A0_8667.enabled
  A1_8668.enabled = L2_8669
  L2_8669 = A0_8667.triggered
  A1_8668.triggered = L2_8669
  L2_8669 = A0_8667.triggeredOnce
  A1_8668.triggeredOnce = L2_8669
end
function ProximityTrigger.OnLoad(A0_8670, A1_8671)
  A0_8670:Enable(A1_8671.enabled)
  A0_8670.triggered = A1_8671.triggered
  A0_8670.triggeredOnce = A1_8671.triggeredOnce
end
function ProximityTrigger.Event_Enter(A0_8672, A1_8673)
  if not A0_8672.enabled then
    return
  end
  if A0_8672.triggerOnce then
    if A0_8672.localOnly then
      if A0_8672.triggeredOnce then
        return
      end
    elseif A0_8672.perPlayer and A0_8672.triggeredOncePP[A1_8673] then
      return
    elseif not A0_8672.perPlayer and A0_8672.triggeredOnce then
      return
    end
  end
  A0_8672.triggered = true
  A0_8672.triggeredOnce = true
  if not A0_8672.localOnly and A1_8673 then
    A0_8672.triggeredPP[A1_8673] = true
    A0_8672.triggeredOncePP[A1_8673] = true
  end
  A0_8672:Trigger(A1_8673, A0_8672.insideCount)
  A0_8672:ActivateOutput("Enter", A1_8673 or NULL_ENTITY)
  if not A0_8672.localOnly and A0_8672.isServer then
    A0_8672.otherClients:ClEnter(g_localChannelId, A1_8673 or NULL_ENTITY, A0_8672.insideCount)
  end
end
function ProximityTrigger.Client.ClEnter(A0_8674, A1_8675, A2_8676)
  if not A0_8674.enabled then
    return
  end
  A0_8674:Trigger(A1_8675, A2_8676)
  A0_8674:ActivateOutput("Enter", A1_8675)
end
function ProximityTrigger.Event_Leave(A0_8677, A1_8678)
  if not A0_8677.enabled then
    return
  end
  if A0_8677.localOnly and not A0_8677.triggered then
    return
  end
  if A0_8677.perPlayer then
    if not A0_8677.localOnly and A1_8678 and not A0_8677.triggeredPP[A1_8678] then
      return
    end
  elseif not A0_8677.triggered then
    return
  end
  if A0_8677.insideCount == 0 then
    A0_8677.triggered = nil
  end
  if not A0_8677.localOnly and A1_8678 and A0_8677.insideCount == 0 then
    A0_8677.triggeredPP[A1_8678] = nil
  end
  A0_8677:ActivateOutput("Sender", A1_8678 or NULL_ENTITY)
  A0_8677:ActivateOutput("IsInside", A0_8677.insideCount)
  A0_8677:ActivateOutput("Leave", A1_8678 or NULL_ENTITY)
  if not A0_8677.localOnly and A0_8677.isServer then
    A0_8677.otherClients:ClLeave(g_localChannelId, A1_8678 or NULL_ENTITY, A0_8677.insideCount)
  end
end
function ProximityTrigger.Client.ClLeave(A0_8679, A1_8680, A2_8681)
  if not A0_8679.enabled then
    return
  end
  A0_8679:ActivateOutput("Sender", A1_8680)
  A0_8679:ActivateOutput("IsInside", A2_8681)
  A0_8679:ActivateOutput("Leave", A1_8680)
end
function ProximityTrigger.Event_Enable(A0_8682)
  A0_8682:Enable(true)
  A0_8682:ActivateOutput("IsInside", A0_8682.insideCount)
  BroadcastEvent(A0_8682, "Enable")
end
function ProximityTrigger.Event_Disable(A0_8683)
  A0_8683:Enable(false)
  BroadcastEvent(A0_8683, "Disable")
end
function ProximityTrigger.CreateTimer(A0_8684, A1_8685, A2_8686, A3_8687)
  local L4_8688
  L4_8688 = A0_8684.timerId
  if L4_8688 > 1023 then
    L4_8688 = 0
  end
  L4_8688 = L4_8688 + 1
  A0_8684.timerId = L4_8688
  if A3_8687 then
    L4_8688 = L4_8688 + 1024
  end
  A0_8684.timers[L4_8688] = A1_8685
  A0_8684:SetTimer(L4_8688, A2_8686)
end
function ProximityTrigger.Client.OnTimer(A0_8689, A1_8690, A2_8691)
  if A0_8689.localOnly and not A0_8689.isServer then
    A0_8689:OnTimer(A1_8690, A2_8691)
  end
end
function ProximityTrigger.Server.OnTimer(A0_8692, A1_8693, A2_8694)
  A0_8692:OnTimer(A1_8693, A2_8694)
end
function ProximityTrigger.OnTimer(A0_8695, A1_8696, A2_8697)
  local L3_8698
  if A1_8696 == 2048 then
    L3_8698 = A0_8695.CheckAIDeaths
    L3_8698(A0_8695)
    return
  end
  L3_8698 = A0_8695.timers
  L3_8698 = L3_8698[A1_8696]
  if not L3_8698 then
    return
  end
  if A1_8696 > 1023 then
    A0_8695:Event_Leave(L3_8698)
  else
    A0_8695:Event_Enter(L3_8698)
  end
end
function ProximityTrigger.CheckAIDeaths(A0_8699)
  local L1_8700, L2_8701, L3_8702, L4_8703, L5_8704
  L1_8700 = A0_8699.enabled
  if not L1_8700 then
    return
  end
  L1_8700 = 0
  for L5_8704, _FORV_6_ in L2_8701(L3_8702) do
    if System.GetEntity(L5_8704) ~= nil and System.GetEntity(L5_8704).ai ~= nil and System.GetEntity(L5_8704).lastHealth ~= nil then
      if 0 >= System.GetEntity(L5_8704).lastHealth then
        A0_8699.inside[L5_8704] = nil
      end
    else
      L1_8700 = L1_8700 + 1
    end
  end
  if L1_8700 ~= L2_8701 then
    A0_8699.insideCount = L1_8700
    L5_8704 = A0_8699.insideCount
    L2_8701(L3_8702, L4_8703, L5_8704)
  end
  if L1_8700 ~= 0 then
    L2_8701(L3_8702)
  else
    L2_8701[2048] = false
  end
end
function ProximityTrigger.CreateAIDeathsCheckTrigger(A0_8705)
  A0_8705.timers[2048] = true
  A0_8705:SetTimer(2048, 3000)
end
function ProximityTrigger.Server.SvRequestUse(A0_8706, A1_8707)
  local L2_8708
  L2_8708 = System
  L2_8708 = L2_8708.GetEntity
  L2_8708 = L2_8708(A1_8707)
  if L2_8708 then
    A0_8706:OnUsed(L2_8708)
  end
end
function ProximityTrigger.OnUsed(A0_8709, A1_8710)
  if not A0_8709:CanTrigger(A1_8710) then
    return
  end
  Log("%s:OnUsed(%s)", A0_8709:GetName(), EntityName(A1_8710))
  A0_8709:LockUsability(false)
  BroadcastEvent(A0_8709, "OnUsed")
  A0_8709:ActivateOutput("Sender", A1_8710.id)
  if A0_8709.localOnly or A0_8709.isServer then
    A0_8709:CreateTimer(A1_8710.id, A0_8709.Properties.EnterDelay * 1000)
  else
    A0_8709.server:SvRequestUse(A1_8710.id)
  end
end
function ProximityTrigger.Trigger(A0_8711, A1_8712, A2_8713)
  local L3_8714
  L3_8714 = A0_8711.enabled
  if not L3_8714 then
    return
  end
  L3_8714 = A0_8711.ActivateOutput
  L3_8714(A0_8711, "IsInside", A2_8713)
  L3_8714 = A0_8711.Properties
  L3_8714 = L3_8714.ScriptCommand
  if L3_8714 then
    L3_8714 = A0_8711.Properties
    L3_8714 = L3_8714.ScriptCommand
    if L3_8714 ~= "" then
      L3_8714 = loadstring
      L3_8714 = L3_8714(A0_8711.Properties.ScriptCommand)
      if L3_8714 ~= nil then
        L3_8714()
      end
    end
  end
  L3_8714 = A0_8711.Properties
  L3_8714 = L3_8714.PlaySequence
  if L3_8714 ~= "" then
    L3_8714 = Movie
    L3_8714 = L3_8714.PlaySequence
    L3_8714(A0_8711.Properties.PlaySequence)
  end
  L3_8714 = A0_8711.ActivateOutput
  L3_8714(A0_8711, "Sender", A1_8712 or NULL_ENTITY)
  L3_8714 = A0_8711.Properties
  L3_8714 = L3_8714.bRemoveOnTrigger
  if L3_8714 == 1 then
    L3_8714 = Game
    L3_8714 = L3_8714.IsPlayer
    L3_8714 = L3_8714(A1_8712)
    if L3_8714 == false then
      L3_8714 = System
      L3_8714 = L3_8714.RemoveEntity
      L3_8714(A1_8712)
    end
  end
end
function ProximityTrigger.EnteredArea(A0_8715, A1_8716, A2_8717)
  if not A0_8715:CanTrigger(A1_8716, A2_8717) then
    return
  end
  if tonumber(A0_8715.Properties.bOnlyOneEntity) ~= 0 and 0 < A0_8715.insideCount then
    return
  end
  A0_8715.inside[A1_8716.id] = true
  if 0 > A0_8715.insideCount then
    A0_8715.insideCount = 0
  end
  A0_8715.insideCount = A0_8715.insideCount + 1
  if A0_8715.enabled then
    A0_8715:ActivateOutput("IsInside", A0_8715.insideCount)
  end
  if not A1_8716.ai and A0_8715.Properties.bActivateWithUseButton ~= 0 then
    return
  end
  A0_8715:CreateTimer(A1_8716.id, A0_8715.Properties.EnterDelay * 1000)
  if A1_8716.ai and A0_8715.timers[2048] ~= true then
    A0_8715:CreateAIDeathsCheckTrigger()
  end
end
function ProximityTrigger.LeftArea(A0_8718, A1_8719, A2_8720)
  if not A0_8718:CanTrigger(A1_8719, A2_8720) then
    return
  end
  A0_8718.inside[A1_8719.id] = nil
  A0_8718.insideCount = A0_8718.insideCount - 1
  if A0_8718.insideCount < 0 then
    A0_8718.insideCount = 0
  end
  if A0_8718.enabled then
    A0_8718:ActivateOutput("IsInside", A0_8718.insideCount)
  end
  if A0_8718.Properties.ExitDelay == 0 then
    A0_8718.Properties.ExitDelay = 0.01
  end
  A0_8718:CreateTimer(A1_8719.id, A0_8718.Properties.ExitDelay * 1000, true)
end
function ProximityTrigger.Server.OnEnterArea(A0_8721, A1_8722, A2_8723)
  if A0_8721:CanTrigger(A1_8722) then
    A0_8721:EnteredArea(A1_8722, A2_8723)
  end
end
function ProximityTrigger.Server.OnLeaveArea(A0_8724, A1_8725, A2_8726)
  A0_8724:LeftArea(A1_8725, A2_8726)
end
function ProximityTrigger.Client.OnEnterArea(A0_8727, A1_8728, A2_8729)
  if not A0_8727:CanTrigger(A1_8728) then
    return
  end
  if A1_8728.actor and A0_8727.usable and A0_8727.enabled then
    A0_8727:LockUsability(true)
  end
  if not A0_8727.localOnly or A0_8727.isServer then
    return
  end
  A0_8727:EnteredArea(A1_8728, A2_8729)
end
function ProximityTrigger.Client.OnLeaveArea(A0_8730, A1_8731, A2_8732)
  if A1_8731.actor and A0_8730.usable and A0_8730.enabled then
    A0_8730:LockUsability(false)
  end
  if not A0_8730.localOnly or A0_8730.isServer then
    return
  end
  A0_8730:LeftArea(A1_8731, A2_8732)
end
function ProximityTrigger.CanTrigger(A0_8733, A1_8734)
  local L2_8735
  L2_8735 = A0_8733.Properties
  if A1_8734.ai and A1_8734.lastHealth and A1_8734.lastHealth <= 0 then
    return false
  end
  if L2_8735.bInVehicleOnly ~= 0 and not A1_8734.vehicleId then
    return false
  end
  if L2_8735.bTriggerAny ~= 0 then
    return true
  end
  if L2_8735.bTriggerOnPlayer ~= 0 and A1_8734 == g_localActor then
    return true
  end
  if L2_8735.bTriggerOnAI ~= 0 and A1_8734.ai then
    return true
  end
  if L2_8735.bTriggerOnSpecialAI ~= 0 and A1_8734.ai and A1_8734.Properties.special ~= 0 then
    return true
  end
  if A0_8733.bUsesExactSelectedEntity and A1_8734:GetName() == L2_8735.TriggerOnSelectedEntity then
    return true
  end
  if A0_8733.bUsesWildcardSelectedEntity and string.find(A1_8734:GetName(), A0_8733.stringRootSelectedEntity) == 1 then
    return true
  end
  return false
end
function ProximityTrigger.IsUsable(A0_8736, A1_8737)
  return A0_8736.usable and A0_8736.enabled
end
function ProximityTrigger.LockUsability(A0_8738, A1_8739)
  local L2_8740
  L2_8740 = g_localActor
  if L2_8740 then
    if A1_8739 then
      L2_8740.actor:SetExtensionParams("Interactor", {
        locker = A0_8738.id,
        lockId = A0_8738.id,
        lockIdx = 1
      })
    else
      L2_8740.actor:SetExtensionParams("Interactor", {
        locker = A0_8738.id,
        lockId = NULL_ENTITY,
        lockIdx = 0
      })
    end
  end
end
function ProximityTrigger.GetUsableMessage(A0_8741)
  local L1_8742
  L1_8742 = A0_8741.Properties
  L1_8742 = L1_8742.UsableMessage
  L1_8742 = L1_8742 or ""
  return L1_8742
end
ProximityTrigger.FlowEvents = {
  Inputs = {
    Disable = {
      ProximityTrigger.Event_Disable,
      "bool"
    },
    Enable = {
      ProximityTrigger.Event_Enable,
      "bool"
    },
    Enter = {
      ProximityTrigger.Event_Enter,
      "bool"
    },
    Leave = {
      ProximityTrigger.Event_Leave,
      "bool"
    }
  },
  Outputs = {
    IsInside = "int",
    Disable = "bool",
    Enable = "bool",
    Enter = "entity",
    Leave = "entity",
    Sender = "entity",
    Faction = "string",
    OnUsed = "bool"
  }
}
