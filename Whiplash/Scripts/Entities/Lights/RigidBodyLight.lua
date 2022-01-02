local L0_6017
L0_6017 = Script
L0_6017 = L0_6017.ReloadScript
L0_6017("Scripts/Entities/Physics/BasicEntity.lua")
L0_6017 = {}
L0_6017.Properties = {
  Physics = {
    bRigidBodyActive = 1,
    bActivateOnDamage = 0,
    bResting = 1,
    bCanBreakOthers = 0,
    Simulation = {
      max_time_step = 0.02,
      sleep_speed = 0.04,
      damping = 0,
      bFixedDamping = 0,
      bUseSimpleSolver = 0
    },
    Buoyancy = {
      water_density = 1000,
      water_damping = 0,
      water_resistance = 1000
    }
  },
  Sound = {
    soundTurnOn = "",
    soundTurnOff = "",
    soundDestroy = "",
    soundIdle = "",
    soundRun = "",
    vOffset = {
      x = 0,
      y = 0,
      z = 0
    }
  }
}
L0_6017.PropertiesInstance = {
  bTurnedOn = 1,
  LightProperties_Base = {
    _nVersion = -1,
    bUseThisLight = 1,
    Radius = 10,
    fAttenuationBulbSize = 0.05,
    Style = {
      nLightStyle = 0,
      fAnimationSpeed = 1,
      nAnimationPhase = 0,
      bFlareEnable = 1,
      flare_Flare = "",
      fFlareFOV = 360
    },
    Projector = {
      texture_Texture = "",
      fProjectorFov = 90,
      fProjectorNearPlane = 0
    },
    Color = {
      clrDiffuse = {
        x = 1,
        y = 1,
        z = 1
      },
      fDiffuseMultiplier = 1,
      fSpecularMultiplier = 1
    },
    Options = {
      bAffectsThisAreaOnly = 1,
      bIgnoresVisAreas = 0,
      bAmbient = 0,
      bFakeLight = 0,
      nGlowSubmatId = 0,
      vOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      vDirection = {
        x = 0,
        y = 1,
        z = 0
      }
    },
    Shadows = {
      nCastShadows = 0,
      bIgnoreGeomCaster = 1,
      fShadowBias = 1,
      fShadowSlopeBias = 1,
      fShadowResolutionScale = 1,
      nShadowMinResPercent = 0,
      fShadowUpdateMinRadius = 10,
      fShadowUpdateRatio = 1
    }
  },
  LightProperties_Destroyed = {
    _nVersion = -1,
    bUseThisLight = 0,
    Radius = 10,
    fAttenuationBulbSize = 0.05,
    Style = {
      nLightStyle = 0,
      fAnimationSpeed = 1,
      nAnimationPhase = 0,
      bFlareEnable = 1,
      flare_Flare = "",
      fFlareFOV = 360
    },
    Projector = {
      texture_Texture = "",
      fProjectorFov = 90,
      fProjectorNearPlane = 0
    },
    Color = {
      clrDiffuse = {
        x = 1,
        y = 1,
        z = 1
      },
      fDiffuseMultiplier = 1,
      fSpecularMultiplier = 1
    },
    Options = {
      bAffectsThisAreaOnly = 1,
      bIgnoresVisAreas = 0,
      bAmbient = 0,
      bFakeLight = 0,
      nGlowSubmatId = 0,
      vOffset = {
        x = 0,
        y = 0,
        z = 0
      },
      vDirection = {
        x = 0,
        y = 1,
        z = 0
      }
    },
    Shadows = {
      nCastShadows = 0,
      bIgnoreGeomCaster = 1,
      fShadowBias = 1,
      fShadowSlopeBias = 1,
      fShadowResolutionScale = 1,
      nShadowMinResPercent = 0,
      fShadowUpdateMinRadius = 10,
      fShadowUpdateRatio = 1
    }
  }
}
L0_6017._LightTable = {}
L0_6017.lightSlot = -1
L0_6017.materialIsCloned = false
L0_6017.Editor = {Icon = "Light.bmp", IconOnTop = 1}
RigidBodyLight = L0_6017
L0_6017 = {}
L0_6017.bRigidBodyActive = 0
L0_6017.bActivateOnDamage = 0
L0_6017.bResting = 1
L0_6017.Simulation = {
  max_time_step = 0.02,
  sleep_speed = 0.04,
  damping = 0,
  bFixedDamping = 0,
  bUseSimpleSolver = 0
}
L0_6017.Buoyancy = {
  water_density = 1000,
  water_damping = 0,
  water_resistance = 1000
}
MakeDerivedEntity(RigidBodyLight, BasicEntity)
function RigidBodyLight.OnLoad(A0_6018, A1_6019)
  if A0_6018.lightSlot then
    A0_6018:FreeSlot(A0_6018.lightSlot)
  end
  A0_6018.bRigidBodyActive = A1_6019.bRigidBodyActive
  A0_6018.lightSlot = A1_6019.lightSlot
  A0_6018.origGlowValue = A1_6019.origGlowValue
  A0_6018.destroyed = A1_6019.destroyed
  if not A0_6018.materialIsCloned and A1_6019.materialIsCloned then
    A0_6018:CloneMaterial(0)
  end
  A0_6018.materialIsCloned = A0_6018.materialIsCloned or A1_6019.materialIsCloned
  A0_6018.lightOn = A1_6019.lightOn
  A0_6018.runSoundId = 0
  A0_6018.idleSoundId = 0
  A0_6018:ShowCorrectLight()
