local L0_5951, L1_5952, L2_5953, L3_5954
L0_5951 = {}
L1_5952 = {}
L1_5952._nVersion = -1
L1_5952.bActive = 1
L1_5952.Radius = 10
L1_5952.fAttenuationBulbSize = 0.05
L2_5953 = {}
L2_5953.nLightStyle = 0
L2_5953.fAnimationSpeed = 1
L2_5953.nAnimationPhase = 0
L2_5953.bAttachToSun = 0
L2_5953.lightanimation_LightAnimation = ""
L2_5953.bTimeScrubbingInTrackView = 0
L2_5953._fTimeScrubbed = 0
L2_5953.bFlareEnable = 1
L2_5953.flare_Flare = ""
L2_5953.fFlareFOV = 360
L1_5952.Style = L2_5953
L2_5953 = {}
L2_5953.texture_Texture = ""
L2_5953.fProjectorFov = 90
L2_5953.fProjectorNearPlane = 0
L1_5952.Projector = L2_5953
L2_5953 = {}
L3_5954 = {}
L3_5954.x = 1
L3_5954.y = 1
L3_5954.z = 1
L2_5953.clrDiffuse = L3_5954
L2_5953.fDiffuseMultiplier = 1
L2_5953.fSpecularMultiplier = 1
L1_5952.Color = L2_5953
L2_5953 = {}
L2_5953.bAffectsThisAreaOnly = 1
L2_5953.bIgnoresVisAreas = 0
L2_5953.bAmbient = 0
L2_5953.bFakeLight = 0
L2_5953.bVolumetricFog = 1
L2_5953.bAffectsVolumetricFogOnly = 0
L2_5953.fFogRadialLobe = 0
L1_5952.Options = L2_5953
L2_5953 = {}
L2_5953.nCastShadows = 0
L2_5953.nCastShadowViewDistRatio = 100
L2_5953.fShadowBias = 1
L2_5953.fShadowSlopeBias = 1
L2_5953.fShadowResolutionScale = 1
L2_5953.nShadowMinResPercent = 0
L2_5953.fShadowUpdateMinRadius = 10
L2_5953.fShadowUpdateRatio = 1
L1_5952.Shadows = L2_5953
L2_5953 = {}
L2_5953.bAreaLight = 0
L2_5953.fPlaneWidth = 1
L2_5953.fPlaneHeight = 1
L1_5952.Shape = L2_5953
L0_5951.Properties = L1_5952
L1_5952 = {}
L1_5952.Model = "Editor/Objects/Light_Omni.cgf"
L1_5952.Icon = "Light.bmp"
L1_5952.ShowBounds = 0
L1_5952.AbsoluteRadius = 1
L1_5952.IsScalable = false
L0_5951.Editor = L1_5952
L0_5951.m_specularMultiplier = nil
L0_5951.m_diffuseMultiplier = nil
L0_5951.m_radius = nil
L0_5951.m_clrDiffuse = nil
L0_5951.m_bIsGameRunning = false
L1_5952 = {}
L0_5951._LightTable = L1_5952
Light = L0_5951
L0_5951 = 1
LightSlot = L0_5951
L0_5951 = Light
function L1_5952(A0_5955)
  A0_5955:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_5955:Reset()
  A0_5955:CacheResources("Light.lua")
  A0_5955:CacheMutableProperties()
end
L0_5951.OnInit = L1_5952
L0_5951 = Light
function L1_5952(A0_5956, A1_5957)
  local L2_5958
  L2_5958 = 0
  Game.CacheResource(A1_5957, A0_5956.Properties.Projector.texture_Texture, eGameCacheResourceType_Texture, L2_5958)
end
L0_5951.CacheResources = L1_5952
L0_5951 = Light
function L1_5952(A0_5959)
  A0_5959:FreeSlot(LightSlot)
end
L0_5951.OnShutDown = L1_5952
L0_5951 = Light
function L1_5952(A0_5960, A1_5961)
  A0_5960.Properties.Radius = A1_5961.m_radius
  A0_5960.Properties.Color.fDiffuseMultiplier = A1_5961.m_diffuseMultiplier
  A0_5960.Properties.Color.fSpecularMultiplier = A1_5961.m_specularMultiplier
  A0_5960.Properties.Color.clrDiffuse = NewVector(A1_5961.m_clrDiffuse)
  A0_5960:ActivateLight(A1_5961.bActive)
  A0_5960:CacheMutableProperties()
  A0_5960:OnPropertyChange()
