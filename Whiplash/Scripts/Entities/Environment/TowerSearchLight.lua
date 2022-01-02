local L0_5370, L1_5371, L2_5372, L3_5373
L0_5370 = {}
L0_5370.type = "TowerSearchLight"
L1_5371 = {}
L1_5371.bEnabled = 1
L1_5371.bCanDetectStealth = 0
L1_5371.bAlwaysSeePlayer = 0
L1_5371.visionFOV = 5
L1_5371.visionRange = 1000
L1_5371.hearingRange = 200
L1_5371.alertAIGroupId = -1
L1_5371.burstDispersion = 10
L1_5371.timeBetweenShootsInABurst = 0.5
L1_5371.offsetDistPrediction = 10
L1_5371.minPlayerSpeedForOffsetDistPrediction = 0.3
L1_5371.maxDistancePrediction = 0
L1_5371.preshootTime = 2
L1_5371.weapon = "TowerRocketLauncher"
L1_5371.objLaserBeamModel = "engine/engineassets/objects/default.cgf"
L1_5371.audioBackground = "TowerSearchLight_Background"
L1_5371.audioShoot = "TowerSearchLight_Shoot"
L1_5371.audioPreshoot = "TowerSearchLight_Preshoot"
L1_5371.laserBeamThicknessScale = 20
L1_5371.visionPersistenceTime = 0
L2_5372 = {}
L3_5373 = {}
L3_5373.linkName = ""
L3_5373.distFromTarget = 0
L3_5373.rotationZ = 0
L2_5372.attachment1 = L3_5373
L3_5373 = {}
L3_5373.linkName = ""
L3_5373.distFromTarget = 0
L3_5373.rotationZ = 0
L2_5372.attachment2 = L3_5373
L3_5373 = {}
L3_5373.linkName = ""
L3_5373.distFromTarget = 0
L3_5373.rotationZ = 0
L2_5372.attachment3 = L3_5373
L3_5373 = {}
L3_5373.linkName = ""
L3_5373.distFromTarget = 0
L3_5373.rotationZ = 0
L2_5372.attachment4 = L3_5373
L1_5371.attachments = L2_5372
L2_5372 = {}
L3_5373 = {}
L3_5373.bEnabled = 1
L3_5373.vOffset = {
  x = 0,
  y = 0,
  z = 0
}
L2_5372.spot1 = L3_5373
L3_5373 = {}
L3_5373.bEnabled = 0
L3_5373.vOffset = {
  x = 0,
  y = 0,
  z = 0
}
L2_5372.spot2 = L3_5373
L3_5373 = {}
L3_5373.bEnabled = 0
L3_5373.vOffset = {
  x = 0,
  y = 0,
  z = 0
}
L2_5372.spot3 = L3_5373
L1_5371.weaponSpots = L2_5372
L2_5372 = {}
L3_5373 = {}
L3_5373.timeToFirstBurst = 1.5
L3_5373.timeToFirstBurstIfStealth = 1.5
L3_5373.numWarningBursts = 0
L3_5373.timeBetweenWarningBursts = 5
L3_5373.errorAddedToWarningBursts = 10
L3_5373.timeBetweenBursts = 5
L3_5373.followDelay = 1
L3_5373.trackSpeed = 3
L3_5373.detectionSoundSequenceCoolDownTime = 20
L3_5373.audioDetection1 = {
  audio = "TowerSearchLight_Detection1",
  delay = 0
}
L3_5373.audioDetection2 = {
  audio = "TowerSearchLight_Detection2",
  delay = 1
}
L3_5373.audioDetection3 = {
  audio = "TowerSearchLight_Detection3",
  delay = 1.5
}
L2_5372.enemyInView = L3_5373
L3_5373 = {}
L3_5373.maxDistSearch = 6
L3_5373.timeSearching = 10
L3_5373.searchSpeed = 3
L3_5373.timeToFirstBurst = 1000
L3_5373.timeBetweenBursts = 10
L3_5373.minErrorShoot = 5
L3_5373.maxErrorShoot = 15
L2_5372.enemyLost = L3_5373
L1_5371.behaviour = L2_5372
L0_5370.Properties = L1_5371
L1_5371 = {}
L1_5371.Icon = "mine.bmp"
L0_5370.Editor = L1_5371
L1_5371 = {}
L0_5370.Client = L1_5371
L1_5371 = {}
L0_5370.Server = L1_5371
TowerSearchLight = L0_5370
L0_5370 = TowerSearchLight
function L1_5371(A0_5374)
  A0_5374.TowerSearchLight:OnPropertyChange()
