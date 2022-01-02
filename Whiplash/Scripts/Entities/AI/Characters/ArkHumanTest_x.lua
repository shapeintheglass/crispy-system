Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkHumanTest_x = {
  ActionController = "Animations/Mannequin/ADB/ArkHumanTestControllerDef.xml",
  AnimDatabase3P = "Animations/Mannequin/ADB/ArkHumanTest.adb",
  SoundDatabase = "Animations/Mannequin/ADB/humanSounds.adb",
  UseMannequinAGState = true,
  UseLegacyCoverLocator = false,
  gameParams = {
    boneIDs = {
      BONE_BIP01 = "Bip01",
      BONE_SPINE = "Bip01 Spine1",
      BONE_SPINE2 = "Bip01 Spine2",
      BONE_SPINE3 = "Bip01 Spine3",
      BONE_HEAD = "Bip01 Head",
      BONE_WEAPON = "weapon_bone",
      BONE_WEAPON2 = "Lweapon_bone",
      BONE_FOOT_R = "Bip01 R Foot",
      BONE_FOOT_L = "Bip01 L Foot",
      BONE_ARM_R = "Bip01 R Forearm",
      BONE_ARM_L = "Bip01 L Forearm",
      BONE_CALF_R = "Bip01 R Calf",
      BONE_CALF_L = "Bip01 L Calf"
    },
    meeleHitRagdollImpulseScale = 1,
    grenadeLaunchProbability = 0.5,
    grenadeThrowMaxAngle = 45,
    lookFOV = 200,
    lookInVehicleFOV = 110,
    aimFOV = 200,
    maxLookAimAngle = 120,
    aimIKFadeDuration = 0.5,
    aimIKLayer = 14,
    proceduralLeaningFactor = 0,
    canUseComplexLookIK = true,
    lookAtSimpleHeadBone = "Bip01 Head",
    cornerSmoother = 2,
    stepThresholdTime = 0.5,
    stepThresholdDistance = 0.1,
    turnThresholdTime = 0.5,
    turnThresholdAngle = 5,
    maxDeltaAngleRateNormal = 360,
    nearbyRange = 10,
    middleRange = 30,
    stopFollowingDist = 2,
    followAtWalkSpeedDist = 5,
    followAtRunSpeedDist = 15,
    followAtSprintSpeedDist = 100,
    defaultStance = STANCE_RELAXED,
    stance = {
      {
        stanceId = STANCE_STAND,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1.2,
        heightPivot = 0,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.2
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 1.625
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.35
        },
        leanLeftViewOffset = {
          x = -0.5,
          y = 0.1,
          z = 1.525
        },
        leanRightViewOffset = {
          x = 0.5,
          y = 0.1,
          z = 1.525
        },
        leanLeftWeaponOffset = {
          x = -0.45,
          y = 0,
          z = 1.3
        },
        leanRightWeaponOffset = {
          x = 0.65,
          y = 0,
          z = 1.3
        },
        name = "stand",
        useCapsule = 1
      },
      {
        stanceId = STANCE_RELAXED,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1.2,
        heightPivot = 0,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.2
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 1.625
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.3
        },
        name = "relaxed",
        useCapsule = 1
      }
    },
    characterDBAs = {
      "HumanAI",
      "HumanShared"
    }
  },
  Properties = {
    TagList = "",
    soclasses_SmartObjectClass = "Human, Actor",
    esNavigationType = "MediumSizedCharacters",
    fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_SDKGrunt.xml",
    Damage = {
      fileBodyDamage = "Libs/BodyDamage/BodyDamage_Default.xml",
      fileBodyDamageParts = "Libs/BodyDamage/Bodyparts_HumanMaleShared.xml",
      fileBodyDestructibility = "Libs/BodyDamage/BodyDestructibility_HumanMaleShared.xml",
      CanFall = 1,
      FallSleepTime = 1,
      heatAbsobsion = 0.5,
      heatDissipation = 200,
      minHeatDamage = 100
    },
    Perception = {
      minAlarmLevel = 0,
      sightEnvScaleNormal = 0.2,
      sightEnvScaleAlarmed = 1,
      cloakMaxDistCrouchedAndMoving = 1.5,
      cloakMaxDistCrouchedAndStill = 1.3,
      cloakMaxDistMoving = 3,
      cloakMaxDistStill = 2,
      config = "Human"
    },
    useSpecialMovementTransitions = 1,
    bOverrideAllowLookAimStrafing = 1,
    fileModel = "Objects/Characters/Test_Biped/Biped.cdf",
    bUseFacialFrameRateLimiting = 1,
    AIBehaviorFlags = {bSniper = 0, bGrenadier = 0},
    AI = {
      bUseRadioChatter = 1,
      bPlayDeathSound = 0,
      sndDeathSound = ""
    },
    PlayerInteractions = {
      bStealthKill = 1,
      bCanBeGrabbed = 1,
      esGrabType = "Human"
    },
    CharacterSounds = {
      footstepEffect = "footstep_grunt",
      remoteFootstepEffect = "footstep_grunt",
      footstepIndGearAudioSignal_Walk = "",
      footstepIndGearAudioSignal_Run = "",
      bFootstepGearEffect = 0,
      foleyEffect = "foley_player",
      bodyFallEffect = "bodyfall"
    }
  },
  AIMovementAbility = {
    allowEntityClampingByAnimation = 1,
    usePredictiveFollowing = 1,
    pathLookAhead = 1,
    walkSpeed = 1.25,
    runSpeed = 3.5,
    sprintSpeed = 5,
    maneuverSpeed = 1.25,
    b3DMove = 0,
    minTurnRadius = 0,
    maxTurnRadius = 3,
    pathSpeedLookAheadPerSpeed = -1.5,
    cornerSlowDown = 0.75,
    pathType = AIPATH_HUMAN,
    pathRadius = 0.25,
    passRadius = 0.25,
    separationRadius = 0.2,
    distanceToCover = 0.5,
    inCoverRadius = 0.075,
    effectiveCoverHeight = 0.55,
    effectiveHighCoverHeight = 1.75,
    pathFindPrediction = 0.5,
    maxAccel = 2,
    maxDecel = 4,
    velDecay = 0.5,
    maneuverTrh = 2,
    resolveStickingInTrace = 1,
    pathRegenIntervalDuringTrace = -1,
    lightAffectsSpeed = 1,
    avoidanceAbilities = AVOIDANCE_ALL,
    pushableObstacleWeakAvoidance = true,
    pushableObstacleAvoidanceRadiusMin = 0.4,
    pushableObstacleAvoidanceRadiusMax = 0.4,
    lookIdleTurnSpeed = 30,
    lookCombatTurnSpeed = 50,
    aimTurnSpeed = -1,
    fireTurnSpeed = -1,
    directionalScaleRefSpeedMin = 1,
    directionalScaleRefSpeedMax = 5,
    directionalScaleTurn = 0.4,
    directionalScaleStrafe = 0.8,
    directionalScaleSlope = 0.083333,
    AIMovementSpeeds = {
      Relaxed = {
        Slow = {
          0.5,
          0,
          0.5
        },
        Walk = {
          1.25,
          0,
          1.25
        },
        Run = {
          3.5,
          0,
          3.5
        },
        Sprint = {
          5,
          0,
          5
        }
      }
    }
  },
  melee = {
    damage = 400,
    damageOffset = {
      x = 0,
      y = 2,
      z = 0
    },
    damageRadius = 1.8,
    damageRadiusShort = 1.5,
    hitRange = 1.8,
    knockdownChance = 0.1,
    impulse = 600,
    angleThreshold = 180
  },
  PropertiesInstance = {
    AI = {bGunner = 0}
  },
  SearchModule = {sightRange = 12},
  aiSequenceUser = true,
  OnCustomKill = function(A0_1824)
    if AIBase.OnCustomKill then
      AIBase.OnCustomKill(A0_1824)
    end
    if not A0_1824.Properties.AI.bPlayDeathSound or A0_1824.Properties.AI.sndDeathSound ~= "" then
    end
  end,
  OnGrenadeDanger = function(A0_1825, A1_1826, A2_1827)
    A0_1825.lastImmediateThreatPos = A2_1827.point
  end,
  OnExposedToExplosion = function(A0_1828, A1_1829, A2_1830)
    A0_1828.lastImmediateThreatPos = A2_1830.point
  end,
  OnScorcherExplosionDanger = function(A0_1831, A1_1832, A2_1833)
    A0_1831.lastImmediateThreatPos = A2_1833.point
  end,
  OnWaterRippleSeen = function(A0_1834, A1_1835, A2_1836)
    local L3_1837
    L3_1837 = A0_1834.AI
    L3_1837.lastWaterRipplePosition = A2_1836.point
    L3_1837 = g_Vectors
    L3_1837 = L3_1837.temp_v1
    A0_1834:GetWorldPos(L3_1837)
    if DistanceVectors(L3_1837, A0_1834.AI.lastWaterRipplePosition) < 15 then
      AI.Signal(SIGNALFILTER_SENDER, 1, "OnNearbyWaterRippleSeen", A0_1834.id)
    end
  end,
  OnEMPGrenadeThrown = function(A0_1838, A1_1839, A2_1840)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "EMPGrenadeThrownInGroup", A0_1838.id)
    if A0_1838:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1838.id, "ThrowEMP", "Group", 2)
    end
  end,
  OnSmokeGrenadeThrown = function(A0_1841, A1_1842, A2_1843)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "SmokeGrenadeThrownInGroup", A0_1841.id)
    if A0_1841:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1841.id, "ThrowSmoke", "Group", 2)
    end
  end,
  OnFragGrenadeThrown = function(A0_1844, A1_1845, A2_1846)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "FragGrenadeThrownInGroup", A0_1844.id)
    if A0_1844:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1844.id, "ThrowFrag", "Group", 2)
    end
  end,
  OccupyAdvantagePoint = function(A0_1847)
    local L1_1848
    L1_1848 = A0_1847.ReleaseAdvantagePoint
    L1_1848(A0_1847)
    L1_1848 = AI
    L1_1848 = L1_1848.GetRefPointPosition
    L1_1848 = L1_1848(A0_1847.id)
    if not L1_1848 then
      return
    end
    A0_1847.occupiedAdvantagePointPosition = L1_1848
    GameAI.OccupyAdvantagePoint(A0_1847.id, L1_1848)
  end,
  ReleaseAdvantagePoint = function(A0_1849)
    if not A0_1849.occupiedAdvantagePointPosition then
      return
    end
    GameAI.ReleaseAdvantagePointFor(A0_1849.id, A0_1849.occupiedAdvantagePointPosition)
    A0_1849.occupiedAdvantagePointPosition = nil
  end,
  GroupMemberDied = function(A0_1850)
    local L1_1851
    L1_1851 = A0_1850.deadGroupMemberCount
    if L1_1851 == nil then
      A0_1850.deadGroupMemberCount = 1
    else
      L1_1851 = A0_1850.deadGroupMemberCount
      L1_1851 = L1_1851 + 1
      A0_1850.deadGroupMemberCount = L1_1851
    end
  end,
  GetDeadGroupMemberCount = function(A0_1852)
    return A0_1852.deadGroupMemberCount or 0
  end,
  IsAlone = function(A0_1853)
    return AI.GetDistanceToClosestGroupMember(A0_1853.id) > 50
  end,
  HasGroupMembersNearby = function(A0_1854)
    return not A0_1854:IsAlone()
  end,
  WatchedMateDie = function(A0_1855)
    local L1_1856, L2_1857
    L1_1856 = System
    L1_1856 = L1_1856.GetEntity
    L2_1857 = A0_1855.deadGroupMemberData
    L2_1857 = L2_1857.victimID
    L1_1856 = L1_1856(L2_1857)
    L2_1857 = ""
    if L1_1856 and L1_1856.deathProjectileClassId then
      L2_1857 = CryAction.GetClassName(L1_1856.deathProjectileClassId)
    end
    if L2_1857 == "LTagGrenade" then
      AI.PlayCommunication(A0_1855.id, "NoticePlayerUsingLtag", "EnemyWeaponComment", 3)
    elseif L2_1857 == "SniperBullet" or L2_1857 == "GaussBullet" then
      AI.PlayCommunication(A0_1855.id, "NoticePlayerUsingDSG1", "EnemyWeaponComment", 3)
    elseif L2_1857 == "rocket" then
      AI.PlayCommunication(A0_1855.id, "NoticePlayerUsingJaw", "EnemyWeaponComment", 3)
    elseif AI.GetAlertness(A0_1855.id) >= 2 then
      AI.PlayCommunication(A0_1855.id, "AwareOfTargetAndWitnessedMateDie", "DeadGroupMemberComment", 3)
    end
  end,
  OnGroupMemberDiedOnHMG = function(A0_1858)
    AI.PlayCommunication(A0_1858.id, "NoticeMateDiedOnMountedGun", "Group", 2)
  end
}
mergef(ArkHumanTest_x, AIBase, 1)
function ArkHumanTest_x.OnResetCustom(A0_1859)
  GameAI.UnregisterWithAllModules(A0_1859.id)
  A0_1859.AI.mountedWeaponCheck = true
  if A0_1859.Properties.AI.bUseRadioChatter == 1 then
    GameAI.RegisterWithModule("RadioChatter", A0_1859.id)
  end
  GameAI.RegisterWithModule("BattleFront", A0_1859.id)
  GameAI.RegisterWithModule("StalkerModule", A0_1859.id)
  GameAI.RegisterWithModule("RangeModule", A0_1859.id)
  GameAI.AddRange(A0_1859.id, 2.5, "OnTargetEnteredMeleeRange", "")
  GameAI.AddRange(A0_1859.id, 3, "", "OnTargetLeftMeleeRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.nearbyRange, "OnTargetEnteredNearbyRange", "OnTargetLeftNearbyRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.middleRange, "OnTargetEnteredMiddleRange", "OnTargetEnteredMiddleRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.stopFollowDist, "OnTargetEnteredFollowStopRange", "OnTargetExitedFollowStopRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.followAtWalkSpeedDist, "OnTargetEnteredFollowWalkRange", "OnTargetExitedFollowWalkRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.followAtRunSpeedDist, "OnTargetEnteredFollowRunRange", "OnTargetExitedFollowRunRange")
  GameAI.AddRange(A0_1859.id, A0_1859.gameParams.followAtSprintSpeedDist, "OnTargetEnteredFollowSprintRange", "OnTargetExitedFollowSprintRange")
  GameAI.AddRange(A0_1859.id, 8, "EnteredTooCloseForComfortRange", "LeftTooCloseForComfortRange")
  if A0_1859.Properties.AIBehaviorFlags.bSniper == 1 then
    GameAI.AddRange(A0_1859.id, 10, "OnTargetEnteredCloseRange", "")
    GameAI.AddRange(A0_1859.id, 12, "", "OnTargetLeftCloseRange")
  end
  if A0_1859.Properties.AIBehaviorFlags.bGrenadier == 1 then
    GameAI.AddRange(A0_1859.id, 20, "OnTargetEnteredCloseRange", "")
    GameAI.AddRange(A0_1859.id, 22, "", "OnTargetLeftCloseRange")
  end
  A0_1859.lastImmediateThreatPos = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_1859.deadGroupMemberCount = 0
  A0_1859.suspiciousSoundInvestigationCount = 0
end
function ArkHumanTest_x.EnableSearchModule(A0_1860)
  local L1_1861, L2_1862, L3_1863
  L1_1861 = AI
  L1_1861 = L1_1861.GetGroupOf
  L2_1862 = A0_1860.id
  L1_1861 = L1_1861(L2_1862)
  L2_1862 = g_Vectors
  L2_1862 = L2_1862.temp_v1
  L3_1863 = AI
  L3_1863 = L3_1863.GetAttentionTargetPosition
  L3_1863 = L3_1863(A0_1860.id, L2_1862)
  if L3_1863 then
    L3_1863 = NULL_ENTITY
    if AI.GetAttentionTargetEntity(A0_1860.id) then
      L3_1863 = AI.GetAttentionTargetEntity(A0_1860.id).id
    end
    GameAI.StartSearchModuleFor(L1_1861, L2_1862, L3_1863, 45)
    GameAI.RegisterWithModule("SearchModule", A0_1860.id)
    A0_1860:Log("Started search module for my group.")
  else
    L3_1863 = A0_1860.Error
    L3_1863(A0_1860, "No attention target to search for")
  end
end
function ArkHumanTest_x.SetNextSearchSpotToRefPoint(A0_1864)
  local L1_1865
  L1_1865 = GameAI
  L1_1865 = L1_1865.GetNextSearchSpot
  L1_1865 = L1_1865(A0_1864.id, 0.6, 0.3, 15, 0.1)
  if L1_1865 then
    AI.SetRefPointPosition(A0_1864.id, L1_1865)
  else
    AI.Signal(SIGNALFILTER_SENDER, 1, "NoSearchSpotsAvailable", A0_1864.id)
  end
end
function ArkHumanTest_x.DisableSearchModule(A0_1866)
  GameAI.UnregisterWithModule("SearchModule", A0_1866.id)
end
function ArkHumanTest_x.OnPostLoad(A0_1867)
  A0_1867:OnResetCustom()
  BasicActor.OnPostLoad(A0_1867)
end
function ArkHumanTest_x.SetHoldGroundMoveSpeed(A0_1868)
  local L1_1869
  L1_1869 = g_Vectors
  L1_1869 = L1_1869.temp_v1
  A0_1868:GetWorldPos(L1_1869)
  if DistanceVectors(L1_1869, A0_1868.AI.HoldGround.pos) > 10 or math.abs(L1_1869.z - A0_1868.AI.HoldGround.pos.z) > 1 then
    AI.SetSpeed(A0_1868.id, SPEED_RUN)
  else
    AI.SetSpeed(A0_1868.id, SPEED_WALK)
  end
end
function ArkHumanTest_x.DoPainSounds(A0_1870, A1_1871, A2_1872, A3_1873)
  if g_gameRules:IsStealthHealthHit(A2_1872) then
    return
  end
  if A1_1871 then
    if A0_1870.doHeadShotReadability then
      AI.PlayCommunication(A0_1870.id, "comm_headshot_death", "Injury", 0.5)
      A0_1870.doHeadShotReadability = false
    elseif A2_1872 == "stickyArrow" then
      AI.PlayCommunication(A0_1870.id, "comm_headshot_death", "Injury", 0.5)
    elseif A2_1872 == "meleeLeft" or A2_1872 == "meleeRight" then
      if AI.GetAlertness(A0_1870.id) > 0 == false then
        AI.PlayCommunication(A0_1870.id, "comm_headshot_death", "Injury", 0.5)
      else
        AI.PlayCommunication(A0_1870.id, "comm_death_melee", "Injury", 0.5)
      end
    elseif A2_1872 == "silentMelee" then
      AI.PlayCommunication(A0_1870.id, "comm_headshot_death", "Injury", 0.5)
    elseif A3_1873 == true then
      AI.PlayCommunication(A0_1870.id, "comm_headshot_death", "Injury", 0.5)
    else
      AI.PlayCommunication(A0_1870.id, "comm_death", "Injury", 0.5)
    end
  elseif A2_1872 == "silentMelee" then
    return
  else
    AI.PlayCommunication(A0_1870.id, "comm_pain", "InjuryPain", 0.5)
  end
end
function ArkHumanTest_x.EnableBlindFire(A0_1874, A1_1875)
  if A1_1875 then
    AI.SetPosturePriority(A0_1874.id, "BlindLowCoverAim", 10)
    AI.SetPosturePriority(A0_1874.id, "BlindHighCoverAim", 10)
  else
    AI.SetPosturePriority(A0_1874.id, "BlindLowCoverAim", 0)
    AI.SetPosturePriority(A0_1874.id, "BlindHighCoverAim", 0)
  end
end
function ArkHumanTest_x.CheckForMountedWeapons(A0_1876)
  if A0_1876:FindValidMountedWeapon() then
    A0_1876.AI.targetMountedWeapon = A0_1876:FindValidMountedWeapon()
    AI.SetBehaviorVariable(A0_1876.id, "GoToMountedWeapon", true)
    return true
  else
    return false
  end
end
function ArkHumanTest_x.FindValidMountedWeapon(A0_1877)
  local L1_1878
  L1_1878 = AI
  L1_1878 = L1_1878.FindObjectOfType
  L1_1878 = L1_1878(A0_1877:GetPos(), 10, AIOBJECT_MOUNTEDWEAPON)
  if L1_1878 and System.GetEntityByName(L1_1878) and not System.GetEntityByName(L1_1878).inUse and Game.IsMountedWeaponUsableWithTarget(A0_1877.id, System.GetEntityByName(L1_1878).id) then
    return (System.GetEntityByName(L1_1878))
  end
end
function ArkHumanTest_x.OnUseMountedWeaponRequest(A0_1879, A1_1880)
  A0_1879:PrepareForMountedWeaponUse(A1_1880)
end
function ArkHumanTest_x.PrepareForMountedWeaponUse(A0_1881, A1_1882, A2_1883)
  local L3_1884, L4_1885, L5_1886, L6_1887, L7_1888
  if A1_1882 then
    L4_1885 = System
    L4_1885 = L4_1885.GetEntity
    L5_1886 = A1_1882
    L4_1885 = L4_1885(L5_1886)
    L3_1884 = L4_1885
  else
  end
  if not L3_1884 then
    L4_1885 = false
    return L4_1885
  end
  L4_1885 = L3_1884.item
  L5_1886 = L4_1885
  L4_1885 = L4_1885.IsUsed
  L4_1885 = L4_1885(L5_1886)
  if L4_1885 then
    L4_1885 = L3_1884.item
    L5_1886 = L4_1885
    L4_1885 = L4_1885.GetOwnerId
    L4_1885 = L4_1885(L5_1886)
    L5_1886 = A0_1881.id
    if L4_1885 ~= L5_1886 then
      L4_1885 = false
      return L4_1885
    end
  end
  L4_1885 = g_Vectors
  L4_1885 = L4_1885.temp_v1
  L5_1886 = L3_1884.item
  L6_1887 = L5_1886
  L5_1886 = L5_1886.GetMountedDir
  L7_1888 = g_Vectors
  L7_1888 = L7_1888.temp_v2
  L5_1886 = L5_1886(L6_1887, L7_1888)
  L7_1888 = L3_1884
  L6_1887 = L3_1884.GetWorldPos
  L6_1887 = L6_1887(L7_1888, g_Vectors.temp_v3)
  L7_1888 = FastDifferenceVectors
  L7_1888(L4_1885, L6_1887, L5_1886)
  L7_1888 = g_Vectors
  L7_1888 = L7_1888.temp_v4
  L7_1888.x = 0
  L7_1888.y = 0
  L7_1888.z = -2
  if 0 < Physics.RayWorldIntersection(L4_1885, L7_1888, 2, ent_terrain + ent_static + ent_rigid + ent_sleeping_rigid, A0_1881.id, nil, g_HitTable) then
    L4_1885.z = g_HitTable[1].pos.z
  end
  AI.SetRefPointPosition(A0_1881.id, L4_1885)
  AI.SetRefPointDirection(A0_1881.id, L5_1886)
  A0_1881.AI.currentMountedWeaponId = A1_1882
  A0_1881.AI.currentMountedWeaponInitialDir = L5_1886
  A0_1881.AI.currentMountedWeaponPivot = L6_1887
  L3_1884.inUse = true
  if not A0_1881.AI.theVehicle and not A0_1881.AI.usingMountedWeapon then
    AI.SetBehaviorVariable(A0_1881.id, "MovingToMountedWeapon", true)
  else
    return false
  end
  return true
end
function ArkHumanTest_x.ForceReleaseOfMountedGun(A0_1889)
  A0_1889:LeaveMountedWeapon()
end
function ArkHumanTest_x.SetMachineGunInitialDirInRefPoint(A0_1890)
  if A0_1890.AI.currentMountedWeaponInitialDir ~= nil and A0_1890.AI.currentMountedWeaponPivot ~= nil then
    AI.SetRefPointPosition(A0_1890.id, A0_1890.AI.currentMountedWeaponPivot)
    AI.SetRefPointDirection(A0_1890.id, A0_1890.AI.currentMountedWeaponInitialDir)
  end
end
function ArkHumanTest_x.UseMountedWeapon(A0_1891)
  local L1_1892, L2_1893, L3_1894, L4_1895, L5_1896, L6_1897, L7_1898
  L1_1892 = A0_1891.AI
  L1_1892 = L1_1892.targetMountedWeapon
  if L1_1892 then
    L1_1892 = A0_1891.AI
    L1_1892 = L1_1892.targetMountedWeapon
    L1_1892.inUse = true
  end
  L1_1892 = A0_1891.AI
  L1_1892 = L1_1892.currentMountedWeaponId
  if not L1_1892 then
    return
  end
  L2_1893 = A0_1891.AI
  L3_1894 = AI
  L3_1894 = L3_1894.GetParameter
  L4_1895 = A0_1891.id
  L5_1896 = AIPARAM_FIRE_TURNSPEED
  L3_1894 = L3_1894(L4_1895, L5_1896)
  L2_1893.oldFireTurnSpeed = L3_1894
  L2_1893 = AI
  L2_1893 = L2_1893.ChangeParameter
  L3_1894 = A0_1891.id
  L4_1895 = AIPARAM_FIRE_TURNSPEED
  L5_1896 = 35
  L2_1893(L3_1894, L4_1895, L5_1896)
  L2_1893 = A0_1891.Properties
  L2_1893 = L2_1893.Perception
  L3_1894 = L2_1893.sightrange
  L4_1895 = AI
  L4_1895 = L4_1895.ChangeParameter
  L5_1896 = A0_1891.id
  L6_1897 = AIPARAM_ACCURACY
  L7_1898 = 1
  L4_1895(L5_1896, L6_1897, L7_1898)
  L4_1895 = AI
  L4_1895 = L4_1895.ChangeParameter
  L5_1896 = A0_1891.id
  L6_1897 = AIPARAM_SIGHTRANGE
  L7_1898 = L3_1894
  L4_1895(L5_1896, L6_1897, L7_1898)
  L4_1895 = AI
  L4_1895 = L4_1895.ChangeParameter
  L5_1896 = A0_1891.id
  L6_1897 = AIPARAM_ATTACKRANGE
  L7_1898 = L3_1894
  L4_1895(L5_1896, L6_1897, L7_1898)
  L4_1895 = AI
  L4_1895 = L4_1895.ChangeParameter
  L5_1896 = A0_1891.id
  L6_1897 = AIPARAM_FOVPRIMARY
  L7_1898 = 320
  L4_1895(L5_1896, L6_1897, L7_1898)
  L4_1895 = AI
  L4_1895 = L4_1895.ChangeParameter
  L5_1896 = A0_1891.id
  L6_1897 = AIPARAM_FOVSECONDARY
  L7_1898 = 330
  L4_1895(L5_1896, L6_1897, L7_1898)
  L4_1895 = System
  L4_1895 = L4_1895.GetEntity
  L5_1896 = L1_1892
  L4_1895 = L4_1895(L5_1896)
  if L4_1895 then
    L6_1897 = A0_1891
    L5_1896 = A0_1891.GetDistance
    L7_1898 = L4_1895.id
    L5_1896 = L5_1896(L6_1897, L7_1898)
    if L5_1896 < 3 then
      L5_1896 = A0_1891.actor
      L6_1897 = L5_1896
      L5_1896 = L5_1896.HolsterItem
      L7_1898 = true
      L5_1896(L6_1897, L7_1898)
      L5_1896 = L4_1895.item
      L6_1897 = L5_1896
      L5_1896 = L5_1896.IsUsed
      L5_1896 = L5_1896(L6_1897)
      if not L5_1896 then
        L5_1896 = L4_1895.item
        L6_1897 = L5_1896
        L5_1896 = L5_1896.StartUse
        L7_1898 = A0_1891.id
        L5_1896(L6_1897, L7_1898)
        L5_1896 = g_Vectors
        L5_1896 = L5_1896.temp_v1
        L6_1897 = L4_1895.item
        L7_1898 = L6_1897
        L6_1897 = L6_1897.GetMountedDir
        L6_1897 = L6_1897(L7_1898, g_Vectors.temp_v2)
        L7_1898 = L4_1895.GetWorldPos
        L7_1898 = L7_1898(L4_1895, g_Vectors.temp_v3)
        FastSumVectors(L5_1896, L7_1898, L6_1897)
        FastSumVectors(L5_1896, L5_1896, L6_1897)
        AI.SetRefPointPosition(A0_1891.id, L5_1896)
        AI.SetRefPointDirection(A0_1891.id, L6_1897)
        A0_1891.AI.usingMountedWeapon = true
        if L4_1895.class == "HMG" then
          AI.PlayCommunication(A0_1891.id, "AIUsesMountedGun", "Group", 3)
        elseif L4_1895.class == "AGL" then
          AI.PlayCommunication(A0_1891.id, "AIUsesAGL", "Group", 3)
        end
      end
    else
      L6_1897 = A0_1891
      L5_1896 = A0_1891.DrawWeaponNow
      L5_1896(L6_1897)
    end
  end
end
function ArkHumanTest_x.LeaveMountedWeapon(A0_1899)
  local L1_1900
  L1_1900 = A0_1899.AI
  L1_1900 = L1_1900.targetMountedWeapon
  if L1_1900 then
    L1_1900 = A0_1899.AI
    L1_1900 = L1_1900.targetMountedWeapon
    L1_1900.inUse = false
  end
  L1_1900 = A0_1899.AI
  L1_1900 = L1_1900.currentMountedWeaponId
  if not L1_1900 then
    return
  end
  A0_1899.AI.currentMountedWeaponId = nil
  A0_1899.AI.currentMountedWeaponInitialDir = nil
  A0_1899.AI.currentMountedWeaponPivot = nil
  if System.GetEntity(L1_1900) then
    System.GetEntity(L1_1900).inUse = false
  else
    A0_1899:OnError("(LeaveMountedWeapon) No weapon entity?")
    return
  end
  A0_1899.AI.usingMountedWeapon = nil
  AI.ChangeParameter(A0_1899.id, AIPARAM_FIRE_TURNSPEED, A0_1899.AI.oldFireTurnSpeed)
  AI.ChangeParameter(A0_1899.id, AIPARAM_ACCURACY, 1)
  AI.ChangeParameter(A0_1899.id, AIPARAM_SIGHTRANGE, A0_1899.Properties.Perception.sightrange)
  AI.ChangeParameter(A0_1899.id, AIPARAM_ATTACKRANGE, A0_1899.Properties.Perception.attackrange)
  AI.ChangeParameter(A0_1899.id, AIPARAM_FOVPRIMARY, A0_1899.Properties.Perception.FOVPrimary)
  AI.ChangeParameter(A0_1899.id, AIPARAM_FOVSECONDARY, A0_1899.Properties.Perception.FOVSecondary)
  if System.GetEntity(L1_1900) then
    System.GetEntity(L1_1900).item:StopUse(A0_1899.id)
    A0_1899.actor:HolsterItem(false)
  end
end
function ArkHumanTest_x.CanShootMountedWeapon(A0_1901)
  if AI.GetTargetType(A0_1901.id) ~= AITARGET_ENEMY and AI.GetTargetType(A0_1901.id) ~= AITARGET_MEMORY and AI.GetTargetType(A0_1901.id) ~= AITARGET_SOUND then
    return false
  end
  if not A0_1901.AI.currentMountedWeaponId then
    return false
  end
  if not System.GetEntity(A0_1901.AI.currentMountedWeaponId) or not Game.IsMountedWeaponUsableWithTarget(A0_1901.id, System.GetEntity(A0_1901.AI.currentMountedWeaponId).id, 0) then
    return false
  end
  return true
end
function ArkHumanTest_x.CheckMountedWeaponTarget(A0_1902)
  if A0_1902.AI.mountedWeaponCheck == false then
    return
  end
  if A0_1902.actor:GetLinkedVehicleId() then
    return
  end
  if AI.GetTargetType(A0_1902.id) == AITARGET_MEMORY or AI.GetTargetType(A0_1902.id) == AITARGET_SOUND then
    if 10 > AI.GetAttentionTargetDistance(A0_1902.id) then
      A0_1902:Log("CheckMountedWeaponTarget - dist < cutoff... leaving")
      AI.Signal(SIGNALFILTER_SENDER, 1, "LeaveMountedWeapon", A0_1902.id)
    end
  elseif AI.GetTargetType(A0_1902.id) == AITARGET_ENEMY and not A0_1902:CanShootMountedWeapon() then
    A0_1902:Log("CheckMountedWeaponTarget - CanShootMountedWeapon is false... leaving")
    AI.Signal(SIGNALFILTER_SENDER, 1, "LeaveMountedWeapon", A0_1902.id)
  end
end
function ArkHumanTest_x.IsTargetAnEnemy(A0_1903)
  return AI.GetTargetType(A0_1903.id) == AITARGET_ENEMY
end
function ArkHumanTest_x.MountedWeaponTargetChange(A0_1904)
  if AI.GetTargetType(A0_1904.id) == AITARGET_ENEMY then
    A0_1904:SelectPipe(0, "FireMountedWeapon")
  else
    A0_1904:SelectPipe(0, "LookAroundInMountedWeapon")
    if A0_1904.AI.theVehicle then
      A0_1904:InsertSubpipe(AIGOALPIPE_NOTDUPLICATE, "FireSecondaryMountedWeapon")
    end
  end
end
function ArkHumanTest_x.GetUsable(A0_1905)
  if not A0_1905:IsDead() then
    ({}).ActionType = "ScriptDefined"
    ;({}).Use, ({}).DisplayText = {}, "@use_object"
  end
  return {}
end
function ArkHumanTest_x.AnimationEvent(A0_1906, A1_1907, A2_1908)
  if A1_1907 == "StealthMeleeDeath" then
    AI.PlayCommunication(A0_1906.id, "comm_death_melee_stealth", "Injury", 0.5)
  elseif BasicAI.AnimationEvent then
    BasicAI.AnimationEvent(A0_1906, A1_1907, A2_1908)
  end
end
function ArkHumanTest_x.IsFurthestAwayFromTargetInSquad(A0_1909)
  local L1_1910, L2_1911, L3_1912, L4_1913
  L1_1910 = GameAI
  L1_1910 = L1_1910.GetSquadId
  L2_1911 = A0_1909.id
  L1_1910 = L1_1910(L2_1911)
  if L1_1910 == nil then
    L3_1912 = A0_1909
    L2_1911 = A0_1909.Error
    L4_1913 = "IsFurthestAwayFromTargetInSquad: Squad ID is nil"
    L2_1911(L3_1912, L4_1913)
    L2_1911 = true
    return L2_1911
  end
  L2_1911 = GameAI
  L2_1911 = L2_1911.GetSquadMembers
  L3_1912 = L1_1910
  L2_1911 = L2_1911(L3_1912)
  if L2_1911 == nil then
    L4_1913 = A0_1909
    L3_1912 = A0_1909.Error
    L3_1912(L4_1913, "IsFurthestAwayFromTargetInSquad: Squad doesn't have any members (members is nil)")
    L3_1912 = true
    return L3_1912
  end
  L3_1912 = A0_1909.id
  L4_1913 = 0
  for _FORV_8_, _FORV_9_ in pairs(L2_1911) do
    if L4_1913 < (AI.GetAttentionTargetDistance(_FORV_9_.id) or 500) then
      L4_1913, L3_1912 = AI.GetAttentionTargetDistance(_FORV_9_.id) or 500, _FORV_9_.id
    end
  end
  if L3_1912 == A0_1909.id then
    return true
  else
    return false
  end
end
function ArkHumanTest_x.IsFurtherAwayFromTargetThanAveragePositionOfSquadScopeUsers(A0_1914, A1_1915)
  local L2_1916, L3_1917, L4_1918
  L2_1916 = g_Vectors
  L2_1916 = L2_1916.temp_v1
  L3_1917 = AI
  L3_1917 = L3_1917.GetAttentionTargetPosition
  L4_1918 = A0_1914.id
  L3_1917 = L3_1917(L4_1918, L2_1916)
  if not L3_1917 then
    L3_1917 = true
    return L3_1917
  end
  L3_1917 = GameAI
  L3_1917 = L3_1917.GetSquadScopeUserCount
  L4_1918 = A0_1914.id
  L3_1917 = L3_1917(L4_1918, A1_1915)
  if L3_1917 < 2 then
    L3_1917 = true
    return L3_1917
  end
  L3_1917 = GameAI
  L3_1917 = L3_1917.GetAveragePositionOfSquadScopeUsers
  L4_1918 = A0_1914.id
  L3_1917 = L3_1917(L4_1918, A1_1915)
  L4_1918 = IsNullVector
  L4_1918 = L4_1918(L3_1917)
  if L4_1918 then
    L4_1918 = true
    return L4_1918
  end
  L4_1918 = A0_1914.GetWorldPos
  L4_1918 = L4_1918(A0_1914, g_Vectors.temp_v2)
  if DistanceSqVectors(L3_1917, L2_1916) < DistanceSqVectors(L4_1918, L2_1916) then
    return true
  else
    return false
  end
end
function ArkHumanTest_x.IsClosestToTargetInSquad(A0_1919)
  local L1_1920, L2_1921, L3_1922, L4_1923
  L1_1920 = GameAI
  L1_1920 = L1_1920.GetSquadId
  L2_1921 = A0_1919.id
  L1_1920 = L1_1920(L2_1921)
  if L1_1920 == nil then
    L3_1922 = A0_1919
    L2_1921 = A0_1919.Error
    L4_1923 = "IsCloserFromTargetInSquad: Squad ID is nil"
    L2_1921(L3_1922, L4_1923)
    L2_1921 = true
    return L2_1921
  end
  L2_1921 = GameAI
  L2_1921 = L2_1921.GetSquadMembers
  L3_1922 = L1_1920
  L2_1921 = L2_1921(L3_1922)
  if L2_1921 == nil then
    L4_1923 = A0_1919
    L3_1922 = A0_1919.Error
    L3_1922(L4_1923, "IsCloserFromTargetInSquad: Squad doesn't have any members (members is nil)")
    L3_1922 = true
    return L3_1922
  end
  L3_1922 = A0_1919.id
  L4_1923 = 1000
  for _FORV_8_, _FORV_9_ in pairs(L2_1921) do
    if _FORV_9_ ~= nil and _FORV_9_:IsActive() and not _FORV_9_:IsDead() then
      if L4_1923 >= (AI.GetAttentionTargetDistance(_FORV_9_.id) or 500) then
        L4_1923, L3_1922 = AI.GetAttentionTargetDistance(_FORV_9_.id) or 500, _FORV_9_.id
      end
    end
  end
  if L3_1922 == A0_1919.id then
    return true
  else
    return false
  end
end
function ArkHumanTest_x.IsClosestToTargetInGroup(A0_1924)
  local L1_1925, L2_1926, L3_1927, L4_1928, L5_1929, L6_1930, L7_1931
  L1_1925 = A0_1924.id
  L2_1926 = 1000
  L3_1927 = AI
  L3_1927 = L3_1927.GetGroupCount
  L3_1927 = L3_1927(L4_1928)
  for L7_1931 = 1, L3_1927 do
    if AI.GetGroupMember(A0_1924.id, L7_1931) ~= nil and AI.GetGroupMember(A0_1924.id, L7_1931):IsActive() and not AI.GetGroupMember(A0_1924.id, L7_1931):IsDead() then
      if L2_1926 >= (AI.GetAttentionTargetDistance(AI.GetGroupMember(A0_1924.id, L7_1931).id) or 500) then
        L2_1926, L1_1925 = AI.GetAttentionTargetDistance(AI.GetGroupMember(A0_1924.id, L7_1931).id) or 500, AI.GetGroupMember(A0_1924.id, L7_1931).id
      end
    end
  end
  if L1_1925 == L4_1928 then
    return L4_1928
  else
    return L4_1928
  end
end
function ArkHumanTest_x.IsInRangeFromTarget(A0_1932, A1_1933)
  if A1_1933 and A1_1933 >= (AI.GetAttentionTargetDistance(A0_1932.id) or 500) then
    return true
  end
  return false
end
function ArkHumanTest_x.GetTargetDistance(A0_1934)
  return AI.GetAttentionTargetDistance(A0_1934.id) or 500
end
function ArkHumanTest_x.SetLastExplosiveTypeAsGrenade(A0_1935)
  local L1_1936
  A0_1935.lastExplosiveType = "grenade"
  L1_1936 = true
  return L1_1936
end
function ArkHumanTest_x.SetLastExplosiveTypeAsExplosive(A0_1937)
  local L1_1938
  A0_1937.lastExplosiveType = "explosive"
  L1_1938 = true
  return L1_1938
end
function ArkHumanTest_x.ClearCombatMoveAssignmentIfCloseToTheDestination(A0_1939)
  if DistanceSqVectors(A0_1939:GetWorldPos(), A0_1939.AI.combatMove.position) < 25 then
    A0_1939:ClearAssignment()
  end
end
function ArkHumanTest_x.ShouldUseGrenade(A0_1940)
  local L1_1941, L2_1942
  L1_1941 = AI
  L1_1941 = L1_1941.GetAttentionTargetEntity
  L2_1942 = A0_1940.id
  L1_1941 = L1_1941(L2_1942)
  L2_1942 = A0_1940.ValidateAttentionTarget
  L2_1942 = L2_1942(A0_1940, L1_1941)
  if not L2_1942 then
    L2_1942 = false
    return L2_1942
  end
  L2_1942 = g_Vectors
  L2_1942 = L2_1942.temp_v3
  SubVectors(L2_1942, L1_1941:GetWorldPos(), A0_1940:GetWorldPos())
  NormalizeVector(L2_1942)
  if dotproduct2d(A0_1940:GetDirectionVector(), L2_1942) > math.cos(math.rad(A0_1940.gameParams.grenadeThrowMaxAngle)) then
    if A0_1940.gameParams.grenadeLaunchProbability and random(0, 1) <= A0_1940.gameParams.grenadeLaunchProbability then
      return true
    else
      return false
    end
  end
end
function ArkHumanTest_x.RefreshCurrentDeadGroupMemberBodyPosition(A0_1943)
  if A0_1943.deadGroupMemberData == nil then
    A0_1943:Error("RefreshCurrentDeadGroupMemberBodyPosition expected the 'dead group member data' to exist but it didn't.")
    return
  end
  if System.GetEntity(A0_1943.deadGroupMemberData.victimID) then
    CopyVector(A0_1943.deadGroupMemberData.currentBodyPosition, System.GetEntity(A0_1943.deadGroupMemberData.victimID):GetWorldPos())
  end
end
function ArkHumanTest_x.SetDeadGroupMemberBodyPositionAsRefPoint(A0_1944)
  if A0_1944.deadGroupMemberData == nil then
    A0_1944:Error("SetDeadGroupMemberPositionAsRefPoint expected the 'dead group member data' to exist but it didn't.")
    return false
  end
  AI.SetRefPointPosition(A0_1944.id, A0_1944.deadGroupMemberData.currentBodyPosition)
  return true
end
function ArkHumanTest_x.SetDeadGroupMemberDeathPositionAsRefPoint(A0_1945)
  if A0_1945.deadGroupMemberData == nil then
    A0_1945:Error("SetDeadGroupMemberDeathPositionAsRefPoint expected the 'dead group member data' to exist but it didn't.")
    return false
  end
  AI.SetRefPointPosition(A0_1945.id, A0_1945.deadGroupMemberData.deathPosition)
  return true
end
function ArkHumanTest_x.GrabDeadGroupMemberDataFromGroupScriptTable(A0_1946)
  local L1_1947
  L1_1947 = AI
  L1_1947 = L1_1947.GetGroupOf
  L1_1947 = L1_1947(A0_1946.id)
  assert(AI.GetGroupScriptTable(L1_1947) ~= nil)
  if AI.GetGroupScriptTable(L1_1947) == nil then
    A0_1946:Error("group == nil in GrabDeadGroupMemberDataFromGroupScriptTable")
    return
  end
  if AI.GetGroupScriptTable(L1_1947).deadGroupMemberData == nil then
    A0_1946:Error("group.deadGroupMemberData == nil in GrabDeadGroupMemberDataFromGroupScriptTable")
    return
  end
  A0_1946.deadGroupMemberData = {}
  mergef(A0_1946.deadGroupMemberData, AI.GetGroupScriptTable(L1_1947).deadGroupMemberData, 1)
end
function ArkHumanTest_x.GetDistanceToDeadBody(A0_1948)
  local L1_1949
  L1_1949 = DistanceVectors
  return L1_1949(A0_1948.deadGroupMemberData.currentBodyPosition, A0_1948:GetWorldPos())
end
function ArkHumanTest_x.IsTargetInNearbyRange(A0_1950)
  if AI.GetAttentionTargetDistance(A0_1950.id) <= A0_1950.gameParams.nearbyRange then
    return true
  end
  return false
end
function ArkHumanTest_x.IsTargetInMiddleRange(A0_1951)
  if AI.GetAttentionTargetDistance(A0_1951.id) <= A0_1951.gameParams.middleRange then
    return true
  end
  return false
end
