Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
Human_x = {
  ActionController = "Animations/Mannequin/ADB/humanControllerDefs.xml",
  AnimDatabase3P = "Animations/Mannequin/ADB/human.adb",
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
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "stand",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ALERTED,
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
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "alerted",
        useCapsule = 1
      },
      {
        stanceId = STANCE_CROUCH,
        normalSpeed = 0.5,
        maxSpeed = 50,
        heightCollider = 0.8,
        heightPivot = 0,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0.9
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.85
        },
        leanLeftViewOffset = {
          x = -0.55,
          y = 0,
          z = 1.1
        },
        leanRightViewOffset = {
          x = 0.65,
          y = 0,
          z = 0.9
        },
        leanLeftWeaponOffset = {
          x = -0.5,
          y = 0,
          z = 0.85
        },
        leanRightWeaponOffset = {
          x = 0.5,
          y = 0,
          z = 0.75
        },
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "crouch",
        useCapsule = 1
      },
      {
        stanceId = STANCE_LOW_COVER,
        normalSpeed = 0.5,
        maxSpeed = 50,
        heightCollider = 0.8,
        heightPivot = 0,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0.9
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.85
        },
        leanLeftViewOffset = {
          x = -0.75,
          y = 0,
          z = 0.9
        },
        leanRightViewOffset = {
          x = 0.75,
          y = 0,
          z = 0.95
        },
        leanLeftWeaponOffset = {
          x = -0.75,
          y = 0,
          z = 0.6
        },
        leanRightWeaponOffset = {
          x = 0.8,
          y = 0,
          z = 0.8
        },
        whileLeanedLeftViewOffset = {
          x = 0.2,
          y = 0.4,
          z = 0.85
        },
        whileLeanedRightViewOffset = {
          x = 0.2,
          y = 0.3,
          z = 1
        },
        whileLeanedLeftWeaponOffset = {
          x = 0.25,
          y = 0.4,
          z = 0.8
        },
        whileLeanedRightWeaponOffset = {
          x = 0.25,
          y = 0.1,
          z = 0.8
        },
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "coverLow",
        useCapsule = 1
      },
      {
        stanceId = STANCE_HIGH_COVER,
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
          x = -0.7,
          y = 0.1,
          z = 1.525
        },
        leanRightViewOffset = {
          x = 0.95,
          y = 0.1,
          z = 1.525
        },
        leanLeftWeaponOffset = {
          x = -0.6,
          y = 0.1,
          z = 1.3
        },
        leanRightWeaponOffset = {
          x = 1,
          y = 0.1,
          z = 1.3
        },
        whileLeanedLeftViewOffset = {
          x = 0.1,
          y = 0.1,
          z = 1.5
        },
        whileLeanedRightViewOffset = {
          x = 0.25,
          y = 0.2,
          z = 1.55
        },
        whileLeanedLeftWeaponOffset = {
          x = 0.15,
          y = 0.1,
          z = 1.35
        },
        whileLeanedRightWeaponOffset = {
          x = 0.3,
          y = 0.2,
          z = 1.45
        },
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "coverHigh",
        useCapsule = 1
      },
      {
        stanceId = STANCE_SWIM,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 0.9,
        heightPivot = 0.5,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0.5
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.3
        },
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
        },
        name = "swim",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ZEROG,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 0.9,
        heightPivot = 0.5,
        size = {
          x = 0.5,
          y = 0.5,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 0.5
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.3
        },
        name = "zerog",
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
        peekOverViewOffset = {
          x = 0.1,
          y = 0,
          z = 1.5
        },
        peekOverWeaponOffset = {
          x = 0.1,
          y = 0,
          z = 1.4
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
      cloakMaxDistCrouchedAndMoving = 1.5,
      cloakMaxDistCrouchedAndStill = 1.3,
      cloakMaxDistMoving = 3,
      cloakMaxDistStill = 2,
      config = "Human"
    },
    useSpecialMovementTransitions = 1,
    bOverrideAllowLookAimStrafing = 1,
    fileModel = "objects/characters/human/sdk_player/sdk_player_red.cdf",
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
    },
    LipSync = {
      esLipSyncType = "LipSync_TransitionQueue",
      bEnabled = true,
      TransitionQueueSettings = {
        nCharacterSlot = 0,
        nAnimLayer = 12,
        sDefaultAnimName = "facial_chewing_01"
      }
    }
  },
  AIMovementAbility = {
    allowEntityClampingByAnimation = 1,
    usePredictiveFollowing = 1,
    pathLookAhead = 1,
    walkSpeed = 2,
    runSpeed = 4,
    sprintSpeed = 6.4,
    maneuverSpeed = 1.5,
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
    directionalScaleRefSpeedMax = 8,
    directionalScaleTurn = 0.2,
    directionalScaleStrafe = 0.6,
    directionalScaleSlope = 0.083333,
    AIMovementSpeeds = {
      Relaxed = {
        Slow = {
          0.6,
          0.6,
          0.6
        },
        Walk = {
          1.1,
          1.1,
          1.1
        },
        Run = {
          3.5,
          3.5,
          3.5
        },
        Sprint = {
          5,
          5,
          5
        }
      },
      Alerted = {
        Slow = {
          0.8,
          0.8,
          0.8
        },
        Walk = {
          1.4,
          1.4,
          1.4
        },
        Run = {
          3.5,
          3.5,
          3.5
        },
        Sprint = {
          5,
          5,
          5
        }
      },
      Combat = {
        Slow = {
          0.8,
          0.8,
          0.8
        },
        Walk = {
          1.7,
          1.7,
          1.7
        },
        Run = {
          4.5,
          4.5,
          4.5
        },
        Sprint = {
          6,
          6,
          6
        }
      },
      Crouch = {
        Slow = {
          0.8,
          0.8,
          0.8
        },
        Walk = {
          1.3,
          1.3,
          1.3
        },
        Run = {
          2,
          2,
          2
        },
        Sprint = {
          2,
          2,
          2
        }
      },
      LowCover = {
        Slow = {
          0.9,
          0.9,
          0.9
        },
        Walk = {
          0.9,
          0.9,
          0.9
        },
        Run = {
          1.8,
          1.8,
          1.8
        },
        Sprint = {
          1.8,
          1.8,
          1.8
        }
      },
      HighCover = {
        Slow = {
          1.3,
          1.3,
          1.3
        },
        Walk = {
          1.3,
          1.3,
          1.3
        },
        Run = {
          1.8,
          1.8,
          1.8
        },
        Sprint = {
          1.8,
          1.8,
          1.8
        }
      },
      Swim = {
        Slow = {
          1,
          1,
          1
        },
        Walk = {
          1,
          1,
          1
        },
        Run = {
          3.5,
          3.5,
          3.5
        },
        Sprint = {
          5,
          5,
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
  OnCustomKill = function(A0_1952)
    if AIBase.OnCustomKill then
      AIBase.OnCustomKill(A0_1952)
    end
    if not A0_1952.Properties.AI.bPlayDeathSound or A0_1952.Properties.AI.sndDeathSound ~= "" then
    end
  end,
  OnGrenadeDanger = function(A0_1953, A1_1954, A2_1955)
    A0_1953.lastImmediateThreatPos = A2_1955.point
  end,
  OnExposedToExplosion = function(A0_1956, A1_1957, A2_1958)
    A0_1956.lastImmediateThreatPos = A2_1958.point
  end,
  OnScorcherExplosionDanger = function(A0_1959, A1_1960, A2_1961)
    A0_1959.lastImmediateThreatPos = A2_1961.point
  end,
  OnWaterRippleSeen = function(A0_1962, A1_1963, A2_1964)
    local L3_1965
    L3_1965 = A0_1962.AI
    L3_1965.lastWaterRipplePosition = A2_1964.point
    L3_1965 = g_Vectors
    L3_1965 = L3_1965.temp_v1
    A0_1962:GetWorldPos(L3_1965)
    if DistanceVectors(L3_1965, A0_1962.AI.lastWaterRipplePosition) < 15 then
      AI.Signal(SIGNALFILTER_SENDER, 1, "OnNearbyWaterRippleSeen", A0_1962.id)
    end
  end,
  OnEMPGrenadeThrown = function(A0_1966, A1_1967, A2_1968)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "EMPGrenadeThrownInGroup", A0_1966.id)
    if A0_1966:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1966.id, "ThrowEMP", "Group", 2)
    end
  end,
  OnSmokeGrenadeThrown = function(A0_1969, A1_1970, A2_1971)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "SmokeGrenadeThrownInGroup", A0_1969.id)
    if A0_1969:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1969.id, "ThrowSmoke", "Group", 2)
    end
  end,
  OnFragGrenadeThrown = function(A0_1972, A1_1973, A2_1974)
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "FragGrenadeThrownInGroup", A0_1972.id)
    if A0_1972:HasGroupMembersNearby() then
      AI.PlayCommunication(A0_1972.id, "ThrowFrag", "Group", 2)
    end
  end,
  OccupyAdvantagePoint = function(A0_1975)
    local L1_1976
    L1_1976 = A0_1975.ReleaseAdvantagePoint
    L1_1976(A0_1975)
    L1_1976 = AI
    L1_1976 = L1_1976.GetRefPointPosition
    L1_1976 = L1_1976(A0_1975.id)
    if not L1_1976 then
      return
    end
    A0_1975.occupiedAdvantagePointPosition = L1_1976
    GameAI.OccupyAdvantagePoint(A0_1975.id, L1_1976)
  end,
  ReleaseAdvantagePoint = function(A0_1977)
    if not A0_1977.occupiedAdvantagePointPosition then
      return
    end
    GameAI.ReleaseAdvantagePointFor(A0_1977.id, A0_1977.occupiedAdvantagePointPosition)
    A0_1977.occupiedAdvantagePointPosition = nil
  end,
  GroupMemberDied = function(A0_1978)
    local L1_1979
    L1_1979 = A0_1978.deadGroupMemberCount
    if L1_1979 == nil then
      A0_1978.deadGroupMemberCount = 1
    else
      L1_1979 = A0_1978.deadGroupMemberCount
      L1_1979 = L1_1979 + 1
      A0_1978.deadGroupMemberCount = L1_1979
    end
  end,
  GetDeadGroupMemberCount = function(A0_1980)
    return A0_1980.deadGroupMemberCount or 0
  end,
  IsAlone = function(A0_1981)
    return AI.GetDistanceToClosestGroupMember(A0_1981.id) > 50
  end,
  HasGroupMembersNearby = function(A0_1982)
    return not A0_1982:IsAlone()
  end,
  WatchedMateDie = function(A0_1983)
    local L1_1984, L2_1985
    L1_1984 = System
    L1_1984 = L1_1984.GetEntity
    L2_1985 = A0_1983.deadGroupMemberData
    L2_1985 = L2_1985.victimID
    L1_1984 = L1_1984(L2_1985)
    L2_1985 = ""
    if L1_1984 and L1_1984.deathProjectileClassId then
      L2_1985 = CryAction.GetClassName(L1_1984.deathProjectileClassId)
    end
    if L2_1985 == "LTagGrenade" then
      AI.PlayCommunication(A0_1983.id, "NoticePlayerUsingLtag", "EnemyWeaponComment", 3)
    elseif L2_1985 == "SniperBullet" or L2_1985 == "GaussBullet" then
      AI.PlayCommunication(A0_1983.id, "NoticePlayerUsingDSG1", "EnemyWeaponComment", 3)
    elseif L2_1985 == "rocket" then
      AI.PlayCommunication(A0_1983.id, "NoticePlayerUsingJaw", "EnemyWeaponComment", 3)
    elseif AI.GetAlertness(A0_1983.id) >= 2 then
      AI.PlayCommunication(A0_1983.id, "AwareOfTargetAndWitnessedMateDie", "DeadGroupMemberComment", 3)
    end
  end,
  OnGroupMemberDiedOnHMG = function(A0_1986)
    AI.PlayCommunication(A0_1986.id, "NoticeMateDiedOnMountedGun", "Group", 2)
  end
}
HumanPostures = {
  {
    name = "LowCoverPeek",
    templateOnly = true,
    type = POSTURE_PEEK,
    stance = STANCE_LOW_COVER,
    priority = 9,
    {
      name = "LowCoverPeekLeft",
      lean = -0.8,
      agInput = "coverLftPeek",
      priority = -0.25
    },
    {
      name = "LowCoverPeekRight",
      lean = 0.8,
      agInput = "coverRgtPeek",
      priority = -0.25
    },
    {
      name = "LowCoverPeekCenter",
      peekOver = 0.8,
      agInput = "coverMidPeek",
      priority = -0.5
    }
  },
  {
    name = "HighCoverPeek",
    templateOnly = true,
    type = POSTURE_PEEK,
    stance = STANCE_HIGH_COVER,
    priority = 9,
    {
      name = "HighCoverPeekLeft",
      lean = -0.8,
      agInput = "coverLftPeek",
      priority = -0.15
    },
    {
      name = "HighCoverPeekRight",
      lean = 0.8,
      agInput = "coverRgtPeek",
      priority = -0.15
    }
  },
  {
    name = "LowCoverAim",
    templateOnly = true,
    type = POSTURE_AIM,
    stance = STANCE_LOW_COVER,
    priority = 8,
    {
      name = "LowCoverAimOverCenter",
      peekOver = 0.8,
      agInput = "coverMidShoot"
    },
    {
      name = "LowCoverAimLeft",
      lean = -0.8,
      agInput = "coverLftShoot"
    },
    {
      name = "LowCoverAimRight",
      lean = 0.8,
      agInput = "coverRgtShoot"
    }
  },
  {
    name = "HighCoverAim",
    type = POSTURE_AIM,
    stance = STANCE_HIGH_COVER,
    priority = 9,
    {
      name = "HighCoverAimLeft",
      lean = -0.8,
      agInput = "coverLftShoot"
    },
    {
      name = "HighCoverAimRight",
      lean = 0.8,
      agInput = "coverRgtShoot"
    }
  },
  {
    name = "StandAim",
    type = POSTURE_AIM,
    stance = STANCE_STAND,
    priority = 10,
    {
      name = "StandAimCenter",
      lean = 0,
      priority = 0
    }
  },
  {
    name = "CrouchAim",
    type = POSTURE_AIM,
    stance = STANCE_CROUCH,
    priority = 8,
    {
      name = "CrouchAimCenter",
      lean = 0,
      priority = 0
    }
  },
  {
    name = "BlindLowCoverAim",
    templateOnly = true,
    type = POSTURE_AIM,
    stance = STANCE_LOW_COVER,
    priority = 0,
    {
      name = "BlindLowCoverAimLeft",
      lean = -0.8,
      agInput = "coverLftBlind",
      priority = -0.25
    },
    {
      name = "BlindLowCoverAimRight",
      lean = 0.8,
      peekOver = 0.2,
      agInput = "coverRgtBlind",
      priority = -0.25
    },
    {
      name = "BlindLowCoverAimCenter",
      peekOver = 0.8,
      agInput = "coverMidBlind",
      priority = -0.5
    }
  },
  {
    name = "BlindHighCoverAim",
    templateOnly = true,
    type = POSTURE_AIM,
    stance = STANCE_HIGH_COVER,
    priority = 0,
    {
      name = "BlindHighCoverAimLeft",
      lean = -0.8,
      agInput = "coverLftBlind",
      priority = -0.15
    },
    {
      name = "BlindHighCoverAimRight",
      lean = 0.8,
      agInput = "coverRgtBlind",
      priority = -0.15
    }
  }
}
mergef(Human_x, AIBase, 1)
function Human_x.OnResetCustom(A0_1987)
  GameAI.UnregisterWithAllModules(A0_1987.id)
  AI.SetPostures(A0_1987.id, HumanPostures)
  A0_1987.AI.mountedWeaponCheck = true
  if A0_1987.Properties.AI.bUseRadioChatter == 1 then
    GameAI.RegisterWithModule("RadioChatter", A0_1987.id)
  end
  GameAI.RegisterWithModule("BattleFront", A0_1987.id)
  GameAI.RegisterWithModule("StalkerModule", A0_1987.id)
  GameAI.RegisterWithModule("RangeModule", A0_1987.id)
  GameAI.AddRange(A0_1987.id, 2.5, "OnTargetEnteredMeleeRange", "")
  GameAI.AddRange(A0_1987.id, 3, "", "OnTargetLeftMeleeRange")
  GameAI.AddRange(A0_1987.id, A0_1987.gameParams.nearbyRange, "OnTargetEnteredNearbyRange", "OnTargetLeftNearbyRange")
  GameAI.AddRange(A0_1987.id, A0_1987.gameParams.middleRange, "OnTargetEnteredMiddleRange", "OnTargetEnteredMiddleRange")
  GameAI.AddRange(A0_1987.id, 8, "EnteredTooCloseForComfortRange", "LeftTooCloseForComfortRange")
  if A0_1987.Properties.AIBehaviorFlags.bSniper == 1 then
    GameAI.AddRange(A0_1987.id, 10, "OnTargetEnteredCloseRange", "")
    GameAI.AddRange(A0_1987.id, 12, "", "OnTargetLeftCloseRange")
  end
  if A0_1987.Properties.AIBehaviorFlags.bGrenadier == 1 then
    GameAI.AddRange(A0_1987.id, 20, "OnTargetEnteredCloseRange", "")
    GameAI.AddRange(A0_1987.id, 22, "", "OnTargetLeftCloseRange")
  end
  A0_1987.lastImmediateThreatPos = {
    x = 0,
    y = 0,
    z = 0
  }
  A0_1987.deadGroupMemberCount = 0
  A0_1987.suspiciousSoundInvestigationCount = 0
  A0_1987.actor:AcquireOrReleaseLipSyncExtension()
