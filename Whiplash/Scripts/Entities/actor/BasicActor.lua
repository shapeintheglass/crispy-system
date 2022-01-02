local L0_1332, L1_1333
L0_1332 = {}
L1_1333 = {}
L1_1333.fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_Default.xml"
L1_1333.bEnableHitReaction = 1
L1_1333.soclasses_SmartObjectClass = "Actor"
L1_1333.physicMassMult = 1
L1_1333.Damage = {bLogDamages = 0}
L1_1333.Rendering = {bWrinkleMap = 0}
L1_1333.CharacterSounds = {
  footstepEffect = "footstep",
  remoteFootstepEffect = "footstep",
  bFootstepGearEffect = 1,
  footstepIndGearAudioSignal_Walk = "",
  footstepIndGearAudioSignal_Run = "",
  foleyEffect = "",
  bodyFallEffect = "bodyfall"
}
L0_1332.Properties = L1_1333
L1_1333 = {}
L0_1332.tempSetStats = L1_1333
L1_1333 = {}
L0_1332.Server = L1_1333
L1_1333 = {}
L0_1332.Client = L1_1333
L1_1333 = {
  {
    0,
    "rightArm",
    "Bip01 R UpperArm",
    "Bip01 R Forearm",
    "Bip01 R Hand",
    IKLIMB_RIGHTHAND
  },
  {
    0,
    "leftArm",
    "Bip01 L UpperArm",
    "Bip01 L Forearm",
    "Bip01 L Hand",
    IKLIMB_LEFTHAND
  },
  {
    5,
    "rightArmShadow",
    "Bip01 R UpperArm",
    "Bip01 R Forearm",
    "Bip01 R Hand",
    IKLIMB_RIGHTHAND
  },
  {
    5,
    "leftArmShadow",
    "Bip01 L UpperArm",
    "Bip01 L Forearm",
    "Bip01 L Hand",
    IKLIMB_LEFTHAND
  }
}
L0_1332.IKLimbs = L1_1333
BasicActor = L0_1332
L0_1332 = {}
L1_1333 = {}
L1_1333.flags = 0
L1_1333.mass = 110
L1_1333.mass_Player = 120
L1_1333.mass_Grunt = 180
L1_1333.stiffness_scale = 73
L1_1333.fallNPlayStiffness_scale = 100
L1_1333.Living = {
  gravity = 9.81,
  mass = 110,
  mass_Player = 120,
  mass_Grunt = 180,
  air_resistance = 0.2,
  k_air_control = 0.9,
  inertia = 10,
  inertiaAccel = 11,
  max_vel_ground = 16,
  min_slide_angle = 45,
  max_climb_angle = 50,
  min_fall_angle = 50,
  timeImpulseRecover = 1,
  colliderMat = "mat_player_collider"
}
L0_1332.physicsParams = L1_1333
L1_1333 = {}
L1_1333.autoAimTargetParams = {
  primaryTargetBone = BONE_SPINE,
  physicsTargetBone = BONE_SPINE,
  secondaryTargetBone = BONE_HEAD,
  fallbackOffset = 1.2,
  innerRadius = 0.4,
  outerRadius = 0.5,
  snapRadius = 2,
  snapRadiusTagged = 4
}
L1_1333.sprintMultiplier = 1.5
L1_1333.sneakMultiplier = 1
L1_1333.strafeMultiplier = 1
L1_1333.backwardMultiplier = 0.7
L1_1333.jumpHeight = 1.5
L1_1333.meeleHitRagdollImpulseScale = 1
L1_1333.leanShift = 0.35
L1_1333.leanAngle = 15
L1_1333.lookFOV = 80
L1_1333.lookInVehicleFOV = 80
L1_1333.aimFOV = 70
L0_1332.gameParams = L1_1333
BasicActorParams = L0_1332
function L0_1332(A0_1334)
  local L1_1335
  if A0_1334 then
    L1_1335 = A0_1334.gameParams
    if not L1_1335 then
      L1_1335 = {}
      A0_1334.gameParams = L1_1335
    end
    L1_1335 = A0_1334.gameParams
    L1_1335 = L1_1335.stance
    if not L1_1335 then
      L1_1335 = A0_1334.gameParams
      L1_1335.stance = {
        {
          stanceId = STANCE_STAND,
          normalSpeed = 1,
          maxSpeed = 50,
          heightCollider = 1.2,
          heightPivot = 0,
          size = {
            x = 0.4,
            y = 0.4,
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
          stanceId = STANCE_STEALTH,
          normalSpeed = 0.6,
          maxSpeed = 3,
          heightCollider = 1,
          heightPivot = 0,
          size = {
            x = 0.4,
            y = 0.4,
            z = 0.1
          },
          modelOffset = {
            x = 0,
            y = 0,
            z = 0
          },
          viewOffset = {
            x = 0,
            y = 0.3,
            z = 1.35
          },
          weaponOffset = {
            x = 0.2,
            y = 0,
            z = 1.1
          },
          name = "stealth",
          useCapsule = 1
        },
        {
          stanceId = STANCE_SNEAK,
          normalSpeed = 0.5,
          maxSpeed = 3,
          heightCollider = 0.8,
          heightPivot = 0,
          size = {
            x = 0.4,
            y = 0.4,
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
            z = 1.1
          },
          weaponOffset = {
            x = 0.2,
            y = 0,
            z = 0.85
          },
          leanLeftViewOffset = {
            x = -0.55,
            y = 0,
            z = 0.95
          },
          leanRightViewOffset = {
            x = 0.55,
            y = 0,
            z = 0.95
          },
          leanLeftWeaponOffset = {
            x = -0.5,
            y = 0,
            z = 0.65
          },
          leanRightWeaponOffset = {
            x = 0.5,
            y = 0,
            z = 0.65
          },
          name = "sneak",
          useCapsule = 1
        },
        {
          stanceId = STANCE_SWIM,
          normalSpeed = 1,
          maxSpeed = 2.5,
          heightCollider = 0.9,
          heightPivot = 0.5,
          size = {
            x = 0.4,
            y = 0.4,
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
          name = "swim",
          useCapsule = 1
        },
        {
          stanceId = STANCE_ZEROG,
          normalSpeed = 1,
          maxSpeed = 2.5,
          heightCollider = 0.9,
          heightPivot = 0.5,
          size = {
            x = 0.4,
            y = 0.4,
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
            x = 0.4,
            y = 0.4,
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
      }
    end
  end
end
CreateDefaultStances = L0_1332
function L0_1332(A0_1336)
  mergef(A0_1336, BasicActorParams, 1)
  mergef(A0_1336, BasicActor, 1)
  CreateDefaultStances(A0_1336)
  SetupCollisionFiltering(A0_1336)
end
CreateActor = L0_1332
function L0_1332(A0_1337)
  mergef(A0_1337, BasicActorParams, 1)
  mergef(A0_1337, BasicActor, 1)
end
CreateActorForAISubclass = L0_1332
function L0_1332(A0_1338)
  CreateDefaultStances(A0_1338)
  SetupCollisionFiltering(A0_1338)
end
InitActorForAISubclass = L0_1332
L0_1332 = BasicActor
function L1_1333(A0_1339, A1_1340, A2_1341)
  if A0_1339.actor and (A0_1339:IsDead() or System.IsEditor()) then
    A0_1339.actor:Revive()
  end
  if A0_1339.Properties.bEnableHitReaction and A0_1339.Properties.bEnableHitReaction == 0 then
    A0_1339.actor:DisableHitReaction()
  else
    A0_1339.actor:EnableHitReaction()
  end
  A0_1339:StopSounds()
  A0_1339:RemoveDecals()
  A0_1339:EnableDecals(0, true)
  A0_1339.lastDeathImpulse = 0
  A0_1339.painSoundTriggered = nil
  if A0_1339.lastSpawnPoint then
    A0_1339.lastSpawnPoint = 0
  end
  A0_1339.AI = {}
end
L0_1332.ResetCommon = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1342, A1_1343, A2_1344)
  BasicActor.ResetCommon(A0_1342, A1_1343, A2_1344)
  if A0_1342.actor then
    A0_1342.actor:SetMovementTarget(g_Vectors.v000, g_Vectors.v000, g_Vectors.v000, 1)
  end
  A0_1342.AI.theVehicle = nil
end
L0_1332.Reset = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1345)
  local L1_1346
end
L0_1332.ResetLoad = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1347)
  if A0_1347.IKLimbs then
    for _FORV_4_, _FORV_5_ in pairs(A0_1347.IKLimbs) do
      A0_1347.actor:CreateIKLimb(_FORV_5_[1], _FORV_5_[2], _FORV_5_[3], _FORV_5_[4], _FORV_5_[5], _FORV_5_[6] or 0)
    end
  end
end
L0_1332.InitIKLimbs = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1348)
  A0_1348:ResetAttachment(0, "weapon")
  A0_1348:ResetAttachment(0, "right_item_attachment")
  A0_1348:ResetAttachment(0, "left_item_attachment")
  A0_1348:ResetAttachment(0, "laser_attachment")
  A0_1348.actor:ShutDown()
