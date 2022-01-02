Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTentacle = {
  Properties = {
    object_Model = "",
    nGrowthInterval = 1000,
    nRegrowthInterval = 1000,
    nVarianceInterval = 1000,
    nUpdateRate = 1000,
    fMaxLength = 5,
    nMaxSegments = 5,
    fMinScale = 0.1,
    fMaxScale = 1,
    fMinNoise = 1,
    fMaxNoise = 1,
    fAmplitude = 1,
    fFrequency = 100,
    fDistanceExponent = 1,
    fReactionProximity = 1,
    material_Material = "",
    signalPackage_ApexFog = "",
    particleeffect_DeathVfx = "",
    Signals = {signal_Laser = ""},
    Sound = {audioTrigger_Damage = "", audioTrigger_Attack = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    }
  },
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  }
}
ArkTentacleInstanceVars = {
  m_bVerbose = false,
  m_bInit = false,
  m_segments = false,
  m_increment = 0,
  m_interval = 0,
  m_intervalOffset = 0,
  m_growthTimer = false,
  m_regrowthTimer = false,
  m_varianceTimer = false,
  m_bReverseDirection = true,
  m_bCanGrow = true,
  m_direction = -1,
  m_distanceModifier = 0,
  m_playerDistance = 0,
  m_numSegments = 0,
  m_audioIds = {},
  m_playerPos = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_diffToPlayer = ConstVec({
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
GetArkEntityUtils(ArkTentacle)
SetupCollisionFiltering(ArkTentacle)
function CreateTentacle(A0_4599)
  mergef(A0_4599, ArkTentacleInstanceVars, 1)
  A0_4599.m_referenceTable = ArkTentacleInstanceVars
end
function ArkTentacle.Init(A0_4600, A1_4601)
  A0_4600:SetFromProperties()
  if not A0_4600.m_bInit and A1_4601 then
    GetAudioIds(A0_4600.Properties.Sound, A0_4600.m_audioIds)
    A0_4600:GetWorldPos(A0_4600.m_currentPos)
    A0_4600.m_segments = {}
    A0_4600:SetScriptUpdateRate(A0_4600.Properties.nUpdateRate)
    A0_4600:SetMaterial(A0_4600.Properties.material_Material)
    A0_4600.m_interval = math.random()
    A0_4600.m_intervalOffset = math.random(-1, 1)
  end
end
function ArkTentacle.SetFromProperties(A0_4602)
  local L1_4603, L2_4604
  L1_4603 = A0_4602.Properties
  L2_4604 = L1_4603.fMaxLength
  L2_4604 = L2_4604 / L1_4603.nMaxSegments
  A0_4602.m_increment = L2_4604
  L2_4604 = L1_4603.nVarianceInterval
  A0_4602.m_varianceInterval = L2_4604
end
function ArkTentacle.AddSegment(A0_4605)
  local L1_4606, L2_4607, L3_4608
  L1_4606 = A0_4605.Properties
  L2_4607 = -1
  L3_4608 = {}
  L3_4608.slot = -1
  L3_4608.pos = NewVector(g_Vectors.v000)
  L3_4608.scale = 1
  L3_4608.slot = A0_4605:LoadObject(L3_4608.slot, L1_4606.object_Model)
  table.insert(A0_4605.m_segments, 1, L3_4608)
end
function ArkTentacle.PlayerSegmentDeathFX(A0_4609, A1_4610)
  Particle.SpawnEffect(A0_4609.Properties.particleeffect_DeathVfx, A1_4610, g_Vectors.v001)
end
function ArkTentacle.UpdateDistancesToPlayer(A0_4611)
  A0_4611.m_playerPos = g_localActor:GetCenterOfMassPos()
  A0_4611.m_diffToPlayer = A0_4611:ToLocal(-1, A0_4611.m_playerPos)
  A0_4611.m_playerDistance = DistanceVectors(A0_4611.m_playerPos, A0_4611.m_currentPos)
end
function ArkTentacle.ReverseDirection(A0_4612)
  local L1_4613
  L1_4613 = A0_4612.m_direction
  L1_4613 = L1_4613 * -1
  A0_4612.m_direction = L1_4613
  A0_4612.m_bReverseDirection = true
  L1_4613 = A0_4612.Properties
  L1_4613 = L1_4613.nVarianceInterval
  L1_4613 = L1_4613 * math.random(A0_4612.m_distanceModifier, 1)
  A0_4612.m_varianceInterval = L1_4613
end
function ArkTentacle.TryToGrow(A0_4614)
  if A0_4614.m_bCanGrow then
    A0_4614.m_bCanGrow = false
    A0_4614:AddSegment()
    A0_4614.m_growthTimer = Script.SetTimer(A0_4614.Properties.nGrowthInterval, function()
      _UPVALUE0_:ResetGrowthTimer()
    end)
  end
end
function ArkTentacle.ResetGrowthTimer(A0_4615)
  local L2_4616
  L2_4616 = A0_4615.m_numSegments
  if L2_4616 < A0_4615.Properties.nMaxSegments then
    A0_4615.m_bCanGrow = true
  end
end
function ArkTentacle.UpdateSegments(A0_4617, A1_4618)
  local L2_4619, L3_4620, L4_4621, L5_4622, L6_4623, L7_4624, L8_4625, L9_4626, L10_4627
  L2_4619 = A0_4617.Properties
  L3_4620 = g_Vectors
  L3_4620 = L3_4620.temp_v1
  L4_4621 = __min
  L4_4621 = L4_4621(L5_4622, L6_4623)
  A0_4617.m_interval = L5_4622
  L5_4622(L6_4623, L7_4624)
  L8_4625 = L2_4619.nMaxSegments
  L5_4622(L6_4623, L7_4624)
  for L8_4625, L9_4626 in L5_4622(L6_4623) do
    L10_4627 = L8_4625 - 1
    L10_4627 = L10_4627 / L2_4619.nMaxSegments
    L9_4626.scale = Lerp(L2_4619.fMaxScale, L2_4619.fMinScale, L10_4627)
    L9_4626.pos.y = Lerp(0, L4_4621, L10_4627)
    L9_4626.pos.x = (math.cos(L9_4626.pos.y - A0_4617.m_interval) + randomF(L2_4619.fMinNoise, L2_4619.fMaxNoise) + A0_4617.m_distanceModifier * L3_4620.x) * sqr(L10_4627) * L2_4619.fAmplitude
    L9_4626.pos.z = (math.sin(L9_4626.pos.y + A0_4617.m_interval) + randomF(L2_4619.fMinNoise, L2_4619.fMaxNoise) + A0_4617.m_distanceModifier * L3_4620.z) * sqr(L10_4627) * L2_4619.fAmplitude
    A0_4617:SetSlotScale(L9_4626.slot, L9_4626.scale)
    A0_4617:SetSlotPos(L9_4626.slot, L9_4626.pos)
    EntityCommon.PhysicalizeRigid(A0_4617, L9_4626.slot, L2_4619.Physics, 0)
  end
end
function ArkTentacle.AbsoluteVectorInPlace(A0_4628, A1_4629)
  A1_4629.x = math.abs(A1_4629.x)
  A1_4629.y = math.abs(A1_4629.y)
  A1_4629.z = math.abs(A1_4629.z)
end
function ArkTentacle.OnUpdate(A0_4630, A1_4631)
  local L2_4632
  L2_4632 = A0_4630.m_segments
  L2_4632 = #L2_4632
  A0_4630.m_numSegments = L2_4632
  L2_4632 = A0_4630.TryToGrow
  L2_4632(A0_4630)
  L2_4632 = A0_4630.UpdateDistancesToPlayer
  L2_4632(A0_4630)
  L2_4632 = A0_4630.Properties
  L2_4632 = L2_4632.fReactionProximity
  L2_4632 = L2_4632 / A0_4630.m_playerDistance
  A0_4630.m_distanceModifier = math.pow(__min(1, L2_4632), A0_4630.Properties.fDistanceExponent)
  A0_4630:UpdateSegments(A1_4631 * A0_4630.m_intervalOffset)
end
function ArkTentacle.OnCollision(A0_4633, A1_4634)
  Ark.SendSignalPackage(A1_4634.target.id, A0_4633.id, A0_4633.id, A0_4633.Properties.signalPackage_ApexFog)
  A0_4633:ExecuteAudioTrigger(A0_4633.m_audioIds.audioTrigger_Attack, A0_4633:GetDefaultAuxAudioProxyID())
  if A1_4634.target == g_localActor then
    g_localActor:IndicateDamageOnHUD(A1_4634.pos)
  end
end
function ArkTentacle.OnPackageReceived(A0_4635, A1_4636, A2_4637)
  local L3_4638
  L3_4638 = A0_4635.Properties
  L3_4638 = L3_4638.Signals
  L3_4638 = L3_4638.signal_Laser
  L3_4638 = A2_4637[L3_4638]
  if L3_4638 then
    L3_4638 = 1
    while L3_4638 > 0 do
      L3_4638 = L3_4638 - 1
      if 1 < A0_4635.m_numSegments then
        A0_4635:PlayerSegmentDeathFX(A0_4635:GetSlotWorldPos(table.remove(A0_4635.m_segments).slot))
        A0_4635:FreeSlot(table.remove(A0_4635.m_segments).slot)
        A0_4635:ExecuteAudioTrigger(A0_4635.m_audioIds.audioTrigger_Damage, A0_4635:GetDefaultAuxAudioProxyID())
      end
    end
    A0_4635:KillTimer(A0_4635.m_growthTimer)
    A0_4635:KillTimer(A0_4635.m_regrowthTimer)
    A0_4635.m_regrowthTimer = Script.SetTimer(A0_4635.Properties.nRegrowthInterval, function()
      _UPVALUE0_:ResetGrowthTimer()
    end)
  end
end
function ArkTentacle.OnSpawn(A0_4639)
  CreateTentacle(A0_4639)
  A0_4639:Log("OnSpawn")
end
function ArkTentacle.OnReset(A0_4640)
  A0_4640:Log("OnReset")
  A0_4640.m_interval = 0
  A0_4640.m_bCanGrow = true
  A0_4640:KillTimer(A0_4640.m_growthTimer)
  if A0_4640.m_segments then
    for _FORV_4_, _FORV_5_ in ipairs(A0_4640.m_segments) do
      A0_4640:FreeSlot(_FORV_5_.slot)
    end
    A0_4640.m_segments = false
  end
end