end
function Human_x.EnableSearchModule(A0_1988)
  local L1_1989, L2_1990, L3_1991
  L1_1989 = AI
  L1_1989 = L1_1989.GetGroupOf
  L2_1990 = A0_1988.id
  L1_1989 = L1_1989(L2_1990)
  L2_1990 = g_Vectors
  L2_1990 = L2_1990.temp_v1
  L3_1991 = AI
  L3_1991 = L3_1991.GetAttentionTargetPosition
  L3_1991 = L3_1991(A0_1988.id, L2_1990)
  if L3_1991 then
    L3_1991 = NULL_ENTITY
    if AI.GetAttentionTargetEntity(A0_1988.id) then
      L3_1991 = AI.GetAttentionTargetEntity(A0_1988.id).id
    end
    GameAI.StartSearchModuleFor(L1_1989, L2_1990, L3_1991, 45)
    GameAI.RegisterWithModule("SearchModule", A0_1988.id)
    A0_1988:Log("Started search module for my group.")
  else
    L3_1991 = A0_1988.Error
    L3_1991(A0_1988, "No attention target to search for")
  end
end
function Human_x.SetNextSearchSpotToRefPoint(A0_1992)
  local L1_1993
  L1_1993 = GameAI
  L1_1993 = L1_1993.GetNextSearchSpot
  L1_1993 = L1_1993(A0_1992.id, 0.6, 0.3, 15, 0.1)
  if L1_1993 then
    AI.SetRefPointPosition(A0_1992.id, L1_1993)
  else
    AI.Signal(SIGNALFILTER_SENDER, 1, "NoSearchSpotsAvailable", A0_1992.id)
  end
