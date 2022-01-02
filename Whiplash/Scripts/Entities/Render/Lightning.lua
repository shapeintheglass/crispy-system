Script.ReloadScript("scripts/Entities/Sound/Shared/AudioUtils.lua")
Lightning = {
  Properties = {
    bActive = 1,
    fDistance = 0,
    fDistanceVariation = 0.2,
    bRelativeToPlayer = 0,
    Timing = {
      fDelay = 5,
      fDelayVariation = 0.5,
      fLightningDuration = 0.2
    },
    Effects = {
      LightRadius = 1000,
      LightIntensity = 1,
      ParticleEffect = "",
      ParticleScale = 1,
      ParticleScaleVariation = 0.2,
      SkyHighlightVerticalOffset = 0,
      SkyHighlightMultiplier = 1,
      color_SkyHighlightColor = {
        x = 0.8,
        y = 0.8,
        z = 1
      },
      SkyHighlightAtten = 10
    },
    Audio = {
      audioTriggerPlayTrigger = "",
      audioTriggerStopTrigger = "",
      audioRTPCDistanceRtpc = "",
      fSpeedOfSoundScale = 1
    }
  },
  TempPos = {
    x = 0,
    y = 0,
    z = 0
  },
  Editor = {
    Model = "Editor/Objects/Particles.cgf",
    Icon = "Lightning.bmp"
  },
  _LightTable = {
    diffuse_color = {
      x = 1,
      y = 1,
      z = 1
    },
    specular_color = {
      x = 1,
      y = 1,
      z = 1
    }
  },
  _ParticleTable = {},
  _SkyHighlight = {
    size = 0,
    color = {
      x = 0,
      y = 0,
      z = 0
    },
    position = {
      x = 0,
      y = 0,
      z = 0
    }
  },
  _StrikeCount = 0,
  hOnTriggerID = nil,
  hOffTriggerID = nil,
  hRtpcID = nil,
  nAudioTimerMinID = 2,
  aAudioThunders = {},
  nNumAuxAudioProxies = 4,
  nNumThunder = 1
}
function Lightning._LookupControlIDs(A0_8214)
  A0_8214.hOnTriggerID = AudioUtils.LookupTriggerID(A0_8214.Properties.Audio.audioTriggerPlayTrigger)
  A0_8214.hOffTriggerID = AudioUtils.LookupTriggerID(A0_8214.Properties.Audio.audioTriggerStopTrigger)
  A0_8214.hRtpcID = AudioUtils.LookupRtpcID(A0_8214.Properties.Audio.audioRTPCDistanceRtpc)
end
function Lightning._KillAllAudioTimers(A0_8215)
  local L1_8216
  L1_8216 = 1
  while A0_8215.aAudioThunders[L1_8216] ~= nil do
    A0_8215:KillTimer(A0_8215.aAudioThunders[L1_8216].nTimerID)
    A0_8215.aAudioThunders[L1_8216].fDistance = 0
    A0_8215.aAudioThunders[L1_8216].vStrikeOffset.x = 0
    A0_8215.aAudioThunders[L1_8216].vStrikeOffset.y = 0
    A0_8215.aAudioThunders[L1_8216].vStrikeOffset.z = 0
    L1_8216 = L1_8216 + 1
  end
end
function Lightning.OnSpawn(A0_8217)
  A0_8217:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
