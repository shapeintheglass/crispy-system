Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkEtherForm = {
  Properties = {
    object_Model = "",
    material_Material = "",
    signalpackage_EtherFormHazard = "",
    fHazardRadius = 1,
    fSpeed = 50,
    nUpdateRate = 1,
    nHazardRate = 100,
    nCameraVFXInterval = 1000,
    fMinDesiredDistance = 0.2,
    fMaxDesiredDistance = 1,
    fVfxScale = 1,
    Damage = {health = 1000},
    Signals = {
      signal_Electric = "",
      signal_Fire = "",
      signal_Laser = ""
    },
    Physics = {
      bPhysicalize = 0,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bResting = 0,
      bRigidBodyActive = 0,
      Density = 1,
      Mass = -1
    },
    Effects = {
      particleeffect_Follow = "",
      particleeffect_Tail = "",
      particleeffect_Camera = ""
    },
    Sound = {
      audioTrigger_FollowStart = "",
      audioTrigger_FollowStop = "",
      audioTrigger_Death = ""
    }
  },
  States = {"Follow", "Dead"},
  Editor = {
    Icon = "tornado.bmp",
    IconOnTop = 1
  }
}
GetArkEntityUtils(ArkEtherForm)
SetupCollisionFiltering(ArkEtherForm)
ArkEtherFormInstanceVars = {
  m_bVerbose = true,
  m_bIsScripted = false,
  m_bRepeatHazard = true,
  m_bRepeatCameraVfx = false,
  m_hazardTimer = false,
  m_cameraVfxTimer = false,
  m_referenceTable = false,
  m_audioIds = {},
  m_movementVector = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_lastValidTargetPos = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_targetPos = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_position = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_health = 0,
  m_minSqDistance = -1,
  m_maxSqDistance = -1,
  m_target = -1,
  m_hazardVfxSlot = -1
}
function CreateEtherForm(A0_3731)
  mergef(A0_3731, ArkEtherFormInstanceVars, 1)
  A0_3731.m_referenceTable = ArkEtherFormInstanceVars
end
function ArkEtherForm.Init(A0_3732, A1_3733)
  A0_3732:Log("Init")
  A0_3732:SetViewDistUnlimited()
  A0_3732:SetFromProperties()
  GetAudioIds(A0_3732.Properties.Sound, A0_3732.m_audioIds)
  if A1_3733 then
    A0_3732:DoHazardVfx()
  end
end
function ArkEtherForm.SetFromProperties(A0_3734, A1_3735)
  local L2_3736
  L2_3736 = A0_3734.Properties
  A0_3734.m_minSqDistance = sqr(L2_3736.fMinDesiredDistance)
  A0_3734.m_maxSqDistance = sqr(L2_3736.fMaxDesiredDistance)
  A0_3734.m_health = L2_3736.Damage.health
  A0_3734.m_bRepeatCameraVfx = A0_3734:IsCameraVfxEnabled()
  A0_3734:SetupModelAndPhysics()
  A0_3734:SetMaterial(L2_3736.material_Material)
end
function ArkEtherForm.SetTarget(A0_3737, A1_3738)
  if A1_3738 then
    A0_3737:Log("setting target to" .. A1_3738:GetName())
    A0_3737.m_target = A1_3738
  else
    A0_3737.m_target = g_localActor
  end
end
function ArkEtherForm.CanRayTraceToPos(A0_3739, A1_3740, A2_3741)
  local L3_3742, L4_3743, L5_3744
  if A2_3741 then
    L3_3742 = System
    L3_3742 = L3_3742.RayTraceCheck
    L4_3743 = A1_3740
    L5_3744 = A2_3741
    L3_3742 = L3_3742(L4_3743, L5_3744, A0_3739:GetRawId(), A0_3739.m_target:GetRawId())
    L4_3743 = nil
    if L3_3742 then
      L5_3744 = g_Vectors
      L4_3743 = L5_3744.v010
    else
      L5_3744 = g_Vectors
      L4_3743 = L5_3744.v100
    end
    return L3_3742
  else
    L3_3742 = false
    return L3_3742
  end
