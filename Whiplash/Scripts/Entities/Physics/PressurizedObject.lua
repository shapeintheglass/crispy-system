local L0_7866
L0_7866 = -1
PressurizedObject = {
  Properties = {
    bAutoGenAIHidePts = 0,
    objModel = "engine/engineassets/objects/default.cgf",
    Vulnerability = {
      bExplosion = 1,
      bCollision = 1,
      bMelee = 1,
      bBullet = 1,
      bOther = 1
    },
    DamageMultipliers = {fCollision = 1, fBullet = 1},
    fDamageTreshold = 0,
    Leak = {
      Effect = {
        ParticleEffect = "smoke_and_fire.geysir.intense_steam_small",
        PulsePeriod = 0,
        Scale = 1,
        CountScale = 1,
        bCountPerUnit = 0,
        bSizePerUnit = 0,
        AttachType = "none",
        AttachForm = "none",
        bPrime = 1
      },
      Damage = 100,
      DamageRange = 3,
      DamageHitType = "fire",
      Pressure = 100,
      PressureDecay = 10,
      PressureImpulse = 10,
      MaxLeaks = 10,
      ImpulseScale = 1,
      Volume = 10,
      VolumeDecay = 1
    },
    bPlayerOnly = 1,
    fDensity = -1,
    fMass = 25,
    bResting = 1,
    bRigidBody = 1,
    bCanBreakOthers = 0,
    bPushableByPlayers = 0,
    bPushableByAI = 0,
    PhysicsBuoyancy = {
      water_density = 1,
      water_damping = 1.5,
      water_resistance = 0
    },
    PhysicsSimulation = {
      max_time_step = 0.01,
      sleep_speed = 0.04,
      damping = 0
    },
    TacticalInfo = {bScannable = 0, LookupName = ""}
  },
  Client = {},
  Server = {},
  Editor = {
    Icon = "tornado.bmp",
    IconOnTop = 1
  }
}
Net.Expose({
  Class = PressurizedObject,
  ClientMethods = {
    AddLeak = {
      RELIABLE_ORDERED,
      PRE_ATTACH,
      VEC3,
      VEC3
    }
  },
  ServerMethods = {},
  ServerProperties = {}
})
function PressurizedObject.IsUsable(A0_7867, A1_7868, A2_7869)
  if not A0_7867.__usable then
    A0_7867.__usable = A0_7867.Properties.bUsable
  end
  if System.IsMultiplayer() and System.IsMultiplayer() ~= 0 then
    return 0
  end
  return 2 or 0
end
function PressurizedObject.OnSpawn(A0_7870)
  local L1_7871
  L1_7871 = A0_7870.Properties
  L1_7871 = L1_7871.objModel
  if string.len(L1_7871) > 0 then
    if string.lower(string.sub(L1_7871, -4)) == ".chr" or string.lower(string.sub(L1_7871, -4)) == ".cdf" or string.lower(string.sub(L1_7871, -4)) == ".cga" then
      A0_7870:LoadCharacter(0, L1_7871)
    else
      A0_7870:LoadObject(0, L1_7871)
    end
  end
  g_gameRules.game:MakeMovementVisibleToAI("PressurizedObject")
end
function PressurizedObject.Server.OnInit(A0_7872)
  if not A0_7872.bInitialized then
    A0_7872:OnReset()
    A0_7872.bInitialized = 1
  end
end
function PressurizedObject.Client.OnInit(A0_7873)
  if not A0_7873.bInitialized then
    A0_7873:OnReset()
    A0_7873.bInitialized = 1
  end
  A0_7873:CacheResources()
end
function PressurizedObject.CacheResources(A0_7874)
  A0_7874:PreLoadParticleEffect(A0_7874.Properties.Leak.Effect.ParticleEffect)