end
function Human_x.DisableSearchModule(A0_1994)
  GameAI.UnregisterWithModule("SearchModule", A0_1994.id)
end
function Human_x.OnPostLoad(A0_1995)
  A0_1995:OnResetCustom()
  BasicActor.OnPostLoad(A0_1995)
end
function Human_x.SetHoldGroundMoveSpeed(A0_1996)
  local L1_1997
  L1_1997 = g_Vectors
  L1_1997 = L1_1997.temp_v1
  A0_1996:GetWorldPos(L1_1997)
  if DistanceVectors(L1_1997, A0_1996.AI.HoldGround.pos) > 10 or math.abs(L1_1997.z - A0_1996.AI.HoldGround.pos.z) > 1 then
    AI.SetSpeed(A0_1996.id, SPEED_RUN)
  else
    AI.SetSpeed(A0_1996.id, SPEED_WALK)
  end
end
function Human_x.DoPainSounds(A0_1998, A1_1999, A2_2000, A3_2001)
  if g_gameRules:IsStealthHealthHit(A2_2000) then
    return
  end
  if A1_1999 then
    if A0_1998.doHeadShotReadability then
      AI.PlayCommunication(A0_1998.id, "comm_headshot_death", "Injury", 0.5)
      A0_1998.doHeadShotReadability = false
    elseif A2_2000 == "stickyArrow" then
      AI.PlayCommunication(A0_1998.id, "comm_headshot_death", "Injury", 0.5)
    elseif A2_2000 == "meleeLeft" or A2_2000 == "meleeRight" then
      if AI.GetAlertness(A0_1998.id) > 0 == false then
        AI.PlayCommunication(A0_1998.id, "comm_headshot_death", "Injury", 0.5)
      else
        AI.PlayCommunication(A0_1998.id, "comm_death_melee", "Injury", 0.5)
      end
    elseif A2_2000 == "silentMelee" then
      AI.PlayCommunication(A0_1998.id, "comm_headshot_death", "Injury", 0.5)
    elseif A3_2001 == true then
      AI.PlayCommunication(A0_1998.id, "comm_headshot_death", "Injury", 0.5)
    else
      AI.PlayCommunication(A0_1998.id, "comm_death", "Injury", 0.5)
    end
  elseif A2_2000 == "silentMelee" then
    return
  else
    AI.PlayCommunication(A0_1998.id, "comm_pain", "InjuryPain", 0.5)
  end