end
function RigidBodyLight.OnSave(A0_6020, A1_6021)
  local L2_6022
  L2_6022 = A0_6020.bRigidBodyActive
  A1_6021.bRigidBodyActive = L2_6022
  L2_6022 = A0_6020.lightSlot
  A1_6021.lightSlot = L2_6022
  L2_6022 = A0_6020.origGlowValue
  A1_6021.origGlowValue = L2_6022
  L2_6022 = A0_6020.materialIsCloned
  A1_6021.materialIsCloned = L2_6022
  L2_6022 = A0_6020.lightOn
  A1_6021.lightOn = L2_6022
  L2_6022 = A0_6020.destroyed
  A1_6021.destroyed = L2_6022
end
function RigidBodyLight.OnSpawn(A0_6023)
  if A0_6023.Properties.Physics.bRigidBodyActive == 1 then
    A0_6023.bRigidBodyActive = 1
  end
  A0_6023:SetFromProperties()
  A0_6023:SetupHealthProperties()
  A0_6023:CacheResources("RigidBodyLight.lua")
end
function RigidBodyLight.CacheResources(A0_6024, A1_6025)
  local L2_6026
  L2_6026 = 0
  Game.CacheResource(A1_6025, A0_6024.PropertiesInstance.LightProperties_Base.Projector.texture_Texture, eGameCacheResourceType_Texture, L2_6026)
  L2_6026 = 0
  Game.CacheResource(A1_6025, A0_6024.PropertiesInstance.LightProperties_Destroyed.Projector.texture_Texture, eGameCacheResourceType_Texture, L2_6026)
end
function RigidBodyLight.SetFromProperties(A0_6027)
  local L1_6028
  L1_6028 = A0_6027.Properties
  A0_6027.destroyed = false
  if L1_6028.object_Model ~= "" then
    A0_6027:LoadObject(0, L1_6028.object_Model)
    A0_6027:CharacterUpdateOnRender(0, 1)
    A0_6027:DrawSlot(0, 1)
    if L1_6028.Physics.bPhysicalize == 1 then
      A0_6027:PhysicalizeThis()
    end
    if A0_6027.Properties.bAutoGenAIHidePts == 1 then
      A0_6027:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
    else
      A0_6027:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
    end
  end
  if not A0_6027.origGlowValue or A0_6027.lightOn then
    A0_6027.origGlowValue = A0_6027:GetMaterialFloat(0, A0_6027.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity)
  end
  A0_6027.lightOn = A0_6027.PropertiesInstance.bTurnedOn == 1
  if A0_6027.idleSoundId == nil then
    A0_6027.idleSoundId = 0
  end
  if A0_6027.runSoundId == nil then
    A0_6027.runSoundId = 0
  end
  A0_6027:ShowCorrectLight()
end
function RigidBodyLight.PhysicalizeThis(A0_6029)
  local L1_6030
  L1_6030 = A0_6029.Properties
  L1_6030 = L1_6030.Physics
  if CryAction.IsImmersivenessEnabled() == 0 then
    L1_6030 = _UPVALUE0_
  end
  EntityCommon.PhysicalizeRigid(A0_6029, 0, L1_6030, A0_6029.bRigidBodyActive)