end
L0_1332.ShutDown = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1349)
  local L1_1350, L2_1351
  L1_1350 = A0_1349.actor
  L2_1351 = L1_1350
  L1_1350 = L1_1350.GetHealth
  L1_1350 = L1_1350(L2_1351)
  L2_1351 = A0_1349.lastHealth
  L2_1351 = L2_1351 - L1_1350
  if A0_1349.Properties.Damage.bLogDamages ~= 0 then
    Log(A0_1349:GetName() .. " health:" .. L1_1350 .. " (last damage:" .. L2_1351 .. ")")
  end
  A0_1349.lastHealth = L1_1350
end
L0_1332.HealthChanged = L1_1333
L0_1332 = BasicActor
L0_1332 = L0_1332.Server
function L1_1333(A0_1352, A1_1353)
  local L2_1354, L3_1355, L4_1356, L5_1357, L6_1358
  L2_1354 = System
  L2_1354 = L2_1354.GetFrameID
  L2_1354 = L2_1354()
  L3_1355 = A0_1352.lastDeathImpulse
  L3_1355 = L2_1354 - L3_1355
  if L3_1355 > 10 then
    L3_1355 = g_Vectors
    L3_1355 = L3_1355.temp_v2
    L4_1356 = CopyVector
    L5_1357 = L3_1355
    L6_1358 = A1_1353.dir
    L4_1356(L5_1357, L6_1358)
    L4_1356 = L3_1355.z
    L4_1356 = L4_1356 + 1
    L3_1355.z = L4_1356
    L4_1356 = g_Vectors
    L4_1356 = L4_1356.temp_v3
    L5_1357 = math
    L5_1357 = L5_1357.random
    L5_1357 = L5_1357()
    L5_1357 = L5_1357 * 2
    L5_1357 = L5_1357 - 1
    L4_1356.x = L5_1357
    L5_1357 = math
    L5_1357 = L5_1357.random
    L5_1357 = L5_1357()
    L5_1357 = L5_1357 * 2
    L5_1357 = L5_1357 - 1
    L4_1356.y = L5_1357
    L5_1357 = math
    L5_1357 = L5_1357.random
    L5_1357 = L5_1357()
    L5_1357 = L5_1357 * 2
    L5_1357 = L5_1357 - 1
    L4_1356.z = L5_1357
    L5_1357 = math
    L5_1357 = L5_1357.random
    L5_1357 = L5_1357()
    L5_1357 = L5_1357 * 20
    L5_1357 = L5_1357 + 10
    L6_1358 = math
    L6_1358 = L6_1358.random
    L6_1358 = L6_1358()
    L6_1358 = L6_1358 * 20
    L6_1358 = L6_1358 + 10
    if A1_1353.type ~= "silentMelee" and not g_gameRules:IsStealthHealthHit(A1_1353.type) then
      A0_1352:AddImpulse(A1_1353.partId, A1_1353.pos, L3_1355, L5_1357, 1, L4_1356, L6_1358, 8)
      A0_1352.lastDeathImpulse = L2_1354
    end
  end
