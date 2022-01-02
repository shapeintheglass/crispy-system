Script.ReloadScript("SCRIPTS/Entities/actor/BasicActor.lua")
Player = {
  AnimationGraph = "player.xml",
  UpperBodyGraph = "",
  ActionController = "Animations/Mannequin/ADB/playerControllerDefs.xml",
  AnimDatabase3P = "Animations/Mannequin/ADB/playerAnims3P.adb",
  AnimDatabase1P = "Animations/Mannequin/ADB/playerAnims1P.adb",
  SoundDatabase = "Animations/Mannequin/ADB/playerSounds.adb",
  type = "Player",
  Properties = {
    soclasses_SmartObjectClass = "Player",
    groupid = 0,
    commrange = 40,
    Damage = {bLogDamages = 0, FallSleepTime = 6},
    CharacterSounds = {
      footstepEffect = "footstep_player",
      remoteFootstepEffect = "footstep",
      bFootstepGearEffect = 0,
      footstepIndGearAudioSignal_Walk = "Player_Footstep_Gear_Walk",
      footstepIndGearAudioSignal_Run = "Player_Footstep_Gear_Run",
      foleyEffect = "foley_player"
    },
    Perception = {sightrange = 50},
    Effects = {
      zeroGEffectFile = "LevelShared.ArkEnvironment.Ambience.FloatingDebris_01"
    },
    fileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    shadowFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    clientFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_PlayerSP.xml"
  },
  ArkInventory = {
    Ingredients = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    },
    FabPlans = {},
    Items = {}
  },
  PropertiesInstance = {aibehavior_behaviour = "PlayerIdle"},
  gameParams = {
    inventory = {
      items = {
        {name = "Zeus", equip = true}
      },
      ammo = {
        {
          name = "lightbullet",
          amount = 28
        }
      }
    },
    Damage = {health = 1000},
    stance = {
      {
        stanceId = STANCE_STAND,
        maxSpeed = 4,
        heightCollider = 1.25,
        heightPivot = 0,
        size = {
          x = 0.41,
          y = 0.41,
          z = 0.3
        },
        viewOffset = {
          x = 0,
          y = 0.065,
          z = 1.65
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.35
        },
        viewDownYMod = 0.05,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "stand",
        useCapsule = 1
      },
      {stanceId = -2},
      {
        stanceId = STANCE_SNEAK,
        maxSpeed = 1.5,
        heightCollider = 0.7,
        heightPivot = 0,
        size = {
          x = 0.41,
          y = 0.41,
          z = 0.1
        },
        viewOffset = {
          x = 0,
          y = 0.065,
          z = 1
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.85
        },
        viewDownYMod = 0.05,
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "sneak",
        useCapsule = 1
      },
      {
        stanceId = STANCE_SWIM,
        maxSpeed = 2.1,
        heightCollider = 1,
        heightPivot = 0,
        size = {
          x = 0.41,
          y = 0.41,
          z = 0.35
        },
        viewOffset = {
          x = 0,
          y = 0.1,
          z = 1.5
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        weaponOffset = {
          x = 0.3,
          y = 0,
          z = 0
        },
        name = "swim",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ZEROG,
        maxSpeed = 2.1,
        heightCollider = 0.7,
        heightPivot = 0,
        size = {
          x = 0.41,
          y = 0.41,
          z = 0.1
        },
        viewOffset = {
          x = 0,
          y = 0,
          z = 1
        },
        weaponOffset = {
          x = 0.02,
          y = 0,
          z = 1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "zerog",
        useCapsule = 1
      },
      {stanceId = -2}
    },
    autoAimTargetParams = {
      primaryTargetBone = BONE_SPINE,
      physicsTargetBone = BONE_SPINE,
      secondaryTargetBone = BONE_HEAD,
      fallbackOffset = 1.2,
      innerRadius = 1,
      outerRadius = 3.5,
      snapRadius = 1,
      snapRadiusTagged = 1
    },
    boneIDs = {
      BONE_BIP01 = "Bip01",
      BONE_SPINE = "Bip01 Spine1",
      BONE_SPINE2 = "Bip01 Spine2",
      BONE_SPINE3 = "Bip01 Spine3",
      BONE_HEAD = "Bip01 Head",
      BONE_EYE_R = "eye_right_bone",
      BONE_EYE_L = "eye_left_bone",
      BONE_WEAPON = "weapon_bone",
      BONE_WEAPON2 = "Lweapon_bone",
      BONE_FOOT_R = "Bip01 R Foot",
      BONE_FOOT_L = "Bip01 L Foot",
      BONE_ARM_R = "Bip01 R Forearm",
      BONE_ARM_L = "Bip01 L Forearm",
      BONE_CALF_R = "Bip01 R Calf",
      BONE_CALF_L = "Bip01 L Calf",
      BONE_CAMERA = "Bip01 Camera",
      BONE_HUD = "Bip01 HUD"
    },
    characterDBAs = {
      "HumanPlayer",
      "HumanShared"
    },
    lookFOV = 90,
    aimFOV = 180,
    proceduralLeaningFactor = 0
  },
  SoundSignals = {FeedbackHit_Armor = -1, FeedbackHit_Flesh = -1},
  Server = {},
  Client = {},
  squadFollowMode = 0,
  squadTarget = {
    x = 0,
    y = 0,
    z = 0
  },
  SignalData = {},
  AI = {}
}
function Player.GetItems(A0_1412)
  local L1_1413, L2_1414, L3_1415, L4_1416, L5_1417, L6_1418
  L1_1413 = {}
  for L5_1417, L6_1418 in L2_1414(L3_1415) do
    table.insert(L1_1413, L6_1418)
  end
  return L1_1413
end
function Player.SetItems(A0_1419, A1_1420)
  local L2_1421, L3_1422, L4_1423, L5_1424, L6_1425, L7_1426
  L2_1421 = {}
  for L6_1425, L7_1426 in L3_1422(L4_1423) do
    table.insert(L2_1421, L7_1426)
  end
  L3_1422.Items = L2_1421
end
function Player.AddItem(A0_1427, A1_1428)
  table.insert(A0_1427.ArkInventory.Items, A1_1428)
end
function Player.ClearItems(A0_1429)
  A0_1429.ArkInventory.Items = {}
end
function Player.ClearIngredients(A0_1430)
  local L2_1431
  L2_1431 = A0_1430.ArkInventory
  L2_1431.Ingredients = {
    organic = 0,
    mineral = 0,
    synthetic = 0,
    exotic = 0
  }
end
function Player.ClearAllArkInventory(A0_1432)
  A0_1432:ClearItems()
  A0_1432:ClearIngredients()
end
function Player.GetIngredients(A0_1433)
  local L1_1434, L2_1435
  L1_1434 = {}
  L2_1435 = A0_1433.ArkInventory
  L2_1435 = L2_1435.Ingredients
  L2_1435 = L2_1435.organic
  L1_1434.organic = L2_1435
  L2_1435 = A0_1433.ArkInventory
  L2_1435 = L2_1435.Ingredients
  L2_1435 = L2_1435.mineral
  L1_1434.mineral = L2_1435
  L2_1435 = A0_1433.ArkInventory
  L2_1435 = L2_1435.Ingredients
  L2_1435 = L2_1435.synthetic
  L1_1434.synthetic = L2_1435
  L2_1435 = A0_1433.ArkInventory
  L2_1435 = L2_1435.Ingredients
  L2_1435 = L2_1435.exotic
  L1_1434.exotic = L2_1435
  return L1_1434
end
function Player.SetIngredients(A0_1436, A1_1437)
  local L3_1438, L4_1439
  L3_1438 = A0_1436.ArkInventory
  L4_1439 = {}
  L4_1439.organic = A1_1437.organic
  L4_1439.mineral = A1_1437.mineral
  L4_1439.synthetic = A1_1437.synthetic
  L4_1439.exotic = A1_1437.exotic
  L3_1438.Ingredients = L4_1439
end
function Player.AddIngredients(A0_1440, A1_1441)
  local L2_1442, L3_1443, L4_1444
  L2_1442 = A0_1440.ArkInventory
  L2_1442 = L2_1442.Ingredients
  L3_1443 = A0_1440.ArkInventory
  L3_1443 = L3_1443.Ingredients
  L3_1443 = L3_1443.organic
  L4_1444 = A1_1441.organic
  L3_1443 = L3_1443 + L4_1444
  L2_1442.organic = L3_1443
  L2_1442 = A0_1440.ArkInventory
  L2_1442 = L2_1442.Ingredients
  L3_1443 = A0_1440.ArkInventory
  L3_1443 = L3_1443.Ingredients
  L3_1443 = L3_1443.mineral
  L4_1444 = A1_1441.mineral
  L3_1443 = L3_1443 + L4_1444
  L2_1442.mineral = L3_1443
  L2_1442 = A0_1440.ArkInventory
  L2_1442 = L2_1442.Ingredients
  L3_1443 = A0_1440.ArkInventory
  L3_1443 = L3_1443.Ingredients
  L3_1443 = L3_1443.synthetic
  L4_1444 = A1_1441.synthetic
  L3_1443 = L3_1443 + L4_1444
  L2_1442.synthetic = L3_1443
  L2_1442 = A0_1440.ArkInventory
  L2_1442 = L2_1442.Ingredients
  L3_1443 = A0_1440.ArkInventory
  L3_1443 = L3_1443.Ingredients
  L3_1443 = L3_1443.exotic
  L4_1444 = A1_1441.exotic
  L3_1443 = L3_1443 + L4_1444
  L2_1442.exotic = L3_1443
end
function Player.AddIngredient(A0_1445, A1_1446, A2_1447)
  local L3_1448
  L3_1448 = 0
  for _FORV_7_, _FORV_8_ in pairs(A0_1445.ArkInventory.Ingredients) do
    if _FORV_7_ == A1_1446 then
      L3_1448 = _FORV_8_ + A2_1447
      A0_1445.ArkInventory.Ingredients[_FORV_7_] = L3_1448
    end
  end
  return L3_1448
end
function Player.RemoveIngredients(A0_1449, A1_1450)
  local L2_1451, L3_1452, L4_1453
  L2_1451 = A0_1449.ArkInventory
  L2_1451 = L2_1451.Ingredients
  L3_1452 = A0_1449.ArkInventory
  L3_1452 = L3_1452.Ingredients
  L3_1452 = L3_1452.organic
  L4_1453 = A1_1450.organic
  L3_1452 = L3_1452 - L4_1453
  L2_1451.organic = L3_1452
  L2_1451 = A0_1449.ArkInventory
  L2_1451 = L2_1451.Ingredients
  L3_1452 = A0_1449.ArkInventory
  L3_1452 = L3_1452.Ingredients
  L3_1452 = L3_1452.mineral
  L4_1453 = A1_1450.mineral
  L3_1452 = L3_1452 - L4_1453
  L2_1451.mineral = L3_1452
  L2_1451 = A0_1449.ArkInventory
  L2_1451 = L2_1451.Ingredients
  L3_1452 = A0_1449.ArkInventory
  L3_1452 = L3_1452.Ingredients
  L3_1452 = L3_1452.synthetic
  L4_1453 = A1_1450.synthetic
  L3_1452 = L3_1452 - L4_1453
  L2_1451.synthetic = L3_1452
  L2_1451 = A0_1449.ArkInventory
  L2_1451 = L2_1451.Ingredients
  L3_1452 = A0_1449.ArkInventory
  L3_1452 = L3_1452.Ingredients
  L3_1452 = L3_1452.exotic
  L4_1453 = A1_1450.exotic
  L3_1452 = L3_1452 - L4_1453
  L2_1451.exotic = L3_1452
end
function Player.SetIsMultiplayer(A0_1454)
  local L1_1455
  L1_1455 = A0_1454.Properties
  L1_1455 = L1_1455.Damage
  L1_1455.health = 100
  L1_1455 = A0_1454.Properties
  L1_1455.fileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf"
  L1_1455 = A0_1454.Properties
  L1_1455.shadowFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf"
  L1_1455 = A0_1454.Properties
  L1_1455.clientFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf"
  L1_1455 = A0_1454.Properties
  L1_1455.fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_MP.xml"
  L1_1455 = A0_1454.Properties
  L1_1455 = L1_1455.Damage
  L1_1455.fileBodyDamage = "Libs/BodyDamage/BodyDamage_MP.xml"
  L1_1455 = A0_1454.Properties
  L1_1455 = L1_1455.Damage
  L1_1455.fileBodyDamageParts = "Libs/BodyDamage/BodyParts_HumanMaleShared.xml"
  L1_1455 = A0_1454.Properties
  L1_1455 = L1_1455.Damage
  L1_1455.fileBodyDestructibility = "Libs/BodyDamage/BodyDestructibility_Default.xml"
  L1_1455 = A0_1454.gameParams
  L1_1455 = L1_1455.stance
  L1_1455 = L1_1455[3]
  L1_1455.maxSpeed = 2.5
  L1_1455 = A0_1454.gameParams
  L1_1455.strafeMultiplier = 0.9
  L1_1455 = A0_1454.gameParams
  L1_1455.sneakMultiplier = 1
end
function Player.Expose(A0_1456)
  Net.Expose({
    Class = A0_1456,
    ClientMethods = {
      Revive = {RELIABLE_ORDERED, POST_ATTACH},
      MoveTo = {
        RELIABLE_ORDERED,
        POST_ATTACH,
        VEC3
      },
      AlignTo = {
        RELIABLE_ORDERED,
        POST_ATTACH,
        VEC3
      },
      ClearInventory = {RELIABLE_ORDERED, POST_ATTACH}
    },
    ServerMethods = {},
    ServerProperties = {}
  })
end
function Player.Server.OnInit(A0_1457, A1_1458)
  if AI then
    CryAction.RegisterWithAI(A0_1457.id, AIOBJECT_PLAYER, A0_1457.Properties, A0_1457.PropertiesInstance)
  end
  A0_1457:OnInit(A1_1458)
end
function Player.PhysicalizeActor(A0_1459)
  local L1_1460
end
function Player.SetModel(A0_1461, A1_1462, A2_1463, A3_1464, A4_1465)
  local L5_1466
  if A1_1462 then
    if A4_1465 then
      L5_1466 = A0_1461.Properties
      L5_1466.clientFileModel = A4_1465
    end
    L5_1466 = A0_1461.Properties
    L5_1466.fileModel = A1_1462
  end
end
function Player.Server.OnInitClient(A0_1467, A1_1468)
end
function Player.Server.OnPostInitClient(A0_1469, A1_1470)
end
function Player.Client.Revive(A0_1471)
  A0_1471.actor:Revive()
end
function Player.Client.MoveTo(A0_1472, A1_1473)
  A0_1472:SetWorldPos(A1_1473)
end
function Player.Client.AlignTo(A0_1474, A1_1475)
  A0_1474.actor:SetAngles(A1_1475)
end
function Player.Client.ClearInventory(A0_1476)
  A0_1476.inventory:Clear()
end
function Player.Client.OnSetPlayerId(A0_1477)
  local L1_1478
end
function Player.Client.OnInit(A0_1479, A1_1480)
  A0_1479:OnInit(A1_1480)
end
function Player.OnInit(A0_1481, A1_1482)
  A0_1481:SetAIName(A0_1481:GetName())
  A0_1481:OnReset(true, A1_1482)
end
function Player.OnReset(A0_1483, A1_1484, A2_1485)
  A0_1483.SoundSignals.FeedbackHit_Armor = GameAudio.GetSignal("PlayerFeedback_HitArmor")
  A0_1483.SoundSignals.FeedbackHit_Flesh = GameAudio.GetSignal("PlayerFeedback_HitFlesh")
  g_aimode = nil
  BasicActor.Reset(A0_1483, A1_1484, A2_1485)
  A0_1483:SetTimer(0, 500)
  mergef(Player.SignalData, g_SignalData, 1)
  A0_1483.squadFollowMode = 0
  if AI then
    AI.ResetParameters(A0_1483.id, A2_1485, A0_1483.Properties, A0_1483.PropertiesInstance, nil, A0_1483.melee)
  end
  A0_1483.lastOverloadTime = nil
end
function Player.OnUpdateView(A0_1486, A1_1487)
end
function Player.GrabObject(A0_1488, A1_1489, A2_1490)
  BasicActor.GrabObject(A0_1488, A1_1489, A2_1490)
end
function Player.Client.OnHit(A0_1491, A1_1492, A2_1493)
  BasicActor.Client.OnHit(A0_1491, A1_1492, A2_1493)
end
function Player.Client.OnShutDown(A0_1494)
  BasicActor.ShutDown(A0_1494)
end
function Player.OnEvent(A0_1495, A1_1496, A2_1497)
end
function Player.OnSave(A0_1498, A1_1499)
  BasicActor.OnSave(A0_1498, A1_1499)
end
function Player.OnLoad(A0_1500, A1_1501)
  BasicActor.OnLoad(A0_1500, A1_1501)
end
function Player.OnLoadAI(A0_1502, A1_1503)
  local L2_1504
  L2_1504 = {}
  A0_1502.AI = L2_1504
  L2_1504 = A1_1503.AI
  if L2_1504 then
    L2_1504 = A1_1503.AI
    A0_1502.AI = L2_1504
  end
end
function Player.OnSaveAI(A0_1505, A1_1506)
  local L2_1507
  L2_1507 = A0_1505.AI
  if L2_1507 then
    L2_1507 = A0_1505.AI
    A1_1506.AI = L2_1507
  end
end
function Player.CanPickItem(A0_1508, A1_1509)
  return A0_1508:CanChangeItem()
end
function Player.CanChangeItem(A0_1510)
  if A0_1510.holsteredItemId then
    return false
  end
  return true
end
function Player.DropItem(A0_1511)
  local L1_1512
  L1_1512 = A0_1511.inventory:GetCurrentItem()
  if L1_1512 then
    L1_1512:Drop()
  end
end
function Player.SetFollowMode(A0_1513)
  AIBehaviour.PlayerIdle:Follow(A0_1513)
end
function Player.Goto(A0_1514)
  local L1_1515
end
function Player.OnEndCommandSound(A0_1516, A1_1517)
  if AI then
    AI.Signal(SIGNALFILTER_SENDER, 1, "ON_COMMAND_TOLD", A0_1516.id, Player.SignalData)
  end
end
function Player.OnEndCommandSoundGroup(A0_1518, A1_1519)
  if AI then
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "ON_COMMAND_TOLD", A0_1518.id, Player.SignalData)
  end