function Lightning.OnInit(A0_8218)
  local L1_8219
  A0_8218.bStriking = 0
  A0_8218.light_fade = 0
  A0_8218.light_intensity = 0
  L1_8219 = {}
  L1_8219.x = 0
  L1_8219.y = 0
  L1_8219.z = 0
  A0_8218.vStrikeOffset = L1_8219
  L1_8219 = {}
  L1_8219.x = 0
  L1_8219.y = 0
  L1_8219.z = 0
  A0_8218.vSkyHighlightPos = L1_8219
  L1_8219 = A0_8218.Properties
  L1_8219 = L1_8219.bActive
  A0_8218.bActive = L1_8219
  L1_8219 = {}
  L1_8219.nTimerID = A0_8218.nAudioTimerMinID
  L1_8219.nAudioProxyID = A0_8218:GetDefaultAuxAudioProxyID()
  L1_8219.fDistance = 0
  L1_8219.vStrikeOffset = {
    x = 0,
    y = 0,
    z = 0
  }
  table.insert(A0_8218.aAudioThunders, L1_8219)
  for _FORV_5_ = 1, A0_8218.nNumAuxAudioProxies do
    L1_8219 = {
      nTimerID = A0_8218.nAudioTimerMinID + _FORV_5_,
      nAudioProxyID = A0_8218:CreateAuxAudioProxy(),
      fDistance = 0,
      vStrikeOffset = {
        x = 0,
        y = 0,
        z = 0
      }
    }
    table.insert(A0_8218.aAudioThunders, L1_8219)
  end
  _FOR_(_FOR_)
  A0_8218:ScheduleNextStrike()
  A0_8218:CacheResources()
end
function Lightning.CacheResources(A0_8220)
  A0_8220:PreLoadParticleEffect(A0_8220.Properties.Effects.ParticleEffect)
end
function Lightning.OnShutDown(A0_8221)
  A0_8221:StopStrike()
end
function Lightning.OnLoad(A0_8222, A1_8223)
  A0_8222.bActive = A1_8223.bActive
  A0_8222:StopStrike()
  A0_8222:ScheduleNextStrike()
end
function Lightning.OnSave(A0_8224, A1_8225)
  A1_8225.bActive = A0_8224.bActive
end
function Lightning.OnPropertyChange(A0_8226)
  A0_8226.bActive = A0_8226.Properties.bActive
  if A0_8226.bActive == 1 then
    A0_8226:_LookupControlIDs()
    A0_8226:ScheduleNextStrike()
  else
    A0_8226:KillTimer(0)
    A0_8226:KillTimer(1)
    A0_8226:_KillAllAudioTimers()
    if A0_8226.hOffTriggerID ~= nil then
      A0_8226:ExecuteAudioTrigger(A0_8226.hOffTriggerID, A0_8226:GetAllAuxAudioProxiesID())
    end
  end
end
function Lightning.LoadLightToSlot(A0_8227, A1_8228)
  local L2_8229, L3_8230, L4_8231, L5_8232
  L2_8229 = A0_8227.Properties
  L3_8230 = L2_8229.Effects
  L4_8231 = A0_8227._LightTable
  L4_8231.style = 0
  L4_8231.deferred_light = 1
  L4_8231.corona_scale = 1
  L4_8231.corona_dist_size_factor = 1
  L4_8231.corona_dist_intensity_factor = 1
  L5_8232 = L3_8230.LightRadius
  L4_8231.radius = L5_8232
  L5_8232 = A0_8227.light_intensity
  L5_8232 = L5_8232 * L3_8230.LightIntensity
  L4_8231.diffuse_color.x = L5_8232
  L4_8231.diffuse_color.y = L5_8232
  L4_8231.diffuse_color.z = L5_8232
  L4_8231.specular_color.x = L5_8232
  L4_8231.specular_color.y = L5_8232
  L4_8231.specular_color.z = L5_8232
  L4_8231.hdrdyn = 0
  L4_8231.lifetime = 0
  L4_8231.realtime = 1
  L4_8231.dot3 = 1
  L4_8231.cast_shadow = 0
  A0_8227:LoadLight(A1_8228, L4_8231)
  A0_8227:SetSlotPos(A1_8228, A0_8227.vStrikeOffset)
