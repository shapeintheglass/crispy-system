Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkWeaponRapidFire = {
  Properties = {
    object_GeometryFP = "",
    object_GeometryTP = "",
    bEquippable = 1,
    fLerpSpeed = 10,
    Description = {
      baseDamageKeyword = "",
      finalDamageKeyword = "",
      signal_damageSignal = ""
    },
    Weapon = {
      playerImpulse = 1,
      playerImpulseZeroG = 1,
      fAmmoLootImpulse = 0.1,
      recoilPitchMin = 0,
      recoilPitchMax = 0,
      recoilYawMin = 0,
      recoilYawMax = 0,
      recoilDuration = 0,
      recoilDelay = 0,
      anim_Animation = "",
      sAnimTag = "",
      sAttachmentName = "weapon",
      archetype_ammo = "ArkProjectiles.Bullets.PistolRound_Default",
      sAmmoSpawnPointName = "muzzle",
      particleEffect_MuzzleLight = "PlayerWeapons.Pistol.Muzzle.MuzzleFlash_SingleLight_00",
      sMuzzleLightAttachment = "muzzle",
      fAimRange = 5,
      fBaseAmmoCost = 1,
      nClipSize = 15,
      fReloadSpeed = 1,
      fRateOfAttack = 1,
      bAutoloadAmmo = 1,
      nNumAmmoReloaded = 1,
      nInitialAmmoMin = 0,
      nInitialAmmoMax = 8,
      fCriticalShotChance = 0.1,
      bAffectedByDisruption = 0,
      fCombatFocusAmount = 1,
      fWalkSpeedMultiplier = 1,
      fCameraSpeedMultiplier = 1,
      fZoomedHFOV = 70,
      fZoomTime = 0.15,
      fZoomedWalkSpeedMultiplier = 0.5,
      fZoomedCameraSpeedMultiplier = 0.5,
      bUsesCrosshairReticle = 1,
      sUIElementName = "DaniellePistol",
      fIdleBreakDelayTime = 8,
      fIronsightsTargetWidth = 1,
      fIronsightsTargetDistance = 10,
      fIronsightsTargetSpeed = 10,
      fIronsightsSuccessDistance = 0.1,
      fIronsightsMaxAngularVelocity = 450,
      fAimAssistRangeMax = 20,
      sLeverageImpulseScaleBaseName = "Leverage Base",
      sLeverageImpulseScale1Name = "Leverage I",
      sLeverageImpulseScale2Name = "Leverage II",
      sLeverageImpulseScale3Name = "Leverage III",
      fLeverage0_ImpulseScale = 1,
      fLeverage1_ImpulseScale = 0,
      fLeverage2_ImpulseScale = 0,
      fLeverage3_ImpulseScale = 0,
      Degradation = {
        fDegradationRate = 1,
        fMalfunctionThreshold = 20,
        fMalfunctionRate = 12.5,
        sBrokenIcon = "",
        sBrokenHUDIcon = "",
        audioTrigger_StartMalfunction = "",
        audioTrigger_StopMalfunction = "",
        audioTrigger_Break = "",
        fHazardIconTime = 1,
        bTakeHazardDamage = 1,
        fMinStartCondition = 20,
        fMaxStartCondition = 50
      },
      tutorial_firstTimePickup = "",
      tutorial_weaponCard = "",
      particleeffect_DisarmEffect = "Characters.Aliens.Poltergeist.Disarm.Disarm_Embers_Trail_00",
      sDisarmAttachmentName = "muzzle",
      sUpgradeInfoDesc = "@ui_GunsmithRequired",
      Light = {
        sLightAttachmentName = "",
        archetype_LightArchetype = "",
        vector_DefaultLightColor = {
          x = 1,
          y = 1,
          z = 1
        },
        vector_DamagedLightColor = {
          x = 1,
          y = 1,
          z = 0
        },
        vector_BrokenLightColor = {
          x = 1,
          y = 0,
          z = 0
        }
      }
    },
    Shotgun = {
      nNumberOfPelletRows = 1,
      nNumberOfPelletColumns = 1,
      fSpreadConeDegrees = 0,
      fAccurateShotChance = 0.1,
      fEffectiveRange = 10,
      fDamageDropoffPerMeter = 0.05,
      sOverrideTargetClasses = "OverrideTargetClasses",
      Dispersion = {
        fMinimum = 1,
        fMaximum = 3,
        fMinimumIronsights = 0.05,
        fMaximumIronsights = 2,
        fMinimumCrawling = 0.06,
        fMaximumCrawling = 2.25,
        fMinimumSneaking = 0.07,
        fMaximumSneaking = 2.75,
        fMinimumSprinting = 0.07,
        fMaximumSprinting = 2.75,
        fAmount_Recoil = 0.02,
        fRate_IronSights = -0.01,
        fAmount_Jumping = 0.01,
        fAmount_Sliding = 0.01,
        fRate_Turning = 0.002,
        fRate_NotTurning = -0.005,
        fRate_Moving = 0.002,
        fRate_NotMoving = -0.005,
        fRate_Sprinting = 0.005,
        fRate_Standing = 0,
        fRate_Crawling = 0.003,
        fRate_Sneaking = 0.007,
        fRate_ZeroG = 0.001
      },
      DebugTesting = {fDebugDrawTime = 20, nNumTestPoints = 1000}
    }
  },
  PropertiesInstance = {
    iInitialAmmo = 15,
    fStartingConditionOverride = -1,
    weaponEnchantment_WeaponEnchantmentOverride = ""
  }
}
ArkMakeDerivedEntityOverride(ArkWeaponRapidFire, ArkItem, true)
