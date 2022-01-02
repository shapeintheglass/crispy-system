Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkGravShaft = {
  type = "ArkGravShaftEntity",
  Properties = {
    GravShaft = {
      fSpeed = 3,
      fCenteringSpeed = 3,
      fExitSpeed = 3,
      fBounceSpeedMultiplier = 1,
      fParticleMetersPerSec = 1,
      posteffect_PostProcessVFX = "",
      particleeffect_Object = "",
      particleeffect_FirstPerson = "",
      audioTrigger_PowerOnSFX = "",
      audioTrigger_PowerOffSFX = "",
      audioTrigger_EnterSFX = "",
      audioTrigger_ExitSFX = "",
      audioTrigger_BounceSFX = "",
      bBiDirectional = false
    },
    ei_ObjectMapIcon = "",
    NavAgentTypes = "MediumSizedCharacters ArkAlien_Small ArkAlien_Medium ArkOperator ArkEtherForm"
  },
  PropertiesInstance = {
    GravShaft = {
      DimX = 4,
      DimY = 2.5,
      DimZ = 10,
      fPortalHeight = 1,
      vTravelDirection = {
        x = 0,
        y = 0,
        z = 1
      },
      vEnterDirection = {
        x = 0,
        y = 1,
        z = 0
      },
      vExitDirection = {
        x = 1,
        y = 0,
        z = 0
      },
      bEnabled = 1,
      bDrawDebugEditor = 0,
      bDrawDebugGame = 0,
      bReverseDirection = 0,
      particleeffect_Main = ""
    }
  },
  SoundParams = {fShaftAmbientVolume = 2, fShaftAmbientSoundRadiusMultiplier = 1},
  Editor = {
    Model = "Editor/Objects/T.cgf",
    Icon = "elevator.bmp",
    ShowBounds = 0,
    IsScalable = false,
    IsRotatable = true
  },
  m_bUpdateLinkedEntitiesSetEmpInfluence = false,
  m_bUpdateLinkedEntitiesSetLightScale = false,
  m_bUpdateLinkedEntitiesSetEmpLightScale = false
}
GetArkEntityUtils(ArkGravShaft)
function ArkGravShaft.SetLightScale(A0_3915, A1_3916)
  local L2_3917, L3_3918, L4_3919, L5_3920, L6_3921
  L2_3917 = m_bUpdateLinkedEntitiesSetLightScale
  if L2_3917 ~= true then
    L2_3917 = true
    m_bUpdateLinkedEntitiesSetLightScale = L2_3917
    L2_3917 = A0_3915.CountLinks
    L2_3917 = L2_3917(L3_3918)
    for L6_3921 = 0, L2_3917 - 1 do
      if A0_3915:GetLink(L6_3921) and A0_3915:GetLink(L6_3921).SetLightScale then
        A0_3915:GetLink(L6_3921):SetLightScale(A1_3916)
      end
    end
  end
  L2_3917 = false
  m_bUpdateLinkedEntitiesSetLightScale = L2_3917
end
function ArkGravShaft.SetEmpLightScale(A0_3922, A1_3923)
  local L2_3924, L3_3925, L4_3926, L5_3927, L6_3928
  L2_3924 = m_bUpdateLinkedEntitiesSetEmpLightScale
  if L2_3924 ~= true then
    L2_3924 = true
    m_bUpdateLinkedEntitiesSetEmpLightScale = L2_3924
    L2_3924 = A0_3922.CountLinks
    L2_3924 = L2_3924(L3_3925)
    for L6_3928 = 0, L2_3924 - 1 do
      if A0_3922:GetLink(L6_3928) and A0_3922:GetLink(L6_3928).SetEmpLightScale then
        A0_3922:GetLink(L6_3928):SetEmpLightScale(A1_3923)
      end
    end
  end
  L2_3924 = false
  m_bUpdateLinkedEntitiesSetEmpLightScale = L2_3924
end
function ArkGravShaft.SetEmpInfluence(A0_3929, A1_3930)
  local L2_3931, L3_3932, L4_3933, L5_3934, L6_3935
  L2_3931 = m_bUpdateLinkedEntitiesSetEmpInfluence
  if L2_3931 ~= true then
    L2_3931 = true
    m_bUpdateLinkedEntitiesSetEmpInfluence = L2_3931
    L2_3931 = A0_3929.CountLinks
    L2_3931 = L2_3931(L3_3932)
    for L6_3935 = 0, L2_3931 - 1 do
      if A0_3929:GetLink(L6_3935) and A0_3929:GetLink(L6_3935).SetEmpInfluence then
        A0_3929:GetLink(L6_3935):SetEmpInfluence(A1_3930)
      end
    end
  end
  L2_3931 = false
  m_bUpdateLinkedEntitiesSetEmpInfluence = L2_3931
end
function ArkGravShaft.Event_Enter(A0_3936, A1_3937)
  A0_3936:ActivateOutput("Enter", A1_3937)
end
function ArkGravShaft.Event_Leave(A0_3938, A1_3939)
  A0_3938:ActivateOutput("Leave", A1_3939)
end
function ArkGravShaft.Event_Enable(A0_3940)
  BroadcastEvent(A0_3940, "Enable")
end
function ArkGravShaft.Event_Disable(A0_3941)
  BroadcastEvent(A0_3941, "Disable")
end
function ArkGravShaft.SetFromProperties(A0_3942)
  local L1_3943
end
ArkGravShaft.FlowEvents = {
  Inputs = {
    Disable = {
      ArkGravShaft.Event_Disable,
      "bool"
    },
    Enable = {
      ArkGravShaft.Event_Enable,
      "bool"
    },
    Enter = {
      ArkGravShaft.Event_Enter,
      "bool"
    },
    Leave = {
      ArkGravShaft.Event_Leave,
      "bool"
    }
  },
  Outputs = {
    Disable = "bool",
    Enable = "bool",
    Enter = "int",
    Leave = "int"
  }
}