end
function Human_x.EnableBlindFire(A0_2002, A1_2003)
  if A1_2003 then
    AI.SetPosturePriority(A0_2002.id, "BlindLowCoverAim", 10)
    AI.SetPosturePriority(A0_2002.id, "BlindHighCoverAim", 10)
  else
    AI.SetPosturePriority(A0_2002.id, "BlindLowCoverAim", 0)
    AI.SetPosturePriority(A0_2002.id, "BlindHighCoverAim", 0)
  end
end
function Human_x.CheckForMountedWeapons(A0_2004)
  if A0_2004:FindValidMountedWeapon() then
    A0_2004.AI.targetMountedWeapon = A0_2004:FindValidMountedWeapon()
    AI.SetBehaviorVariable(A0_2004.id, "GoToMountedWeapon", true)
    return true
  else
    return false
  end
end
function Human_x.FindValidMountedWeapon(A0_2005)
  local L1_2006
  L1_2006 = AI
  L1_2006 = L1_2006.FindObjectOfType
  L1_2006 = L1_2006(A0_2005:GetPos(), 10, AIOBJECT_MOUNTEDWEAPON)
  if L1_2006 and System.GetEntityByName(L1_2006) and not System.GetEntityByName(L1_2006).inUse and Game.IsMountedWeaponUsableWithTarget(A0_2005.id, System.GetEntityByName(L1_2006).id) then
    return (System.GetEntityByName(L1_2006))
  end
end
function Human_x.OnUseMountedWeaponRequest(A0_2007, A1_2008)
  A0_2007:PrepareForMountedWeaponUse(A1_2008)