end
function ArkEtherForm.Move(A0_3745, A1_3746)
  local L2_3747, L3_3748
  L2_3747 = A0_3745.Properties
  L3_3748 = SubVectors
  L3_3748(A0_3745.m_movementVector, A1_3746, A0_3745.m_position)
  L3_3748 = LengthVector
  L3_3748 = L3_3748(A0_3745.m_movementVector)
  NormalizeVector(A0_3745.m_movementVector)
  A0_3745:SetWorldPos(A1_3746)
  if L3_3748 < 0.297 then
    ScaleVectorInPlace(A0_3745.m_movementVector, L3_3748)
  else
    ScaleVectorInPlace(A0_3745.m_movementVector, 9)
  end
end
function ArkEtherForm.DoHazardVfx(A0_3749)
  local L1_3750, L2_3751
  L1_3750 = A0_3749.Properties
  L2_3751 = {}
  L2_3751.PulsePeriod = 1
  L2_3751.bPrime = true
  L2_3751.Scale = A0_3749.Properties.fVfxScale
  L2_3751.SpeedScale = 1
  L2_3751.TimeScale = 1
  L2_3751.CountScale = 1
  L2_3751.Strength = -1
  A0_3749.m_hazardVfxSlot = A0_3749:LoadParticleEffect(A0_3749.m_hazardVfxSlot, L1_3750.Effects.particleeffect_Follow, L2_3751)
end
function ArkEtherForm.CreateHazardArea(A0_3752)
  local L1_3753
  L1_3753 = A0_3752.Properties
  Ark.SendSignalPackageInAOE(A0_3752.id, A0_3752.id, L1_3753.signalpackage_EtherFormHazard, A0_3752:GetWorldBoundsCenter(), L1_3753.fHazardRadius, L1_3753.fHazardRadius, 1, 0)
end
function ArkEtherForm.OnUpdate(A0_3754, A1_3755)
  A0_3754:Log("I'm updating and not in a state.")
end
function ArkEtherForm.OnReset(A0_3756, A1_3757)
  A0_3756:Log("OnReset")
  A0_3756:StopAudioTrigger(A0_3756.m_audioIds.audioTrigger_FollowStart, A0_3756:GetDefaultAuxAudioProxyID())
  A0_3756:GotoState("")
  A0_3756:FreeAllSlots()
  A0_3756.m_bRepeatHazard = true
  A0_3756.m_bInHazardRangeOfTarget = false
  A0_3756.m_health = A0_3756.Properties.Damage.health
  A0_3756:Activate(0)
  A0_3756:SetupModelAndPhysics()
end
function ArkEtherForm.OnPackageReceived(A0_3758, A1_3759, A2_3760)
  for _FORV_7_, _FORV_8_ in pairs(A0_3758.Properties.Signals) do
    if A2_3760[_FORV_8_] then
      A0_3758.m_health = A0_3758.m_health - A2_3760[_FORV_8_]
      if A0_3758.m_health < 0 then
        A0_3758:GotoState("Dead")
        break
      end
    end
  end
end
function ArkEtherForm.OnDestroy(A0_3761)
  A0_3761:Log("ArkEtherForm: OnDestroy()")
  A0_3761:ExecuteAudioTrigger(A0_3761.m_audioIds.audioTrigger_FollowStop, A0_3761:GetDefaultAuxAudioProxyID())
end
function ArkEtherForm.OnSpawn(A0_3762)
  local L1_3763, L2_3764, L3_3765, L4_3766, L5_3767, L6_3768
  L1_3763 = CreateEtherForm
  L1_3763(L2_3764)
  L1_3763 = A0_3762.Log
  L1_3763(L2_3764, L3_3765)
  L1_3763 = A0_3762.SetFromProperties
  L1_3763(L2_3764)
  L1_3763 = A0_3762.Init
  L1_3763(L2_3764)
  L1_3763 = A0_3762.Properties
  for L5_3767, L6_3768 in L2_3764(L3_3765) do
    Ark.RegisterForSignal(A0_3762.id, L6_3768)
  end
end
function ArkEtherForm.OnPostLoad(A0_3769)
  A0_3769:KillTimers()
  A0_3769:StopAudioTrigger(A0_3769.m_audioIds.audioTrigger_FollowStop, A0_3769:GetDefaultAuxAudioProxyID())
  A0_3769:GotoState("")
  A0_3769:GotoState("Follow")
