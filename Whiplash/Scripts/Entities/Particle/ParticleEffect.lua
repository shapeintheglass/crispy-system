ParticleEffect = {
  Properties = {
    soclasses_SmartObjectClass = "",
    ParticleEffect = "",
    Comment = "",
    bActive = 1,
    bPrime = 1,
    Scale = 1,
    SpeedScale = 1,
    TimeScale = 1,
    CountScale = 1,
    bCountPerUnit = 0,
    Strength = -1,
    esAttachType = "",
    esAttachForm = "",
    PulsePeriod = 0,
    NetworkSync = 0,
    bRegisterByBBox = 0,
    bUseUITime = 0,
    bForceVAClip = 0,
    Audio = {bEnableAudio = 1, audioRTPCRtpc = "particlefx"}
  },
  Editor = {
    Model = "Editor/Objects/Particles.cgf",
    Icon = "Particles.bmp"
  },
  States = {"Active", "Idle"},
  Client = {},
  Server = {}
}
Net.Expose({
  Class = ParticleEffect,
  ClientMethods = {
    ClEvent_Spawn = {RELIABLE_ORDERED, POST_ATTACH},
    ClEvent_Enable = {RELIABLE_ORDERED, POST_ATTACH},
    ClEvent_Disable = {RELIABLE_ORDERED, POST_ATTACH},
    ClEvent_Restart = {RELIABLE_ORDERED, POST_ATTACH},
    ClEvent_Kill = {RELIABLE_ORDERED, POST_ATTACH}
  },
  ServerMethods = {},
  ServerProperties = {}
})
function ParticleEffect.OnSpawn(A0_7394)
  A0_7394:CreateRenderProxy()
  if not table.NetworkSync then
    A0_7394:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
end
function ParticleEffect.OnLoad(A0_7395, A1_7396)
  A0_7395:GotoState("")
  if not A1_7396.nParticleSlot then
    if A0_7395.nParticleSlot then
      A0_7395:DeleteParticleEmitter(A0_7395.nParticleSlot)
    end
    A0_7395:GotoState("Idle")
  elseif not A0_7395.nParticleSlot or A0_7395.nParticleSlot ~= A1_7396.nParticleSlot then
    if A0_7395.nParticleSlot then
      A0_7395:DeleteParticleEmitter(A0_7395.nParticleSlot)
    end
    A0_7395:GotoState("Idle")
    A0_7395.nParticleSlot = A0_7395:LoadParticleEffect(A1_7396.nParticleSlot, A0_7395.Properties.ParticleEffect, A0_7395.Properties)
    A0_7395:GotoState("Active")
  end
end
function ParticleEffect.OnSave(A0_7397, A1_7398)
  A1_7398.nParticleSlot = A0_7397.nParticleSlot
end
function ParticleEffect.OnPropertyChange(A0_7399)
  if A0_7399.Properties.bActive ~= 0 then
    A0_7399:GotoState("")
    A0_7399:GotoState("Active")
  else
    A0_7399:GotoState("Idle")
  end
end
function ParticleEffect.OnReset(A0_7400)
  A0_7400:GotoState("Idle")
  if A0_7400.Properties.bActive ~= 0 then
    A0_7400:GotoState("Active")
  end
end
function ParticleEffect.Event_Enable(A0_7401)
  A0_7401:GotoState("Active")
  A0_7401:ActivateOutput("Enable", true)
  if CryAction.IsServer() and A0_7401.allClients then
    A0_7401.allClients:ClEvent_Enable()
  end
end
function ParticleEffect.Event_Disable(A0_7402)
  A0_7402:GotoState("Idle")
  A0_7402:ActivateOutput("Disable", true)
  if CryAction.IsServer() and A0_7402.allClients then
    A0_7402.allClients:ClEvent_Disable()
  end
end
function ParticleEffect.Event_Restart(A0_7403)
  A0_7403:GotoState("Idle")
  A0_7403:GotoState("Active")
  A0_7403:ActivateOutput("Restart", true)
  if CryAction.IsServer() and A0_7403.allClients then
    A0_7403.allClients:ClEvent_Restart()
  end
end
function ParticleEffect.Event_Spawn(A0_7404)
  A0_7404:GetDirectionVector(1, g_Vectors.temp_v2)
  Particle.SpawnEffect(A0_7404.Properties.ParticleEffect, A0_7404:GetPos(g_Vectors.temp_v1), g_Vectors.temp_v2, A0_7404.Properties.Scale)
  A0_7404:ActivateOutput("Spawn", true)
  if CryAction.IsServer() and A0_7404.allClients then
    A0_7404.allClients:ClEvent_Spawn()
  end
