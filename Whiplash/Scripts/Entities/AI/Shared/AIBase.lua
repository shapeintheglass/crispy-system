local L0_2082, L1_2083, L2_2084
L0_2082 = 0
TargetTypeNone = L0_2082
L0_2082 = 1
TargetTypeInteresting = L0_2082
L0_2082 = 2
TargetTypeThreatening = L0_2082
L0_2082 = 3
TargetTypeMemory = L0_2082
L0_2082 = 4
TargetTypeVisual = L0_2082
L0_2082 = {}
L1_2083 = {}
L2_2084 = {}
L2_2084.aiterritory_Territory = "<None>"
L2_2084.aiwave_Wave = "<None>"
L1_2083.AITerritoryAndWave = L2_2084
L2_2084 = {}
L2_2084.bHostileIfAttacked = 0
L2_2084.bGoBackToStartOnIdle = 0
L1_2083.AI = L2_2084
L0_2082.PropertiesInstance = L1_2083
L1_2083 = {}
L2_2084 = {}
L2_2084.cloakMaxDistCrouchedAndMoving = 4
L2_2084.cloakMaxDistCrouchedAndStill = 4
L2_2084.cloakMaxDistMoving = 4
L2_2084.cloakMaxDistStill = 4
L1_2083.Perception = L2_2084
L0_2082.Properties = L1_2083
L1_2083 = {}
L1_2083.ReactToSoundFromPotentialTargetTimeOut = 2
L0_2082.BehaviorProperties = L1_2083
L1_2083 = {}
L1_2083.angleThreshold = 40
L0_2082.melee = L1_2083
L1_2083 = {}
L2_2084 = AVOIDANCE_ALL
L1_2083.avoidanceAbilities = L2_2084
L1_2083.pushableObstacleWeakAvoidance = true
L1_2083.pushableObstacleAvoidanceRadiusMin = 0.4
L1_2083.pushableObstacleAvoidanceRadiusMax = 0.4
L0_2082.AIMovementAbility = L1_2083
L1_2083 = {}
function L2_2084(A0_2085)
  A0_2085:SetupTerritoryAndWave()
end
L1_2083.OnStartGame = L2_2084
function L2_2084(A0_2086, A1_2087)
  if A0_2086.PropertiesInstance.AI.bHostileIfAttacked and tonumber(A0_2086.PropertiesInstance.AI.bHostileIfAttacked) ~= 0 and A1_2087.shooterId and A1_2087.shooterId ~= g_localActorId and not AI.Hostile(A0_2086.id, A1_2087.shooterId) and (A1_2087.type ~= "collision" or A1_2087.damage > 50) then
    AI.AddPersonallyHostile(A0_2086.id, A1_2087.shooterId)
  end
  return BasicActor.Server.OnHit(A0_2086, A1_2087)
end
L1_2083.OnHit = L2_2084
L0_2082.Server = L1_2083
L1_2083 = {}
L2_2084 = {}
L2_2084.x = 0
L2_2084.y = 0
L2_2084.z = 0
L1_2083.pos = L2_2084
L1_2083.radius = 15
L0_2082.DefendPosition = L1_2083
function L1_2083(A0_2088)
  if A0_2088.AI.GoToData then
    A0_2088:Log("Suspending goto")
    A0_2088.AI.GoToData.Queued = true
    AI.SetBehaviorVariable(A0_2088.id, "GoTo", false)
  end
end
L0_2082.SuspendGoTo = L1_2083
function L1_2083(A0_2089)
  if A0_2089.AI.GoToData and A0_2089.AI.GoToData.Queued then
    A0_2089:Log("Resuming goto")
    A0_2089.AI.GoToData.Queued = nil
    AI.SetBehaviorVariable(A0_2089.id, "GoTo", true)
  end
end
L0_2082.ResumeGoTo = L1_2083
function L1_2083(A0_2090)
  A0_2090:Log("OnActionStart")
  A0_2090:SuspendGoTo(A0_2090)