end
function PressurizedObject.OnReset(A0_7875)
  local L1_7876, L2_7877, L3_7878
  L1_7876 = A0_7875.Properties
  L1_7876 = L1_7876.TacticalInfo
  L1_7876 = L1_7876.bScannable
  A0_7875.bScannable = L1_7876
  L1_7876 = A0_7875.bScannable
  if L1_7876 == 1 then
    L1_7876 = Game
    L1_7876 = L1_7876.AddTacticalEntity
    L2_7877 = A0_7875.id
    L3_7878 = eTacticalEntity_Story
    L1_7876(L2_7877, L3_7878)
  else
    L1_7876 = Game
    L1_7876 = L1_7876.RemoveTacticalEntity
    L2_7877 = A0_7875.id
    L3_7878 = eTacticalEntity_Story
    L1_7876(L2_7877, L3_7878)
  end
  L1_7876 = {}
  L2_7877 = A0_7875.Properties
  L2_7877 = L2_7877.fMass
  L1_7876.mass = L2_7877
  L2_7877 = A0_7875.Properties
  L2_7877 = L2_7877.fDensity
  L1_7876.density = L2_7877
  L2_7877 = tonumber
  L3_7878 = A0_7875.Properties
  L3_7878 = L3_7878.bRigidBody
  L2_7877 = L2_7877(L3_7878)
  L2_7877 = L2_7877 ~= 0
  L3_7878 = CryAction
  L3_7878 = L3_7878.IsImmersivenessEnabled
  L3_7878 = L3_7878()
  if L3_7878 == 0 then
    L2_7877 = nil
  end
  if L2_7877 then
    L3_7878 = A0_7875.Physicalize
    L3_7878(A0_7875, 0, PE_RIGID, L1_7876)
    L3_7878 = tonumber
    L3_7878 = L3_7878(A0_7875.Properties.bResting)
    if L3_7878 ~= 0 then
      L3_7878 = A0_7875.AwakePhysics
      L3_7878(A0_7875, 0)
    else
      L3_7878 = A0_7875.AwakePhysics
      L3_7878(A0_7875, 1)
    end
    L3_7878 = A0_7875.SetPhysicParams
    L3_7878(A0_7875, PHYSICPARAM_BUOYANCY, A0_7875.Properties.PhysicsBuoyancy)
    L3_7878 = A0_7875.SetPhysicParams
    L3_7878(A0_7875, PHYSICPARAM_SIMULATION, A0_7875.Properties.PhysicsSimulation)
  else
    L3_7878 = A0_7875.Physicalize
    L3_7878(A0_7875, 0, PE_STATIC, L1_7876)
  end
  L3_7878 = {}
  L3_7878.flags = 0
  if A0_7875.Properties.bPushableByPlayers == 1 then
    L3_7878.flags = pef_pushable_by_players
  end
  if A0_7875.Properties.bCanBreakOthers == nil or A0_7875.Properties.bCanBreakOthers == 0 then
    L3_7878.flags = L3_7878.flags + pef_never_break
  end
  L3_7878.flags_mask = pef_pushable_by_players + pef_never_break
  A0_7875:SetPhysicParams(PHYSICPARAM_FLAGS, L3_7878)
  A0_7875:Activate(0)
  A0_7875:ClearLeaks()
  A0_7875.pressure = A0_7875.Properties.Leak.Pressure
  A0_7875.totalPressure = A0_7875.pressure
  A0_7875.pressureDecay = A0_7875.Properties.Leak.PressureDecay
  A0_7875.pressureImpulse = A0_7875.Properties.Leak.PressureImpulse
  A0_7875.maxLeaks = A0_7875.Properties.Leak.MaxLeaks
  A0_7875.damage = A0_7875.Properties.Leak.Damage
  A0_7875.damageRange = A0_7875.Properties.Leak.DamageRange
  A0_7875.damageCheckTime = 0.5
  A0_7875.damageCheckTimer = A0_7875.damageCheckTime
  A0_7875.shooterId = nil
  A0_7875.volume = A0_7875.Properties.Leak.Volume
  if 0 < A0_7875.volume then
    A0_7875.volumeConv = A0_7875.volume / 1
    A0_7875.totalVolume = A0_7875.volume
  end
  if A0_7875.Properties.bAutoGenAIHidePts == 1 then
    A0_7875:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_7875:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
end
function PressurizedObject.OnPropertyChange(A0_7879)
  A0_7879:OnReset()
end
function PressurizedObject.OnDestroy(A0_7880)
  if A0_7880.bScannable == 1 then
    Game.RemoveTacticalEntity(A0_7880.id, eTacticalEntity_Story)
  end
