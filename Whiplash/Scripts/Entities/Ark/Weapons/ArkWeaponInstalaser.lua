Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkWeaponInstalaser = {
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
        fMaxStartCondition = 50,
        signalModifier_DisrepairModifier = ""
      },
      tutorial_firstTimePickup = "",
      tutorial_weaponCard = "",
      particleeffect_DisarmEffect = "Characters.Aliens.Poltergeist.Disarm.Disarm_Embers_Trail_00",
      sDisarmAttachmentName = "muzzle",
      sUpgradeInfoDesc = "@ui_LabtechRequired",
      metaTags_SneakAttackTargetTags = "9469288860498988665,9469288860498988629,9469288860517748071",
      nDisruptionSubMatIndex = 2,
      particleeffect_DisruptionVFX = "PlayerWeapons.InstaLaser.EMP.Laser_Emp_00",
      sDisruptionVFXAttachName = "FX_Emp",
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
    Instalaser = {
      object_LaserGeometryName = "Objects/ArkEffects/Weapons/HeavyLaser/heavylaser_initialbeam_green.cgf",
      object_ReflectionGeometryName = "Objects/ArkEffects/Weapons/HeavyLaser/heavylaser_beam_green.cgf",
      object_LaserDotGeometryName = "",
      nMaxNumReflections = 2,
      nDamageType = 1,
      nChargeType = 0,
      fMinLaserThickness = 0.005,
      fMaxLaserThickness = 0.055,
      fMaxBeamThicknessScaleTime = 1,
      fBeamHitOffset = 0.01,
      fAmmoPerDamage = 1,
      fMinAmmoConsumptionRate = 10,
      fMaxAmmoConsumptionRate = 100,
      fDamagePerSecond = 100,
      fDamageExponentialFactor = 0.35,
      fTimeToMaxDamage = 3,
      fMinDamagePerSecond = 100,
      fMaxDamagePerSecond = 2000,
      fIdleGlowAmount = 2,
      fFireGlowAmount = 10,
      fGlowTime = 1,
      nGlowSubMaterial = 3,
      nLaserSubMaterial = 2,
      sHitType = "ArkInstalaserBeam",
      signalpackage_SignalPackageId = "3149325216914689683",
      particleeffect_AdditionalEffect = "PlayerWeapons.InstaLaser.FakeGlow_00",
      particleeffect_BeamEndEffect = "PlayerWeapons.InstaLaser.EndOfBeamGlow_00",
      fBeamEndJumpDistance = 1
    }
  },
  PropertiesInstance = {
    iInitialAmmo = 100,
    fStartingConditionOverride = -1,
    weaponEnchantment_WeaponEnchantmentOverride = ""
  }
}
ArkMakeDerivedEntityOverride(ArkWeaponInstalaser, ArkItem, true)