end
function ArkEtherForm.Event_Follow(A0_3770, A1_3771, A2_3772)
  A0_3770.m_bIsScripted = true
  A0_3770:SetTarget(A2_3772)
  A0_3770:GotoState("Follow")
end
function ArkEtherForm.Event_ResumeAI(A0_3773)
  A0_3773:SetTarget()
  A0_3773.m_bIsScripted = false
  A0_3773:GotoState("Follow")
end
function ArkEtherForm.OnShutDown(A0_3774)
  local L1_3775
end
ArkEtherForm.Follow = {
  OnStartLevel = function(A0_3776)
    A0_3776:OnStartLevel()
  end,
  OnBeginState = function(A0_3777)
    A0_3777:SetScriptUpdateRate(1)
    A0_3777:DrawSlot(0, 1)
    A0_3777:Activate(1)
    BroadcastEvent(A0_3777, "Follow")
    A0_3777:Log("Follow state begin")
    A0_3777.m_bRepeatHazard = true
    A0_3777.m_bRepeatCameraVfx = A0_3777:IsCameraVfxEnabled()
    A0_3777:ExecuteAudioTrigger(A0_3777.m_audioIds.audioTrigger_FollowStart, A0_3777:GetDefaultAuxAudioProxyID())
  end,
  OnUpdate = function(A0_3778)
    local L1_3779
    L1_3779 = A0_3778.Properties
    A0_3778:GetWorldPos(A0_3778.m_position)
    A0_3778.m_target:GetCenterOfMassPos(A0_3778.m_targetPos)
    A0_3778.m_targetPos.z = A0_3778.m_targetPos.z
    A0_3778:Move(A0_3778.m_targetPos)
    if DistanceSqVectors(A0_3778.m_position, A0_3778.m_targetPos) > A0_3778.m_maxSqDistance and not (DistanceSqVectors(A0_3778.m_position, A0_3778.m_targetPos) < A0_3778.m_minSqDistance) then
      A0_3778.m_bInHazardRangeOfTarget = false
    else
      A0_3778.m_bInHazardRangeOfTarget = true
    end
    if A0_3778.m_bRepeatHazard then
      A0_3778:CreateHazardArea()
      A0_3778.m_bRepeatHazard = false
      A0_3778.m_hazardTimer = Script.SetTimer(L1_3779.nHazardRate, function()
        local L1_3780
        L1_3780 = _UPVALUE0_
        L1_3780.m_bRepeatHazard = true
      end)
      Particle.SpawnEffect(L1_3779.Effects.particleeffect_Tail, A0_3778.m_position, g_Vectors.v000)
      if A0_3778.m_target == g_localActor and A0_3778.m_bInHazardRangeOfTarget and A0_3778.m_bRepeatCameraVfx then
        g_localActor:IndicateDamageOnHUD(A0_3778.m_position)
        A0_3778:DoCameraFX("m_bRepeatCameraVfx", "m_cameraVfxTimer", L1_3779.Effects.particleeffect_Camera, L1_3779.nCameraVFXInterval, function()
          local L1_3781
          L1_3781 = _UPVALUE0_
          L1_3781.m_bRepeatCameraVfx = true
        end)
      end
    end
  end,
  OnEndState = function(A0_3782)
    A0_3782:Log("Follow state end")
    A0_3782:ExecuteAudioTrigger(A0_3782.m_audioIds.audioTrigger_FollowStop, A0_3782:GetDefaultAuxAudioProxyID())
  end
}
ArkEtherForm.Dead = {
  OnStartLevel = function(A0_3783)
    A0_3783:OnStartLevel()
  end,
  OnBeginState = function(A0_3784)
    A0_3784:Log("Dead state begin")
    A0_3784:Activate(0)
    A0_3784:FreeAllSlots()
    A0_3784:DrawSlot(0, 0)
    BroadcastEvent(A0_3784, "Dead")
  end,
  OnEndState = function(A0_3785)
    A0_3785:Log("Dead state end")
  end
}
ArkEtherForm.FlowEvents = {
  Inputs = {
    Follow = {
      ArkEtherForm.Event_Follow,
      "entity"
    },
    ResumeAI = {
      ArkEtherForm.Event_ResumeAI,
      "bool"
    }
  },
  Outputs = {Follow = "bool", Dead = "bool"}
}