end
L0_5370.OnPropertyChange = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5375, A1_5376, A2_5377)
  A0_5375.TowerSearchLight:SetEntityIdleMovement(A2_5377.id)
end
L0_5370.Event_SetEntityIdleMovement = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5378, A1_5379, A2_5380)
  A0_5378.TowerSearchLight:SetAlertAIGroupID(A2_5380)
end
L0_5370.Event_SetAlertAIGroupId = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5381)
  A0_5381.TowerSearchLight:Enable()
end
L0_5370.Event_Enable = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5382)
  A0_5382.TowerSearchLight:Disable()
end
L0_5370.Event_Disable = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5383)
  A0_5383.TowerSearchLight:Sleep()
end
L0_5370.Event_Sleep = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5384)
  A0_5384.TowerSearchLight:Wakeup()
end
L0_5370.Event_Wakeup = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5385)
  A0_5385.TowerSearchLight:DisableWeaponSpot(0)
end
L0_5370.Event_DisableWeaponSpot1 = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5386)
  A0_5386.TowerSearchLight:DisableWeaponSpot(1)
end
L0_5370.Event_DisableWeaponSpot2 = L1_5371
L0_5370 = TowerSearchLight
function L1_5371(A0_5387)
  A0_5387.TowerSearchLight:DisableWeaponSpot(2)
end
L0_5370.Event_DisableWeaponSpot3 = L1_5371
L0_5370 = TowerSearchLight
L1_5371 = {}
L2_5372 = {}
L3_5373 = {
  TowerSearchLight.Event_SetAlertAIGroupId,
  "int"
}
L2_5372.SetAlertAIGroupId = L3_5373
L3_5373 = {
  TowerSearchLight.Event_SetEntityIdleMovement,
  "entity"
}
L2_5372.SetEntityIdleMovement = L3_5373
L3_5373 = {
  TowerSearchLight.Event_Enable,
  "any"
}
L2_5372.Enable = L3_5373
L3_5373 = {
  TowerSearchLight.Event_Disable,
  "any"
}
L2_5372.Disable = L3_5373
L3_5373 = {
  TowerSearchLight.Event_Sleep,
  "any"
}
L2_5372.Sleep = L3_5373
L3_5373 = {
  TowerSearchLight.Event_Wakeup,
  "any"
}
L2_5372.Wakeup = L3_5373
L3_5373 = {
  TowerSearchLight.Event_DisableWeaponSpot1,
  "any"
}
L2_5372.DisableWeaponSpot1 = L3_5373
L3_5373 = {
  TowerSearchLight.Event_DisableWeaponSpot2,
  "any"
}
L2_5372.DisableWeaponSpot2 = L3_5373
L3_5373 = {
  TowerSearchLight.Event_DisableWeaponSpot3,
  "any"
}
L2_5372.DisableWeaponSpot3 = L3_5373
L1_5371.Inputs = L2_5372
L2_5372 = {}
L2_5372.PlayerDetected = "bool"
L2_5372.SoundHeard = "bool"
L2_5372.PlayerLost = "bool"
L2_5372.Preshoot = "bool"
L2_5372.Shoot = "bool"
L2_5372.Burst = "bool"
L1_5371.Outputs = L2_5372
L0_5370.FlowEvents = L1_5371
