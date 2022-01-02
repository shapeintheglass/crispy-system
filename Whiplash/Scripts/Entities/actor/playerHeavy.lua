Script.ReloadScript("SCRIPTS/Entities/actor/BasicActor.lua")
PlayerHeavy = {
  AnimationGraph = "player.xml",
  UpperBodyGraph = "",
  type = "Player",
  Properties = {
    soclasses_SmartObjectClass = "Player",
    groupid = 0,
    commrange = 40,
    Damage = {
      bLogDamages = 0,
      health = 90,
      FallSleepTime = 6
    },
    CharacterSounds = {
      footstepEffect = "footstep_player",
      remoteFootstepEffect = "footstep",
      bFootstepGearEffect = 0,
      footstepIndGearAudioSignal_Walk = "Player_Footstep_Gear_Walk",
      footstepIndGearAudioSignal_Run = "Player_Footstep_Gear_Run",
      foleyEffect = "foley_player"
    },
    Perception = {sightrange = 50},
    fileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    shadowFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    clientFileModel = "Objects/Characters/Human/sdk_player/sdk_player.cdf",
    fileHitDeathReactionsParamsDataFile = "Libs/HitDeathReactionsData/HitDeathReactions_PlayerSP.xml"
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
    Damage = {health = 90},
    stance = {
      {
        stanceId = STANCE_STAND,
        maxSpeed = 4,
        heightCollider = 1.7,
        heightPivot = 0,
        size = {
          x = 0.9,
          y = 0.9,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = -2,
          z = 3.2
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.55
        },
        name = "stand",
        useCapsule = 1
      },
      {
        stanceId = STANCE_ALERTED,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1.8,
        heightPivot = 0,
        size = {
          x = 0.9,
          y = 0.9,
          z = 0.1
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        viewOffset = {
          x = 0,
          y = -2,
          z = 3
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.55
        },
        name = "alerted",
        useCapsule = 1
      },
      {
        stanceId = STANCE_STEALTH,
        normalSpeed = 0.6,
        maxSpeed = 50,
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
          y = -2,
          z = 3.35
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
        maxSpeed = 1.5,
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
          y = -2,
          z = 3.1
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.85
        },
        name = "sneak",
        useCapsule = 1
      },
      {
        stanceId = STANCE_LOW_COVER,
        normalSpeed = 0.5,
        maxSpeed = 50,
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
          z = 0.9
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 0.85
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
          z = 1.7
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.1
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
          x = 0,
          y = 0,
          z = 0.85
        },
        modelOffset = {
          x = 0,
          y = 0,
          z = 0
        },
        name = "zerog",
        useCapsule = 1
      },
      {
        stanceId = STANCE_RELAXED,
        normalSpeed = 1,
        maxSpeed = 50,
        heightCollider = 1.8,
        heightPivot = 0,
        size = {
          x = 0.9,
          y = 0.9,
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
          z = 2
        },
        weaponOffset = {
          x = 0.2,
          y = 0,
          z = 1.55
        },
        name = "relaxed",
        useCapsule = 1
      }
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
      "HumanPlayer"
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
  AI = {},
  OnUseEntityId = NULL_ENTITY,
  OnUseSlot = 0,
  useHoldFiredAlready = false,
  usePressFiredForPickup = true,
  usePressFiredForUse = true
}
function PlayerHeavy.SetIsMultiplayer(A0_1531)
  local L1_1532
end
function PlayerHeavy.Expose(A0_1533)
  Net.Expose({
    Class = A0_1533,
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
function PlayerHeavy.Server.OnInit(A0_1534, A1_1535)
  if AI then
    CryAction.RegisterWithAI(A0_1534.id, AIOBJECT_PLAYER, A0_1534.Properties, A0_1534.PropertiesInstance)
  end
  A0_1534:OnInit(A1_1535)
end
function PlayerHeavy.PhysicalizeActor(A0_1536)
  local L1_1537
end
function PlayerHeavy.SetModel(A0_1538, A1_1539, A2_1540, A3_1541, A4_1542)
  local L5_1543
  if A1_1539 then
    if A4_1542 then
      L5_1543 = A0_1538.Properties
      L5_1543.clientFileModel = A4_1542
    end
    L5_1543 = A0_1538.Properties
    L5_1543.fileModel = A1_1539
  end
end
function PlayerHeavy.Server.OnInitClient(A0_1544, A1_1545)
end
function PlayerHeavy.Server.OnPostInitClient(A0_1546, A1_1547)
end
function PlayerHeavy.Client.Revive(A0_1548)
  A0_1548.actor:Revive()
end
function PlayerHeavy.Client.MoveTo(A0_1549, A1_1550)
  A0_1549:SetWorldPos(A1_1550)
end
function PlayerHeavy.Client.AlignTo(A0_1551, A1_1552)
  A0_1551.actor:SetAngles(A1_1552)
end
function PlayerHeavy.Client.ClearInventory(A0_1553)
  A0_1553.inventory:Clear()
end
function PlayerHeavy.Client.OnSetPlayerId(A0_1554)
  local L1_1555
end
function PlayerHeavy.Client.OnInit(A0_1556, A1_1557)
  A0_1556:OnInit(A1_1557)
end
function PlayerHeavy.OnInit(A0_1558, A1_1559)
  A0_1558:SetAIName(A0_1558:GetName())
  A0_1558:OnReset(true, A1_1559)
end
function PlayerHeavy.OnReset(A0_1560, A1_1561, A2_1562)
  A0_1560.SoundSignals.FeedbackHit_Armor = GameAudio.GetSignal("PlayerFeedback_HitArmor")
  A0_1560.SoundSignals.FeedbackHit_Flesh = GameAudio.GetSignal("PlayerFeedback_HitFlesh")
  g_aimode = nil
  BasicActor.Reset(A0_1560, A1_1561, A2_1562)
  A0_1560:SetTimer(0, 500)
  mergef(PlayerHeavy.SignalData, g_SignalData, 1)
  A0_1560.squadFollowMode = 0
  if AI then
    AI.ResetParameters(A0_1560.id, A2_1562, A0_1560.Properties, A0_1560.PropertiesInstance, nil, A0_1560.melee)
  end
  A0_1560.lastOverloadTime = nil
end
function PlayerHeavy.SetOnUseData(A0_1563, A1_1564, A2_1565)
  A0_1563.OnUseEntityId = A1_1564
  A0_1563.OnUseSlot = A2_1565
end
function PlayerHeavy.ItemPickUpMechanic(A0_1566, A1_1567, A2_1568)
  local L3_1569, L4_1570, L5_1571
  L3_1569 = A1_1567 == "itemPickup"
  L4_1570 = A1_1567 == "use"
  L5_1571 = L4_1570 or L3_1569
  if A1_1567 == "heavyweaponremove" and A2_1568 == "press" and A0_1566.actor:IsCurrentItemHeavy() then
    A0_1566:UseEntity(A0_1566.OnUseEntityId, A0_1566.OnUseSlot, true)
    A0_1566.useHoldFiredAlready = true
  elseif L5_1571 and A2_1568 == "press" then
    if L3_1569 then
      if A0_1566.usePressFiredForUse then
        A0_1566.usePressFiredForUse = false
        A0_1566.usePressFiredForPickup = false
      else
        A0_1566.usePressFiredForPickup = true
      end
    elseif L4_1570 then
      if A0_1566.usePressFiredForPickup then
        A0_1566.usePressFiredForPickup = false
        A0_1566.usePressFiredForUse = false
      else
        A0_1566.usePressFiredForUse = true
      end
    end
    if true then
      Log("[tlh] @ Player:OnAction: action: " .. A1_1567 .. " press path")
      A0_1566:UseEntity(A0_1566.OnUseEntityId, A0_1566.OnUseSlot, true)
    end
  elseif L5_1571 and A2_1568 == "hold" and A0_1566.useHoldFiredAlready == false then
    if A0_1566.OnUseEntityId ~= NULL_ENTITY then
      A0_1566.useHoldFiredAlready = true
      A0_1566:UseEntity(A0_1566.OnUseEntityId, A0_1566.OnUseSlot, true)
    end
  elseif L5_1571 and A2_1568 == "release" then
    A0_1566.useHoldFiredAlready = false
  end
end
function PlayerHeavy.OnActionUse(A0_1572, A1_1573)
  A0_1572:UseEntity(A0_1572.OnUseEntityId, A0_1572.OnUseSlot, A1_1573)
end
function PlayerHeavy.OnUpdateView(A0_1574, A1_1575)
end
function PlayerHeavy.GrabObject(A0_1576, A1_1577, A2_1578)
  BasicActor.GrabObject(A0_1576, A1_1577, A2_1578)
end
function PlayerHeavy.Client.OnHit(A0_1579, A1_1580, A2_1581)
  BasicActor.Client.OnHit(A0_1579, A1_1580, A2_1581)
end
function PlayerHeavy.UseEntity(A0_1582, A1_1583, A2_1584, A3_1585)
  local L4_1586, L5_1587, L6_1588, L7_1589
  L4_1586 = assert
  L5_1587 = A1_1583
  L4_1586(L5_1587)
  L4_1586 = assert
  L5_1587 = A2_1584
  L4_1586(L5_1587)
  L4_1586 = A0_1582.actor
  L5_1587 = L4_1586
  L4_1586 = L4_1586.GetHealth
  L4_1586 = L4_1586(L5_1587)
  if not (L4_1586 <= 0) then
    L4_1586 = A0_1582.actor
    L5_1587 = L4_1586
    L4_1586 = L4_1586.GetSpectatorMode
    L4_1586 = L4_1586(L5_1587)
  elseif L4_1586 ~= 0 then
    return
  end
  L4_1586 = false
  L5_1587 = System
  L5_1587 = L5_1587.GetEntity
  L6_1588 = A1_1583
  L5_1587 = L5_1587(L6_1588)
  if L5_1587 then
    L6_1588 = L5_1587.OnUsed
    L7_1589 = L5_1587.OnUsedRelease
    if not L6_1588 and L5_1587:GetState() ~= "" and L5_1587[L5_1587:GetState()] then
      L6_1588 = L5_1587[L5_1587:GetState()].OnUsed
    end
    if not L7_1589 and L5_1587:GetState() ~= "" and L5_1587[L5_1587:GetState()] then
      L7_1589 = L5_1587[L5_1587:GetState()].OnUsedRelease
    end
    if L6_1588 and A3_1585 then
      L4_1586 = L6_1588(L5_1587, A0_1582, A2_1584)
      if AI then
        AI.SmartObjectEvent("OnUsed", L5_1587.id, A0_1582.id)
      end
    end
    if L7_1589 and not A3_1585 then
      L7_1589(L5_1587, A0_1582, A2_1584)
      if AI then
        AI.SmartObjectEvent("OnUsedRelease", L5_1587.id, A0_1582.id)
      end
    end
  end
  return L4_1586
end
function PlayerHeavy.Client.OnShutDown(A0_1590)
  BasicActor.ShutDown(A0_1590)
end
function PlayerHeavy.OnEvent(A0_1591, A1_1592, A2_1593)
end
function PlayerHeavy.OnSave(A0_1594, A1_1595)
  BasicActor.OnSave(A0_1594, A1_1595)
end
function PlayerHeavy.OnLoad(A0_1596, A1_1597)
  BasicActor.OnLoad(A0_1596, A1_1597)
end
function PlayerHeavy.OnLoadAI(A0_1598, A1_1599)
  local L2_1600
  L2_1600 = {}
  A0_1598.AI = L2_1600
  L2_1600 = A1_1599.AI
  if L2_1600 then
    L2_1600 = A1_1599.AI
    A0_1598.AI = L2_1600
  end
end
function PlayerHeavy.OnSaveAI(A0_1601, A1_1602)
  local L2_1603
  L2_1603 = A0_1601.AI
  if L2_1603 then
    L2_1603 = A0_1601.AI
    A1_1602.AI = L2_1603
  end
end
function PlayerHeavy.CanPickItem(A0_1604, A1_1605)
  return A0_1604:CanChangeItem()
end
function PlayerHeavy.CanChangeItem(A0_1606)
  if A0_1606.holsteredItemId then
    return false
  end
  return true
end
function PlayerHeavy.DropItem(A0_1607)
  local L1_1608
  L1_1608 = A0_1607.inventory:GetCurrentItem()
  if L1_1608 then
    L1_1608:Drop()
  end
end
function PlayerHeavy.SetFollowMode(A0_1609)
  AIBehaviour.PlayerIdle:Follow(A0_1609)
end
function PlayerHeavy.Goto(A0_1610)
  local L1_1611
end
function PlayerHeavy.OnEndCommandSound(A0_1612, A1_1613)
  if AI then
    AI.Signal(SIGNALFILTER_SENDER, 1, "ON_COMMAND_TOLD", A0_1612.id, PlayerHeavy.SignalData)
  end
end
function PlayerHeavy.OnEndCommandSoundGroup(A0_1614, A1_1615)
  if AI then
    AI.Signal(SIGNALFILTER_GROUPONLY, 1, "ON_COMMAND_TOLD", A0_1614.id, PlayerHeavy.SignalData)
  end
end
function PlayerHeavy.IsSquadAlive(A0_1616)
  local L1_1617, L2_1618, L3_1619, L4_1620, L5_1621
  L1_1617 = AI
  if not L1_1617 then
    L1_1617 = false
    return L1_1617
  end
  L1_1617 = AI
  L1_1617 = L1_1617.GetGroupCount
  L1_1617 = L1_1617(L2_1618)
  for L5_1621 = 1, L1_1617 do
    if AI.GetGroupMember(A0_1616.id, L5_1621) and AI.GetGroupMember(A0_1616.id, L5_1621) ~= A0_1616 and not AI.GetGroupMember(A0_1616.id, L5_1621):IsDead() then
      return true
    end
  end
  return L2_1618
end
function PlayerHeavy.IsUsable(A0_1622, A1_1623)
  local L2_1624
  L2_1624 = 1
  return L2_1624
end
function PlayerHeavy.ShouldIgnoreHit(A0_1625, A1_1626)
  if A1_1626.type ~= "collision" then
    return false
  end
  if A1_1626.shooter and A1_1626.shooter.IsOnVehicle and A1_1626.shooter:IsOnVehicle() then
    return false
  end
  if A1_1626.shooter and A1_1626.shooter.Properties and A1_1626.shooter.Properties.bDamagesPlayerOnCollisionSP == 1 then
    return false
  end
  return true
end
CreateActor(PlayerHeavy)
PlayerHeavy:Expose()
