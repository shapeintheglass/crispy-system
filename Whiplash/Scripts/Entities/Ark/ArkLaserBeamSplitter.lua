Script.ReloadScript("Scripts/Entities/Physics/DestroyableObject.lua")
ArkLaserBeamSplitter = {
  Properties = {
    object_Model = "Objects/default/primitive_box.cgf",
    object_ModelDestroyed = "Objects/default/primitive_sphere.cgf",
    BeamSplitter = {
      PrimaryWeapon = "ArkBeamSplitterLaser",
      PrimaryWeaponJointName = "weaponjoint",
      bVerboseLogging = 0,
      fChargingTime = 0.75,
      fMaxGlowAmount = 5,
      fSplitDegreesPerSecond = 60
    }
  },
  Editor = {Icon = "mine.bmp", IconOnTop = 1},
  Client = {},
  Server = {},
  defaultMaterial = "Materials/ArkEffects/Temporary/beamsplitter",
  bVerbose = false
}
ArkMakeDerivedEntityOverride(ArkLaserBeamSplitter, DestroyableObject, true)
function ArkLaserBeamSplitter.Log(A0_4176, A1_4177)
  if A0_4176.bVerbose then
    System.Log(A1_4177)
  end
end
function ArkLaserBeamSplitter.Server.OnInit(A0_4178)
  A0_4178.bVerbose = A0_4178.Properties.BeamSplitter.bVerboseLogging == 1
  A0_4178:CommonInit()
  A0_4178:SetMaterial(A0_4178.defaultMaterial)
  A0_4178:Log("ArkLaserBeamSplitter Game Init!")
end
function ArkLaserBeamSplitter.Event_StartFiring(A0_4179, A1_4180)
  BroadcastEvent(A0_4179, "Started")
end
function ArkLaserBeamSplitter.Event_StopFiring(A0_4181, A1_4182)
  BroadcastEvent(A0_4181, "Stopped")
end
ArkLaserBeamSplitter.FlowEvents.Inputs.StartFiring = {
  ArkLaserBeamSplitter.Event_StartFiring,
  "bool"
}
ArkLaserBeamSplitter.FlowEvents.Inputs.StopFiring = {
  ArkLaserBeamSplitter.Event_StopFiring,
  "bool"
}
ArkLaserBeamSplitter.FlowEvents.Outputs.Destroyed = "bool"
ArkLaserBeamSplitter.FlowEvents.Outputs.Damaged = "bool"
ArkLaserBeamSplitter.FlowEvents.Outputs.Started = "bool"
ArkLaserBeamSplitter.FlowEvents.Outputs.Stopped = "bool"
