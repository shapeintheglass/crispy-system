local L0_8086, L1_8087, L2_8088, L3_8089
L0_8086 = {}
L1_8087 = {}
L2_8088 = {}
L2_8088.fFadeInTime = 0.1
L2_8088.fFadeOutTime = 0.1
L2_8088.fFlashDuration = 1
L1_8087.Timing = L2_8088
L2_8088 = {}
L2_8088.SkyHighlightMultiplier = 1
L3_8089 = {}
L3_8089.x = 0.8
L3_8089.y = 0.8
L3_8089.z = 1
L2_8088.color_SkyHighlightColor = L3_8089
L2_8088.SkyHighlightAtten = 10
L2_8088.sound_Sound = ""
L1_8087.Effects = L2_8088
L0_8086.Properties = L1_8087
L1_8087 = {}
L1_8087.x = 0
L1_8087.y = 0
L1_8087.z = 0
L0_8086.TempPos = L1_8087
L1_8087 = {}
L1_8087.Icon = "Flash.bmp"
L0_8086.Editor = L1_8087
L1_8087 = {}
L1_8087.size = 0
L2_8088 = {}
L2_8088.x = 0
L2_8088.y = 0
L2_8088.z = 0
L1_8087.color = L2_8088
L2_8088 = {}
L2_8088.x = 0
L2_8088.y = 0
L2_8088.z = 0
L1_8087.position = L2_8088
L0_8086._SkyHighlight = L1_8087
Flash = L0_8086
L0_8086 = Flash
function L1_8087(A0_8090)
  local L1_8091
  A0_8090.bStriking = 0
  A0_8090.light_fade = 0
  A0_8090.time = 0
  A0_8090.state = 0
  A0_8090.light_intensity = 0
  L1_8091 = {}
  L1_8091.x = 0
  L1_8091.y = 0
  L1_8091.z = 0
  A0_8090.vStrikeOffset = L1_8091
  L1_8091 = {}
  L1_8091.x = 0
  L1_8091.y = 0
  L1_8091.z = 0
  A0_8090.vSkyHighlightPos = L1_8091
end
L0_8086.OnInit = L1_8087
L0_8086 = Flash
function L1_8087(A0_8092)
  A0_8092:StopStrike()
end
L0_8086.OnShutDown = L1_8087
L0_8086 = Flash
function L1_8087(A0_8093)
  A0_8093.bStriking = 0
  A0_8093.bStopStrike = 0
  A0_8093.state = 0
  A0_8093._SkyHighlight.size = 0
  A0_8093._SkyHighlight.color.x = 0
  A0_8093._SkyHighlight.color.y = 0
  A0_8093._SkyHighlight.color.z = 0
  A0_8093._SkyHighlight.position.x = 0
  A0_8093._SkyHighlight.position.y = 0
  A0_8093._SkyHighlight.position.z = 0
  System.SetSkyHighlight(A0_8093._SkyHighlight)
  A0_8093:Activate(0)
end
L0_8086.StopStrike = L1_8087
L0_8086 = Flash
function L1_8087(A0_8094, A1_8095)
  A0_8094:StopStrike()
  A0_8094.bStriking = A1_8095.bStriking
  A0_8094.light_fade = A1_8095.light_fade
  A0_8094.time = A1_8095.time
  A0_8094.state = A1_8095.state
  A0_8094.light_intensity = A1_8095.light_intensity
  A0_8094.vStrikeOffset = A1_8095.vStrikeOffset
  A0_8094.vSkyHighlightPos = A1_8095.vSkyHighlightPos
  if A1_8095.bActive == true then
    A0_8094:Activate(1)
  end
end
L0_8086.OnLoad = L1_8087
L0_8086 = Flash
function L1_8087(A0_8096, A1_8097)
  A1_8097.bActive = A0_8096:IsActive()
  A1_8097.bStriking = A0_8096.bStriking
  A1_8097.light_fade = A0_8096.light_fade
  A1_8097.time = A0_8096.time
  A1_8097.state = A0_8096.state
  A1_8097.light_intensity = A0_8096.light_intensity
  A1_8097.vStrikeOffset = A0_8096.vStrikeOffset
  A1_8097.vSkyHighlightPos = A0_8096.vSkyHighlightPos