end
function Player.IsSquadAlive(A0_1520)
  local L1_1521, L2_1522, L3_1523, L4_1524, L5_1525
  L1_1521 = AI
  if not L1_1521 then
    L1_1521 = false
    return L1_1521
  end
  L1_1521 = AI
  L1_1521 = L1_1521.GetGroupCount
  L1_1521 = L1_1521(L2_1522)
  for L5_1525 = 1, L1_1521 do
    if AI.GetGroupMember(A0_1520.id, L5_1525) and AI.GetGroupMember(A0_1520.id, L5_1525) ~= A0_1520 and not AI.GetGroupMember(A0_1520.id, L5_1525):IsDead() then
      return true
    end
  end
  return L2_1522
end
function Player.IsUsable(A0_1526, A1_1527)
  local L2_1528
  L2_1528 = 1
  return L2_1528
end
function Player.ShouldIgnoreHit(A0_1529, A1_1530)
  if A1_1530.type ~= "collision" then
    return false
  end
  if A1_1530.shooter and A1_1530.shooter.IsOnVehicle and A1_1530.shooter:IsOnVehicle() then
    return false
  end
  if A1_1530.shooter and A1_1530.shooter.Properties and A1_1530.shooter.Properties.bDamagesPlayerOnCollisionSP == 1 then
    return false
  end
  return true
end
CreateActor(Player)
Player:Expose()