end
function ParticleEffect.Event_Kill(A0_7405)
  if A0_7405.nParticleSlot then
    A0_7405:DeleteParticleEmitter(A0_7405.nParticleSlot)
  end
  A0_7405:GotoState("Idle")
  if CryAction.IsServer() and A0_7405.allClients then
    A0_7405.allClients:ClEvent_Kill()
  end
end
function ParticleEffect.Enable(A0_7406)
  A0_7406:GotoState("Active")
  if CryAction.IsServer() and A0_7406.allClients then
    A0_7406.allClients:ClEvent_Enable()
  end
end
function ParticleEffect.Disable(A0_7407)
  A0_7407:GotoState("Idle")
  if CryAction.IsServer() and A0_7407.allClients then
    A0_7407.allClients:ClEvent_Disable()
  end
end
ParticleEffect.Active = {
  OnBeginState = function(A0_7408)
    if not A0_7408.nParticleSlot then
      A0_7408.nParticleSlot = -1
    end
    A0_7408.nParticleSlot = A0_7408:LoadParticleEffect(A0_7408.nParticleSlot, A0_7408.Properties.ParticleEffect, A0_7408.Properties)
  end,
  OnLeaveArea = function(A0_7409, A1_7410, A2_7411)
    A0_7409:GotoState("Idle")
  end
}
ParticleEffect.Idle = {
  OnBeginState = function(A0_7412)
    if A0_7412.nParticleSlot then
      A0_7412:FreeSlot(A0_7412.nParticleSlot)
      A0_7412.nParticleSlot = nil
    end
  end,
  OnEnterArea = function(A0_7413, A1_7414, A2_7415)
    A0_7413:GotoState("Active")
  end
}
function ParticleEffect.DefaultState(A0_7416, A1_7417, A2_7418)
  local L3_7419, L5_7420, L6_7421
  L3_7419 = A0_7416[A2_7418]
  L5_7420 = A0_7416[A1_7417]
  L6_7421 = {}
  L6_7421.OnBeginState = L3_7419.OnBeginState
  L6_7421.OnEndState = L3_7419.OnEndState
  L6_7421.OnLeaveArea = L3_7419.OnLeaveArea
  L6_7421.OnEnterArea = L3_7419.OnEnterArea
  L5_7420[A2_7418] = L6_7421
end
ParticleEffect:DefaultState("Server", "Idle")
ParticleEffect:DefaultState("Server", "Active")
ParticleEffect:DefaultState("Client", "Idle")
ParticleEffect:DefaultState("Client", "Active")
ParticleEffect.FlowEvents = {
  Inputs = {
    Disable = {
      ParticleEffect.Event_Disable,
      "bool"
    },
    Enable = {
      ParticleEffect.Event_Enable,
      "bool"
    },
    Restart = {
      ParticleEffect.Event_Restart,
      "bool"
    },
    Spawn = {
      ParticleEffect.Event_Spawn,
      "bool"
    },
    Kill = {
      ParticleEffect.Event_Kill,
      "bool"
    }
  },
  Outputs = {
    Disable = "bool",
    Enable = "bool",
    Restart = "bool",
    Spawn = "bool"
  }
}
function ParticleEffect.Client.OnInit(A0_7422)
  A0_7422:SetRegisterInSectors(1)
  A0_7422.Properties.ParticleEffect = A0_7422:PreLoadParticleEffect(A0_7422.Properties.ParticleEffect)
  A0_7422:SetUpdatePolicy(ENTITY_UPDATE_POT_VISIBLE)
  if A0_7422.Properties.bActive ~= 0 then
    A0_7422:GotoState("Active")
  else
    A0_7422:GotoState("Idle")
  end
end
function ParticleEffect.Client.ClEvent_Spawn(A0_7423)
  if not CryAction.IsServer() then
    A0_7423:Event_Spawn()
  end
end
function ParticleEffect.Client.ClEvent_Enable(A0_7424)
  if not CryAction.IsServer() then
    A0_7424:Event_Enable()
  end
end
function ParticleEffect.Client.ClEvent_Disable(A0_7425)
  if not CryAction.IsServer() then
    A0_7425:Event_Disable()
  end
end
function ParticleEffect.Client.ClEvent_Restart(A0_7426)
  if not CryAction.IsServer() then
    A0_7426:Event_Restart()
  end
end
function ParticleEffect.Client.ClEvent_Kill(A0_7427)
  if not CryAction.IsServer() then
    A0_7427:Event_Kill()
  end
end
