Script.ReloadScript("Scripts/Entities/Lights/Light.lua")
ArkEnvironmentLightTOD = {
  Properties = {
    _nVersion = -1,
    bActive = 0,
    _bCheapLight = 0,
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
      SortPriority = 0,
      fAttenuationFalloffMax = 0.3
    },
    TimeOfDayOptions = {
      TimeOfDay1 = {fHour = 0, texture_deferred_cubemap_tod1 = ""},
      TimeOfDay2 = {fHour = 4, texture_deferred_cubemap_tod2 = ""},
      TimeOfDay3 = {fHour = 8, texture_deferred_cubemap_tod3 = ""},
      TimeOfDay4 = {fHour = 12, texture_deferred_cubemap_tod4 = ""},
      TimeOfDay5 = {fHour = 16, texture_deferred_cubemap_tod5 = ""},
      TimeOfDay6 = {fHour = 20, texture_deferred_cubemap_tod6 = ""}
    }
  },
  Editor = {ShowBounds = 0, AbsoluteRadius = 1},
  _LightTable = {}
}
LightSlot = 1
function ArkEnvironmentLightTOD.OnInit(A0_3693)
  A0_3693:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_3693:OnReset()
  A0_3693:Activate(1)
  A0_3693:CacheResources("ArkEnvironmentLightTOD.lua")
end
function ArkEnvironmentLightTOD.CacheResources(A0_3694, A1_3695)
end
function ArkEnvironmentLightTOD.OnShutDown(A0_3696)
  A0_3696:FreeSlot(LightSlot)
end
function ArkEnvironmentLightTOD.OnLoad(A0_3697, A1_3698)
  A0_3697:OnReset()
  A0_3697:ActivateLight(A1_3698.bActive)
end
function ArkEnvironmentLightTOD.OnSave(A0_3699, A1_3700)
  A1_3700.bActive = A0_3699.bActive
end
function ArkEnvironmentLightTOD.OnPropertyChange(A0_3701)
  A0_3701:OnReset()
  A0_3701:ActivateLight(A0_3701.bActive)
  if A0_3701.Properties.Options.bAffectsThisAreaOnly then
    A0_3701:UpdateLightClipBounds(LightSlot)
  end
end
function ArkEnvironmentLightTOD.OnPropertyAnimated(A0_3702, A1_3703)
  local L2_3704, L3_3705, L4_3706, L5_3707, L6_3708
  L2_3704 = false
  if A1_3703 == "fDiffuseMultiplier" or A1_3703 == "fSpecularMultiplier" then
    L2_3704 = true
    L3_3705 = A0_3702.Properties
    L3_3705 = L3_3705.Color
    L4_3706 = L3_3705.fDiffuseMultiplier
    L5_3707 = L3_3705.fSpecularMultiplier
    L6_3708 = {}
    L6_3708.x = L3_3705.clrDiffuse.x * L4_3706
    L6_3708.y = L3_3705.clrDiffuse.y * L4_3706
    L6_3708.z = L3_3705.clrDiffuse.z * L4_3706
    A0_3702:SetLightColorParams(LightSlot, L6_3708, L5_3707)
  end
  return L2_3704
end
function ArkEnvironmentLightTOD.OnUpdate(A0_3709, A1_3710)
  if A0_3709.bActive and A0_3709.Properties.Options.bAffectsThisAreaOnly then
    A0_3709:UpdateLightClipBounds(LightSlot)
  end
  if not System.IsEditor() then
    A0_3709:Activate(0)
  end
end
function ArkEnvironmentLightTOD.OnReset(A0_3711)
  if A0_3711.bActive ~= A0_3711.Properties.bActive then
    A0_3711:ActivateLight(A0_3711.Properties.bActive)
  end
end
function ArkEnvironmentLightTOD.ActivateLight(A0_3712, A1_3713)
  if A1_3713 and A1_3713 ~= 0 then
    A0_3712.bActive = 1
    A0_3712:LoadLightToSlot(LightSlot)
    A0_3712:ActivateOutput("Active", true)
  else
    A0_3712.bActive = 0
    A0_3712:FreeSlot(LightSlot)
    A0_3712:ActivateOutput("Active", false)
  end
