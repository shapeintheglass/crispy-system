local L0_5235, L1_5236, L2_5237, L3_5238
L0_5235 = {}
L0_5235.type = "Rain"
L1_5236 = {}
L1_5236.bEnabled = 1
L1_5236.bIgnoreVisareas = 0
L1_5236.bDisableOcclusion = 0
L1_5236.fRadius = 10000
L1_5236.fAmount = 1
L2_5237 = {}
L2_5237.x = 1
L2_5237.y = 1
L2_5237.z = 1
L1_5236.clrColor = L2_5237
L1_5236.fFakeGlossiness = 0.5
L1_5236.fFakeReflectionsAmount = 1.5
L1_5236.fDiffuseDarkening = 0.5
L1_5236.fRainDropsAmount = 0.5
L1_5236.fRainDropsSpeed = 1
L1_5236.fRainDropsLighting = 1
L1_5236.fMistAmount = 3
L1_5236.fMistHeight = 8
L1_5236.fPuddlesAmount = 1.5
L1_5236.fPuddlesMaskAmount = 1
L1_5236.fPuddlesRippleAmount = 2
L1_5236.fSplashesAmount = 1.3
L0_5235.Properties = L1_5236
L1_5236 = {}
L1_5236.Icon = "shake.bmp"
L0_5235.Editor = L1_5236
Rain = L0_5235
L0_5235 = Rain
function L1_5236(A0_5239)
  A0_5239:OnReset()
end
L0_5235.OnInit = L1_5236
L0_5235 = Rain
function L1_5236(A0_5240)
  A0_5240:OnReset()
end
L0_5235.OnPropertyChange = L1_5236
L0_5235 = Rain
function L1_5236(A0_5241)
  local L1_5242
end
L0_5235.OnReset = L1_5236
L0_5235 = Rain
function L1_5236(A0_5243, A1_5244)
  local L2_5245
  L2_5245 = A0_5243.Properties
  L2_5245 = L2_5245.bEnabled
  A1_5244.bEnabled = L2_5245
end
L0_5235.OnSave = L1_5236
L0_5235 = Rain
function L1_5236(A0_5246, A1_5247)
  A0_5246.Properties.bEnabled = A1_5247.bEnabled
end
L0_5235.OnLoad = L1_5236
L0_5235 = Rain
function L1_5236(A0_5248)
  local L1_5249
end
L0_5235.OnShutDown = L1_5236
L0_5235 = Rain
function L1_5236(A0_5250, A1_5251)
  A0_5250.Properties.bEnabled = 1
  A0_5250:ActivateOutput("Enable", true)
end
L0_5235.Event_Enable = L1_5236
L0_5235 = Rain
function L1_5236(A0_5252, A1_5253)
  A0_5252.Properties.bEnabled = 0
  A0_5252:ActivateOutput("Disable", true)
end
L0_5235.Event_Disable = L1_5236
L0_5235 = Rain
function L1_5236(A0_5254, A1_5255, A2_5256)
  A0_5254.Properties.fAmount = A2_5256
end
L0_5235.Event_Amount = L1_5236
L0_5235 = Rain
function L1_5236(A0_5257, A1_5258, A2_5259)
  A0_5257.Properties.fRadius = A2_5259
end
L0_5235.Event_Radius = L1_5236
L0_5235 = Rain
function L1_5236(A0_5260, A1_5261, A2_5262)
  A0_5260.Properties.fMistAmount = A2_5262
end
L0_5235.Event_MistAmount = L1_5236
L0_5235 = Rain
function L1_5236(A0_5263, A1_5264, A2_5265)
  A0_5263.Properties.fPuddlesAmount = A2_5265
end
L0_5235.Event_PuddlesAmount = L1_5236
L0_5235 = Rain
function L1_5236(A0_5266, A1_5267, A2_5268)
  A0_5266.Properties.fRainDropsAmount = A2_5268
end
L0_5235.Event_RainDropsAmount = L1_5236
L0_5235 = Rain
function L1_5236(A0_5269, A1_5270, A2_5271)
  A0_5269.Properties.fRainDropsSpeed = A2_5271
end
L0_5235.Event_RainDropsSpeed = L1_5236
L0_5235 = Rain
L1_5236 = {}
L2_5237 = {}
L3_5238 = {
  Rain.Event_Disable,
  "bool"
}
L2_5237.Disable = L3_5238
L3_5238 = {
  Rain.Event_Enable,
  "bool"
}
L2_5237.Enable = L3_5238
L3_5238 = {
  Rain.Event_Amount,
  "float"
}
L2_5237.Amount = L3_5238
L3_5238 = {
  Rain.Event_Radius,
  "float"
}
L2_5237.Radius = L3_5238
L3_5238 = {
  Rain.Event_MistAmount,
  "float"
}
L2_5237.MistAmount = L3_5238
L3_5238 = {
  Rain.Event_PuddlesAmount,
  "float"
}
L2_5237.PuddlesAmount = L3_5238
L3_5238 = {
  Rain.Event_RainDropsAmount,
  "float"
}
L2_5237.RainDropsAmount = L3_5238
L3_5238 = {
  Rain.Event_RainDropsSpeed,
  "float"
}
L2_5237.RainDropsSpeed = L3_5238
L1_5236.Inputs = L2_5237
L2_5237 = {}
L2_5237.Disable = "bool"
L2_5237.Enable = "bool"
L1_5236.Outputs = L2_5237
L0_5235.FlowEvents = L1_5236