end
function RigidBodyLight.OnPropertyChange(A0_6031)
  if A0_6031.lightOn then
    A0_6031.origGlowValue = A0_6031:GetMaterialFloat(0, A0_6031.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity)
  end
  A0_6031:SetFromProperties()
  if A0_6031.PropertiesInstance.LightProperties_Base.Options.bAffectsThisAreaOnly then
    A0_6031:UpdateLightClipBounds(A0_6031.lightSlot)
  end
  A0_6031:StopIdleSound()
  A0_6031:StopRunSound()
end
function RigidBodyLight.Client.OnLevelLoaded(A0_6032)
  if A0_6032.PropertiesInstance.LightProperties_Base.Options.bAffectsThisAreaOnly then
    A0_6032:UpdateLightClipBounds(A0_6032.lightSlot)
  end
end
function RigidBodyLight.OnReset(A0_6033)
  A0_6033:ResetOnUsed()
  A0_6033.lightOn = A0_6033.PropertiesInstance.bTurnedOn == 1
  A0_6033.destroyed = false
  A0_6033.materialIsCloned = false
  A0_6033:ShowCorrectLight()
  if A0_6033.Properties.Physics.bPhysicalize == 1 then
    if A0_6033.bRigidBodyActive ~= A0_6033.Properties.Physics.bRigidBodyActive then
      A0_6033.bRigidBodyActive = A0_6033.Properties.Physics.bRigidBodyActive
      A0_6033:PhysicalizeThis()
    end
    if A0_6033.Properties.Physics.bRigidBody == 1 then
      A0_6033:AwakePhysics(1 - A0_6033.Properties.Physics.bResting)
      A0_6033.bRigidBodyActive = A0_6033.Properties.Physics.bRigidBodyActive
    end
  end
end
function RigidBodyLight.Event_Hide(A0_6034)
  A0_6034:Hide(1)
  A0_6034:ActivateOutput("Hidden", true)
end
function RigidBodyLight.Event_UnHide(A0_6035)
  A0_6035:Hide(0)
  A0_6035:ActivateOutput("UnHidden", true)
end
function RigidBodyLight.Event_Enable(A0_6036)
  if not A0_6036.destroyed then
    A0_6036.lightOn = true
    A0_6036:ShowCorrectLight()
    A0_6036:ActivateOutput("Enabled", true)
  end
end
function RigidBodyLight.Event_Disable(A0_6037)
  A0_6037:SwitchOnOff(false)
end
function RigidBodyLight.PlaySound(A0_6038, A1_6039)
  local L2_6040
  if A1_6039 and A1_6039 ~= "" then
    L2_6040 = SOUND_DEFAULT_3D
  end
end
function RigidBodyLight.PlaySoundLoop(A0_6041, A1_6042)
  local L2_6043
  if A1_6042 and A1_6042 ~= "" then
    L2_6043 = SOUND_DEFAULT_3D
    L2_6043 = bor(L2_6043, FLAG_SOUND_LOOP)
    return 0
  end
end
function RigidBodyLight.PlayIdleSound(A0_6044)
  if A0_6044.idleSoundId == 0 then
    A0_6044.idleSoundId = A0_6044:PlaySoundLoop(A0_6044.Properties.Sound.soundIdle)
  end
end
function RigidBodyLight.PlayRunSound(A0_6045)
  if A0_6045.runSoundId == 0 then
    A0_6045.runSoundId = A0_6045:PlaySoundLoop(A0_6045.Properties.Sound.soundRun)
  end
end
function RigidBodyLight.StopIdleSound(A0_6046)
  if A0_6046.idleSoundId ~= 0 then
    A0_6046.idleSoundId = 0
  end
end
function RigidBodyLight.StopRunSound(A0_6047)
  if A0_6047.runSoundId ~= 0 then
    A0_6047.runSoundId = 0
  end
end
function RigidBodyLight.OnEditorSetGameMode(A0_6048, A1_6049)
  if A1_6049 ~= true then
    A0_6048:StopIdleSound()
    A0_6048:StopRunSound()
  end
end
function RigidBodyLight.ShowLightOn(A0_6050)
  if A0_6050.lightSlot ~= -1 then
    A0_6050:FreeSlot(A0_6050.lightSlot)
    A0_6050.lightSlot = -1
  end
  if A0_6050.PropertiesInstance.LightProperties_Base.bUseThisLight ~= 0 then
    A0_6050:UseLight(1)
  end
  if A0_6050.origGlowValue and A0_6050:GetMaterialFloat(0, A0_6050.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity) ~= A0_6050.origGlowValue then
    A0_6050:SetMaterialFloat(0, A0_6050.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity, A0_6050.origGlowValue)
  end