end
L0_5951.OnLoad = L1_5952
L0_5951 = Light
function L1_5952(A0_5962, A1_5963)
  A0_5962:CacheMutableProperties()
  A1_5963.bActive = A0_5962.bActive
  A1_5963.m_radius = A0_5962.m_radius
  A1_5963.m_diffuseMultiplier = A0_5962.m_diffuseMultiplier
  A1_5963.m_specularMultiplier = A0_5962.m_specularMultiplier
  A1_5963.m_clrDiffuse = NewVector(A0_5962.m_clrDiffuse)
end
L0_5951.OnSave = L1_5952
L0_5951 = Light
function L1_5952(A0_5964)
  if System.IsEditing() and not A0_5964.m_bIsGameRunning then
    A0_5964:CacheMutableProperties()
  end
  A0_5964:Reset()
  A0_5964:ActivateLight(A0_5964.bActive)
  if A0_5964.Properties.Options.bAffectsThisAreaOnly then
    A0_5964:UpdateLightClipBounds(LightSlot)
  end
end
L0_5951.OnPropertyChange = L1_5952
L0_5951 = Light
function L1_5952(A0_5965, A1_5966)
  local L2_5967, L3_5968, L4_5969, L5_5970, L6_5971
  L2_5967 = false
  if A1_5966 == "fDiffuseMultiplier" or A1_5966 == "fSpecularMultiplier" then
    L2_5967 = true
    L3_5968 = A0_5965.Properties
    L3_5968 = L3_5968.Color
    L4_5969 = L3_5968.fDiffuseMultiplier
    L5_5970 = L3_5968.fSpecularMultiplier
    L6_5971 = {}
    L6_5971.x = L3_5968.clrDiffuse.x * L4_5969
    L6_5971.y = L3_5968.clrDiffuse.y * L4_5969
    L6_5971.z = L3_5968.clrDiffuse.z * L4_5969
    A0_5965:SetLightColorParams(LightSlot, L6_5971, L5_5970)
  end
  return L2_5967
end
L0_5951.OnPropertyAnimated = L1_5952
L0_5951 = Light
function L1_5952(A0_5972)
  A0_5972:OnPropertyChange()
end
L0_5951.OnSysSpecLightChanged = L1_5952
L0_5951 = Light
function L1_5952(A0_5973)
  if A0_5973.Properties.Options.bAffectsThisAreaOnly then
    A0_5973:UpdateLightClipBounds(LightSlot)
  end
end
L0_5951.OnLevelLoaded = L1_5952
L0_5951 = Light
function L1_5952(A0_5974)
  if A0_5974.bActive ~= A0_5974.Properties.bActive then
    A0_5974:ActivateLight(A0_5974.Properties.bActive)
  end
end
L0_5951.Reset = L1_5952
L0_5951 = Light
function L1_5952(A0_5975)
  A0_5975.Properties.Radius = A0_5975.m_radius
  A0_5975.Properties.Color.fDiffuseMultiplier = A0_5975.m_diffuseMultiplier
  A0_5975.Properties.Color.fSpecularMultiplier = A0_5975.m_specularMultiplier
  if A0_5975.m_clrDiffuse ~= nil then
    A0_5975.Properties.Color.clrDiffuse = NewVector(A0_5975.m_clrDiffuse)
  end
  A0_5975.m_bIsGameRunning = false
  A0_5975:OnPropertyChange()
end
L0_5951.OnReset = L1_5952
L0_5951 = Light
function L1_5952(A0_5976)
  if System.IsEditor() then
    A0_5976:CacheMutableProperties()
  end
  A0_5976.m_bIsGameRunning = true
end
L0_5951.OnStartGame = L1_5952
L0_5951 = Light
function L1_5952(A0_5977)
  if System.IsEditor() then
    A0_5977:CacheMutableProperties()
  end
end
L0_5951.OnStartLevel = L1_5952
L0_5951 = Light
function L1_5952(A0_5978)
  A0_5978.m_radius = A0_5978.Properties.Radius
  A0_5978.m_diffuseMultiplier = A0_5978.Properties.Color.fDiffuseMultiplier
  A0_5978.m_clrDiffuse = NewVector(A0_5978.Properties.Color.clrDiffuse)
  A0_5978.m_specularMultiplier = A0_5978.Properties.Color.fSpecularMultiplier