end
function Human_x.PrepareForMountedWeaponUse(A0_2009, A1_2010, A2_2011)
  local L3_2012, L4_2013, L5_2014, L6_2015, L7_2016
  if A1_2010 then
    L4_2013 = System
    L4_2013 = L4_2013.GetEntity
    L5_2014 = A1_2010
    L4_2013 = L4_2013(L5_2014)
    L3_2012 = L4_2013
  else
  end
  if not L3_2012 then
    L4_2013 = false
    return L4_2013
  end
  L4_2013 = L3_2012.item
  L5_2014 = L4_2013
  L4_2013 = L4_2013.IsUsed
  L4_2013 = L4_2013(L5_2014)
  if L4_2013 then
    L4_2013 = L3_2012.item
    L5_2014 = L4_2013
    L4_2013 = L4_2013.GetOwnerId
    L4_2013 = L4_2013(L5_2014)
    L5_2014 = A0_2009.id
    if L4_2013 ~= L5_2014 then
      L4_2013 = false
      return L4_2013
    end
  end
  L4_2013 = g_Vectors
  L4_2013 = L4_2013.temp_v1
  L5_2014 = L3_2012.item
  L6_2015 = L5_2014
  L5_2014 = L5_2014.GetMountedDir
  L7_2016 = g_Vectors
  L7_2016 = L7_2016.temp_v2
  L5_2014 = L5_2014(L6_2015, L7_2016)
  L7_2016 = L3_2012
  L6_2015 = L3_2012.GetWorldPos
  L6_2015 = L6_2015(L7_2016, g_Vectors.temp_v3)
  L7_2016 = FastDifferenceVectors
  L7_2016(L4_2013, L6_2015, L5_2014)
  L7_2016 = g_Vectors
  L7_2016 = L7_2016.temp_v4
  L7_2016.x = 0
  L7_2016.y = 0
  L7_2016.z = -2
  if 0 < Physics.RayWorldIntersection(L4_2013, L7_2016, 2, ent_terrain + ent_static + ent_rigid + ent_sleeping_rigid, A0_2009.id, nil, g_HitTable) then
    L4_2013.z = g_HitTable[1].pos.z
  end
  AI.SetRefPointPosition(A0_2009.id, L4_2013)
  AI.SetRefPointDirection(A0_2009.id, L5_2014)
  A0_2009.AI.currentMountedWeaponId = A1_2010
  A0_2009.AI.currentMountedWeaponInitialDir = L5_2014
  A0_2009.AI.currentMountedWeaponPivot = L6_2015
  L3_2012.inUse = true
  if not A0_2009.AI.theVehicle and not A0_2009.AI.usingMountedWeapon then
    AI.SetBehaviorVariable(A0_2009.id, "MovingToMountedWeapon", true)
  else
    return false
  end
  return true
end
function Human_x.ForceReleaseOfMountedGun(A0_2017)
  A0_2017:LeaveMountedWeapon()
end
function Human_x.SetMachineGunInitialDirInRefPoint(A0_2018)
  if A0_2018.AI.currentMountedWeaponInitialDir ~= nil and A0_2018.AI.currentMountedWeaponPivot ~= nil then
    AI.SetRefPointPosition(A0_2018.id, A0_2018.AI.currentMountedWeaponPivot)
    AI.SetRefPointDirection(A0_2018.id, A0_2018.AI.currentMountedWeaponInitialDir)
  end
end
function Human_x.UseMountedWeapon(A0_2019)
  local L1_2020, L2_2021, L3_2022, L4_2023, L5_2024, L6_2025, L7_2026
  L1_2020 = A0_2019.AI
  L1_2020 = L1_2020.targetMountedWeapon
  if L1_2020 then
    L1_2020 = A0_2019.AI
    L1_2020 = L1_2020.targetMountedWeapon
    L1_2020.inUse = true
  end
  L1_2020 = A0_2019.AI
  L1_2020 = L1_2020.currentMountedWeaponId
  if not L1_2020 then
    return
  end
  L2_2021 = A0_2019.AI
  L3_2022 = AI
  L3_2022 = L3_2022.GetParameter
  L4_2023 = A0_2019.id
  L5_2024 = AIPARAM_FIRE_TURNSPEED
  L3_2022 = L3_2022(L4_2023, L5_2024)
  L2_2021.oldFireTurnSpeed = L3_2022
  L2_2021 = AI
  L2_2021 = L2_2021.ChangeParameter
  L3_2022 = A0_2019.id
  L4_2023 = AIPARAM_FIRE_TURNSPEED
  L5_2024 = 35
  L2_2021(L3_2022, L4_2023, L5_2024)
  L2_2021 = A0_2019.Properties
  L2_2021 = L2_2021.Perception
  L3_2022 = L2_2021.sightrange
  L4_2023 = AI
  L4_2023 = L4_2023.ChangeParameter
  L5_2024 = A0_2019.id
  L6_2025 = AIPARAM_ACCURACY
  L7_2026 = 1
  L4_2023(L5_2024, L6_2025, L7_2026)
  L4_2023 = AI
  L4_2023 = L4_2023.ChangeParameter
  L5_2024 = A0_2019.id
  L6_2025 = AIPARAM_SIGHTRANGE
  L7_2026 = L3_2022
  L4_2023(L5_2024, L6_2025, L7_2026)
  L4_2023 = AI
  L4_2023 = L4_2023.ChangeParameter
  L5_2024 = A0_2019.id
  L6_2025 = AIPARAM_ATTACKRANGE
  L7_2026 = L3_2022
  L4_2023(L5_2024, L6_2025, L7_2026)
  L4_2023 = AI
  L4_2023 = L4_2023.ChangeParameter
  L5_2024 = A0_2019.id
  L6_2025 = AIPARAM_FOVPRIMARY
  L7_2026 = 320
  L4_2023(L5_2024, L6_2025, L7_2026)
  L4_2023 = AI
  L4_2023 = L4_2023.ChangeParameter
  L5_2024 = A0_2019.id
  L6_2025 = AIPARAM_FOVSECONDARY
  L7_2026 = 330
  L4_2023(L5_2024, L6_2025, L7_2026)
  L4_2023 = System
  L4_2023 = L4_2023.GetEntity
  L5_2024 = L1_2020
  L4_2023 = L4_2023(L5_2024)
  if L4_2023 then
    L6_2025 = A0_2019
    L5_2024 = A0_2019.GetDistance
    L7_2026 = L4_2023.id
    L5_2024 = L5_2024(L6_2025, L7_2026)
    if L5_2024 < 3 then
      L5_2024 = A0_2019.actor
      L6_2025 = L5_2024
      L5_2024 = L5_2024.HolsterItem
      L7_2026 = true
      L5_2024(L6_2025, L7_2026)
      L5_2024 = L4_2023.item
      L6_2025 = L5_2024
      L5_2024 = L5_2024.IsUsed
      L5_2024 = L5_2024(L6_2025)
      if not L5_2024 then
        L5_2024 = L4_2023.item
        L6_2025 = L5_2024
        L5_2024 = L5_2024.StartUse
        L7_2026 = A0_2019.id
        L5_2024(L6_2025, L7_2026)
        L5_2024 = g_Vectors
        L5_2024 = L5_2024.temp_v1
        L6_2025 = L4_2023.item
        L7_2026 = L6_2025
        L6_2025 = L6_2025.GetMountedDir
        L6_2025 = L6_2025(L7_2026, g_Vectors.temp_v2)
        L7_2026 = L4_2023.GetWorldPos
        L7_2026 = L7_2026(L4_2023, g_Vectors.temp_v3)
        FastSumVectors(L5_2024, L7_2026, L6_2025)
        FastSumVectors(L5_2024, L5_2024, L6_2025)
        AI.SetRefPointPosition(A0_2019.id, L5_2024)
        AI.SetRefPointDirection(A0_2019.id, L6_2025)
        A0_2019.AI.usingMountedWeapon = true
        if L4_2023.class == "HMG" then
          AI.PlayCommunication(A0_2019.id, "AIUsesMountedGun", "Group", 3)
        elseif L4_2023.class == "AGL" then
          AI.PlayCommunication(A0_2019.id, "AIUsesAGL", "Group", 3)
        end
      end
    else
      L6_2025 = A0_2019
      L5_2024 = A0_2019.DrawWeaponNow
      L5_2024(L6_2025)
    end
  end
