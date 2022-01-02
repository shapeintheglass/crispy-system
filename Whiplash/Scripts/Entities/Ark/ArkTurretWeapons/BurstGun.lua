local L0_2891, L1_2892, L2_2893
L0_2891 = {}
L0_2891.sExtensionName = "ArkTurretWeaponBurstGun"
L1_2892 = {}
L1_2892.shootAttachmentName = ""
L1_2892.archetype_ammoType = "ArkProjectiles.Bullets.TurretRound_Default"
L1_2892.fValidShootAngle = 0
L1_2892.fTimeTillBulletsPerSecMax = 3
L1_2892.fBulletsPerSecondMin = 2
L1_2892.fBulletsPerSecondMax = 12
L1_2892.fMissSpreadMinDegrees = 15
L1_2892.fMissSpreadMaxDegrees = 45
L1_2892.fPercentagePlayerHitMin = 0.1
L1_2892.fPercentagePlayerHitMax = 0.5
L1_2892.fDistanceForMinHitChance = 20
L1_2892.fDistanceForMaxHitChance = 0
L1_2892.iBulletsPerBurst = 6
L1_2892.fBurstCooldown = 2
L1_2892.bIgnoreShootAngleWhileShooting = false
L2_2893 = {}
L2_2893.fWindupDuration = -1
L2_2893.fShootingDuration = -1
L2_2893.fCooldownDuration = -1
L1_2892.ArkTimers = L2_2893
L2_2893 = {}
L2_2893.particleeffect_windUpEffect = ""
L2_2893.particleeffect_cooldownEffect = ""
L2_2893.attachment_windUpEffectAttachment = ""
L2_2893.attachment_cooldownEffectAttachment = ""
L1_2892.ArkEffects = L2_2893
L0_2891.Properties = L1_2892
L1_2892 = {}
L1_2892.Icon = "User.bmp"
L1_2892.IconOnTop = 1
L0_2891.Editor = L1_2892
ArkTurretWeaponBurstGun = L0_2891