end
function PressurizedObject.Server.OnHit(A0_7881, A1_7882)
  local L2_7883, L3_7884, L4_7885, L5_7886, L6_7887, L7_7888, L8_7889, L9_7890
  L2_7883 = A1_7882.explosion
  if not L2_7883 then
    L2_7883 = A1_7882.normal
  elseif not L2_7883 then
    return
  end
  L2_7883 = NumberToBool
  L3_7884 = A0_7881.Properties
  L3_7884 = L3_7884.bPlayerOnly
  L2_7883 = L2_7883(L3_7884)
  L3_7884 = A1_7882.shooterId
  L4_7885 = g_localActorId
  L3_7884 = L3_7884 == L4_7885
  L4_7885 = A1_7882.damage
  L5_7886 = A0_7881.Properties
  L5_7886 = L5_7886.Vulnerability
  L6_7887 = A0_7881.Properties
  L6_7887 = L6_7887.DamageMultipliers
  L7_7888 = true
  L8_7889 = A1_7882.explosion
  if L8_7889 then
    L8_7889 = NumberToBool
    L9_7890 = L5_7886.bExplosion
    L8_7889 = L8_7889(L9_7890)
    L7_7888 = L8_7889
  else
    L8_7889 = A1_7882.type
    if L8_7889 == "collision" then
      L8_7889 = NumberToBool
      L9_7890 = L5_7886.bCollision
      L8_7889 = L8_7889(L9_7890)
      L7_7888 = L8_7889
      L8_7889 = L6_7887.fCollision
      L4_7885 = L4_7885 * L8_7889
    else
      L8_7889 = A1_7882.type
      if L8_7889 == "bullet" then
        L8_7889 = NumberToBool
        L9_7890 = L5_7886.bBullet
        L8_7889 = L8_7889(L9_7890)
        L7_7888 = L8_7889
        L8_7889 = L6_7887.fBullet
        L8_7889 = L4_7885 * L8_7889
        A1_7882.damage = L8_7889
      else
        L8_7889 = A1_7882.type
        if L8_7889 == "melee" then
          L8_7889 = NumberToBool
          L9_7890 = L5_7886.bMelee
          L8_7889 = L8_7889(L9_7890)
          L7_7888 = L8_7889
        else
          L8_7889 = NumberToBool
          L9_7890 = L5_7886.bOther
          L8_7889 = L8_7889(L9_7890)
          L7_7888 = L8_7889
        end
      end
    end
  end
  if L7_7888 then
    L8_7889 = A0_7881.Properties
    L8_7889 = L8_7889.fDamageTreshold
    L7_7888 = L4_7885 >= L8_7889
  end
  if not L7_7888 then
    return
  end
  L8_7889 = A1_7882.shooterId
  if not L8_7889 or not L2_7883 or L3_7884 then
    L9_7890 = A0_7881
    L8_7889 = A0_7881.Event_Hit
    L8_7889(L9_7890)
  end
  L8_7889 = A0_7881.leaks
  L9_7890 = A0_7881.maxLeaks
  if L8_7889 < L9_7890 then
    L8_7889 = CryAction
    L8_7889 = L8_7889.IsImmersivenessEnabled
    L8_7889 = L8_7889()
    if L8_7889 ~= 0 then
      L9_7890 = A0_7881
      L8_7889 = A0_7881.ToLocal
      L8_7889 = L8_7889(L9_7890, _UPVALUE0_, A1_7882.pos)
      L9_7890 = A0_7881.VectorToLocal
      L9_7890 = L9_7890(A0_7881, _UPVALUE0_, A1_7882.normal)
      A0_7881.allClients:AddLeak(L8_7889, L9_7890)
      if A0_7881.leaks == 0 then
        A0_7881.shooterId = A1_7882.shooterId
      end
    end
  end
  L9_7890 = A0_7881
  L8_7889 = A0_7881.Activate
  L8_7889(L9_7890, 1)
