local L0_3561, L1_3562, L2_3563, L3_3564
L0_3561 = {}
L1_3562 = {}
L2_3563 = {}
L2_3563.distractor_ArkDistractor = ""
L2_3563.archetype_DebugNpcArchetype = ""
L1_3562.ArkDistractor = L2_3563
L0_3561.Properties = L1_3562
L1_3562 = {}
L2_3563 = {}
L2_3563.fDistractionRadius = -1
L2_3563.fTryDistractionCD = -1
L2_3563.fChanceToDistract = -1
L2_3563.fOnUseWaitTime = -1
L2_3563.fOnUseCooldown = -1
L3_3564 = {}
L3_3564.fStandAngle = -1
L3_3564.fMinStandDistance = -1
L3_3564.fMaxStandDistance = -1
L2_3563.POS = L3_3564
L3_3564 = {}
L3_3564.fStartRelativePosX = -1
L3_3564.fStartRelativePosY = -1
L3_3564.fStartRelativePosZ = -1
L2_3563.LOS = L3_3564
L1_3562.ArkDistractorOverride = L2_3563
L0_3561.PropertiesInstance = L1_3562
L1_3562 = {}
L1_3562.Icon = "DistractorPoint.bmp"
L1_3562.IconOnTop = 0
L0_3561.Editor = L1_3562
ArkDistractor = L0_3561
L0_3561 = ArkDistractor
function L1_3562(A0_3565)
  BroadcastEvent(A0_3565, "EnableDis")
end
L0_3561.Event_Enable = L1_3562
L0_3561 = ArkDistractor
function L1_3562(A0_3566)
  BroadcastEvent(A0_3566, "DisableDis")
end
L0_3561.Event_Disable = L1_3562
L0_3561 = ArkDistractor
L1_3562 = {}
L2_3563 = {}
L3_3564 = {
  ArkDistractor.Event_Enable,
  "bool"
}
L2_3563.Enable = L3_3564
L3_3564 = {
  ArkDistractor.Event_Disable,
  "bool"
}
L2_3563.Disable = L3_3564
L1_3562.Inputs = L2_3563
L2_3563 = {}
L1_3562.Outputs = L2_3563
L0_3561.FlowEvents = L1_3562