end
L0_2082.OnActionStart = L1_2083
function L1_2083(A0_2091)
  A0_2091:Log("OnActionEnd")
  A0_2091:ResumeGoTo(A0_2091)
end
L0_2082.OnActionEnd = L1_2083
function L1_2083(A0_2092)
  AI.SetBehaviorTreeEvaluationEnabled(A0_2092.id, true)
end
L0_2082.EnableBehaviorTreeEvaluation = L1_2083
function L1_2083(A0_2093)
  AI.SetBehaviorTreeEvaluationEnabled(A0_2093.id, false)
end
L0_2082.DisableBehaviorTreeEvaluation = L1_2083
AIBase = L0_2082
L0_2082 = AIBase
function L1_2083(A0_2094, A1_2095)
  A0_2094:SelectPipe(0, A1_2095, 0, 0, 1)
end
L0_2082.StartOrRestartPipe = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2096)
  return A0_2096:CheckCurWeapon() == 1
end
L0_2082.IsUsingSecondaryWeapon = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2097, A1_2098, A2_2099)
  local L3_2100, L4_2101
  L3_2100 = TargetTypeNone
  L4_2101 = AITARGET_MEMORY
  if A1_2098 == L4_2101 then
    L3_2100 = TargetTypeMemory
  else
    L4_2101 = AITARGET_SOUND
    if A1_2098 == L4_2101 then
      L4_2101 = AITHREAT_INTERESTING
      if A2_2099 == L4_2101 then
        L3_2100 = TargetTypeInteresting
      else
        L4_2101 = AITHREAT_THREATENING
        if A2_2099 == L4_2101 then
          L3_2100 = TargetTypeThreatening
        end
      end
    else
      L4_2101 = AITARGET_VISUAL
      if A1_2098 == L4_2101 then
        L3_2100 = TargetTypeVisual
      end
    end
  end
  return L3_2100
end
L0_2082.GetTargetType = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2102)
  local L1_2103, L2_2104, L3_2105
  L1_2103 = AI
  L1_2103 = L1_2103.GetTargetType
  L2_2104 = A0_2102.id
  L1_2103 = L1_2103(L2_2104)
  L2_2104 = nil
  L3_2105 = TARGET_NONE
  if L1_2103 == L3_2105 then
    L3_2105 = g_Vectors
    L3_2105 = L3_2105.temp_v1
    AI.GetBeaconPosition(A0_2102.id, L3_2105)
    L2_2104 = DistanceVectors(A0_2102:GetPos(), L3_2105)
  else
    L3_2105 = AI
    L3_2105 = L3_2105.GetAttentionTargetDistance
    L3_2105 = L3_2105(A0_2102.id)
    L2_2104 = L3_2105
  end
  if L2_2104 == nil then
    L3_2105 = Log
    L3_2105("dist is nil")
  end
  return L2_2104
end
L0_2082.GetDistanceToSearchTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2106)
  local L1_2107, L2_2108
  L1_2107 = AI
  L1_2107 = L1_2107.GetAttentionTargetEntity
  L2_2108 = A0_2106.id
  L1_2107 = L1_2107(L2_2108)
  L2_2108 = nil
  if L1_2107 then
    L2_2108 = AI.GetParameter(L1_2107.id, AIPARAM_CLOAKED)
  end
  return L2_2108
end
L0_2082.IsTargetCloaked = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2109, A1_2110, ...)
  if System.GetCVar("ai_DebugDraw") == 1 then
    Log("%s: %s", EntityName(A0_2109), string.format(A1_2110, ...))
  end
end
L0_2082.Log = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2112, A1_2113, ...)
  local L3_2115, L4_2116
  L3_2115 = Log
  L4_2116 = "[Warning] %s: %s"
  L3_2115(L4_2116, EntityName(A0_2112), string.format(A1_2113, ...))
end
L0_2082.Warning = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2117, A1_2118, ...)
  local L4_2120
  L4_2120 = A0_2117.traceMe
  if L4_2120 then
    L4_2120 = Log
    L4_2120("%s: %s", EntityName(A0_2117), string.format(A1_2118, ...))
  end