end
function PressurizedObject.CheckDamage(A0_7891, A1_7892)
  local L2_7893, L3_7894, L4_7895, L5_7896, L6_7897, L7_7898, L8_7899, L9_7900, L10_7901
  A0_7891.damageCheckTimer = L2_7893
  if L2_7893 <= 0 then
    A0_7891.damageCheckTimer = L2_7893
  else
    return
  end
  if L2_7893 > 0 then
    for L5_7896, L6_7897 in L2_7893(L3_7894) do
      L8_7899 = A0_7891
      L7_7898 = A0_7891.GetSlotWorldPos
      L9_7900 = L6_7897.slot
      L10_7901 = A0_7891.leakPos
      L7_7898 = L7_7898(L8_7899, L9_7900, L10_7901)
      A0_7891.leakPos = L7_7898
      L8_7899 = A0_7891
      L7_7898 = A0_7891.GetSlotWorldDir
      L9_7900 = L6_7897.slot
      L10_7901 = A0_7891.leakDir
      L7_7898 = L7_7898(L8_7899, L9_7900, L10_7901)
      A0_7891.leakDir = L7_7898
      L7_7898 = Physics
      L7_7898 = L7_7898.RayWorldIntersection
      L8_7899 = A0_7891.leakPos
      L9_7900 = vecScale
      L10_7901 = A0_7891.leakDir
      L9_7900 = L9_7900(L10_7901, A0_7891.damageRange)
      L10_7901 = 2
      L7_7898 = L7_7898(L8_7899, L9_7900, L10_7901, ent_all, A0_7891.id, nil, g_HitTable)
      if L7_7898 > 0 then
        L8_7899 = g_HitTable
        L8_7899 = L8_7899[1]
        L8_7899 = L8_7899.entity
        if L8_7899 then
          L9_7900 = L8_7899.IsDead
          if L9_7900 then
            L10_7901 = L8_7899
            L9_7900 = L8_7899.IsDead
            L9_7900 = L9_7900(L10_7901)
          end
          if not L9_7900 then
            L10_7901 = L8_7899.Server
            if L10_7901 then
              L10_7901 = L8_7899.Server
              L10_7901 = L10_7901.OnHit
              if L10_7901 then
                L10_7901 = A0_7891.damage
                L10_7901 = L10_7901 * A0_7891.damageCheckTime
                L10_7901 = L10_7901 / A0_7891.leaks
                g_gameRules:CreateHit(L8_7899.id, A0_7891.shooterId, A0_7891.id, L10_7901, nil, nil, nil, A0_7891.Properties.DamageHitType)
              end
            end
          end
        end
      end
    end
  end
end
function PressurizedObject.Event_Hide(A0_7902)
  A0_7902:Hide(1)
end
function PressurizedObject.Event_UnHide(A0_7903)
  A0_7903:Hide(0)
end
function PressurizedObject.HasBeenScanned(A0_7904)
  A0_7904:ActivateOutput("Scanned", true)
end
function PressurizedObject.UpdateLeaks(A0_7905, A1_7906)
  local L2_7907, L3_7908, L4_7909, L5_7910, L6_7911
  if L2_7907 <= 0 then
    if L2_7907 > 0 then
      L2_7907(L3_7908)
    end
  end
  A0_7905.gravity = L2_7907
  for L5_7910, L6_7911 in L2_7907(L3_7908) do
    A0_7905:UpdateLeak(A1_7906, L6_7911, vecNormalize(vecScale(A0_7905.gravity, -1)))
  end
end
function PressurizedObject.UpdateLeak(A0_7912, A1_7913, A2_7914, A3_7915)
  A0_7912.leakPos = A0_7912:ToGlobal(_UPVALUE0_, A2_7914.pos)
  if true or 0 < A0_7912.pressure then
    A0_7912.volume = A0_7912.volume - A0_7912.Properties.Leak.VolumeDecay * A1_7913
    if 0 >= A0_7912.volume then
      A0_7912.volume = 0
    else
      A0_7912:StartLeaking(A2_7914)
    end
  else
    A0_7912:StopLeaking(A2_7914)
  end
end
function PressurizedObject.StartLeaking(A0_7916, A1_7917)
  local L2_7918, L3_7919
  L2_7918 = A1_7917.leaking
  if not L2_7918 then
    A1_7917.leaking = true
    L3_7919 = A0_7916
    L2_7918 = A0_7916.ToGlobal
    L2_7918 = L2_7918(L3_7919, _UPVALUE0_, A1_7917.pos)
    L3_7919 = A0_7916.VectorToGlobal
    L3_7919 = L3_7919(A0_7916, _UPVALUE0_, A1_7917.dir)
    A1_7917.slot = A0_7916:LoadParticleEffect(-1, A0_7916.Properties.Leak.Effect.ParticleEffect, A0_7916.Properties.Leak.Effect)
    A0_7916:SetSlotWorldTM(A1_7917.slot, L2_7918, L3_7919)
    A0_7916.leaks = A0_7916.leaks + 1
  end