end
L0_1332.OnDeadHit = L1_1333
L0_1332 = BasicActor
L0_1332 = L0_1332.Server
function L1_1333(A0_1359, A1_1360)
  if A0_1359.ShouldIgnoreHit and A0_1359:ShouldIgnoreHit(A1_1360) then
    return false
  end
  if A1_1360.damage > 5 and A0_1359.actor:GetHealth() > 0 then
    A0_1359:DoPainSounds(false, A1_1360.type, false)
  end
  if A1_1360.damage == 0 then
    return (g_gameRules:ProcessActorDamage(A1_1360))
  end
  if A1_1360.type and A1_1360.type ~= "collision" and A1_1360.type ~= "fall" and A1_1360.type ~= "event" then
    if A1_1360.shooter then
      CopyVector(g_SignalData.point, A1_1360.shooter:GetWorldPos())
      g_SignalData.id = A1_1360.shooterId
    else
      g_SignalData.id = NULL_ENTITY
      CopyVector(g_SignalData.point, g_Vectors.v000)
    end
    g_SignalData.fValue = A1_1360.damage
    if AI then
      if A1_1360.shooter and AI.Hostile(A0_1359.id, A1_1360.shooterId) then
        AI.Signal(SIGNALFILTER_SENDER, 0, "OnEnemyDamage", A0_1359.id, g_SignalData)
        AI.UpTargetPriority(A0_1359.id, A1_1360.shooterId, 0.2)
      elseif A1_1360.shooter ~= nil and A1_1360.shooter ~= A0_1359 then
        if A1_1360.weapon and A1_1360.weapon.vehicle then
          AI.Signal(SIGNALFILTER_SENDER, 0, "OnDamage", A0_1359.id, g_SignalData)
        else
          AI.Signal(SIGNALFILTER_SENDER, 0, "OnFriendlyDamage", A0_1359.id, g_SignalData)
        end
      else
        AI.Signal(SIGNALFILTER_SENDER, 0, "OnDamage", A0_1359.id, g_SignalData)
      end
    end
  end
  if A0_1359.RushTactic then
    A0_1359:RushTactic(5)
  end
  A0_1359:HealthChanged()
  return (g_gameRules:ProcessActorDamage(A1_1360))