end
function RigidBodyLight.ShowLightOff(A0_6051)
  if A0_6051.lightSlot ~= -1 then
    A0_6051:FreeSlot(A0_6051.lightSlot)
    A0_6051.lightSlot = -1
  end
  if A0_6051.PropertiesInstance.LightProperties_Destroyed.bUseThisLight ~= 0 then
    A0_6051:UseLight(0)
  end
  if A0_6051:GetMaterialFloat(0, A0_6051.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity) ~= 0 then
    if not A0_6051.materialIsCloned then
      A0_6051:CloneMaterial(0)
      A0_6051.materialIsCloned = true
    end
    A0_6051:SetMaterialFloat(0, A0_6051.PropertiesInstance.LightProperties_Base.Options.nGlowSubmatId, MaterialFloatParams.emissive_intensity, 0)
  end
end
function RigidBodyLight.Client.OnPhysicsBreak(A0_6052, A1_6053, A2_6054, A3_6055)
  A0_6052:ActivateOutput("Break", A2_6054 + 1)
  A0_6052.destroyed = true
  A0_6052:ShowCorrectLight()
  A0_6052:StopRunSound()
  A0_6052:StopIdleSound()
  A0_6052:SwitchOnOffChildren(false)
end
function RigidBodyLight.SwitchOnOffChildren(A0_6056, A1_6057)
  local L2_6058, L3_6059, L4_6060, L5_6061, L6_6062
  L2_6058 = A0_6056.GetChildCount
  L2_6058 = L2_6058(L3_6059)
  for L6_6062 = 0, L2_6058 do
    if A0_6056:GetChild(L6_6062) and A0_6056:GetChild(L6_6062).NotifySwitchOnOffFromParent then
      A0_6056:GetChild(L6_6062):NotifySwitchOnOffFromParent(A1_6057)
    end
  end
end
function RigidBodyLight.NotifySwitchOnOffFromParent(A0_6063, A1_6064)
  A0_6063:SwitchOnOff(A1_6064)
end
function RigidBodyLight.SwitchOnOff(A0_6065, A1_6066)
  local L2_6067
  L2_6067 = A0_6065.destroyed
  if not L2_6067 then
    L2_6067 = A1_6066 ~= true
    if A0_6065.lightOn and L2_6067 then
      A0_6065.lightOn = false
      BroadcastEvent(A0_6065, "Disabled")
      A0_6065:ShowCorrectLight()
      A0_6065:SwitchOnOffChildren(A1_6066)
    elseif A0_6065.lightOn ~= true and A1_6066 then
      A0_6065.lightOn = true
      BroadcastEvent(A0_6065, "Enabled")
      A0_6065:ShowCorrectLight()
      A0_6065:SwitchOnOffChildren(A1_6066)
    end
  end
end
function RigidBodyLight.OnDamage(A0_6068, A1_6069)
  if A1_6069.ipart and A1_6069.ipart >= 0 then
    A0_6068:AddImpulse(A1_6069.ipart, A1_6069.pos, A1_6069.dir, A1_6069.impact_force_mul)
  end
end
function RigidBodyLight.ShowCorrectLight(A0_6070)
  if A0_6070.lightOn and not A0_6070.destroyed then
    A0_6070:StopIdleSound()
    A0_6070:PlayRunSound()
    A0_6070:ShowLightOn()
  else
    A0_6070:ShowLightOff()
    A0_6070:StopRunSound()
    if not A0_6070.destroyed then
      A0_6070:PlayIdleSound()
    end
  end
