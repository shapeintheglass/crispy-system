Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkTurret = {
  Properties = {
    archetype_ArkTurretWeapon = "ArkRobots.Turrets.Weapons.ArkTurretWeaponMachineGun",
    bUseSafeCarry = true,
    carryHeightOffset = 0,
    type = "ArkTurretEntity",
    scanningDisplayName = "@npc_turret",
    textDisplayName = "@npc_turret",
    textCorpseName = "@npc_destroyed",
    gibalYawJointName = "gimbal",
    gibalPitchJointName = "gimbal",
    barrelEndJointName = "barrel_end",
    barrelStartJointName = "turret_stock",
    fCloseThresholdAutoDisable = 40,
    metaTags_ArkMetaTags = "9469288860498988699",
    signalmodifier_technoControlled = "3149325216954609881",
    signalmodifier_default = "0",
    signalpackage_collisionDamagePackage = "3149325216931792051",
    aliveSkin = "skin",
    destroyedSkin = "damaged_skin",
    fHealth = 100,
    fMaxPitchVelocity = 150,
    fMaxYawVelocity = 200,
    fPitchAcceleration = 50,
    fYawAcceleration = 80,
    fPitchLowerLimit = 10,
    fPitchUpperLimit = 60,
    fYawLimit = 45,
    fVelocityDamp = 0.997,
    canDeployBoundingSize = {
      x = 0.25,
      y = 0.75,
      z = 1.25
    },
    fDeadCarryHoldUseDuration = 0.5,
    fDeployHoldUseDuration = 1,
    fAcquiredLineOfSightDuration = 0,
    fLostLineOfSightDuration = 0,
    DialogNonHostileApproachDistance = 5,
    PlayerLoiterDistance = 5,
    PlayerLoiterCD = 10,
    fBrokenRepeatDialogCD = 10,
    fBrokenFlickerDuration = 5,
    ability_HackRequirement = "",
    ability_CarryRequirement = "",
    signalGroup_Damage = "3149325216937655803",
    signalGroup_Stun = "2524450536722832464",
    signalGroup_Electric = "",
    signal_mindControlSignal = "10641886185795236267",
    signal_glooSignal = "3149325216915549017",
    gameNoiseType_callForHelpGameNoiseType = "10850392949532183295",
    gameNoiseLoudness_callForHelpLoudness = "10850392949532183296",
    loottable_ContainerLootTable = "",
    shieldJointName = "",
    shieldDamageScale = 0,
    viewAttachmentName = "viewattachment",
    carryDirection = {
      x = 0,
      y = 1,
      z = 0
    },
    vector_ThrowAngularImpulse = {
      x = -10,
      y = 0,
      z = 0
    },
    ei_TransparencyMode = 2,
    sHUDIcon = "",
    AI = {bUsedAsDynamicObstacle = 1},
    RecycleData = {
      organic = 0,
      mineral = 0,
      synthetic = 0,
      exotic = 0
    },
    bCanTriggerAreas = 1,
    ArkAttention = {
      attentionModel_AttentionModel = "1",
      visionCone_VisionCone = "0",
      visionCone_SecondaryVisionCone = "0"
    },
    ArkMindControl = {
      attachmenteffects_MindControlEffects = "12635110349635930688"
    },
    Light = {
      archetype_lightFriendly = "",
      archetype_lightHostile = "",
      archetype_lightHacked = "",
      ArkLightAttachmentName = "LightAttachment",
      fFlickerToggleMaxDuration = 0.15,
      fTalkMinBrightness = 0.6,
      fTalkMaxBrightness = 0.9
    },
    OnElectrocuted = {attachmenteffects_OnElectrocutedEffects = ""},
    OnFire = {attachmenteffects_OnFireEffects = ""},
    OnStunned = {attachmenteffects_OnStunEffects = ""},
    attachmenteffects_LifetimeEffects = "",
    Sound = {
      audioTrigger_Carry = "",
      audioTrigger_Detect = "Sounds/Ark_Incubation:Turret:Turret_Detect",
      audioTrigger_LostTarget = "",
      audioTrigger_Destroy = "Sounds/Ark_Incubation:Turret:Turret_Destroyed",
      audioTrigger_Fire = "Sounds/Ark_Incubation:Turret:Turret_Fire",
      audioTrigger_FireStop = "",
      audioTrigger_GooStuck = "",
      audioTrigger_RepairLoop = "",
      audioTrigger_RepairStop = "",
      audioTrigger_FortifyLoop = "",
      audioTrigger_FortifyStop = "",
      audioTrigger_DamagedStart = "",
      audioTrigger_DamagedStop = "",
      audioTrigger_DisabledStart = "",
      audioTrigger_DisabledStopRepaired = "",
      audioTrigger_DisabledStopDestroyed = "",
      audioTrigger_StunnedStart = "",
      audioTrigger_StunnedStop = "",
      audioTrigger_WindupStart = "",
      audioTrigger_CooldownStart = ""
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      Mass = 80
    },
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    },
    ArkCharacter = {character_Character = "0"},
    ArkDialog = {playerBumpCD = 5},
    ArkFaction = {
      faction_DefaultFaction = "17591291352618367179",
      faction_PlayerControlledFaction = "17591291352646192141",
      faction_HackedFaction = "17591291352646192141"
    },
    ArkMannequin = {
      fileControllerDef = "Animations/Mannequin/ADB/ArkTurretEntityControllerDefs.xml",
      fileAnimationDatabase = "Animations/Mannequin/ADB/ArkTurretEntity.adb",
      model_DefaultTurretModel = "objects/characters/Robots/Turret/Turret.cdf",
      model_DestroyedTurretModel = "objects/characters/Robots/Turret/TurretDestroyed.cdf",
      recoilFragment = "Recoil",
      fRecoilAnimationLength = 0.4
    },
    ArkTurretWeapon = {itemarchetype_LootAmmoLaser = "", itemarchetype_LootAmmoStun = ""},
    Behavior = {
      fUprightToFallenDelaySeconds = 1,
      fFallenActivePysicsTime = 2,
      fFallenToUprightDelaySeconds = 1,
      fStunnedDuration = 15,
      Attacking = {fLostLOSDelay = 2, fCallForHelpPulseTime = 2},
      Searching = {fSearchAnimDelayTimeMin = 1, fSearchAnimDelayTimeMax = 7}
    },
    DamageStates = {
      HealthThresholdDamaged = 1250,
      HealthThresholdDisabled = 300,
      AttachmentNameUndamaged = "skin",
      AttachmentNameDamaged = "damaged_skin",
      AttachmentNameDisabled = "broken_skin",
      attachmenteffects_OnDamagedEffects = "17591291352643607050",
      attachmenteffects_OnDisabledEffects = "17591291352643607091",
      distraction_repairableDistractionId = "17591291352682389554"
    },
    Laser = {attachmenteffects_operatorLaserFlare = ""},
    Repair = {
      nHoldToUseDuration = 1000,
      archetype_RepairItem = "",
      ability_RepairRequirement = "3149325216929347161",
      nSparePartsRequired = 0,
      textDisplayNameBroken = "@i_brokenturret",
      bRepairable = 1,
      fRepairIconRange = 10
    },
    Fortify = {
      nHoldToUseDuration = 1000,
      archetype_FortifyItem = "",
      ability_FortifyRequirement = "3149325216929347161",
      nSparePartsRequired = 0,
      bFortifiable = 1,
      fHealthIncrease = 1000
    },
    ArkInteractMessages = {
      textAliveInteractText = "@use_npc",
      textDeadInteractText = "@use_search",
      textDeployInteractText = "",
      textLootInteractText = "",
      textCantDeployInteractText = "@ui_no_room_deploy"
    },
    ArkGooed = {
      attachment_GlooSkinAttachment = "fx_goo01",
      animation_GlooGrowAnimation = "goo",
      glooSlowFadeDuration = 1,
      glooSlowDuration = 1.5,
      glooHardenDuration = 0.75,
      glooFrozenDuration = 10,
      glooOnHitCooldown = 0.15,
      glooSlowMinimum = 0.3,
      glooSlowMaximum = 0.8,
      particleeffect_BreakGlooEffect = "Characters.Aliens.Generic.Goo.GooBreak_00",
      particleeffect_OnHitGlooEffect = "Characters.Aliens.Generic.Goo.GooHit_00",
      audioTrigger_glooBreakSFX = "",
      audioTrigger_glooStartSFX = "",
      audioTrigger_glooHardenSFX = ""
    },
    ArkFalling = {
      signalpackage_damagePackageId = "3149325216943200410",
      fMinDistanceForDamage = 5,
      fMinSpeedForFalling = 5,
      fFallingDamagePerMeter = 25
    },
    ZeroG = {visionCone_VisionCone = "0"}
  },
  States = {"Normal", "Hacking"},
  PropertiesInstance = {
    bStartsBroken = 0,
    bStartsInPickupMode = 0,
    bUsedAsDynamicObstacle = 1,
    ability_HackRequirementOverride = ""
  },
  Editor = {
    Icon = "User.bmp",
    ShowBounds = 1,
    IsScalable = false,
    IsRotatable = true,
    IconOnTop = 1,
    ArchetypeEntityObjectClassName = "Entity::ArkTurretSpawner"
  }
}
GetArkEntityUtils(ArkTurret)
ArkMakeHackable(ArkTurret)
SetupCollisionFiltering(ArkTurret)
function ArkTurret.OnReset(A0_4661)
  A0_4661:GotoState("Normal")
  A0_4661:UpdateDisplayName()
