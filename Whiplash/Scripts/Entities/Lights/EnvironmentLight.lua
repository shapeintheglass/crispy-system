Script.ReloadScript("Scripts/Entities/Lights/Light.lua")
EnvironmentLight = {
  Properties = {
    _nVersion = -1,
    bActive = 0,
    BoxSizeX = 10,
    BoxSizeY = 10,
    BoxSizeZ = 10,
    Color = {
      clrDiffuse = {
        x = 1,
        y = 1,
        z = 1
      },
      fDiffuseMultiplier = 1,
      fSpecularMultiplier = 1
    },
    Projection = {
      bBoxProject = 0,
      fBoxWidth = 10,
      fBoxHeight = 10,
      fBoxLength = 10
    },
    Options = {
      bAffectsThisAreaOnly = 1,
      bIgnoresVisAreas = 0,
      _texture_deferred_cubemap = "",
      SortPriority = 0,
      fAttenuationFalloffMax = 0.3
    },
    OptionsAdvanced = {texture_deferred_cubemap = "", bIgnoreDecals = 0}
  },
  Editor = {ShowBounds = 0, AbsoluteRadius = 1},
  _LightTable = {}
}
LightSlot = 1
function EnvironmentLight.OnInit(A0_5913)
  A0_5913:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_5913:OnReset()
  A0_5913:Activate(1)
  A0_5913:CacheResources("EnvironmentLight.lua")
end
function EnvironmentLight.CacheResources(A0_5914, A1_5915)
  if A0_5914.Properties.OptionsAdvanced.texture_deferred_cubemap == "" then
    A0_5914.Properties.OptionsAdvanced.texture_deferred_cubemap = A0_5914.Properties.Options._texture_deferred_cubemap
  end
  Game.CacheResource(A1_5915, A0_5914.Properties.OptionsAdvanced.texture_deferred_cubemap, eGameCacheResourceType_TextureDeferredCubemap, 0)
end
function EnvironmentLight.OnShutDown(A0_5916)
  A0_5916:FreeSlot(LightSlot)
end
function EnvironmentLight.OnLoad(A0_5917, A1_5918)
  A0_5917:OnReset()
  A0_5917:ActivateLight(A1_5918.bActive)
  A0_5917.diffuse_color = A1_5918.diffuse_color
end
function EnvironmentLight.OnSave(A0_5919, A1_5920)
  local L2_5921
  L2_5921 = A0_5919.bActive
  A1_5920.bActive = L2_5921
  L2_5921 = A0_5919.diffuse_color
  A1_5920.diffuse_color = L2_5921
end
function EnvironmentLight.OnPostLoad(A0_5922)
  if A0_5922.diffuse_color ~= nil then
    A0_5922:SetLightColorParams(LightSlot, A0_5922.diffuse_color, A0_5922.Properties.Color.fSpecularMultiplier)
  end
end
function EnvironmentLight.OnPropertyChange(A0_5923)
  A0_5923:OnReset()
  A0_5923:ActivateLight(A0_5923.bActive)
  if A0_5923.Properties.Options.bAffectsThisAreaOnly then
    A0_5923:UpdateLightClipBounds(LightSlot)
  end
end
function EnvironmentLight.OnPropertyAnimated(A0_5924, A1_5925)
  local L2_5926, L3_5927, L4_5928, L5_5929
  L2_5926 = false
  if A1_5925 == "fDiffuseMultiplier" or A1_5925 == "fSpecularMultiplier" then
    L2_5926 = true
    L3_5927 = A0_5924.Properties
    L3_5927 = L3_5927.Color
    L4_5928 = L3_5927.fDiffuseMultiplier
    L5_5929 = L3_5927.fSpecularMultiplier
    A0_5924.diffuse_color = {
      x = L3_5927.clrDiffuse.x * L4_5928,
      y = L3_5927.clrDiffuse.y * L4_5928,
      z = L3_5927.clrDiffuse.z * L4_5928
    }
    A0_5924:SetLightColorParams(LightSlot, A0_5924.diffuse_color, L5_5929)
  end
  return L2_5926
end
function EnvironmentLight.OnUpdate(A0_5930, A1_5931)
  if A0_5930.bActive and A0_5930.Properties.Options.bAffectsThisAreaOnly then
    A0_5930:UpdateLightClipBounds(LightSlot)
  end
  if not System.IsEditor() then
    A0_5930:Activate(0)
  end
end
function EnvironmentLight.OnReset(A0_5932)
  if A0_5932.bActive ~= A0_5932.Properties.bActive then
    A0_5932:ActivateLight(A0_5932.Properties.bActive)
  end