end
L0_1332.OnHit = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1361)
  A0_1361.actor:SetPhysicalizationProfile("ragdoll")
end
L0_1332.TurnRagdoll = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1362, A1_1363)
  local L2_1364, L3_1365
  if A1_1363 == nil then
    L2_1364 = Log
    L3_1365 = "Error: BasicActor:Kill - Parameter 'hit' is nil"
    L2_1364(L3_1365)
    return
  end
  L2_1364 = A1_1363.shooterId
  L3_1365 = A1_1363.weaponId
  if AI then
    AI.LogEvent("BasicActor:ClientKill( " .. tostring(L2_1364) .. ", " .. tostring(L3_1365))
  end
  if A0_1362.actor:GetHealth() > 0 then
    A0_1362.actor:SetHealth(0)
  end
  if A0_1362.OnCustomKill then
    A0_1362:OnCustomKill(A1_1363)
  end
  A0_1362:DoPainSounds(1, A1_1363.type, false)
  if L2_1364 and System.GetEntity(L2_1364) and 0 < A1_1363.projectileClassId then
    A0_1362.deathProjectileClassId = A1_1363.projectileClassId
    A0_1362.deathProjectileClass = A1_1363.projectileClass
  end
  if A0_1362 == g_localActor then
    if AI then
      AI.Signal(SIGNALFILTER_GROUPONLY_EXCEPT, 1, "OnPlayerDied", A0_1362.id)
    end
  elseif AI.GetReactionOf(A0_1362.id, g_localActorId) == Friendly then
    if L2_1364 and System.GetEntity(L2_1364) and (L2_1364 and System.GetEntity(L2_1364)) == g_localActor then
      g_SignalData.id = (L2_1364 and System.GetEntity(L2_1364)).id
      AI.Signal(SIGNALFILTER_LEADER, 10, "OnUnitBusy", A0_1362.id)
      AI.Signal(SIGNALFILTER_GROUPONLY_EXCEPT, 1, "OnPlayerTeamKill", A0_1362.id, g_SignalData)
    else
      AI.Signal(SIGNALFILTER_GROUPONLY_EXCEPT, 1, "OnSquadmateDied", A0_1362.id)
    end
  end
  if AI then
    AI.Signal(SIGNALFILTER_LEADER, 10, "OnUnitDied", A0_1362.id)
    AI.Signal(SIGNALFILTER_LEADERENTITY, 10, "OnUnitDied", A0_1362.id)
    g_SignalData.id = A0_1362.id
    CopyVector(g_SignalData.point, A0_1362:GetPos())
    if 1 < AI.GetGroupCount(A0_1362.id) then
      AI.ChangeParameter(A0_1362.id, AIPARAM_COMMRANGE, 100)
      AI.ChangeParameter(A0_1362.id, AIPARAM_COMMRANGE, 10)
      AI.Signal(SIGNALFILTER_NEARESTINCOMM, 10, "OnBodyFallSound", A0_1362.id, g_SignalData)
    else
      AI.Signal(SIGNALFILTER_ANYONEINCOMM, 10, "OnSomebodyDied", A0_1362.id)
    end
    if L2_1364 and System.GetEntity(L2_1364) then
      AI.LogEvent("Shooter position:" .. Vec2Str((L2_1364 and System.GetEntity(L2_1364)):GetWorldPos()))
      AI.SetRefPointPosition(A0_1362.id, (L2_1364 and System.GetEntity(L2_1364)):GetWorldPos())
      AI.SetBeaconPosition(A0_1362.id, (L2_1364 and System.GetEntity(L2_1364)):GetWorldPos())
    end
    if A0_1362.Behaviour and A0_1362.Behaviour.Destructor then
      AI.LogEvent("Calling Destructor for " .. A0_1362:GetName() .. " on Kill.")
      A0_1362.Behaviour:Destructor(A0_1362)
    end
  end
  A0_1362:TriggerEvent(AIEVENT_AGENTDIED, L2_1364 or NULL_ENTITY)
  if BasicAI then
    Script.SetTimerForFunction(1000, "BasicAI.OnDeath", A0_1362)
  end
  NotifyDeathToTerritoryAndWave(A0_1362)
  if A0_1362.OnDisabled then
    A0_1362:OnDisabled()
  end
  return true