end
L0_5951.CacheMutableProperties = L1_5952
L0_5951 = Light
function L1_5952(A0_5979, A1_5980)
  if A1_5980 and A1_5980 ~= 0 then
    A0_5979.bActive = 1
    A0_5979:LoadLightToSlot(LightSlot)
    A0_5979:ActivateOutput("Active", true)
  else
    A0_5979.bActive = 0
    A0_5979:FreeSlot(LightSlot)
    A0_5979:ActivateOutput("Active", false)
  end
end
L0_5951.ActivateLight = L1_5952
L0_5951 = Light
function L1_5952(A0_5981, A1_5982)
  local L2_5983, L3_5984, L4_5985, L5_5986, L6_5987, L7_5988, L8_5989, L9_5990, L10_5991, L11_5992
  L2_5983 = A0_5981.Properties
  L3_5984 = L2_5983.Style
  L4_5985 = L2_5983.Projector
  L5_5986 = L2_5983.Color
  L6_5987 = L2_5983.Options
  L7_5988 = L2_5983.Shape
  L8_5989 = L2_5983.Shadows
  L9_5990 = L5_5986.fDiffuseMultiplier
  L10_5991 = L5_5986.fSpecularMultiplier
  L11_5992 = A0_5981._LightTable
  L11_5992.radius = L2_5983.Radius
  L11_5992.attenuation_bulbsize = L2_5983.fAttenuationBulbSize
  L11_5992.diffuse_color = {
    x = L5_5986.clrDiffuse.x * L9_5990,
    y = L5_5986.clrDiffuse.y * L9_5990,
    z = L5_5986.clrDiffuse.z * L9_5990
  }
  L11_5992.specular_multiplier = L10_5991
  L11_5992.this_area_only = L6_5987.bAffectsThisAreaOnly
  L11_5992.ambient = L2_5983.Options.bAmbient
  L11_5992.fake = L6_5987.bFakeLight
  L11_5992.ignore_visareas = L6_5987.bIgnoresVisAreas
  L11_5992.volumetric_fog = L6_5987.bVolumetricFog
  L11_5992.volumetric_fog_only = L6_5987.bAffectsVolumetricFogOnly
  L11_5992.fog_radial_lobe = L6_5987.fFogRadialLobe
  L11_5992.cast_shadow = L8_5989.nCastShadows
  L11_5992.cast_shadow_viewDistRatio = L8_5989.nCastShadowViewDistRatio
  L11_5992.shadow_bias = L8_5989.fShadowBias
  L11_5992.shadow_slope_bias = L8_5989.fShadowSlopeBias
  L11_5992.shadowResolutionScale = L8_5989.fShadowResolutionScale
  L11_5992.shadowMinResolution = L8_5989.nShadowMinResPercent
  L11_5992.shadowUpdate_MinRadius = L8_5989.fShadowUpdateMinRadius
  L11_5992.shadowUpdate_ratio = L8_5989.fShadowUpdateRatio
  L11_5992.projector_texture = L4_5985.texture_Texture
  L11_5992.proj_fov = L4_5985.fProjectorFov
  L11_5992.proj_nearplane = L4_5985.fProjectorNearPlane
  L11_5992.area_light = L7_5988.bAreaLight
  L11_5992.area_width = L7_5988.fPlaneWidth
  L11_5992.area_height = L7_5988.fPlaneHeight
  L11_5992.style = L3_5984.nLightStyle
  L11_5992.attach_to_sun = L3_5984.bAttachToSun
  L11_5992.anim_speed = L3_5984.fAnimationSpeed
  L11_5992.anim_phase = L3_5984.nAnimationPhase
  L11_5992.light_animation = L3_5984.lightanimation_LightAnimation
  L11_5992.time_scrubbing_in_trackview = L3_5984.bTimeScrubbingInTrackView
  L11_5992.time_scrubbed = L3_5984._fTimeScrubbed
  L11_5992.flare_enable = L3_5984.bFlareEnable
  L11_5992.flare_Flare = L3_5984.flare_Flare
  L11_5992.flare_FOV = L3_5984.fFlareFOV
  L11_5992.lightmap_linear_attenuation = 1
  L11_5992.is_rectangle_light = 0
  L11_5992.is_sphere_light = 0
  L11_5992.area_sample_number = 1
  L11_5992.indoor_only = 0
  A0_5981:LoadLight(A1_5982, L11_5992)