end
function EnvironmentLight.ActivateLight(A0_5933, A1_5934)
  if A1_5934 and A1_5934 ~= 0 then
    A0_5933.bActive = 1
    A0_5933:LoadLightToSlot(LightSlot)
    A0_5933:ActivateOutput("Active", true)
  else
    A0_5933.bActive = 0
    A0_5933:FreeSlot(LightSlot)
    A0_5933:ActivateOutput("Active", false)
  end
end
function EnvironmentLight.LoadLightToSlot(A0_5935, A1_5936)
  local L2_5937, L3_5938, L4_5939, L5_5940, L6_5941, L7_5942, L8_5943, L9_5944
  L2_5937 = A0_5935.Properties
  L3_5938 = L2_5937.Color
  L4_5939 = L2_5937.Options
  L5_5940 = L2_5937.OptionsAdvanced
  L6_5941 = L2_5937.Projection
  L7_5942 = L3_5938.fDiffuseMultiplier
  L8_5943 = L3_5938.fSpecularMultiplier
  L9_5944 = A0_5935._LightTable
  L9_5944.radius = 0.5 * (L2_5937.BoxSizeX * L2_5937.BoxSizeX + L2_5937.BoxSizeY * L2_5937.BoxSizeY + L2_5937.BoxSizeZ * L2_5937.BoxSizeZ) ^ 0.5
  L9_5944.box_size_x = L2_5937.BoxSizeX
  L9_5944.box_size_y = L2_5937.BoxSizeY
  L9_5944.box_size_z = L2_5937.BoxSizeZ
  L9_5944.diffuse_color = {
    x = L3_5938.clrDiffuse.x * L7_5942,
    y = L3_5938.clrDiffuse.y * L7_5942,
    z = L3_5938.clrDiffuse.z * L7_5942
  }
  L9_5944.specular_multiplier = L8_5943
  if L5_5940.texture_deferred_cubemap == "" then
    L5_5940.texture_deferred_cubemap = L4_5939._texture_deferred_cubemap
  end
  L9_5944.deferred_cubemap = L5_5940.texture_deferred_cubemap
  L9_5944.this_area_only = L4_5939.bAffectsThisAreaOnly
  L9_5944.ignore_visareas = L4_5939.bIgnoresVisAreas
  L9_5944.box_projection = L6_5941.bBoxProject
  L9_5944.box_width = L6_5941.fBoxWidth
  L9_5944.box_height = L6_5941.fBoxHeight
  L9_5944.box_length = L6_5941.fBoxLength
  L9_5944.sort_priority = L4_5939.SortPriority
  L9_5944.attenuation_falloff_max = L4_5939.fAttenuationFalloffMax
  L9_5944.lightmap_linear_attenuation = 1
  L9_5944.is_rectangle_light = 0
  L9_5944.is_sphere_light = 0
  L9_5944.area_sample_number = 1
  L9_5944.RAE_AmbientColor = {
    x = 0,
    y = 0,
    z = 0
  }
  L9_5944.RAE_MaxShadow = 1
  L9_5944.RAE_DistMul = 1
  L9_5944.RAE_DivShadow = 1
  L9_5944.RAE_ShadowHeight = 1
  L9_5944.RAE_FallOff = 2
  L9_5944.RAE_VisareaNumber = 0
  A0_5935:LoadLight(A1_5936, L9_5944)
end
function EnvironmentLight.Event_Enable(A0_5945)
  if A0_5945.bActive == 0 then
    A0_5945:ActivateLight(1)
  end
end
function EnvironmentLight.Event_Disable(A0_5946)
  if A0_5946.bActive == 1 then
    A0_5946:ActivateLight(0)
  end
end
function Light.NotifySwitchOnOffFromParent(A0_5947, A1_5948)
  if A0_5947.bActive == 1 and A1_5948 ~= true then
    A0_5947:ActivateLight(0)
  elseif A0_5947.bActive == 0 and A1_5948 then
    A0_5947:ActivateLight(1)
  end
end
function EnvironmentLight.Event_Active(A0_5949, A1_5950)
  if A0_5949.bActive == 0 and A1_5950 == true then
    A0_5949:ActivateLight(1)
  elseif A0_5949.bActive == 1 and A1_5950 == false then
    A0_5949:ActivateLight(0)
  end
end
EnvironmentLight.FlowEvents = {
  Inputs = {
    Active = {
      EnvironmentLight.Event_Active,
      "bool"
    },
    Enable = {
      EnvironmentLight.Event_Enable,
      "bool"
    },
    Disable = {
      EnvironmentLight.Event_Disable,
      "bool"
    }
  },
  Outputs = {Active = "bool"}
}