end
L0_1332.Kill = L1_1333
L0_1332 = BasicActor
L0_1332 = L0_1332.Client
function L1_1333(A0_1366, A1_1367)
  local L2_1368
  L2_1368 = A1_1367.shooter
  if A1_1367.radius == 0 and g_gameRules.game:IsMultiplayer() then
    A0_1366:WallBloodSplat(A1_1367)
  end
  if 0 >= A0_1366.actor:GetHealth() then
    return
  end
  if L2_1368 and A0_1366 == g_localActor and AI.GetReactionOf(A0_1366.id, L2_1368.id) ~= Friendly then
    g_SignalData.id = shooterId
    g_SignalData.fValue = 0
    g_SignalData.iValue = LAS_DEFAULT
    L2_1368:GetWorldPos(g_SignalData.point)
    if AI then
      AI.Signal(SIGNALFILTER_SUPERGROUP, 1, "OnPlayerHit", A0_1366.id, g_SignalData)
    end
  end
end
L0_1332.OnHit = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1369, A1_1370)
  if A1_1370.shooter == nil then
    return false
  end
  if A1_1370.shooter ~= g_localActor then
    return false
  end
  if A1_1370.target.actor:GetHealth() <= 0 then
    return false
  end
  if g_gameRules:IsStealthHealthHit(A1_1370.type) then
    return false
  end
  return g_gameRules.game:ShouldGiveLocalPlayerHitFeedback2DSound(A1_1370.damage)
