BasicAIEvent = {}
MakeUsable(BasicAIEvent)
function BasicAIEvent.Event_WakeUp(A0_2295, A1_2296)
  if not AI.IsEnabled(A0_2295.id) then
    return
  end
  if A0_2295.actor:GetPhysicalizationProfile() == "sleep" then
    A0_2295.actor:StandUp()
  end
end
function BasicAIEvent.Event_Sleep(A0_2297, A1_2298)
  if not A0_2297.isFallen then
    BroadcastEvent(A0_2297, "Sleep")
  end
  A0_2297.actor:Fall(A0_2297:GetPos())
  A0_2297.isFallen = 1
end
function BasicAIEvent.Event_Enabled(A0_2299, A1_2300)
  BroadcastEvent(A0_2299, "Enabled")
end
function BasicAIEvent.Event_Disabled(A0_2301, A1_2302)
  BroadcastEvent(A0_2301, "Disabled")
end
function BasicAIEvent.Event_OnAlert(A0_2303, A1_2304)
  BroadcastEvent(A0_2303, "OnAlert")
end
function BasicAIEvent.Event_Disable(A0_2305, A1_2306)
  A0_2305:Hide(1)
  A0_2305:TriggerEvent(AIEVENT_DISABLE)
  A0_2305._enabled = false
  A0_2305:Event_Disabled(A0_2305)
  if CryAction.IsServer() then
    A0_2305.allClients:ClAIDisable()
  end
  GameAI.PauseAllModules(A0_2305.id)
  if A0_2305.OnDisabled then
    A0_2305:OnDisabled()
  end
end
function BasicAIEvent.Event_Enable(A0_2307, A1_2308)
  if not A0_2307:IsDead() then
    A0_2307._enabled = true
    A0_2307:Hide(0)
    GameAI.ResumeAllModules(A0_2307.id)
    A0_2307:Event_Enabled(A0_2307)
    if A0_2307.SoundSignals and A0_2307.SoundSignals.Idle then
      GameAudio.PlayEntitySignal(A0_2307.SoundSignals.Idle, A0_2307.id)
    end
    if CryAction.IsServer() then
      A0_2307.allClients:ClAIEnable()
    end
  end
  if A0_2307.OnEnabled then
    A0_2307:OnEnabled()
  end
end
function BasicAIEvent.Event_Kill(A0_2309, A1_2310)
  if not AI.IsEnabled(A0_2309.id) then
    return
  end
  if not A0_2309:IsDead() and A0_2309.arknpc ~= nil then
    A0_2309.arknpc:Kill(nil)
  end
end
function BasicAIEvent.Event_SetForcedLookDir(A0_2311, A1_2312, A2_2313)
  A0_2311.actor:SetForcedLookDir(A2_2313)
end
function BasicAIEvent.Event_ClearForcedLookDir(A0_2314, A1_2315)
  A0_2314.actor:ClearForcedLookDir()
end
function BasicAIEvent.Event_SetForcedLookObjectId(A0_2316, A1_2317, A2_2318)
  A0_2316.actor:SetForcedLookObjectId(A2_2318.id)
end
function BasicAIEvent.Event_ClearForcedLookObjectId(A0_2319, A1_2320)
  A0_2319.actor:ClearForcedLookObjectId()
end
function BasicAIEvent.Event_Follow(A0_2321, A1_2322)
  local L2_2323
  L2_2323 = BroadcastEvent
  L2_2323(A0_2321, "Follow")
  L2_2323 = nil
  if A1_2322.Who and A1_2322.Who.id and A1_2322.Who.id ~= NULL_ENTITY then
    L2_2323 = AI.GetGroupOf(A1_2322.Who.id)
  else
    L2_2323 = AI.GetGroupOf(A1_2322.id)
  end
  AI.ChangeParameter(A0_2321.id, AIPARAM_GROUPID, L2_2323)
  AI.Signal(SIGNALFILTER_SENDER, 0, "FOLLOW_LEADER", A0_2321.id)
end
function BasicAIEvent.Event_Test(A0_2324, A1_2325)
  g_SignalData.fValue = 2
  AI.Signal(SIGNALFILTER_LEADER, 0, "OnScaleFormation", A0_2324.id, g_SignalData)
end
function BasicAIEvent.Event_TestStealth(A0_2326, A1_2327)
  AI.SetPFProperties(A0_2326.id, AIPATH_HUMAN_COVER)
end
function BasicAIEvent.Event_ResetHealth(A0_2328)
  entity.actor:SetHealth(entity.actor:GetMaxHealth())
  A0_2328.lastHealth = A0_2328.actor:GetHealth()
end
function BasicAIEvent.Event_MakeVulnerable(A0_2329)
  A0_2329.AI.invulnerable = false
end
function BasicAIEvent.Event_MakeInvulnerable(A0_2330)
  A0_2330.AI.invulnerable = true
end
BasicAIEvent.FlowEvents = {
  Inputs = {
    Used = {
      BasicAIEvent.Event_Used,
      "bool"
    },
    EnableUsable = {
      BasicAIEvent.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      BasicAIEvent.Event_DisableUsable,
      "bool"
    },
    Disable = {
      BasicAIEvent.Event_Disable,
      "bool"
    },
    Enable = {
      BasicAIEvent.Event_Enable,
      "bool"
    },
    Kill = {
      BasicAIEvent.Event_Kill,
      "bool"
    },
    Sleep = {
      BasicAIEvent.Event_Sleep,
      "bool"
    },
    WakeUp = {
      BasicAIEvent.Event_WakeUp,
      "bool"
    },
    ResetHealth = {
      BasicAIEvent.Event_ResetHealth,
      "any"
    },
    MakeVulnerable = {
      BasicAIEvent.Event_MakeVulnerable,
      "any"
    },
    MakeInvulnerable = {
      BasicAIEvent.Event_MakeInvulnerable,
      "any"
    },
    SetForcedLookDir = {
      BasicAIEvent.Event_SetForcedLookDir,
      "Vec3"
    },
    ClearForcedLookDir = {
      BasicAIEvent.Event_ClearForcedLookDir,
      "bool"
    },
    SetForcedLookObjectId = {
      BasicAIEvent.Event_SetForcedLookObjectId,
      "entity"
    },
    ClearForcedLookObjectId = {
      BasicAIEvent.Event_ClearForcedLookObjectId,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    Dead = "bool",
    KilledBy = "entity",
    OnAlert = "bool",
    Sleep = "bool",
    Stunned = "bool",
    TempPlayerControl = "bool",
    Enabled = "bool",
    Disabled = "bool"
  }
}