end
L0_2082.Trace = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2121, A1_2122, ...)
  local L3_2124, L4_2125
  L3_2124 = Log
  L4_2125 = "%s: %s"
  L3_2124(L4_2125, EntityName(A0_2121), string.format(A1_2122, ...))
end
L0_2082.LogAlways = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2126, A1_2127, ...)
  if System.GetCVar("ai_DebugVisualScriptErrors") == 1 then
    A0_2126:DrawSlot(0, 0)
    A0_2126:LoadObject(1, "objects/characters/animals/dog/dog_02.cgf")
    A0_2126:DrawSlot(1, 1)
    A0_2126:SetSlotScale(1, 4)
    if A0_2126.dogTimer then
      Script.KillTimer(A0_2126.dogTimer)
    end
    A0_2126.dogTimer = Script.SetTimerForFunction(6000, "AIBase.OnDogTimer", A0_2126)
  end
  if A1_2127 then
    Log("%s: %s", EntityName(A0_2126), string.format(A1_2127, ...))
  end
end
L0_2082.OnError = L1_2083
L0_2082 = AIBase
L1_2083 = AIBase
L1_2083 = L1_2083.OnError
L0_2082.Error = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2129)
  A0_2129:DrawSlot(1, 0)
  A0_2129:FreeSlot(1)
  A0_2129:DrawSlot(0, 1)
end
L0_2082.OnDogTimer = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2130)
  AI.Signal(SIGNALFILTER_SENDER, 1, "OnTargetLost", A0_2130.id)
end
L0_2082.TargetLost = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2131)
  local L1_2132
end
L0_2082.OnNoTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2133)
  AI.Signal(SIGNALFILTER_SENDER, 1, "OnTargetNotVisible", A0_2133.id)
end
L0_2082.TargetNotVisible = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2134, A1_2135)
  local L2_2136
  L2_2136 = A0_2134.GetTargetTypeForComm
  L2_2136 = L2_2136(A0_2134, A1_2135)
  if L2_2136 ~= nil then
  end
  if A0_2134:GetGroupBlackboard()[L2_2136 .. "LastSeen"] == nil then
    return -1
  elseif A0_2134:GetGroupBlackboard()[L2_2136 .. "LastSeen"] == -1 then
    return 0
  else
    return _time - A0_2134:GetGroupBlackboard()[L2_2136 .. "LastSeen"]
  end
end
L0_2082.GetTimeSinceTargetLastSeen = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2137, A1_2138)
  local L2_2139, L3_2140
  L3_2140 = A0_2137
  L2_2139 = A0_2137.GetGroupBlackboard
  L2_2139 = L2_2139(L3_2140)
  L3_2140 = A0_2137.GetTargetTypeForComm
  L3_2140 = L3_2140(A0_2137, A1_2138)
  if L3_2140 ~= nil then
    L2_2139[L3_2140 .. "Acknowledged"] = true
  end
end
L0_2082.AcknowledgeEnemy = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2141, A1_2142)
  local L2_2143, L3_2144
  L3_2144 = A0_2141
  L2_2143 = A0_2141.GetGroupBlackboard
  L2_2143 = L2_2143(L3_2144)
  L3_2144 = A0_2141.GetTargetTypeForComm
  L3_2144 = L3_2144(A0_2141, A1_2142)
  if L3_2144 ~= nil then
    if not L2_2143[L3_2144 .. "Acknowledged"] then
      return false
    else
      return true
    end
  end
  return true