end
function ArkTurret.OnInit(A0_4662)
  if A0_4662.Properties.bCanTriggerAreas == 1 then
    A0_4662:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_4662:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
  A0_4662:UpdateDisplayName()
end
function ArkTurret.OnKilled(A0_4663)
  Ark.SpawnLootFromTable(A0_4663.Properties.loottable_ContainerLootTable, A0_4663.id)
  BroadcastEvent(A0_4663, "Died")
end
function ArkTurret.OnBroken(A0_4664)
  BroadcastEvent(A0_4664, "Broken")
end
function ArkTurret.OnStartBeingCarried(A0_4665)
  A0_4665.arkturret:StartBeingCarried()
end
function ArkTurret.OnStopBeingCarried(A0_4666)
  A0_4666.arkturret:StopBeingCarried()
end
function ArkTurret.OnLoot(A0_4667, A1_4668)
end
function ArkTurret.SpawnedByFabricator(A0_4669)
  A0_4669.arkturret:SpawnedByFabricator()
end
function ArkTurret.GetRemoteManipulationInteraction(A0_4670)
  local L1_4671
  L1_4671 = {}
  L1_4671.ActionType = "Examine"
  L1_4671.CouldChange = false
  return L1_4671
end
function ArkTurret.HackSuccess(A0_4672)
  BroadcastEvent(A0_4672, "HackSucceed")
end
function ArkTurret.HackFail(A0_4673)
  BroadcastEvent(A0_4673, "HackFailed")
end
function ArkTurret.UpdateDisplayName(A0_4674)
  local L1_4675
  L1_4675 = A0_4674.Properties
  L1_4675 = L1_4675.textDisplayName
  A0_4674:SetDisplayName(L1_4675)
end
function ArkTurret.OnSpawn(A0_4676)
  A0_4676:UpdateDisplayName()
end
function ArkTurret.Event_Destroy(A0_4677)
  BroadcastEvent(A0_4677, "Destroy")
end
ArkTurret.FlowEvents = {
  Inputs = {
    Destroy = {
      ArkTurret.Event_Destroy,
      "void"
    }
  },
  Outputs = {
    Died = "bool",
    Hidden = "bool",
    Attacking = "bool",
    Searching = "bool",
    Out = "bool",
    Broken = "bool",
    Repaired = "bool",
    Fortified = "bool"
  }
}
