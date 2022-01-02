Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkWeaponRecyclerGrenade = {
  Properties = {
    object_GeometryFP = "Objects/weapons/RecyclerGrenade/1P/RecyclerGrenade1P.cdf",
    object_GeometryTP = "Objects/weapons/RecyclerGrenade/3P/RecyclerGrenade3P.cdf",
    bEquippable = 1,
    fLerpSpeed = 10,
    textDisplayName = "@i_weaponrecyclegrenade",
    sHUDIcon = "recycle",
    Description = {textFocusDescription = ""},
    Weapon = {
      anim_Animation = "",
      sAnimTag = "grenade",
      sAttachmentName = "weapon",
      archetype_ammo = "ArkProjectiles.Charges.Recycler",
      sAmmoSpawnPointName = "weapon",
      fAimRange = 3,
      fBaseAmmoCost = 1,
      nClipSize = 1,
      fReloadSpeed = 1,
      fRateOfAttack = 20,
      bAutoloadAmmo = 1,
      nNumAmmoReloaded = 1,
      fCriticalShotChance = 0,
      bAffectedByDisruption = 0,
      fWalkSpeedMultiplier = 1,
      fCameraSpeedMultiplier = 0.4,
      fZoomedHFOV = 70,
      fZoomTime = 0.4,
      fZoomedWalkSpeedMultiplier = 0.5,
      fZoomedCameraSpeedMultiplier = 0.5,
      fIdleBreakDelayTime = 8,
      fIronsightsTargetWidth = 0.5,
      fIronsightsTargetDistance = 5,
      fIronsightsTargetSpeed = 5,
      fAimAssistRangeMax = 20,
      sLeverageImpulseScaleBaseName = "Leverage Base",
      sLeverageImpulseScale1Name = "Leverage I",
      sLeverageImpulseScale2Name = "Leverage II",
      sLeverageImpulseScale3Name = "Leverage III",
      fLeverage0_ImpulseScale = 0,
      fLeverage1_ImpulseScale = 0,
      fLeverage2_ImpulseScale = 0,
      fLeverage3_ImpulseScale = 0,
      tutorial_firstTimePickup = "15373294129886683577",
      tutorial_weaponCard = "",
      particleeffect_DisarmEffect = "Characters.Aliens.Poltergeist.Disarm.Disarm_Embers_Trail_00",
      sDisarmAttachmentName = "ArkLight_Recycler",
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
    Grenade = {
      fProximityRange = 1.25,
      signalpackage_ProximityPlacedPackageId = "2524450536727669218",
      fMinSpeed = 10,
      fMaxSpeed = 45,
      fAttachDistance = 0.07,
      fMaxHoldTime = 3,
      sCancelHintString = "@ui_Weapon_Cancel",
      sDeployHintString = "@ui_NagPlaceCharge"
    }
  }
}
ArkMakeDerivedEntityOverride(ArkWeaponRecyclerGrenade, ArkItem, true)