end
L0_1332.ShouldGiveLocalPlayerHitFeedback2DSounds = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1371)
  local L1_1372
  A0_1371.lastPainSound = nil
  A0_1371.lastPainTime = 0
end
L0_1332.StopSounds = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1373, A1_1374)
end
L0_1332.DoPainSounds = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1375, A1_1376)
  local L2_1377, L3_1378, L4_1379, L5_1380
  L2_1377 = false
  L3_1378 = A0_1375.PropertiesInstance
  L4_1379 = A0_1375.Properties
  L4_1379 = L4_1379.fileModel
  L5_1380 = A0_1375.Properties
  L5_1380 = L5_1380.clientFileModel
  if L5_1380 and A1_1376 then
    L5_1380 = A0_1375.Properties
    L4_1379 = L5_1380.clientFileModel
  end
  L5_1380 = A0_1375.currModel
  if L5_1380 ~= L4_1379 then
    L2_1377 = true
    A0_1375.currModel = L4_1379
    L5_1380 = A0_1375.LoadCharacter
    L5_1380(A0_1375, 0, L4_1379)
    L5_1380 = A0_1375.InitIKLimbs
    L5_1380(A0_1375)
    L5_1380 = A0_1375.ForceCharacterUpdate
    L5_1380(A0_1375, 0, false)
    L5_1380 = A0_1375.CreateBoneAttachment
    L5_1380(A0_1375, 0, "weapon_bone", "right_item_attachment")
    L5_1380 = A0_1375.CreateBoneAttachment
    L5_1380(A0_1375, 0, "weapon_bone", "weapon")
    L5_1380 = A0_1375.CreateBoneAttachment
    L5_1380(A0_1375, 0, "alt_weapon_bone01", "left_item_attachment")
    L5_1380 = A0_1375.CreateBoneAttachment
    L5_1380(A0_1375, 0, "weapon_bone", "laser_attachment")
    L5_1380 = A0_1375.CreateAttachments
    if L5_1380 then
      L5_1380 = A0_1375.CreateAttachments
      L5_1380(A0_1375)
    end
    L5_1380 = A0_1375.inventory
    if L5_1380 then
      L5_1380 = A0_1375.inventory
      L5_1380 = L5_1380.GetCurrentItemId
      L5_1380 = L5_1380(L5_1380)
      if L5_1380 ~= nil then
        A0_1375.actor:SelectItem(L5_1380, true)
      end
    end
  end
  L5_1380 = A0_1375.Properties
  L5_1380 = L5_1380.shadowFileModel
  if L5_1380 and A1_1376 and A0_1375.currShadowModel ~= L5_1380 then
    A0_1375.currShadowModel = L5_1380
    A0_1375:LoadCharacter(5, A0_1375.Properties.shadowFileModel)
  end
  return L2_1377