end
function Human_x.LeaveMountedWeapon(A0_2027)
  local L1_2028
  L1_2028 = A0_2027.AI
  L1_2028 = L1_2028.targetMountedWeapon
  if L1_2028 then
    L1_2028 = A0_2027.AI
    L1_2028 = L1_2028.targetMountedWeapon
    L1_2028.inUse = false
  end
  L1_2028 = A0_2027.AI
  L1_2028 = L1_2028.currentMountedWeaponId
  if not L1_2028 then
    return
  end
  A0_2027.AI.currentMountedWeaponId = nil
  A0_2027.AI.currentMountedWeaponInitialDir = nil
  A0_2027.AI.currentMountedWeaponPivot = nil
  if System.GetEntity(L1_2028) then
    System.GetEntity(L1_2028).inUse = false
  else
    A0_2027:OnError("(LeaveMountedWeapon) No weapon entity?")
    return
  end
  A0_2027.AI.usingMountedWeapon = nil
  AI.ChangeParameter(A0_2027.id, AIPARAM_FIRE_TURNSPEED, A0_2027.AI.oldFireTurnSpeed)
  AI.ChangeParameter(A0_2027.id, AIPARAM_ACCURACY, 1)
  AI.ChangeParameter(A0_2027.id, AIPARAM_SIGHTRANGE, A0_2027.Properties.Perception.sightrange)
  AI.ChangeParameter(A0_2027.id, AIPARAM_ATTACKRANGE, A0_2027.Properties.Perception.attackrange)
  AI.ChangeParameter(A0_2027.id, AIPARAM_FOVPRIMARY, A0_2027.Properties.Perception.FOVPrimary)
  AI.ChangeParameter(A0_2027.id, AIPARAM_FOVSECONDARY, A0_2027.Properties.Perception.FOVSecondary)
  if System.GetEntity(L1_2028) then
    System.GetEntity(L1_2028).item:StopUse(A0_2027.id)
    A0_2027.actor:HolsterItem(false)
  end
end
function Human_x.CanShootMountedWeapon(A0_2029)
  if AI.GetTargetType(A0_2029.id) ~= AITARGET_ENEMY and AI.GetTargetType(A0_2029.id) ~= AITARGET_MEMORY and AI.GetTargetType(A0_2029.id) ~= AITARGET_SOUND then
    return false
  end
  if not A0_2029.AI.currentMountedWeaponId then
    return false
  end
  if not System.GetEntity(A0_2029.AI.currentMountedWeaponId) or not Game.IsMountedWeaponUsableWithTarget(A0_2029.id, System.GetEntity(A0_2029.AI.currentMountedWeaponId).id, 0) then
    return false
  end
  return true
end
function Human_x.CheckMountedWeaponTarget(A0_2030)
  if A0_2030.AI.mountedWeaponCheck == false then
    return
  end
  if A0_2030.actor:GetLinkedVehicleId() then
    return
  end
  if AI.GetTargetType(A0_2030.id) == AITARGET_MEMORY or AI.GetTargetType(A0_2030.id) == AITARGET_SOUND then
    if 10 > AI.GetAttentionTargetDistance(A0_2030.id) then
      A0_2030:Log("CheckMountedWeaponTarget - dist < cutoff... leaving")
      AI.Signal(SIGNALFILTER_SENDER, 1, "LeaveMountedWeapon", A0_2030.id)
    end
  elseif AI.GetTargetType(A0_2030.id) == AITARGET_ENEMY and not A0_2030:CanShootMountedWeapon() then
    A0_2030:Log("CheckMountedWeaponTarget - CanShootMountedWeapon is false... leaving")
    AI.Signal(SIGNALFILTER_SENDER, 1, "LeaveMountedWeapon", A0_2030.id)
  end
end
function Human_x.IsTargetAnEnemy(A0_2031)
  return AI.GetTargetType(A0_2031.id) == AITARGET_ENEMY
end
function Human_x.MountedWeaponTargetChange(A0_2032)
  if AI.GetTargetType(A0_2032.id) == AITARGET_ENEMY then
    A0_2032:SelectPipe(0, "FireMountedWeapon")
  else
    A0_2032:SelectPipe(0, "LookAroundInMountedWeapon")
    if A0_2032.AI.theVehicle then
      A0_2032:InsertSubpipe(AIGOALPIPE_NOTDUPLICATE, "FireSecondaryMountedWeapon")
    end
  end