end
function ArkEnvironmentLightTOD.LoadLightToSlot(A0_3714, A1_3715)
  local L2_3716, L3_3717, L4_3718, L5_3719, L6_3720, L7_3721, L8_3722
  L2_3716 = A0_3714.Properties
  L3_3717 = L2_3716.Color
  L4_3718 = L2_3716.Options
  L5_3719 = L2_3716.Projection
  L6_3720 = L3_3717.fDiffuseMultiplier
  L7_3721 = L3_3717.fSpecularMultiplier
  L8_3722 = A0_3714._LightTable
  L8_3722.cheapLight = L2_3716._bCheapLight
  L8_3722.radius = 0.5 * (L2_3716.BoxSizeX * L2_3716.BoxSizeX + L2_3716.BoxSizeY * L2_3716.BoxSizeY + L2_3716.BoxSizeZ * L2_3716.BoxSizeZ) ^ 0.5
  L8_3722.box_size_x = L2_3716.BoxSizeX
  L8_3722.box_size_y = L2_3716.BoxSizeY
  L8_3722.box_size_z = L2_3716.BoxSizeZ
  L8_3722.diffuse_color = {
    x = L3_3717.clrDiffuse.x * L6_3720,
    y = L3_3717.clrDiffuse.y * L6_3720,
    z = L3_3717.clrDiffuse.z * L6_3720
  }
  L8_3722.specular_multiplier = L7_3721
  L8_3722.this_area_only = L4_3718.bAffectsThisAreaOnly
  L8_3722.ignore_visareas = L4_3718.bIgnoresVisAreas
  L8_3722.box_projection = L5_3719.bBoxProject
  L8_3722.box_width = L5_3719.fBoxWidth
  L8_3722.box_height = L5_3719.fBoxHeight
  L8_3722.box_length = L5_3719.fBoxLength
  L8_3722.sort_priority = L4_3718.SortPriority
  L8_3722.attenuation_falloff_max = L4_3718.fAttenuationFalloffMax
  L8_3722.lightmap_linear_attenuation = 1
  L8_3722.is_rectangle_light = 0
  L8_3722.is_sphere_light = 0
  L8_3722.area_sample_number = 1
  L8_3722.RAE_AmbientColor = {
    x = 0,
    y = 0,
    z = 0
  }
  L8_3722.RAE_MaxShadow = 1
  L8_3722.RAE_DistMul = 1
  L8_3722.RAE_DivShadow = 1
  L8_3722.RAE_ShadowHeight = 1
  L8_3722.RAE_FallOff = 2
  L8_3722.RAE_VisareaNumber = 0
  A0_3714:LoadLight(A1_3715, L8_3722)
end
function ArkEnvironmentLightTOD.Event_Enable(A0_3723)
  if A0_3723.bActive == 0 then
    A0_3723:ActivateLight(1)
  end
end
function ArkEnvironmentLightTOD.Event_Disable(A0_3724)
  if A0_3724.bActive == 1 then
    A0_3724:ActivateLight(0)
  end
end
function Light.NotifySwitchOnOffFromParent(A0_3725, A1_3726)
  if A0_3725.bActive == 1 and A1_3726 ~= true then
    A0_3725:ActivateLight(0)
  elseif A0_3725.bActive == 0 and A1_3726 then
    A0_3725:ActivateLight(1)
  end
end
function ArkEnvironmentLightTOD.Event_Active(A0_3727, A1_3728)
  if A0_3727.bActive == 0 and A1_3728 == true then
    A0_3727:ActivateLight(1)
  elseif A0_3727.bActive == 1 and A1_3728 == false then
    A0_3727:ActivateLight(0)
  end
end
ArkEnvironmentLightTOD.FlowEvents = {
  Inputs = {
    Active = {
      ArkEnvironmentLightTOD.Event_Active,
      "bool"
    },
    Enable = {
      ArkEnvironmentLightTOD.Event_Enable,
      "bool"
    },
    Disable = {
      ArkEnvironmentLightTOD.Event_Disable,
      "bool"
    }
  },
  Outputs = {Active = "bool"}
}