end
L0_1332.SetActorModel = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1381)
  local L1_1382, L2_1383, L3_1384, L4_1385
  L1_1382 = System
  L1_1382 = L1_1382.GetEntitiesByClass
  L2_1383 = "SpawnPoint"
  L1_1382 = L1_1382(L2_1383)
  L2_1383 = table
  L2_1383 = L2_1383.getn
  L3_1384 = L1_1382
  L2_1383 = L2_1383(L3_1384)
  L3_1384 = table
  L3_1384 = L3_1384.sort
  L3_1384(L4_1385, CompareEntitiesByName)
  L3_1384 = L2_1383
  if L4_1385 then
    for _FORV_7_ = 1, L2_1383 do
      if A0_1381.lastSpawnPoint == L1_1382[_FORV_7_]:GetName() then
        L3_1384 = _FORV_7_
      end
    end
  end
  L3_1384 = L3_1384 + 1
  if L2_1383 < L3_1384 then
    L3_1384 = 1
  end
  A0_1381:InternalSpawnAtSpawnPoint(L4_1385)
end
L0_1332.OnNextSpawnPoint = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1386, A1_1387)
  if A1_1387 then
    A0_1386.lastSpawnPoint = A1_1387:GetName()
    if AI then
      AI.LogEvent("Teleport to " .. A0_1386.lastSpawnPoint)
    end
    A0_1386:SetWorldPos(A1_1387:GetWorldPos(g_Vectors.temp_v1))
    A1_1387:GetAngles(g_Vectors.temp_v1)
    g_Vectors.temp_v1.x = 0
    g_Vectors.temp_v1.y = 0
    A0_1386.actor:PlayerSetViewAngles(g_Vectors.temp_v1)
    A1_1387:Spawned(A0_1386)
  end
end
L0_1332.InternalSpawnAtSpawnPoint = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1388)
  local L1_1389
  L1_1389 = true
  L1_1389 = A0_1388.actor and A0_1388.actor:GetHealth() and A0_1388.actor:GetHealth() <= 0
  return L1_1389
end
L0_1332.IsDead = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1390, A1_1391)
end
L0_1332.OnSave = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1392, A1_1393)
end
L0_1332.OnLoad = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1394)
  A0_1394.lastHealth = A0_1394.actor:GetHealth()
  A0_1394.lastDeathImpulse = 0
  if A0_1394.AssignPrimaryWeapon then
    A0_1394:AssignPrimaryWeapon()
  end
end
L0_1332.OnPostLoad = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1395)
  A0_1395.actor:SetPhysicalizationProfile("alive")
end
L0_1332.OnResetLoad = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1396, A1_1397)
  A0_1396.grabParams = new(A0_1396.grabParams)
  A0_1396.waterStats = new(A0_1396.waterStats)
  if A0_1396.ai then
    BasicAI.OnSpawn(A0_1396, A1_1397)
  else
    A0_1396:InitialSetup(A1_1397)
  end
  ApplyCollisionFiltering(A0_1396, GetCollisionFiltering(A0_1396))
end
L0_1332.OnSpawn = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1398, A1_1399)
  BasicActor.Reset(A0_1398, A1_1399)
end
L0_1332.InitialSetup = L1_1333
L0_1332 = BasicActor
L0_1332 = L0_1332.Client
function L1_1333(A0_1400, A1_1401, A2_1402, A3_1403)
  local L4_1404, L5_1405
  L4_1404 = A0_1400.onAnimationKey
  if L4_1404 then
    L5_1405 = L4_1404[A2_1402]
    if L5_1405 then
      L5_1405(A0_1400, A1_1401)
    end
  end
end
L0_1332.OnAnimationEvent = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1406)
  return WaveAllowActorRemoval(A0_1406)
end
L0_1332.AIWaveAllowsRemoval = L1_1333
L0_1332 = BasicActor
function L1_1333(A0_1407, A1_1408, A2_1409)
  local L3_1410, L4_1411
  L3_1410 = ""
  L4_1411 = STANCE_SNEAK
  L4_1411 = A1_1408 == L4_1411 or A1_1408 == L4_1411
  if L4_1411 then
    L3_1410 = "sounds/physics:foleys/player:crouch_on"
  else
    L3_1410 = "sounds/physics:foleys/player:crouch_off"
  end
end
L0_1332.OnStanceChanged = L1_1333