end
function Human_x.IsUsable(A0_2033, A1_2034)
  if A0_2033:IsDead() then
    return 0
  else
    return 1
  end
end
function Human_x.GetUsable(A0_2035)
  if not A0_2035:IsDead() then
    ({}).ActionType = "ScriptDefined"
    ;({}).Use, ({}).DisplayText = {}, "@use_object"
  end
  return {}
end
function Human_x.AnimationEvent(A0_2036, A1_2037, A2_2038)
  if A1_2037 == "StealthMeleeDeath" then
    AI.PlayCommunication(A0_2036.id, "comm_death_melee_stealth", "Injury", 0.5)
  elseif BasicAI.AnimationEvent then
    BasicAI.AnimationEvent(A0_2036, A1_2037, A2_2038)
  end
end
function Human_x.IsFurthestAwayFromTargetInSquad(A0_2039)
  local L1_2040, L2_2041, L3_2042, L4_2043
  L1_2040 = GameAI
  L1_2040 = L1_2040.GetSquadId
  L2_2041 = A0_2039.id
  L1_2040 = L1_2040(L2_2041)
  if L1_2040 == nil then
    L3_2042 = A0_2039
    L2_2041 = A0_2039.Error
    L4_2043 = "IsFurthestAwayFromTargetInSquad: Squad ID is nil"
    L2_2041(L3_2042, L4_2043)
    L2_2041 = true
    return L2_2041
  end
  L2_2041 = GameAI
  L2_2041 = L2_2041.GetSquadMembers
  L3_2042 = L1_2040
  L2_2041 = L2_2041(L3_2042)
  if L2_2041 == nil then
    L4_2043 = A0_2039
    L3_2042 = A0_2039.Error
    L3_2042(L4_2043, "IsFurthestAwayFromTargetInSquad: Squad doesn't have any members (members is nil)")
    L3_2042 = true
    return L3_2042
  end
  L3_2042 = A0_2039.id
  L4_2043 = 0
  for _FORV_8_, _FORV_9_ in pairs(L2_2041) do
    if L4_2043 < (AI.GetAttentionTargetDistance(_FORV_9_.id) or 500) then
      L4_2043, L3_2042 = AI.GetAttentionTargetDistance(_FORV_9_.id) or 500, _FORV_9_.id
    end
  end
  if L3_2042 == A0_2039.id then
    return true
  else
    return false
  end
end
function Human_x.IsFurtherAwayFromTargetThanAveragePositionOfSquadScopeUsers(A0_2044, A1_2045)
  local L2_2046, L3_2047, L4_2048
  L2_2046 = g_Vectors
  L2_2046 = L2_2046.temp_v1
  L3_2047 = AI
  L3_2047 = L3_2047.GetAttentionTargetPosition
  L4_2048 = A0_2044.id
  L3_2047 = L3_2047(L4_2048, L2_2046)
  if not L3_2047 then
    L3_2047 = true
    return L3_2047
  end
  L3_2047 = GameAI
  L3_2047 = L3_2047.GetSquadScopeUserCount
  L4_2048 = A0_2044.id
  L3_2047 = L3_2047(L4_2048, A1_2045)
  if L3_2047 < 2 then
    L3_2047 = true
    return L3_2047
  end
  L3_2047 = GameAI
  L3_2047 = L3_2047.GetAveragePositionOfSquadScopeUsers
  L4_2048 = A0_2044.id
  L3_2047 = L3_2047(L4_2048, A1_2045)
  L4_2048 = IsNullVector
  L4_2048 = L4_2048(L3_2047)
  if L4_2048 then
    L4_2048 = true
    return L4_2048
  end
  L4_2048 = A0_2044.GetWorldPos
  L4_2048 = L4_2048(A0_2044, g_Vectors.temp_v2)
  if DistanceSqVectors(L3_2047, L2_2046) < DistanceSqVectors(L4_2048, L2_2046) then
    return true
  else
    return false
  end
end
function Human_x.IsClosestToTargetInSquad(A0_2049)
  local L1_2050, L2_2051, L3_2052, L4_2053
  L1_2050 = GameAI
  L1_2050 = L1_2050.GetSquadId
  L2_2051 = A0_2049.id
  L1_2050 = L1_2050(L2_2051)
  if L1_2050 == nil then
    L3_2052 = A0_2049
    L2_2051 = A0_2049.Error
    L4_2053 = "IsCloserFromTargetInSquad: Squad ID is nil"
    L2_2051(L3_2052, L4_2053)
    L2_2051 = true
    return L2_2051
  end
  L2_2051 = GameAI
  L2_2051 = L2_2051.GetSquadMembers
  L3_2052 = L1_2050
  L2_2051 = L2_2051(L3_2052)
  if L2_2051 == nil then
    L4_2053 = A0_2049
    L3_2052 = A0_2049.Error
    L3_2052(L4_2053, "IsCloserFromTargetInSquad: Squad doesn't have any members (members is nil)")
    L3_2052 = true
    return L3_2052
  end
  L3_2052 = A0_2049.id
  L4_2053 = 1000
  for _FORV_8_, _FORV_9_ in pairs(L2_2051) do
    if _FORV_9_ ~= nil and _FORV_9_:IsActive() and not _FORV_9_:IsDead() then
      if L4_2053 >= (AI.GetAttentionTargetDistance(_FORV_9_.id) or 500) then
        L4_2053, L3_2052 = AI.GetAttentionTargetDistance(_FORV_9_.id) or 500, _FORV_9_.id
      end
    end
  end
  if L3_2052 == A0_2049.id then
    return true
  else
    return false
  end