end
L0_2082.IsEnemyAcknowledged = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2145)
  local L1_2146, L2_2147, L3_2148
  L2_2147 = A0_2145
  L1_2146 = A0_2145.GetGroupBlackboard
  L1_2146 = L1_2146(L2_2147)
  L2_2147 = AI
  L2_2147 = L2_2147.GetAttentionTargetEntity
  L3_2148 = A0_2145.id
  L2_2147 = L2_2147(L3_2148)
  L3_2148 = A0_2145.ValidateAttentionTarget
  L3_2148 = L3_2148(A0_2145, L2_2147)
  if not L3_2148 then
    return
  end
  L3_2148 = A0_2145.GetTargetTypeForComm
  L3_2148 = L3_2148(A0_2145, L2_2147)
  if L3_2148 ~= nil then
    L1_2146[L3_2148 .. "LastSeen"] = -1
  end
  A0_2145.AI.lastTimeTargetWasSeen = -1
  A0_2145:ResetTargetLostTimer()
  A0_2145:SafeKillTimer(A0_2145.targetNotVisibleTimer)
end
L0_2082.OnEnemySeen = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2149, A1_2150)
  local L2_2151
  if A1_2150 then
    attTargetClassName = A1_2150.class
    if attTargetClassName == "HumanGrunt" then
      L2_2151 = "Marine"
    elseif A1_2150.actor and A1_2150.actor:IsPlayer() then
      L2_2151 = "Player"
    end
  end
  return L2_2151
end
L0_2082.GetTargetTypeForComm = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2152)
  local L1_2153, L2_2154, L3_2155
  L2_2154 = A0_2152
  L1_2153 = A0_2152.GetGroupBlackboard
  L1_2153 = L1_2153(L2_2154)
  L2_2154 = AI
  L2_2154 = L2_2154.GetAttentionTargetEntity
  L3_2155 = A0_2152.id
  L2_2154 = L2_2154(L3_2155)
  L3_2155 = A0_2152.ValidateAttentionTarget
  L3_2155 = L3_2155(A0_2152, L2_2154)
  if not L3_2155 then
    return
  end
  L3_2155 = A0_2152.GetTargetTypeForComm
  L3_2155 = L3_2155(A0_2152, L2_2154)
  if L3_2155 ~= nil then
    L1_2153[L3_2155 .. "LastSeen"] = _time
  end
  A0_2152.AI.lastTimeTargetWasSeen = _time
  A0_2152.AI.lastKnownTargetPosition = nil
  if AI.GetAttentionTargetEntity(A0_2152.id) then
    A0_2152.AI.lastKnownTargetPosition = AI.GetAttentionTargetEntity(A0_2152.id):GetWorldPos()
  end
  A0_2152:SafeKillTimer(A0_2152.targetLostTimer)
  if A0_2152.BehaviorProperties and A0_2152.BehaviorProperties.fTimeUntilSearchInCombat then
    A0_2152.targetLostTimer = Script.SetTimer(A0_2152.BehaviorProperties.fTimeUntilSearchInCombat * 1000, function()
      _UPVALUE0_:TargetLost()
    end)
  end
  A0_2152:SafeKillTimer(A0_2152.targetNotVisibleTimer)
  A0_2152.targetNotVisibleTimer = Script.SetTimer(2000, function()
    _UPVALUE0_:TargetNotVisible()
  end)
end
L0_2082.OnLostSightOfTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2156)
  local L1_2157
end
L0_2082.OnGroupEnemySeen = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2158)
  local L1_2159
end
L0_2082.OnGroupUnderAttack = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2160)
  A0_2160:SafeKillTimer(A0_2160.targetLostTimer)
end
L0_2082.ResetTargetLostTimer = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2161, A1_2162, A2_2163)
end
L0_2082.OnNewAttentionTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2164, A1_2165, A2_2166)
end
L0_2082.OnAttentionTargetThreatChanged = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2167, A1_2168)
  A0_2167.AI.NextGoToData = A1_2168
end
L0_2082.SetGoToData = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2169, A1_2170)
  if A0_2169.AI.GoToData then
    A0_2169.AI.GoToData.Position = A1_2170.Position
  else
    entity:LogAlways("Trying to set go data position with no current go to data")
  end