end
function Lightning.OnTimer(A0_8233, A1_8234)
  if A1_8234 == 0 then
    A0_8233:Event_Strike()
  elseif A1_8234 == 1 then
    A0_8233.bStopStrike = 1
  else
    while A0_8233.aAudioThunders[1] ~= nil do
      if A0_8233.aAudioThunders[1].nTimerID == A1_8234 then
        if A0_8233.hOnTriggerID ~= nil then
          if A0_8233.hRtpcID ~= nil then
            A0_8233:SetAudioRtpcValue(A0_8233.hRtpcID, A0_8233.aAudioThunders[1].fDistance, A0_8233.aAudioThunders[1].nAudioProxyID)
          end
          A0_8233:SetAudioProxyOffset(A0_8233.aAudioThunders[1].vStrikeOffset, A0_8233.aAudioThunders[1].nAudioProxyID)
          A0_8233:ExecuteAudioTrigger(A0_8233.hOnTriggerID, A0_8233.aAudioThunders[1].nAudioProxyID)
        end
        A0_8233.aAudioThunders[1].fDistance = 0
        A0_8233.aAudioThunders[1].vStrikeOffset.x = 0
        A0_8233.aAudioThunders[1].vStrikeOffset.y = 0
        A0_8233.aAudioThunders[1].vStrikeOffset.z = 0
        break
      end
    end
  end
end
function Lightning.StopStrike(A0_8235)
  if A0_8235.bStriking == 0 then
    A0_8235:ScheduleNextStrike()
    return
  end
  A0_8235:FreeSlot(0)
  A0_8235:FreeSlot(1)
  A0_8235:Activate(0)
  A0_8235.bStriking = 0
  A0_8235.bStopStrike = 0
  A0_8235:ScheduleNextStrike()
  A0_8235._SkyHighlight.size = 0
  A0_8235._SkyHighlight.color.x = 0
  A0_8235._SkyHighlight.color.y = 0
  A0_8235._SkyHighlight.color.z = 0
  A0_8235._SkyHighlight.position.x = 0
  A0_8235._SkyHighlight.position.y = 0
  A0_8235._SkyHighlight.position.z = 0
  System.SetSkyHighlight(A0_8235._SkyHighlight)
  A0_8235._StrikeCount = A0_8235._StrikeCount - 1
end
function Lightning.OnUpdate(A0_8236, A1_8237)
  A0_8236.light_intensity = A0_8236.light_intensity - A0_8236.light_fade * A1_8237
  if A0_8236.light_intensity <= 0 then
    if A0_8236.bStopStrike == 1 then
      A0_8236:StopStrike()
      return
    end
    A0_8236.light_intensity = 1 - math.random() * 0.5
    A0_8236.light_fade = 3 + math.random() * 5
  end
  A0_8236:UpdateLightningParams()
end
function Lightning.OnStartGame(A0_8238)
  CryAction.ForceGameObjectUpdate(A0_8238.id, true)
end
function Lightning.UpdateLightningParams(A0_8239)
  A0_8239:LoadLightToSlot(0)
  A0_8239._SkyHighlight.color.x = A0_8239.light_intensity * A0_8239.Properties.Effects.SkyHighlightMultiplier * A0_8239.Properties.Effects.color_SkyHighlightColor.x
  A0_8239._SkyHighlight.color.y = A0_8239.light_intensity * A0_8239.Properties.Effects.SkyHighlightMultiplier * A0_8239.Properties.Effects.color_SkyHighlightColor.y
  A0_8239._SkyHighlight.color.z = A0_8239.light_intensity * A0_8239.Properties.Effects.SkyHighlightMultiplier * A0_8239.Properties.Effects.color_SkyHighlightColor.z
  A0_8239._SkyHighlight.size = A0_8239.Properties.Effects.SkyHighlightAtten
  A0_8239._SkyHighlight.position.x = A0_8239.vSkyHighlightPos.x
  A0_8239._SkyHighlight.position.y = A0_8239.vSkyHighlightPos.y
  A0_8239._SkyHighlight.position.z = A0_8239.vSkyHighlightPos.z + A0_8239.Properties.Effects.SkyHighlightVerticalOffset
  System.SetSkyHighlight(A0_8239._SkyHighlight)