end
function Human_x.IsClosestToTargetInGroup(A0_2054)
  local L1_2055, L2_2056, L3_2057, L4_2058, L5_2059, L6_2060, L7_2061
  L1_2055 = A0_2054.id
  L2_2056 = 1000
  L3_2057 = AI
  L3_2057 = L3_2057.GetGroupCount
  L3_2057 = L3_2057(L4_2058)
  for L7_2061 = 1, L3_2057 do
    if AI.GetGroupMember(A0_2054.id, L7_2061) ~= nil and AI.GetGroupMember(A0_2054.id, L7_2061):IsActive() and not AI.GetGroupMember(A0_2054.id, L7_2061):IsDead() then
      if L2_2056 >= (AI.GetAttentionTargetDistance(AI.GetGroupMember(A0_2054.id, L7_2061).id) or 500) then
        L2_2056, L1_2055 = AI.GetAttentionTargetDistance(AI.GetGroupMember(A0_2054.id, L7_2061).id) or 500, AI.GetGroupMember(A0_2054.id, L7_2061).id
      end
    end
  end
  if L1_2055 == L4_2058 then
    return L4_2058
  else
    return L4_2058
  end
end
function Human_x.IsInRangeFromTarget(A0_2062, A1_2063)
  if A1_2063 and A1_2063 >= (AI.GetAttentionTargetDistance(A0_2062.id) or 500) then
    return true
  end
  return false
end
function Human_x.GetTargetDistance(A0_2064)
  return AI.GetAttentionTargetDistance(A0_2064.id) or 500
end
function Human_x.SetLastExplosiveTypeAsGrenade(A0_2065)
  local L1_2066
  A0_2065.lastExplosiveType = "grenade"
  L1_2066 = true
  return L1_2066
end
function Human_x.SetLastExplosiveTypeAsExplosive(A0_2067)
  local L1_2068
  A0_2067.lastExplosiveType = "explosive"
  L1_2068 = true
  return L1_2068
end
function Human_x.ClearCombatMoveAssignmentIfCloseToTheDestination(A0_2069)
  if DistanceSqVectors(A0_2069:GetWorldPos(), A0_2069.AI.combatMove.position) < 25 then
    A0_2069:ClearAssignment()
  end
end
function Human_x.ShouldUseGrenade(A0_2070)
  local L1_2071, L2_2072
  L1_2071 = AI
  L1_2071 = L1_2071.GetAttentionTargetEntity
  L2_2072 = A0_2070.id
  L1_2071 = L1_2071(L2_2072)
  L2_2072 = A0_2070.ValidateAttentionTarget
  L2_2072 = L2_2072(A0_2070, L1_2071)
  if not L2_2072 then
    L2_2072 = false
    return L2_2072
  end
  L2_2072 = g_Vectors
  L2_2072 = L2_2072.temp_v3
  SubVectors(L2_2072, L1_2071:GetWorldPos(), A0_2070:GetWorldPos())
  NormalizeVector(L2_2072)
  if dotproduct2d(A0_2070:GetDirectionVector(), L2_2072) > math.cos(math.rad(A0_2070.gameParams.grenadeThrowMaxAngle)) then
    if A0_2070.gameParams.grenadeLaunchProbability and random(0, 1) <= A0_2070.gameParams.grenadeLaunchProbability then
      return true
    else
      return false
    end
  end
end
function Human_x.RefreshCurrentDeadGroupMemberBodyPosition(A0_2073)
  if A0_2073.deadGroupMemberData == nil then
    A0_2073:Error("RefreshCurrentDeadGroupMemberBodyPosition expected the 'dead group member data' to exist but it didn't.")
    return
  end
  if System.GetEntity(A0_2073.deadGroupMemberData.victimID) then
    CopyVector(A0_2073.deadGroupMemberData.currentBodyPosition, System.GetEntity(A0_2073.deadGroupMemberData.victimID):GetWorldPos())
  end
end
function Human_x.SetDeadGroupMemberBodyPositionAsRefPoint(A0_2074)
  if A0_2074.deadGroupMemberData == nil then
    A0_2074:Error("SetDeadGroupMemberPositionAsRefPoint expected the 'dead group member data' to exist but it didn't.")
    return false
  end
  AI.SetRefPointPosition(A0_2074.id, A0_2074.deadGroupMemberData.currentBodyPosition)
  return true
end
function Human_x.SetDeadGroupMemberDeathPositionAsRefPoint(A0_2075)
  if A0_2075.deadGroupMemberData == nil then
    A0_2075:Error("SetDeadGroupMemberDeathPositionAsRefPoint expected the 'dead group member data' to exist but it didn't.")
    return false
  end
  AI.SetRefPointPosition(A0_2075.id, A0_2075.deadGroupMemberData.deathPosition)
  return true
end
function Human_x.GrabDeadGroupMemberDataFromGroupScriptTable(A0_2076)
  local L1_2077
  L1_2077 = AI
  L1_2077 = L1_2077.GetGroupOf
  L1_2077 = L1_2077(A0_2076.id)
  assert(AI.GetGroupScriptTable(L1_2077) ~= nil)
  if AI.GetGroupScriptTable(L1_2077) == nil then
    A0_2076:Error("group == nil in GrabDeadGroupMemberDataFromGroupScriptTable")
    return
  end
  if AI.GetGroupScriptTable(L1_2077).deadGroupMemberData == nil then
    A0_2076:Error("group.deadGroupMemberData == nil in GrabDeadGroupMemberDataFromGroupScriptTable")
    return
  end
  A0_2076.deadGroupMemberData = {}
  mergef(A0_2076.deadGroupMemberData, AI.GetGroupScriptTable(L1_2077).deadGroupMemberData, 1)
end
function Human_x.GetDistanceToDeadBody(A0_2078)
  local L1_2079
  L1_2079 = DistanceVectors
  return L1_2079(A0_2078.deadGroupMemberData.currentBodyPosition, A0_2078:GetWorldPos())
end
function Human_x.IsTargetInNearbyRange(A0_2080)
  if AI.GetAttentionTargetDistance(A0_2080.id) <= A0_2080.gameParams.nearbyRange then
    return true
  end
  return false
end
function Human_x.IsTargetInMiddleRange(A0_2081)
  if AI.GetAttentionTargetDistance(A0_2081.id) <= A0_2081.gameParams.middleRange then
    return true
  end
  return false
end