end
L0_2082.SetGoToPosition = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2171, A1_2172)
  local L2_2173, L3_2174
  L2_2173 = A0_2171.lastReactionToSoundFromPotentialTargetTime
  if L2_2173 then
    L2_2173 = A0_2171.lastReactionToSoundFromPotentialTargetTime
    L3_2174 = A0_2171.BehaviorProperties
    L3_2174 = L3_2174.ReactToSoundFromPotentialTargetTimeOut
    L2_2173 = L2_2173 + L3_2174
    L3_2174 = _time
    if L2_2173 > L3_2174 then
      L2_2173 = false
      return L2_2173
    end
  end
  if A1_2172 then
    L2_2173 = g_Vectors
    L2_2173 = L2_2173.temp_v1
    L3_2174 = SubVectors
    L3_2174(L2_2173, A1_2172, A0_2171:GetWorldPos())
    L3_2174 = dotproduct3d
    L3_2174 = L3_2174(L2_2173, A0_2171:GetDirectionVector())
    if L3_2174 > 0 then
      return false
    end
  end
  L2_2173 = _time
  A0_2171.lastReactionToSoundFromPotentialTargetTime = L2_2173
  L2_2173 = true
  return L2_2173
end
L0_2082.ShouldReactToSoundFromPotentialTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2175)
  AI.SetInCover(A0_2175.id, false)
end
L0_2082.LeaveCover = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2176, A1_2177, A2_2178)
  if A1_2177 and A1_2177 ~= "" then
    A0_2176.PropertiesInstance.AITerritoryAndWave.aiterritory_Territory = A1_2177
  end
  if A2_2178 and A2_2178 ~= "" then
    A0_2176.PropertiesInstance.AITerritoryAndWave.aiwave_Wave = A2_2178
  end
  AI_Utils:SetupTerritory(A0_2176)
  AI_Utils:SetupStandby(A0_2176)
end
L0_2082.SetupTerritoryAndWave = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2179)
  A0_2179:TriggerEvent(AIEVENT_DROPBEACON)
end
L0_2082.DropBeacon = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2180, A1_2181, A2_2182, A3_2183)
  AI.Signal(SIGNALFILTER_GROUPONLY_EXCEPT, 1, A1_2181, A0_2180.id, A3_2183)
end
L0_2082.SendGroupSignal = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2184, A1_2185)
  if A1_2185 then
    if not A0_2184.assaultTarget then
      A0_2184.assaultTarget = {
        x = 0,
        y = 0,
        z = 0
      }
    end
    CopyVector(A0_2184.assaultTarget, A1_2185)
  end
end
L0_2082.AssaultTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2186, A1_2187)
  if A1_2187 then
    Script.KillTimer(A1_2187)
  end
end
L0_2082.SafeKillTimer = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2188, A1_2189, A2_2190)
  if A1_2189 then
    CopyVector(A0_2188.DefendPosition.pos, A1_2189)
    if A2_2190 > 1 then
      A0_2188.DefendPosition.radius = A2_2190
    else
      A0_2188.DefendPosition.radius = 15
    end
    AI.SetBehaviorVariable(A0_2188.id, "DefendPosition", true)
  else
    Log("SetDefendTarget failed.")
  end
end
L0_2082.SetDefendPosition = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2191)
  AI.SetBehaviorVariable(A0_2191.id, "DefendPosition", false)
end
L0_2082.CancelDefendPosition = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2192, A1_2193, A2_2194, A3_2195, A4_2196)
  if A0_2192.AI.HoldGround == nil then
    A0_2192.AI.HoldGround = {
      pos = {
        x = 0,
        y = 0,
        z = 0
      },
      dir = {
        x = 0,
        y = 0,
        z = 0
      },
      radius = 5,
      skipCover = false
    }
  end
  if IsNotNullVector(A1_2193) then
    CopyVector(A0_2192.AI.HoldGround.pos, A1_2193)
  else
    Log("SetHoldGround failed.")
    return
  end
  if IsNotNullVector(A2_2194) then
    CopyVector(A0_2192.AI.HoldGround.dir, A2_2194)
  end
  A0_2192.AI.HoldGround.skipCover = A3_2195 > 0
  A0_2192.AI.HoldGround.stance = A4_2196
  A0_2192:LeaveCover()
  AI.SetBehaviorVariable(A0_2192.id, "AtHoldGroundPos", false)
  AI.SetBehaviorVariable(A0_2192.id, "HoldGround", true)
