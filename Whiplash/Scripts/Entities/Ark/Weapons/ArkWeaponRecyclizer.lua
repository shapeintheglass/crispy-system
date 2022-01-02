Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkWeaponRecyclizer = {
  Properties = {
    object_GeometryFP = "Objects/weapons/Laser/1p/Laser1p.cdf",
    object_GeometryTP = "Objects/weapons/Laser/3p/laser3p_01.cgf",
    bEquippable = 1,
    DmgFactorWhenCollidingAI = 0,
    Description = {
      baseDamageKeyword = "",
      finalDamageKeyword = "",
      signal_damageSignal = ""
    },
    Weapon = {
      playerImpulse = 1,
      playerImpulseZeroG = 1,
      fAmmoLootImpulse = 20,
      anim_Animation = "Animations/Mannequin/ADB/ArkWeaponLaser1P.adb",
      sAnimTag = "laser",
      sAttachmentName = "weapon",
      archetype_ammo = "ArkPickups.Ammo.InstaLaser",
      sAmmoSpawnPointName = "muzzle",
      particleEffect_MuzzleLight = "PlayerWeapons.InstaLaser.InstaLaserSingleLight_00",
      sMuzzleLightAttachment = "FX_MuzzleLight",
      fAimRange = 50,
      fBaseAmmoCost = 1,
      nClipSize = 100,
      fReloadSpeed = 1,
      fRateOfAttack = 2,
      bAutoloadAmmo = 1,
      nNumAmmoReloaded = 100,
      nInitialAmmoMin = 0,
      nInitialAmmoMax = 100,
      bAffectedByDisruption = 1,
      fCombatFocusAmount = 0.01,
      fWalkSpeedMultiplier = 0.33,
      fCameraSpeedMultiplier = 0.33,
      fZoomedHFOV = 70,
      fZoomTime = 0.4,
      fZoomedWalkSpeedMultiplier = 0.5,
      fZoomedCameraSpeedMultiplier = 0.5,
      sUIElementName = "DanielleWeaponUI",
      nWeaponUIType = 2,
      fIdleBreakDelayTime = 8,
      fIronsightsTargetWidth = 0.5,
      fIronsightsTargetDistance = 5,
      fIronsightsTargetSpeed = 5,
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
      sUpgradeInfoDesc = "@ui_LabtechRequired",
      metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071",
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
    Recyclizer = {
      fGravitationalPullRadius = 10,
      fGravitationalPull = -13,
      fRecyclingImpulse = 0,
      fPopulateTime = 0.5,
      fRecyclingTime = 0.5,
      fMaxScrapAmmo = 10,
      RecycleHelper = {
        bHideCenterObjects = 1,
        fSprayImpulseDegree = 10,
        SprayImpulseRange = {min = 8, max = 12},
        SprayImpulseZeroGRange = {min = 0.8, max = 1.2},
        PercentRecycleRange = {min = 0.75, max = 0.79},
        nMaxIngredientsPerType = 6,
        nMaxTotalIngredients = 12,
        nMaxTotalScraps = 500,
        fPercentScrapPool = 0.42,
        fRecyclingRadius = 6,
        fRecyclingKillRadius = 1,
        fConeRadius = 4,
        fConeHeight = 8,
        sSprayAttachmentName = "spray",
        signalpackage_RecyclePackageId = "10641886185795235880",
        signalpackage_RecycleKillPackageId = "10641886185795235880",
        particleeffect_EntityGravityEffect = "PlayerWeapons.Grenade.Recycler.RefractionPull_01",
        particleeffect_EntityGravityEffect_Cheap = "PlayerWeapons.Grenade.Recycler.RefractionPull_01",
        sOverrideRecycleClasses = "OverrideRecycleClasses"
      }
    }
  },
  PropertiesInstance = {
    iInitialAmmo = 100,
    fStartingConditionOverride = -1,
    weaponEnchantment_WeaponEnchantmentOverride = ""
  }
}
ArkMakeDerivedEntityOverride(ArkWeaponRecyclizer, ArkItem, true)
