local L0_8135, L1_8136, L2_8137, L3_8138
L0_8135 = {}
L0_8135.type = "FogVolume"
L1_8136 = {}
L1_8136.bActive = 1
L1_8136.eiVolumeType = 0
L2_8137 = {}
L2_8137.x = 1
L2_8137.y = 1
L2_8137.z = 1
L1_8136.Size = L2_8137
L2_8137 = {}
L2_8137.x = 1
L2_8137.y = 1
L2_8137.z = 1
L1_8136.color_Color = L2_8137
L1_8136.fHDRDynamic = 0
L1_8136.bUseGlobalFogColor = 0
L1_8136.GlobalDensity = 1
L1_8136.DensityOffset = 0
L1_8136.NearCutoff = 0
L1_8136.FallOffDirLong = 0
L1_8136.FallOffDirLati = 90
L1_8136.FallOffShift = 0
L1_8136.FallOffScale = 1
L1_8136.SoftEdges = 1
L1_8136.RampStart = 0
L1_8136.RampEnd = 50
L1_8136.RampInfluence = 0
L1_8136.WindInfluence = 1
L1_8136.DensityNoiseScale = 0
L1_8136.DensityNoiseOffset = 0
L1_8136.DensityNoiseTimeFrequency = 0
L2_8137 = {}
L2_8137.x = 10
L2_8137.y = 10
L2_8137.z = 10
L1_8136.DensityNoiseFrequency = L2_8137
L1_8136.bIgnoresVisAreas = 0
L1_8136.bAffectsThisAreaOnly = 0
L0_8135.Properties = L1_8136
L1_8136 = {}
L1_8136.fadeTime = 0
L1_8136.fadeToValue = 0
L0_8135.Fader = L1_8136
L1_8136 = {}
L1_8136.Model = "Editor/Objects/invisiblebox.cgf"
L1_8136.Icon = "FogVolume.bmp"
L1_8136.ShowBounds = 1
L0_8135.Editor = L1_8136
FogVolume = L0_8135
L0_8135 = FogVolume
function L1_8136(A0_8139)
  A0_8139:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_8139:SetFlags(ENTITY_FLAG_NO_PROXIMITY, 0)
end
L0_8135.OnSpawn = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8140)
  local L1_8141
  L1_8141 = A0_8140.Properties
  A0_8140:LoadFogVolume(0, A0_8140.Properties)
end
L0_8135.InitFogVolumeProperties = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8142)
  A0_8142:InitFogVolumeProperties()
  A0_8142.active = true
end
L0_8135.CreateFogVolume = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8143)
  A0_8143:FreeSlot(0)
  A0_8143.active = false
end
L0_8135.DeleteFogVolume = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8144)
  A0_8144.active = false
  if A0_8144.Properties.bActive == 1 then
    A0_8144:CreateFogVolume()
  end
end
L0_8135.OnInit = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8145)
  local L1_8146
end
L0_8135.CheckMove = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8147)
  local L1_8148
end
L0_8135.OnShutDown = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8149)
  if A0_8149.Properties.bActive == 1 then
    A0_8149:CreateFogVolume()
  else
    A0_8149:DeleteFogVolume()
  end
end
L0_8135.OnPropertyChange = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8150, A1_8151)
  local L2_8152
  L2_8152 = false
  if A1_8151 == "GlobalDensity" then
    A0_8150:FadeGlobalDensity(0, 0, A0_8150.Properties.GlobalDensity)
    A0_8150.targetFadeValue = A0_8150.Properties.GlobalDensity
    L2_8152 = true
  end
  return L2_8152
end
L0_8135.OnPropertyAnimated = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8153)
  A0_8153.active = false
  if A0_8153.Properties.bActive == 1 then
    A0_8153:CreateFogVolume()
  end
end
L0_8135.OnReset = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8154)
  A0_8154:DeleteFogVolume()
  BroadcastEvent(A0_8154, "Hide")
end
L0_8135.Event_Hide = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8155)
  A0_8155:CreateFogVolume()
  BroadcastEvent(A0_8155, "Show")
end
L0_8135.Event_Show = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8156)
  A0_8156:FadeGlobalDensity(0, A0_8156.Fader.fadeTime, A0_8156.Fader.fadeToValue)
  A0_8156.targetFadeValue = A0_8156.Fader.fadeToValue
end
L0_8135.Event_Fade = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8157, A1_8158, A2_8159)
  A0_8157.Fader.fadeTime = A2_8159
end
L0_8135.Event_FadeTime = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8160, A1_8161, A2_8162)
  A0_8160.Fader.fadeToValue = A2_8162
end
L0_8135.Event_FadeValue = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8163)
  if A0_8163.targetFadeValue ~= nil then
    A0_8163:FadeGlobalDensity(0, 0, A0_8163.targetFadeValue)
  end
end
L0_8135.OnPostLoad = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8164, A1_8165)
  if A0_8164.active and not A1_8165.active then
    A0_8164:DeleteFogVolume()
  elseif not A0_8164.active and A1_8165.active then
    A0_8164:CreateFogVolume()
  end
  A0_8164.active = A1_8165.active
  A0_8164.targetFadeValue = A1_8165.targetFadeValue
end
L0_8135.OnLoad = L1_8136
L0_8135 = FogVolume
function L1_8136(A0_8166, A1_8167)
  local L2_8168
  L2_8168 = A0_8166.active
  A1_8167.active = L2_8168
  L2_8168 = A0_8166.targetFadeValue
  A1_8167.targetFadeValue = L2_8168
end
L0_8135.OnSave = L1_8136
L0_8135 = FogVolume
L1_8136 = {}
L2_8137 = {}
L3_8138 = {
  FogVolume.Event_Hide,
  "bool"
}
L2_8137.Hide = L3_8138
L3_8138 = {
  FogVolume.Event_Show,
  "bool"
}
L2_8137.Show = L3_8138
L3_8138 = {
  FogVolume.Event_FadeTime,
  "float"
}
L2_8137.x_Time = L3_8138
L3_8138 = {
  FogVolume.Event_FadeValue,
  "float"
}
L2_8137.y_Value = L3_8138
L3_8138 = {
  FogVolume.Event_Fade,
  "bool"
}
L2_8137.z_Fade = L3_8138
L1_8136.Inputs = L2_8137
L2_8137 = {}
L2_8137.Hide = "bool"
L2_8137.Show = "bool"
L1_8136.Outputs = L2_8137
L0_8135.FlowEvents = L1_8136
