Script.ReloadScript("SCRIPTS/Entities/AI/Shared/AIBase.lua")
ArkTelepath_x = {
  ActionController = "Animations/Mannequin/ADB/Ai_Telepath_ControllerDefs.xml",
  AnimDatabase3P = "Animations/Mannequin/ADB/Ai_Telepath_Database.adb",
  UseMannequinAGState = true,
  UseLegacyCoverLocator = false,
  physicsParams = {
    Living = {
      gravity = 9.81,
      mass = 150,
      air_resistance = 0,
      k_air_control = 0,
      inertia = 2,
      inertiaAccel = 2,
      timeImpulseRecover = 1.5,
      height = 1,
      size = {
        x = 1.35,
        y = 1.35,
        z = 0
      },
      use_capsule = 1
    }
  },
  gameParams = {
    boneIDs = {
      BONE_BIP01 = "root_jnt",
      BONE_SPINE = "cog_jnt",
      BONE_SPINE2 = "",
      BONE_SPINE3 = "",
      BONE_HEAD = "cog_jnt",
      BONE_WEAPON = "",
      BONE_WEAPON2 = "",
      BONE_FOOT_R = "",
      BONE_FOOT_L = "",
      BONE_ARM_R = "",
      BONE_ARM_L = "",
      BONE_CALF_R = "",
      BONE_CALF_L = "",
      BONE_CAMERA = "cog_jnt"
    },
    meeleHitRagdollImpulseScale = 1,
    lookFOV = 180,
    lookInVehicleFOV = 110,
    aimFOV = 160,
    maxLookAimAngle = 90,
    aimIKFadeDuration = 0.5,
    aimIKLayer = 14,
    lookIKLayer = 15,
    proceduralLeaningFactor = 0,
    canUseComplexLookIK = true,
    lookAtSimpleHeadBone = "",
    cornerSmoother = 3,
    stepThresholdTime = 0.5,
    stepThresholdDistance = 0.1,
    turnThresholdTime = 0.2,
    turnThresholdAngle = 2,
    minimumAngleForTurnWithoutDelay = 2,
    maxDeltaAngleRateNormal = 90,
    maxDeltaAngleRateFast = 120,
    maxDeltaAngleRateFastest = 150,
    nearbyRange = 10,
    middleRange = 30,
    defaultStance = 12,
    stance = {
      {
        stanceId = STANCE_STAND,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "stand",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ALERTED,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "alerted",
        useCapsule = 1
      },
      {
        stanceId = STANCE_CRAWL,
        normalSpeed = 0.5,
        maxSpeed = 50,
        heightCollider = 0.8,
        heightPivot = 0,
        size = {
          x = 0.6,
          y = 0.6,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "crawl",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ZEROG,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "zerog",
        useCapsule = 1
      },
      {
        stanceId = STANCE_HOVER,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "hover",
        useCapsule = 1
      },
      {
        stanceId = STANCE_RELAXED,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 1.35,
          y = 1.35,
          z = 0
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "relaxed",
        useCapsule = 1
      }
    }
  },
  Properties = {
    fileAiTree = "Ark/AI/AiTrees/TelepathAiTree.xml",
    fileAccumulatorConfig = "",
    TagList = "",
    soclasses_SmartObjectClass = "Human, Actor",
    esNavigationType = "ArkTelepath",
    bCanFall = false,
    gameeffect_telepathShieldGameEffectId = "11002",
    Damage = {
      fileBodyDamage = "Libs/BodyDamage/BodyDamage_Default.xml",
      fileBodyDamageParts = "Libs/BodyDamage/BodyParts_Default.xml",
      fileBodyDestructibility = "Libs/BodyDamage/BodyDestructibility_Default.xml",
      CanFall = 0,
      FallSleepTime = 1,
      heatAbsobsion = 0.5,
      heatDissipation = 200,
      minHeatDamage = 100
    },
    ArkWeaponImpulse_NormalG = {
      impulseScale = 300,
      magnitudeMin = 1,
      magnitudeMax = 5,
      applyTimeMin = 0.1,
      applyTimeMax = 0.25,
      falloffTime = 1,
      falloffFactor = 1,
      rampTime = 0,
      rampFactor = 1
    },
    ArkWeaponImpulse_ZeroG = {
      impulseScale = 50,
      magnitudeMin = 1,
      magnitudeMax = 5,
      applyTimeMin = 0.4,
      applyTimeMax = 0.5,
      falloffTime = 1,
      falloffFactor = 0,
      rampTime = 0,
      rampFactor = 1
    },
    ArkWeaponImpulse_LowG = {
      impulseScale = 100,
      magnitudeMin = 1,
      magnitudeMax = 5,
      applyTimeMin = 0.3,
      applyTimeMax = 0.4,
      falloffTime = 0.8,
      falloffFactor = 0,
      rampTime = 0,
      rampFactor = 1
    },
    Perception = {
      minAlarmLevel = 0,
      cloakMaxDistCrouchedAndMoving = 1.5,
      cloakMaxDistCrouchedAndStill = 1.3,
      cloakMaxDistMoving = 3,
      cloakMaxDistStill = 2,
      config = "Human",
      FOVPrimary = 120,
      FOVSecondary = 120
    },
    bSupportsLookAt = false,
    AttentionFacing = {bUsesAttentionLook = 0, bUsesAttentionFacing = 0},
    CorruptNpc = {bReleaseCorruptionOnDeath = 1},
    OnDeath = {
      signalpackage_FearAOESignal = "",
      fFearScale = 1,
      fFearRadius = 10,
      particleeffect_FearAOEParticle = ""
    },
    OnStunned = {attachmenteffects_OnStunEffects = ""},
    OnPsychoShocked = {attachmenteffects_OnPsychoShockedEffects = ""},
    useSpecialMovementTransitions = 0,
    bOverrideAllowLookAimStrafing = 1,
    fileModel = "Objects/characters/Aliens/Telepath/Telepath.cdf",
    bUseFacialFrameRateLimiting = 1,
    AIBehaviorFlags = {bSniper = 0, bGrenadier = 0},
    AI = {
      bUseRadioChatter = 0,
      bPlayDeathSound = 0,
      sndDeathSound = ""
    },
    PlayerInteractions = {
      bStealthKill = 0,
      bCanBeGrabbed = 0,
      esGrabType = ""
    },
    CharacterSounds = {
      footstepEffect = "footstep_grunt",
      remoteFootstepEffect = "footstep_grunt",
      footstepIndGearAudioSignal_Walk = "",
      footstepIndGearAudioSignal_Run = "",
      bFootstepGearEffect = 0,
      foleyEffect = "foley_player",
      bodyFallEffect = ""
    },
    ArkRepelBlast = {
      attachmenteffects_CastEffect = "12635110349634795784",
      attachmenteffects_BlastEffect = ""
    },
    ArkPsycoshock = {attachmenteffects_CastEffect = "", attachmenteffects_BlastEffect = ""},
    ArkEmp = {attachmenteffects_CastEffect = ""},
    ArkCharacter = {character_Character = ""},
    ArkControlTurrets = {gameEffect_ControlTurrets = "8"},
    ArkUnreachableTargeting = {
      defaultCombatReachabilityCheckUp = 1,
      defaultCombatReachabilityCheckDown = 5,
      defaultCombatReachabilityCheckHorizontal = 1
    },
    ArkDialog = {
      fPlayerApproachDistanceNear = 20,
      fPlayerApproachDistanceMedium = 20,
      fPlayerApproachDistanceFar = 20,
      fPlayerApproachCDNear = 30,
      fPlayerApproachCDMedium = 30,
      fPlayerApproachCDFar = 30,
      fPlayerLoiterDistance = 10,
      fPlayerLoiterCD = 5
    },
    faction_ArkFaction = "0",
    ArkMoveInfo = {
      doorCrouch = true,
      moveHover = true,
      hoverRoll = 0.25,
      hoverPitchSpeedMult = 0.4,
      hoverPitchIdleMaxDegrees = 60,
      hoverPitchMoveMaxDegrees = 35,
      hoverBob = true,
      hoverBobTimeMin = 2.8,
      hoverBobTimeMax = 3.3,
      hoverBobSpeedMin = 0.09,
      hoverBobSpeedMax = 0.12,
      hoverBobAccelStartMult = 0.5,
      hoverBobDecelEndMult = 0.6,
      hoverBobAdjustFastHeightDelta = 0.5,
      hoverBobAdjustFastSpeed = 0.5,
      hoverPivotHeight = 2.5,
      hoverClearanceHeight = 0.9,
      hoverClearanceLedge = 1.6,
      hoverPsiLiftSpeedMult = 1,
      hoverZeroGIgnoreObstacles = true,
      pushLeverageMax = 2,
      matchTargetHeightDistance = 10
    },
    Stun = {
      bStunLastsForever = false,
      bRagdollStun = false,
      ragdollRootJointName = "",
      signalModifier_stunnedSignalModifierId = ""
    },
    OnPsiSuppressed = {attachmenteffects_OnPsiSuppressed = ""},
    ArkEntityFactionModifierTable = {faction_HostileToFaction = "0"},
    ArkTelepathShield = {
      attachmenteffects_telepathShieldBreak = "12635110349637387082",
      attachmenteffects_telepathShieldDissolve = "",
      attachmenteffects_telepathShieldEffect = "17591291352694405491"
    }
  },
  AIMovementAbility = {
    allowEntityClampingByAnimation = 0,
    usePredictiveFollowing = 1,
    pathLookAhead = 3,
    walkSpeed = 2,
    runSpeed = 3,
    sprintSpeed = 3,
    maneuverSpeed = 1.5,
    b3DMove = 1,
    minTurnRadius = 0,
    maxTurnRadius = 3,
    pathSpeedLookAheadPerSpeed = -1.5,
    optimalFlightHeight = 1.75,
    minFlightHeight = 0.5,
    maxFlightHeight = 100,
    cornerSlowDown = 0.75,
    pathType = "AIPATH_OVERSEER",
    pathRadius = 1.35,
    passRadius = 1.6,
    separationRadius = 1.3,
    distanceToCover = 0.5,
    inCoverRadius = 0.075,
    effectiveCoverHeight = 0.55,
    effectiveHighCoverHeight = 1.75,
    pathFindPrediction = 2,
    maxAccel = 1,
    maxDecel = 0.5,
    velDecay = 0.5,
    maneuverTrh = 2,
    resolveStickingInTrace = 1,
    pathRegenIntervalDuringTrace = -1,
    lightAffectsSpeed = 1,
    avoidanceAbilities = AVOIDANCE_ALL,
    pushableObstacleWeakAvoidance = true,
    pushableObstacleAvoidanceRadiusMin = 0.8,
    pushableObstacleAvoidanceRadiusMax = 0.8,
    pushableObstacleMassMin = 0,
    pushableObstacleMassMax = 80,
    pushableObstacleHeightMin = 0.7,
    pushableObstacleHeightMax = 1.5,
    lookIdleTurnSpeed = 10,
    lookCombatTurnSpeed = 10,
    aimTurnSpeed = -1,
    fireTurnSpeed = -1,
    directionalScaleRefSpeedMin = 2,
    directionalScaleRefSpeedMax = 5,
    directionalScaleTurn = 0.8,
    directionalScaleStrafe = 0.8,
    directionalScaleSlope = 0,
    harshStopSpeed = 2,
    harshStopMinAngle = 120,
    harshStopMaxAngle = 180,
    AIMovementSpeeds = {
      Hover = {
        Slow = {
          2,
          0,
          2
        },
        Walk = {
          2,
          0,
          2
        },
        Run = {
          5,
          0,
          5
        },
        Sprint = {
          12,
          0,
          12,
          15,
          15
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
    bStartDead = false,
    bAutoDisable = 1,
    ArkDialog = {jobName = ""}
  },
  SearchModule = {sightRange = 12},
  aiSequenceUser = true,
  bIsDeathGoo = false
}
mergef(ArkTelepath_x, AIBase, 1)
function ArkTelepath_x.IsInvulnerable(A0_1783)
  local L1_1784
  L1_1784 = A0_1783.PropertiesInstance
  L1_1784 = L1_1784.bIsInvulnerable
  L1_1784 = L1_1784 == true
  return L1_1784
end
function ArkTelepath_x.OnLureSignal(A0_1785, A1_1786, A2_1787, A3_1788)
  A0_1785.arknpc:OnLured(A1_1786)
end
function ArkTelepath_x.OnGlooed(A0_1789, A1_1790, A2_1791, A3_1792)
  BroadcastEvent(A0_1789, "OnGlooed")
end
function ArkTelepath_x.Server.OnStartGame(A0_1793)
  local L1_1794
end
function ArkTelepath_x.OnNpcKilled(A0_1795)
  A0_1795:SetupInventoryOnDeath()
end