end
L0_5951.LoadLightToSlot = L1_5952
L0_5951 = Light
function L1_5952(A0_5993, A1_5994)
  local L2_5995, L3_5996, L4_5997
  L2_5995 = A0_5993.Properties
  L3_5996 = "Point"
  L4_5997 = L2_5995.Shape
  L4_5997 = L4_5997.bAreaLight
  if L4_5997 ~= 0 then
    L3_5996 = "Area"
  else
    L4_5997 = L2_5995.Projector
    L4_5997 = L4_5997.texture_Texture
    if L4_5997 ~= nil then
      L4_5997 = L2_5995.Projector
      L4_5997 = L4_5997.texture_Texture
      if L4_5997 ~= "" then
        L3_5996 = "Projector"
      end
    end
  end
  L4_5997 = "NoShadows"
  if 0 < L2_5995.Shadows.nCastShadows then
    L4_5997 = "Shadows"
  end
  A1_5994.Icon = "Light." .. L3_5996 .. "." .. L4_5997 .. ".bmp"
end
L0_5951.GetEditorIcon = L1_5952
L0_5951 = Light
function L1_5952(A0_5998)
  if A0_5998.bActive == 0 then
    A0_5998:ActivateLight(1)
  end
end
L0_5951.Event_Enable = L1_5952
L0_5951 = Light
function L1_5952(A0_5999)
  if A0_5999.bActive == 1 then
    A0_5999:ActivateLight(0)
  end
end
L0_5951.Event_Disable = L1_5952
L0_5951 = Light
function L1_5952(A0_6000, A1_6001)
  if A0_6000.bActive == 1 and A1_6001 ~= true then
    A0_6000:ActivateLight(0)
  elseif A0_6000.bActive == 0 and A1_6001 then
    A0_6000:ActivateLight(1)
  end
end
L0_5951.NotifySwitchOnOffFromParent = L1_5952
L0_5951 = Light
function L1_5952(A0_6002, A1_6003, A2_6004)
  if A0_6002.bActive == 0 and A2_6004 == true then
    A0_6002:ActivateLight(1)
  elseif A0_6002.bActive == 1 and A2_6004 == false then
    A0_6002:ActivateLight(0)
  end
end
L0_5951.Event_Active = L1_5952
L0_5951 = Light
function L1_5952(A0_6005, A1_6006, A2_6007)
  A0_6005.Properties.Radius = A2_6007
  A0_6005:OnPropertyChange()
end
L0_5951.Event_Radius = L1_5952
L0_5951 = Light
function L1_5952(A0_6008, A1_6009, A2_6010)
  A0_6008.Properties.Color.clrDiffuse = A2_6010
  A0_6008:OnPropertyChange()
end
L0_5951.Event_DiffuseColor = L1_5952
L0_5951 = Light
function L1_5952(A0_6011, A1_6012, A2_6013)
  A0_6011.Properties.Color.fDiffuseMultiplier = A2_6013
  A0_6011:OnPropertyChange()
end
L0_5951.Event_DiffuseMultiplier = L1_5952
L0_5951 = Light
function L1_5952(A0_6014, A1_6015, A2_6016)
  A0_6014.Properties.Color.fSpecularMultiplier = A2_6016
  A0_6014:OnPropertyChange()
end
L0_5951.Event_SpecularMultiplier = L1_5952
L0_5951 = Light
L1_5952 = {}
L2_5953 = {}
L3_5954 = {
  Light.Event_Active,
  "bool"
}
L2_5953.Active = L3_5954
L3_5954 = {
  Light.Event_Enable,
  "bool"
}
L2_5953.Enable = L3_5954
L3_5954 = {
  Light.Event_Disable,
  "bool"
}
L2_5953.Disable = L3_5954
L3_5954 = {
  Light.Event_Radius,
  "float"
}
L2_5953.Radius = L3_5954
L3_5954 = {
  Light.Event_DiffuseColor,
  "vec3"
}
L2_5953.DiffuseColor = L3_5954
L3_5954 = {
  Light.Event_DiffuseMultiplier,
  "float"
}
L2_5953.DiffuseMultiplier = L3_5954
L3_5954 = {
  Light.Event_SpecularMultiplier,
  "float"
}
L2_5953.SpecularMultiplier = L3_5954
L1_5952.Inputs = L2_5953
L2_5953 = {}
L2_5953.Active = "bool"
L1_5952.Outputs = L2_5953
L0_5951.FlowEvents = L1_5952