end
function PressurizedObject.StopLeaking(A0_7920, A1_7921)
  if A1_7921.leaking then
    A1_7921.leaking = false
    A0_7920:FreeSlot(A1_7921.slot)
    A1_7921.slot = -1
    A0_7920.leaks = A0_7920.leaks - 1
  end
end
function PressurizedObject.Client.AddLeak(A0_7922, A1_7923, A2_7924)
  local L3_7925
  L3_7925 = {}
  L3_7925.pos = A1_7923
  L3_7925.dir = A2_7924
  L3_7925.slot = -1
  L3_7925.leaking = false
  table.insert(A0_7922.leakInfo, L3_7925)
  if not A0_7922.IsActive() then
    A0_7922:Activate(1)
  end
end
function PressurizedObject.ClearLeaks(A0_7926)
  local L1_7927, L2_7928, L3_7929, L4_7930, L5_7931
  if L1_7927 then
    for L4_7930, L5_7931 in L1_7927(L2_7928) do
      A0_7926:StopLeaking(L5_7931)
      if L5_7931.slot then
        A0_7926:FreeSlot(L5_7931.slot)
      end
    end
  end
  A0_7926.leaks = 0
  A0_7926.leakInfo = L1_7927
end
function PressurizedObject.Server.OnUpdate(A0_7932, A1_7933)
  A0_7932:CheckDamage(A1_7933)
end
function PressurizedObject.Client.OnUpdate(A0_7934, A1_7935)
  A0_7934:UpdateLeaks(A1_7935)
  A0_7934.pressure = A0_7934.pressure - A0_7934.pressureDecay * A0_7934.leaks * A1_7935
  if A0_7934.pressure < 0 then
    A0_7934.pressure = 0
  end
  if A0_7934.pressure > 0 and A0_7934.leaks > 0 then
    if 0 < A0_7934.pressureImpulse * A0_7934.pressure / A0_7934.leaks * A1_7935 * A0_7934.Properties.Leak.ImpulseScale then
      for _FORV_7_, _FORV_8_ in ipairs(A0_7934.leakInfo) do
        A0_7934.impulseDir = A0_7934:GetSlotWorldDir(_FORV_8_.slot, A0_7934.impulseDir)
        A0_7934.impulsePos = A0_7934:GetSlotWorldPos(_FORV_8_.slot, A0_7934.impulsePos)
        A0_7934:AddImpulse(-1, A0_7934.impulsePos, A0_7934.impulseDir, -(A0_7934.pressureImpulse * A0_7934.pressure / A0_7934.leaks * A1_7935 * A0_7934.Properties.Leak.ImpulseScale), 1)
      end
    end
  elseif A0_7934.pressure <= 0 and 0 >= A0_7934.volume then
    A0_7934:ClearLeaks()
    if A0_7934.bScannable == 1 then
      Game.RemoveTacticalEntity(A0_7934.id, eTacticalEntity_Story)
    end
  end
  if A0_7934.leaks < 1 then
    A0_7934:Activate(0)
  end
end
function PressurizedObject.Event_Hit(A0_7936, A1_7937)
  BroadcastEvent(A0_7936, "Hit")
end
PressurizedObject.FlowEvents = {
  Inputs = {
    Hit = {
      PressurizedObject.Event_Hit,
      "bool"
    },
    Hide = {
      PressurizedObject.Event_Hide,
      "bool"
    },
    UnHide = {
      PressurizedObject.Event_UnHide,
      "bool"
    }
  },
  Outputs = {
    Hit = "bool",
    Hide = "bool",
    UnHide = "bool",
    Scanned = "bool"
  }
}
MakeUsable(PressurizedObject)
MakePickable(PressurizedObject)
MakeTargetableByAI(PressurizedObject)
MakeKillable(PressurizedObject)