end
function Lightning.GetValueWithVariation(A0_8240, A1_8241, A2_8242)
  return A1_8241 + (math.random() * 2 - 1) * A1_8241 * A2_8242
end
function Lightning.ScheduleNextStrike(A0_8243)
  local L1_8244
  L1_8244 = A0_8243.bActive
  if L1_8244 == 1 then
    L1_8244 = A0_8243.Properties
    L1_8244 = L1_8244.Timing
    L1_8244 = L1_8244.fDelay
    L1_8244 = A0_8243.Properties.Timing.fLightningDuration + A0_8243:GetValueWithVariation(L1_8244, A0_8243.Properties.Timing.fDelayVariation)
    A0_8243:SetTimer(0, L1_8244 * 1000)
  end
end
function Lightning.Event_Strike(A0_8245)
  local L1_8246, L2_8247, L3_8248, L4_8249, L5_8250, L6_8251, L7_8252, L8_8253, L9_8254, L10_8255
  L1_8246 = A0_8245.bStriking
  if L1_8246 == 0 then
    A0_8245.bStriking = 1
    L1_8246 = A0_8245._StrikeCount
    L1_8246 = L1_8246 + 1
    A0_8245._StrikeCount = L1_8246
    L1_8246 = A0_8245.Properties
    L2_8247 = L1_8246.Effects
    L3_8248 = math
    L3_8248 = L3_8248.random
    L3_8248 = L3_8248()
    L3_8248 = L3_8248 * 0.5
    L3_8248 = 1 - L3_8248
    A0_8245.light_intensity = L3_8248
    L3_8248 = math
    L3_8248 = L3_8248.random
    L3_8248 = L3_8248()
    L3_8248 = L3_8248 * 5
    L3_8248 = 3 + L3_8248
    A0_8245.light_fade = L3_8248
    L4_8249 = A0_8245
    L3_8248 = A0_8245.GetPos
    L3_8248 = L3_8248(L4_8249)
    L4_8249 = System
    L4_8249 = L4_8249.GetViewCameraDir
    L4_8249 = L4_8249()
    L5_8250 = System
    L5_8250 = L5_8250.GetViewCameraPos
    L5_8250 = L5_8250()
    L6_8251 = L3_8248
    L8_8253 = A0_8245
    L7_8252 = A0_8245.GetValueWithVariation
    L9_8254 = L1_8246.fDistance
    L10_8255 = L1_8246.fDistanceVariation
    L7_8252 = L7_8252(L8_8253, L9_8254, L10_8255)
    L8_8253 = 0
    L9_8254 = 360
    L10_8255 = L1_8246.bRelativeToPlayer
    if L10_8255 == 1 then
      L10_8255 = L4_8249.x
      if L10_8255 > 0 then
        L10_8255 = L4_8249.y
        if L10_8255 > 0 then
          L8_8253 = -90
          L9_8254 = 180
        end
      end
      L10_8255 = L4_8249.x
      if L10_8255 > 0 then
        L10_8255 = L4_8249.y
        if L10_8255 < 0 then
          L8_8253 = 0
          L9_8254 = 270
        end
      end
      L10_8255 = L4_8249.x
      if L10_8255 < 0 then
        L10_8255 = L4_8249.y
        if L10_8255 < 0 then
          L8_8253 = 90
          L9_8254 = 360
        end
      end
      L10_8255 = L4_8249.x
      if L10_8255 < 0 then
        L10_8255 = L4_8249.y
        if L10_8255 > 0 then
          L8_8253 = 180
          L9_8254 = 450
        end
      end
      L8_8253 = L8_8253 + 100
      L9_8254 = L9_8254 - 100
    end
    L10_8255 = math
    L10_8255 = L10_8255.random
    L10_8255 = L10_8255()
    L10_8255 = L10_8255 * (L9_8254 - L8_8253)
    L10_8255 = L8_8253 + L10_8255
    L10_8255 = L10_8255 * 3.14
    L10_8255 = L10_8255 / 180
    A0_8245.vStrikeOffset.x = L7_8252 * math.sin(L10_8255)
    A0_8245.vStrikeOffset.y = L7_8252 * math.cos(L10_8255)
    if L1_8246.bRelativeToPlayer == 1 then
      A0_8245.vStrikeOffset.x = A0_8245.vStrikeOffset.x + (L5_8250.x - L3_8248.x)
      A0_8245.vStrikeOffset.y = A0_8245.vStrikeOffset.y + (L5_8250.y - L3_8248.y)
    end
    A0_8245.vSkyHighlightPos.x = L3_8248.x + A0_8245.vStrikeOffset.x
    A0_8245.vSkyHighlightPos.y = L3_8248.y + A0_8245.vStrikeOffset.y
    A0_8245.vSkyHighlightPos.z = L3_8248.z
    if L2_8247.ParticleEffect ~= "" then
      A0_8245._ParticleTable.Scale = A0_8245:GetValueWithVariation(L2_8247.ParticleScale, L2_8247.ParticleScaleVariation) * math.sqrt((L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) * (L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) + (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y)) * (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y)))
      A0_8245:LoadParticleEffect(1, L2_8247.ParticleEffect, A0_8245._ParticleTable)
      A0_8245:SetSlotPos(1, A0_8245.vStrikeOffset)
    end
    A0_8245:UpdateLightningParams()
    if A0_8245.hOnTriggerID ~= nil then
      if A0_8245.nNumThunder > A0_8245.nNumAuxAudioProxies + 1 then
        A0_8245.nNumThunder = 1
      end
      A0_8245.aAudioThunders[A0_8245.nNumThunder].fDistance = math.sqrt((L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) * (L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) + (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y)) * (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y)))
      A0_8245.aAudioThunders[A0_8245.nNumThunder].vStrikeOffset.x = A0_8245.vStrikeOffset.x
      A0_8245.aAudioThunders[A0_8245.nNumThunder].vStrikeOffset.y = A0_8245.vStrikeOffset.y
      A0_8245.aAudioThunders[A0_8245.nNumThunder].vStrikeOffset.z = A0_8245.vStrikeOffset.z
      A0_8245:SetTimer(A0_8245.aAudioThunders[A0_8245.nNumThunder].nTimerID, math.sqrt((L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) * (L5_8250.x - (L3_8248.x + A0_8245.vStrikeOffset.x)) + (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y)) * (L5_8250.y - (L3_8248.y + A0_8245.vStrikeOffset.y))) / 340.29 * A0_8245.Properties.Audio.fSpeedOfSoundScale * 1000)
      A0_8245.nNumThunder = A0_8245.nNumThunder + 1
    end
    A0_8245:SetTimer(1, A0_8245:GetValueWithVariation(A0_8245.Properties.Timing.fLightningDuration, 0.5) * 1000)
    A0_8245:Activate(1)
  end
  L1_8246 = BroadcastEvent
  L2_8247 = A0_8245
  L3_8248 = "Strike"
  L1_8246(L2_8247, L3_8248)
end
function Lightning.Event_Enable(A0_8256)
  if A0_8256.bActive == 0 then
    A0_8256.bActive = 1
    A0_8256:ScheduleNextStrike()
  end
end
function Lightning.Event_Disable(A0_8257)
  local L1_8258
  A0_8257.bActive = 0
end
Lightning.FlowEvents = {
  Inputs = {
    Strike = {
      Lightning.Event_Strike,
      "bool"
    },
    Enable = {
      Lightning.Event_Enable,
      "bool"
    },
    Disable = {
      Lightning.Event_Disable,
      "bool"
    }
  },
  Outputs = {Strike = "bool"}
}