end
L0_2082.SetHoldGround = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2197)
  AI.SetBehaviorVariable(A0_2197.id, "HoldGround", false)
end
L0_2082.CancelHoldGround = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2198, A1_2199, A2_2200)
end
L0_2082.OnGroupMemberDiedWithinCommRange = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2201)
  if not AI.IsTakingCover(A0_2201.id, 7.5) and not A0_2201:IsUsingPipe("BulletReaction") then
    A0_2201:InsertSubpipe(0, "BulletReaction")
  end
end
L0_2082.PerformBulletReaction = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2202)
  local L1_2203
  L1_2203 = AI
  L1_2203 = L1_2203.GetGroupOf
  L1_2203 = L1_2203(A0_2202.id)
  AI_Utils:VerifyGroupBlackBoard(L1_2203)
  return AIBlackBoard[L1_2203]
end
L0_2082.GetGroupBlackboard = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2204)
  local L1_2205
  L1_2205 = A0_2204.AI
  L1_2205 = L1_2205.bGoBackToStartOnIdle
  L1_2205 = L1_2205 and A0_2204.lastIdlePosition
  return L1_2205
end
L0_2082.ShouldGoBackToStartOnIdle = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2206)
  local L1_2207
  L1_2207 = A0_2206.AI
  L1_2207.inCoverStartTime = _time
  L1_2207 = A0_2206.AI
  L1_2207.outOfCoverStartTime = nil
end
L0_2082.EnteredCover = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2208)
  local L1_2209
  L1_2209 = A0_2208.AI
  L1_2209.inCoverStartTime = nil
  L1_2209 = A0_2208.AI
  L1_2209.outOfCoverStartTime = _time
end
L0_2082.LeftCover = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2210)
  local L1_2211, L2_2212
  L1_2211 = A0_2210.AI
  L1_2211 = L1_2211.inCoverStartTime
  if L1_2211 == nil then
    L1_2211 = 0
    return L1_2211
  end
  L1_2211 = _time
  L2_2212 = A0_2210.AI
  L2_2212 = L2_2212.inCoverStartTime
  L1_2211 = L1_2211 - L2_2212
  return L1_2211
end
L0_2082.GetTimeInCover = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2213)
  local L1_2214, L2_2215
  L1_2214 = A0_2213.AI
  L1_2214 = L1_2214.outOfCoverStartTime
  if L1_2214 == nil then
    L1_2214 = 0
    return L1_2214
  end
  L1_2214 = _time
  L2_2215 = A0_2213.AI
  L2_2215 = L2_2215.outOfCoverStartTime
  L1_2214 = L1_2214 - L2_2215
  return L1_2214
end
L0_2082.GetTimeOutOfCover = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2216)
  return AI.GetTargetType(A0_2216.id) == AITARGET_VISUAL or AI.GetTargetType(A0_2216.id) == AITARGET_ENEMY
end
L0_2082.IsTargetVisual = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2217, A1_2218)
  if A1_2218 == nil then
    A0_2217:Log("AttentionTarget is unexpectedly invalid!")
    return false
  else
    return true
  end
end
L0_2082.ValidateAttentionTarget = L1_2083
L0_2082 = AIBase
function L1_2083(A0_2219, A1_2220, ...)
  local L3_2222, L5_2223, L6_2224, L7_2225
  L3_2222 = A0_2219.Behavior
  if L3_2222 then
    L5_2223 = L3_2222[A1_2220]
    if L5_2223 then
      L5_2223 = L3_2222[A1_2220]
      L6_2224 = L3_2222
      L7_2225 = A0_2219
      L5_2223(L6_2224, L7_2225, ...)
    end
  end
end
L0_2082.CallBehaviorFunction = L1_2083
