local L0_5297, L1_5298, L2_5299, L3_5300
L0_5297 = {}
L0_5297.type = "Snow"
L1_5298 = {}
L1_5298.bEnabled = 1
L1_5298.fRadius = 50
L2_5299 = {}
L2_5299.fSnowAmount = 10
L2_5299.fFrostAmount = 1
L2_5299.fSurfaceFreezing = 1
L1_5298.Surface = L2_5299
L2_5299 = {}
L2_5299.nSnowFlakeCount = 100
L2_5299.fSnowFlakeSize = 1
L2_5299.fBrightness = 1
L2_5299.fGravityScale = 0.1
L2_5299.fWindScale = 0.1
L2_5299.fTurbulenceStrength = 0.5
L2_5299.fTurbulenceFreq = 0.1
L1_5298.SnowFall = L2_5299
L0_5297.Properties = L1_5298
L1_5298 = {}
L1_5298.Icon = "shake.bmp"
L0_5297.Editor = L1_5298
Snow = L0_5297
L0_5297 = Snow
function L1_5298(A0_5301)
  A0_5301:OnReset()
end
L0_5297.OnInit = L1_5298
L0_5297 = Snow
function L1_5298(A0_5302)
  A0_5302:OnReset()
end
L0_5297.OnPropertyChange = L1_5298
L0_5297 = Snow
function L1_5298(A0_5303)
  local L1_5304
end
L0_5297.OnReset = L1_5298
L0_5297 = Snow
function L1_5298(A0_5305, A1_5306)
end
L0_5297.OnSave = L1_5298
L0_5297 = Snow
function L1_5298(A0_5307, A1_5308)
end
L0_5297.OnLoad = L1_5298
L0_5297 = Snow
function L1_5298(A0_5309)
  local L1_5310
end
L0_5297.OnShutDown = L1_5298
L0_5297 = Snow
function L1_5298(A0_5311, A1_5312)
  A0_5311.Properties.bEnabled = 1
  A0_5311:ActivateOutput("Enable", true)
end
L0_5297.Event_Enable = L1_5298
L0_5297 = Snow
function L1_5298(A0_5313, A1_5314)
  A0_5313.Properties.bEnabled = 0
  A0_5313:ActivateOutput("Disable", true)
end
L0_5297.Event_Disable = L1_5298
L0_5297 = Snow
function L1_5298(A0_5315, A1_5316, A2_5317)
  A0_5315.Properties.fRadius = A2_5317
end
L0_5297.Event_SetRadius = L1_5298
L0_5297 = Snow
function L1_5298(A0_5318, A1_5319, A2_5320)
  local L3_5321
  L3_5321 = A0_5318.Properties
  L3_5321 = L3_5321.Surface
  L3_5321.fSnowAmount = A2_5320
end
L0_5297.Event_SetSnowAmount = L1_5298
L0_5297 = Snow
function L1_5298(A0_5322, A1_5323, A2_5324)
  local L3_5325
  L3_5325 = A0_5322.Properties
  L3_5325 = L3_5325.Surface
  L3_5325.fFrostAmount = A2_5324
end
L0_5297.Event_SetFrostAmount = L1_5298
L0_5297 = Snow
function L1_5298(A0_5326, A1_5327, A2_5328)
  local L3_5329
  L3_5329 = A0_5326.Properties
  L3_5329 = L3_5329.Surface
  L3_5329.fSurfaceFreezing = A2_5328
end
L0_5297.Event_SetSurfaceFreezing = L1_5298
L0_5297 = Snow
function L1_5298(A0_5330, A1_5331, A2_5332)
  local L3_5333
  L3_5333 = A0_5330.Properties
  L3_5333 = L3_5333.SnowFall
  L3_5333.fSnowFlakeSize = A2_5332
end
L0_5297.Event_SetSnowFlakeSize = L1_5298
L0_5297 = Snow
function L1_5298(A0_5334, A1_5335, A2_5336)
  local L3_5337
  L3_5337 = A0_5334.Properties
  L3_5337 = L3_5337.SnowFall
  L3_5337.fBrightness = A2_5336
end
L0_5297.Event_SetSnowFallBrightness = L1_5298
L0_5297 = Snow
function L1_5298(A0_5338, A1_5339, A2_5340)
  local L3_5341
  L3_5341 = A0_5338.Properties
  L3_5341 = L3_5341.SnowFall
  L3_5341.fGravityScale = A2_5340
end
L0_5297.Event_SetSnowFallGravityScale = L1_5298
L0_5297 = Snow
function L1_5298(A0_5342, A1_5343, A2_5344)
  local L3_5345
  L3_5345 = A0_5342.Properties
  L3_5345 = L3_5345.SnowFall
  L3_5345.fWindScale = A2_5344
end
L0_5297.Event_SetSnowFallWindScale = L1_5298
L0_5297 = Snow
function L1_5298(A0_5346, A1_5347, A2_5348)
  local L3_5349
  L3_5349 = A0_5346.Properties
  L3_5349 = L3_5349.SnowFall
  L3_5349.fTurbulenceStrength = A2_5348
end
L0_5297.Event_SetSnowFallTurbulence = L1_5298
L0_5297 = Snow
function L1_5298(A0_5350, A1_5351, A2_5352)
  local L3_5353
  L3_5353 = A0_5350.Properties
  L3_5353 = L3_5353.SnowFall
  L3_5353.fTurbulenceFreq = A2_5352
end
L0_5297.Event_SetSnowFallTurbulenceFreq = L1_5298
L0_5297 = Snow
L1_5298 = {}
L2_5299 = {}
L3_5300 = {
  Snow.Event_Disable,
  "bool"
}
L2_5299.Disable = L3_5300
L3_5300 = {
  Snow.Event_Enable,
  "bool"
}
L2_5299.Enable = L3_5300
L3_5300 = {
  Snow.Event_SetRadius,
  "float"
}
L2_5299.Radius = L3_5300
L3_5300 = {
  Snow.Event_SetSnowAmount,
  "float"
}
L2_5299.SnowAmount = L3_5300
L3_5300 = {
  Snow.Event_SetFrostAmount,
  "float"
}
L2_5299.FrostAmount = L3_5300
L3_5300 = {
  Snow.Event_SetSurfaceFreezing,
  "float"
}
L2_5299.SurfaceFreezing = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFlakeSize,
  "float"
}
L2_5299.SnowFlakeSize = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFallBrightness,
  "float"
}
L2_5299.SnowFallBrightness = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFallGravityScale,
  "float"
}
L2_5299.SnowFallGravityScale = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFallWindScale,
  "float"
}
L2_5299.SnowFallWindScale = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFallTurbulence,
  "float"
}
L2_5299.SnowFallTurbulence = L3_5300
L3_5300 = {
  Snow.Event_SetSnowFallTurbulenceFreq,
  "float"
}
L2_5299.SnowFallTurbulenceFreq = L3_5300
L1_5298.Inputs = L2_5299
L2_5299 = {}
L2_5299.Disable = "bool"
L2_5299.Enable = "bool"
L1_5298.Outputs = L2_5299
L0_5297.FlowEvents = L1_5298
