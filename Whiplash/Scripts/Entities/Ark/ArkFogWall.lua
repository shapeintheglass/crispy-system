Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkFogWall = {
  Properties = {
    object_Model = "",
    fReverseSpeedScale = -1,
    nGrowthInterval = 100,
    nHaltDuration = 100,
    nUpdateRate = 100,
    fSpeed = 1,
    archetype_Tentacle = "",
    signalPackage_ApexFog = "",
    Sound = {audioTrigger_ExistStart = "", audioTrigger_ExistStop = ""},
    Physics = {
      bPhysicalize = 0,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  PropertiesInstance = {
    bGrowTentacles = 0,
    nMaxTentacles = 5,
    fRadius = 1,
    fPortalWidth = 5,
    fPortalHeight = 5,
    fLongitude = 0,
    fLatitude = 0
  },
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  }
}
ArkFogWallInstanceVars = {
  m_audioIds = {},
  m_bVerbose = false,
  m_bInit = false,
  m_tentacles = false,
  m_waypoints = false,
  m_haltedTimer = false,
  m_growthTimer = false,
  m_bWantsToGrow = true,
  m_direction = 1,
  m_waypointsCount = 0,
  m_latitude = 0,
  m_longitude = 0,
  m_updateRate = 0,
  m_updateIdx = 1,
  m_startPos = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_currentPos = ConstVec({
    x = 0,
    y = 0,
    z = 0
  })
}
GetArkEntityUtils(ArkFogWall)
function CreateFogWallInstance(A0_3804)
  mergef(A0_3804, ArkFogWallInstanceVars, 1)
  A0_3804.m_referenceTable = ArkFogWallInstanceVars
end
function ArkFogWall.Init(A0_3805, A1_3806)
  A0_3805:GetWorldPos(A0_3805.m_startPos)
  A0_3805.m_currentPos = NewVector(A0_3805.m_startPos)
  A0_3805:SetFromProperties()
  if not A0_3805.m_bInit and A1_3806 then
    GetAudioIds(A0_3805.Properties.Sound, A0_3805.m_audioIds)
    A0_3805.m_tentacles = {}
    A0_3805:GetLinkedWaypoints()
    A0_3805:SetScriptUpdateRate(A0_3805.Properties.nUpdateRate)
    A0_3805:Activate(1)
    A0_3805:ExecuteAudioTrigger(A0_3805.m_audioIds.audioTrigger_ExistStart, A0_3805:GetDefaultAuxAudioProxyID())
  end
end
function ArkFogWall.SetFromProperties(A0_3807)
  local L1_3808
  L1_3808 = A0_3807.PropertiesInstance
  A0_3807.m_latitude = L1_3808.fLatitude * g_Deg2Rad
  A0_3807.m_longitude = L1_3808.fLongitude * g_Deg2Rad
  A0_3807.m_width = L1_3808.fPortalWidth * g_Deg2Rad
  A0_3807.m_height = L1_3808.fPortalHeight * g_Deg2Rad
  A0_3807.m_updateRate = A0_3807.Properties.nUpdateRate
  A0_3807:SetupModelAndPhysics()
  A0_3807:SetSlotScale(0, L1_3808.fRadius)
  EntityCommon.PhysicalizeRigid(A0_3807, 0, A0_3807.Properties.Physics, 0, PE_NONE)
end
function ArkFogWall.GetLinkedWaypoints(A0_3809)
  local L1_3810, L2_3811, L3_3812, L4_3813
  L2_3811 = A0_3809
  L1_3810 = A0_3809.CountLinks
  L1_3810 = L1_3810(L2_3811)
  A0_3809.m_waypointsCount = L1_3810
  L1_3810 = 0
  L2_3811 = {}
  while true do
    L3_3812 = A0_3809.m_waypointsCount
    if L1_3810 < L3_3812 then
      L4_3813 = A0_3809
      L3_3812 = A0_3809.GetLink
      L3_3812 = L3_3812(L4_3813, L1_3810)
      L4_3813 = L3_3812.GetWorldPos
      L4_3813 = L4_3813(L3_3812)
      table.insert(L2_3811, L4_3813)
      L1_3810 = L1_3810 + 1
    end
  end
  A0_3809.m_waypoints = L2_3811
end
function ArkFogWall.GetNumTentacles(A0_3814)
  if A0_3814.m_tentacles then
    return #A0_3814.m_tentacles
  else
    return math.random(0, A0_3814.PropertiesInstance.nMaxTentacles)
  end
end
function ArkFogWall.KillTentacles(A0_3815)
  if A0_3815.m_tentacles then
    for _FORV_4_, _FORV_5_ in ipairs(A0_3815.m_tentacles) do
      _FORV_5_:DeleteThis()
    end
    A0_3815.m_tentacles = false
  end
end
function ArkFogWall.DrawPortalCorners(A0_3816)
  local L1_3817, L2_3818, L3_3819, L4_3820, L5_3821, L6_3822
  L1_3817 = A0_3816.PropertiesInstance
  L2_3818 = g_Vectors
  L2_3818 = L2_3818.v100
  L3_3819 = g_Vectors
  L3_3819 = L3_3819.v010
  L4_3820 = g_Vectors
  L4_3820 = L4_3820.v001
  L5_3821 = NewVector
  L6_3822 = g_Vectors
  L6_3822 = L6_3822.v010
  L5_3821 = L5_3821(L6_3822)
  L6_3822 = NewVector
  L6_3822 = L6_3822(g_Vectors.v010)
  RotateVectorAroundR(L5_3821, L3_3819, L2_3818, A0_3816.m_latitude)
  RotateVectorAroundR(L5_3821, L5_3821, L4_3820, A0_3816.m_longitude)
  RotateVectorAroundR(L6_3822, L3_3819, L2_3818, A0_3816.m_latitude + A0_3816.m_height)
  RotateVectorAroundR(L6_3822, L6_3822, L4_3820, A0_3816.m_longitude + A0_3816.m_width)
  ScaleVectorInPlace(L6_3822, L1_3817.fRadius)
  ScaleVectorInPlace(L5_3821, L1_3817.fRadius)
  FastSumVectors(L6_3822, L6_3822, A0_3816.m_currentPos)
  FastSumVectors(L5_3821, L5_3821, A0_3816.m_currentPos)
  CryAction.PersistantSphere(L5_3821, 0.25, g_Vectors.v101, "latLon", 3)
  CryAction.PersistantSphere(L6_3822, 0.25, g_Vectors.v010, "portal", 3)
end
function ArkFogWall.GetTentacleSpawnPos(A0_3823, A1_3824)
  local L2_3825, L3_3826, L4_3827, L5_3828, L6_3829, L7_3830, L8_3831, L9_3832, L10_3833
  L2_3825 = A0_3823.PropertiesInstance
  L3_3826 = g_Vectors
  L3_3826 = L3_3826.v100
  L4_3827 = g_Vectors
  L4_3827 = L4_3827.v010
  L5_3828 = g_Vectors
  L5_3828 = L5_3828.v001
  L6_3829 = A0_3823.m_width
  L7_3830 = clamp
  L9_3832 = A0_3823
  L8_3831 = A0_3823.GetNumTentacles
  L8_3831 = L8_3831(L9_3832)
  L9_3832 = 0.25
  L10_3833 = L2_3825.nMaxTentacles
  L10_3833 = L10_3833 - 0.25
  L7_3830 = L7_3830(L8_3831, L9_3832, L10_3833)
  L8_3831 = L2_3825.nMaxTentacles
  L7_3830 = L7_3830 / L8_3831
  L6_3829 = L6_3829 * L7_3830
  L7_3830 = A0_3823.m_height
  L8_3831 = math
  L8_3831 = L8_3831.random
  L8_3831 = L8_3831()
  L7_3830 = L7_3830 * L8_3831
  L8_3831 = false
  L9_3832 = NewVector
  L10_3833 = g_Vectors
  L10_3833 = L10_3833.v010
  L9_3832 = L9_3832(L10_3833)
  L10_3833 = NewVector
  L10_3833 = L10_3833(g_Vectors.v010)
  RotateVectorAroundR(L9_3832, L4_3827, L3_3826, A0_3823.m_latitude)
  RotateVectorAroundR(L9_3832, L9_3832, L5_3828, A0_3823.m_longitude)
  RotateVectorAroundR(L10_3833, L4_3827, L3_3826, A0_3823.m_latitude + L7_3830)
  RotateVectorAroundR(L10_3833, L10_3833, L5_3828, A0_3823.m_longitude + L6_3829)
  L8_3831 = NewVector(L10_3833)
  ScaleVectorInPlace(L10_3833, L2_3825.fRadius * A1_3824)
  FastSumVectors(L10_3833, L10_3833, A0_3823.m_currentPos)
  CryAction.PersistantSphere(L10_3833, 0.25, g_Vectors.v111, "tPos", 3)
  return L10_3833, L8_3831
end
function ArkFogWall.AddTentacle(A0_3834, A1_3835, A2_3836)
  local L3_3837, L4_3838
  L4_3838 = A0_3834
  L3_3837 = A0_3834.Log
  L3_3837(L4_3838, "Spawning tentacle!")
  L3_3837 = {}
  L4_3838 = A0_3834.Properties
  L4_3838 = L4_3838.archetype_Tentacle
  L3_3837.archetype = L4_3838
  L3_3837.class = "ArkTentacle"
  L4_3838 = A0_3834.GetName
  L4_3838 = L4_3838(A0_3834)
  L4_3838 = L4_3838 .. "Tentacle"
  L3_3837.name = L4_3838
  L4_3838 = System
  L4_3838 = L4_3838.SpawnEntity
  L4_3838 = L4_3838(L3_3837)
  table.insert(A0_3834.m_tentacles, L4_3838)
  L4_3838:SetWorldPos(A1_3835)
  L4_3838:SetDirectionVector(A2_3836)
  L4_3838:Init(true)
end
function ArkFogWall.TryToGrowTentacle(A0_3839)
  if A0_3839.m_bWantsToGrow then
    A0_3839.m_bWantsToGrow = false
    if A0_3839.PropertiesInstance.bGrowTentacles == 1 then
      A0_3839:AddTentacle(A0_3839:GetTentacleSpawnPos(0.8))
      A0_3839.m_updateRate = A0_3839.Properties.nUpdateRate / A0_3839:GetNumTentacles()
      A0_3839:SetScriptUpdateRate(A0_3839.m_updateRate)
    else
      A0_3839:KillTentacles()
      A0_3839:GetTentacleSpawnPos(1)
      A0_3839:DrawPortalCorners()
    end
    A0_3839.m_growthTimer = Script.SetTimer(A0_3839.Properties.nGrowthInterval, function()
      _UPVALUE0_:ResetGrowthTimer()
    end)
  end
end
function ArkFogWall.ResetGrowthTimer(A0_3840)
  local L1_3841, L2_3842
  L1_3841 = A0_3840.m_tentacles
  if L1_3841 then
    L1_3841 = A0_3840.m_tentacles
    L1_3841 = #L1_3841
    L2_3842 = A0_3840.PropertiesInstance
    L2_3842 = L2_3842.nMaxTentacles
    if L1_3841 < L2_3842 then
      A0_3840.m_bWantsToGrow = true
    end
  else
    A0_3840.m_bWantsToGrow = true
  end
end
function ArkFogWall.GetNextWaypoint(A0_3843)
  return A0_3843.m_waypoints[A0_3843.m_waypointsCount]
end
function ArkFogWall.StopAdvancing(A0_3844)
  A0_3844.m_direction = A0_3844.Properties.fReverseSpeedScale
  A0_3844:KillTimer(A0_3844.m_haltedTimer)
  A0_3844.m_haltedTimer = Script.SetTimer(A0_3844.Properties.nHaltDuration, function()
    local L1_3845
    L1_3845 = _UPVALUE0_
    L1_3845.m_direction = 1
  end)
end
function ArkFogWall.UpdatePositionAndVelocity(A0_3846, A1_3847)
  local L2_3848, L3_3849, L4_3850, L5_3851
  L3_3849 = A0_3846
  L2_3848 = A0_3846.GetNextWaypoint
  L2_3848 = L2_3848(L3_3849)
  if L2_3848 then
    L3_3849 = DistanceSqVectors
    L4_3850 = A0_3846.m_currentPos
    L5_3851 = L2_3848
    L3_3849 = L3_3849(L4_3850, L5_3851)
    if L3_3849 > 1 then
      L3_3849 = DistanceSqVectors
      L4_3850 = A0_3846.m_startPos
      L5_3851 = A0_3846.m_currentPos
      L3_3849 = L3_3849(L4_3850, L5_3851)
      if L3_3849 < 1 then
        L3_3849 = A0_3846.m_direction
        if L3_3849 < 0 then
          return
        end
      end
      L3_3849 = g_Vectors
      L3_3849 = L3_3849.temp_v1
      L4_3850 = A0_3846.m_direction
      if L4_3850 > 0 then
        L4_3850 = SubVectors
        L5_3851 = L3_3849
        L4_3850(L5_3851, L2_3848, A0_3846.m_currentPos)
      else
        L4_3850 = SubVectors
        L5_3851 = L3_3849
        L4_3850(L5_3851, A0_3846.m_startPos, A0_3846.m_currentPos)
      end
      L4_3850 = LengthVector
      L5_3851 = L3_3849
      L4_3850 = L4_3850(L5_3851)
      L5_3851 = __min
      L5_3851 = L5_3851(L4_3850, A1_3847 * A0_3846.Properties.fSpeed * math.abs(A0_3846.m_direction))
      NormalizeVector(L3_3849)
      ScaleVectorInPlace(L3_3849, L5_3851)
      FastSumVectors(A0_3846.m_currentPos, A0_3846.m_currentPos, L3_3849)
      A0_3846:SetWorldPos(A0_3846.m_currentPos)
      if A0_3846.m_tentacles then
        for _FORV_9_, _FORV_10_ in ipairs(A0_3846.m_tentacles) do
          FastSumVectors(_FORV_10_.m_currentPos, _FORV_10_.m_currentPos, L3_3849)
          _FORV_10_:SetWorldPos(_FORV_10_.m_currentPos)
        end
      end
    end
  else
  end
end
function ArkFogWall.OnUpdate(A0_3852, A1_3853)
  A0_3852:TryToGrowTentacle()
  Ark.SendSignalPackageInAOE(A0_3852.id, A0_3852.id, A0_3852.Properties.signalPackage_ApexFog, A0_3852.m_currentPos, 0, A0_3852.PropertiesInstance.fRadius, 1, 0)
  if A0_3852.m_tentacles then
    A0_3852.m_tentacles[A0_3852.m_updateIdx]:OnUpdate(A1_3853)
    if A0_3852.m_tentacles[A0_3852.m_updateIdx].m_numSegments == 1 then
      A0_3852:StopAdvancing()
    else
      A0_3852:UpdatePositionAndVelocity(A1_3853)
    end
    A0_3852.m_updateIdx = A0_3852.m_updateIdx + 1
    if A0_3852.m_updateIdx > A0_3852:GetNumTentacles() then
      A0_3852.m_updateIdx = 1
    end
  end
end
function ArkFogWall.OnSpawn(A0_3854)
  CreateFogWallInstance(A0_3854)
  A0_3854:Log("OnSpawn")
end
function ArkFogWall.OnDestroy(A0_3855)
  A0_3855:ExecuteAudioTrigger(A0_3855.m_audioIds.audioTrigger_ExistStop)
end
function ArkFogWall.OnReset(A0_3856)
  A0_3856:Log("OnReset")
  A0_3856:Activate(0)
  if A0_3856.m_audioIds.audioTrigger_ExistStop then
    A0_3856:ExecuteAudioTrigger(A0_3856.m_audioIds.audioTrigger_ExistStop, A0_3856:GetDefaultAuxAudioProxyID())
  end
  A0_3856.m_updateIdx = 1
  A0_3856.m_direction = 1
  A0_3856.m_waypoints = false
  A0_3856.m_tentacles = false
  A0_3856.m_bWantsToGrow = true
  A0_3856:KillTimer(A0_3856.m_growthTimer)
  A0_3856:KillTimer(A0_3856.m_haltedTimer)
  A0_3856:KillTentacles()
end