end
function RigidBodyLight.UseLight(A0_6071, A1_6072)
  local L2_6073, L3_6074, L4_6075, L5_6076, L6_6077, L7_6078, L8_6079, L9_6080, L10_6081, L11_6082, L12_6083, L13_6084
  if A1_6072 == 0 then
    L3_6074 = A0_6071.PropertiesInstance
    L2_6073 = L3_6074.LightProperties_Destroyed
  else
    L3_6074 = A0_6071.PropertiesInstance
    L2_6073 = L3_6074.LightProperties_Base
  end
  L3_6074 = L2_6073.Style
  L4_6075 = L2_6073.Projector
  L5_6076 = L2_6073.Color
  L6_6077 = L2_6073.Options
  L7_6078 = L2_6073.Shadows
  L8_6079 = L5_6076.fDiffuseMultiplier
  L9_6080 = L5_6076.fSpecularMultiplier
  L10_6081 = A0_6071._LightTable
  L11_6082 = L2_6073.Radius
  L10_6081.radius = L11_6082
  L11_6082 = L2_6073.fAttenuationBulbSize
  L10_6081.attenuation_bulbsize = L11_6082
  L11_6082 = {}
  L12_6083 = L5_6076.clrDiffuse
  L12_6083 = L12_6083.x
  L12_6083 = L12_6083 * L8_6079
  L11_6082.x = L12_6083
  L12_6083 = L5_6076.clrDiffuse
  L12_6083 = L12_6083.y
  L12_6083 = L12_6083 * L8_6079
  L11_6082.y = L12_6083
  L12_6083 = L5_6076.clrDiffuse
  L12_6083 = L12_6083.z
  L12_6083 = L12_6083 * L8_6079
  L11_6082.z = L12_6083
  L10_6081.diffuse_color = L11_6082
  L10_6081.specular_multiplier = L9_6080
  L11_6082 = L6_6077.bAffectsThisAreaOnly
  L10_6081.this_area_only = L11_6082
  L11_6082 = L2_6073.Options
  L11_6082 = L11_6082.bAmbient
  L10_6081.ambient = L11_6082
  L11_6082 = L6_6077.bFakeLight
  L10_6081.fake = L11_6082
  L11_6082 = L6_6077.bIgnoresVisAreas
  L10_6081.ignore_visareas = L11_6082
  L11_6082 = L7_6078.nCastShadows
  L10_6081.cast_shadow = L11_6082
  L11_6082 = L7_6078.fShadowBias
  L10_6081.shadow_bias = L11_6082
  L11_6082 = L7_6078.fShadowSlopeBias
  L10_6081.shadow_slope_bias = L11_6082
  L11_6082 = L7_6078.fShadowResolutionScale
  L10_6081.shadowResolutionScale = L11_6082
  L11_6082 = L7_6078.nShadowMinResPercent
  L10_6081.shadowMinResolution = L11_6082
  L11_6082 = L7_6078.fShadowUpdateMinRadius
  L10_6081.shadowUpdate_MinRadius = L11_6082
  L11_6082 = L7_6078.fShadowUpdateRatio
  L10_6081.shadowUpdate_ratio = L11_6082
  L11_6082 = L4_6075.texture_Texture
  L10_6081.projector_texture = L11_6082
  L11_6082 = L4_6075.fProjectorFov
  L10_6081.proj_fov = L11_6082
  L11_6082 = L4_6075.fProjectorNearPlane
  L10_6081.proj_nearplane = L11_6082
  L11_6082 = L3_6074.nLightStyle
  L10_6081.style = L11_6082
  L11_6082 = L3_6074.fAnimationSpeed
  L10_6081.anim_speed = L11_6082
  L11_6082 = L3_6074.nAnimationPhase
  L10_6081.anim_phase = L11_6082
  L11_6082 = L3_6074.bFlareEnable
  L10_6081.flare_enable = L11_6082
  L11_6082 = L3_6074.flare_Flare
  L10_6081.flare_Flare = L11_6082
  L11_6082 = L3_6074.fFlareFOV
  L10_6081.flare_FOV = L11_6082
  L10_6081.lightmap_linear_attenuation = 1
  L10_6081.is_rectangle_light = 0
  L10_6081.is_sphere_light = 0
  L10_6081.area_sample_number = 1
  L10_6081.indoor_only = 0
  L11_6082 = {}
  L11_6082.x = 0
  L11_6082.y = 0
  L11_6082.z = 0
  L10_6081.RAE_AmbientColor = L11_6082
  L10_6081.RAE_MaxShadow = 1
  L10_6081.RAE_DistMul = 1
  L10_6081.RAE_DivShadow = 1
  L10_6081.RAE_ShadowHeight = 1
  L10_6081.RAE_FallOff = 2
  L10_6081.RAE_VisareaNumber = 0
  L12_6083 = A0_6071
  L11_6082 = A0_6071.LoadLight
  L13_6084 = -1
  L11_6082 = L11_6082(L12_6083, L13_6084, L10_6081)
  A0_6071.lightSlot = L11_6082
  L11_6082 = g_Vectors
  L11_6082 = L11_6082.temp_v1
  L11_6082.x = 0
  L12_6083 = math
  L12_6083 = L12_6083.sqrt
  L13_6084 = L2_6073.Options
  L13_6084 = L13_6084.vDirection
  L13_6084 = L13_6084.x
  L13_6084 = L13_6084 * L2_6073.Options.vDirection.x
  L13_6084 = L13_6084 + L2_6073.Options.vDirection.y * L2_6073.Options.vDirection.y
  L12_6083 = L12_6083(L13_6084)
  L13_6084 = math
  L13_6084 = L13_6084.atan2
  L13_6084 = L13_6084(-L2_6073.Options.vDirection.z, L12_6083)
  L11_6082.y = L13_6084
  L13_6084 = math
  L13_6084 = L13_6084.atan2
  L13_6084 = L13_6084(L2_6073.Options.vDirection.y, L2_6073.Options.vDirection.x)
  L11_6082.z = L13_6084
  L13_6084 = A0_6071.SetSlotAngles
  L13_6084(A0_6071, A0_6071.lightSlot, L11_6082)
  L13_6084 = g_Vectors
  L13_6084 = L13_6084.temp_v1
  L13_6084.x = L2_6073.Options.vOffset.x
  L13_6084.y = L2_6073.Options.vOffset.y
  L13_6084.z = L2_6073.Options.vOffset.z
  A0_6071:SetSlotPos(A0_6071.lightSlot, L13_6084)
  if L7_6078.nCastShadows ~= 0 and L7_6078.bIgnoreGeomCaster ~= 0 then
    A0_6071:SetSelfAsLightCasterException(A0_6071.lightSlot)
  end