end
L0_8086.OnSave = L1_8087
L0_8086 = Flash
function L1_8087(A0_8098, A1_8099)
  if A0_8098.state == 0 then
    A0_8098.light_fade = 1 / A0_8098.Properties.Timing.fFadeInTime
    A0_8098.time = A0_8098.time + A1_8099
    if A0_8098.Properties.Timing.fFadeInTime < A0_8098.time then
      A0_8098.state = 1
      A0_8098.time = 0
    end
  elseif A0_8098.state == 1 then
    A0_8098.light_intensity = 1
    A0_8098.light_fade = 0
    A0_8098.time = A0_8098.time + A1_8099
    if A0_8098.Properties.Timing.fFlashDuration < A0_8098.time then
      A0_8098.state = 2
      A0_8098.time = 0
    end
  elseif A0_8098.state == 2 then
    A0_8098.light_fade = -1 / A0_8098.Properties.Timing.fFadeOutTime
    A0_8098.time = A0_8098.time + A1_8099
    if A0_8098.Properties.Timing.fFadeOutTime < A0_8098.time then
      A0_8098.time = 0
      A0_8098:StopStrike()
    end
  end
  A0_8098.light_intensity = A0_8098.light_intensity + A0_8098.light_fade * A1_8099
  if 1 < A0_8098.light_intensity then
    A0_8098.light_intensity = 1
  end
  if 0 > A0_8098.light_intensity then
    A0_8098.light_intensity = 0
  end
  A0_8098:UpdateFlashParams()
end
L0_8086.OnUpdate = L1_8087
L0_8086 = Flash
function L1_8087(A0_8100)
  local L1_8101, L2_8102
  L1_8101 = A0_8100.Properties
  L1_8101 = L1_8101.Effects
  L2_8102 = A0_8100.light_intensity
  L2_8102 = L2_8102 * L1_8101.SkyHighlightMultiplier
  A0_8100._SkyHighlight.color.x = L2_8102 * L1_8101.color_SkyHighlightColor.x
  A0_8100._SkyHighlight.color.y = L2_8102 * L1_8101.color_SkyHighlightColor.y
  A0_8100._SkyHighlight.color.z = L2_8102 * L1_8101.color_SkyHighlightColor.z
  A0_8100._SkyHighlight.size = L1_8101.SkyHighlightAtten
  A0_8100._SkyHighlight.position.x = A0_8100.vSkyHighlightPos.x
  A0_8100._SkyHighlight.position.y = A0_8100.vSkyHighlightPos.y
  A0_8100._SkyHighlight.position.z = A0_8100.vSkyHighlightPos.z
  System.SetSkyHighlight(A0_8100._SkyHighlight)
end
L0_8086.UpdateFlashParams = L1_8087
L0_8086 = Flash
function L1_8087(A0_8103)
  if A0_8103.bStriking == 0 then
    A0_8103.bStriking = 1
    A0_8103.vSkyHighlightPos.x = A0_8103:GetPos().x
    A0_8103.vSkyHighlightPos.y = A0_8103:GetPos().y
    A0_8103.vSkyHighlightPos.z = A0_8103:GetPos().z
    A0_8103.bStriking = 0
    A0_8103.light_fade = 0
    A0_8103.time = 0
    A0_8103.state = 0
    A0_8103.light_intensity = 0
    A0_8103.light_fade = 1 / A0_8103.Properties.Timing.fFadeInTime
    A0_8103:UpdateFlashParams()
    if A0_8103.Properties.Effects.sound_Sound ~= "" then
    end
    A0_8103:Activate(1)
  end
  BroadcastEvent(A0_8103, "Strike")
end
L0_8086.Event_Strike = L1_8087
L0_8086 = Flash
function L1_8087(A0_8104)
  A0_8104:StopStrike()
  BroadcastEvent(A0_8104, "Stop")
end
L0_8086.Event_Stop = L1_8087
L0_8086 = Flash
L1_8087 = {}
L2_8088 = {}
L3_8089 = {
  Flash.Event_Strike,
  "bool"
}
L2_8088.Strike = L3_8089
L3_8089 = {
  Flash.Event_Stop,
  "bool"
}
L2_8088.Stop = L3_8089
L1_8087.Inputs = L2_8088
L2_8088 = {}
L2_8088.Strike = "bool"
L2_8088.Stop = "bool"
L1_8087.Outputs = L2_8088
L0_8086.FlowEvents = L1_8087