end
RigidBodyLight.Default = {
  OnBeginState = function(A0_6085)
    if A0_6085:IsARigidBody() == 1 then
      if A0_6085.bRigidBodyActive ~= A0_6085.Properties.Physics.bRigidBodyActive then
        A0_6085:SetPhysicsProperties(0, A0_6085.Properties.Physics.bRigidBodyActive)
      else
        A0_6085:AwakePhysics(1 - A0_6085.Properties.Physics.bResting)
      end
    end
  end,
  OnDamage = RigidBodyLight.OnDamage,
  OnCollision = RigidBodyLight.OnCollision,
  OnPhysicsBreak = RigidBodyLight.OnPhysicsBreak
}
RigidBodyLight.Activated = {
  OnBeginState = function(A0_6086)
    if A0_6086:IsARigidBody() == 1 and A0_6086.bRigidBodyActive == 0 then
      A0_6086:SetPhysicsProperties(0, 1)
      A0_6086:AwakePhysics(1)
    end
  end,
  OnDamage = RigidBodyLight.OnDamage,
  OnCollision = RigidBodyLight.OnCollision,
  OnPhysicsBreak = RigidBodyLight.OnPhysicsBreak
}
RigidBodyLight.FlowEvents = {
  Inputs = {
    Disable = {
      RigidBodyLight.Event_Disable,
      "bool"
    },
    Enable = {
      RigidBodyLight.Event_Enable,
      "bool"
    },
    Hide = {
      RigidBodyLight.Event_Hide,
      "bool"
    },
    UnHide = {
      RigidBodyLight.Event_UnHide,
      "bool"
    },
    DisableUsable = {
      RigidBodyLight.Event_DisableUsable,
      "bool"
    },
    EnableUsable = {
      RigidBodyLight.Event_EnableUsable,
      "bool"
    },
    Use = {
      RigidBodyLight.Event_Use,
      "bool"
    }
  },
  Outputs = {
    Disabled = "bool",
    Enabled = "bool",
    Hidden = "bool",
    UnHidden = "bool",
    Used = "bool",
    DisableUsable = "bool",
    EnableUsable = "bool",
    Break = "bool",
    Used = "bool",
    Health = "float"
  }
}
MakeUsable(RigidBodyLight)
function RigidBodyLight.OnUsed(A0_6087, A1_6088, A2_6089)
  local L3_6090
  L3_6090 = BroadcastEvent
  L3_6090(A0_6087, "Used")
  L3_6090 = A0_6087.destroyed
  if not L3_6090 then
    L3_6090 = A0_6087.lightOn
    L3_6090 = L3_6090 == false
    A0_6087:SwitchOnOff(L3_6090)
  end
end
