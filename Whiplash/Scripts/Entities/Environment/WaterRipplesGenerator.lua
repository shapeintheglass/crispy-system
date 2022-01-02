local L0_5412, L1_5413, L2_5414, L3_5415
L0_5412 = {}
L0_5412.type = "WaterRipplesGenerator"
L1_5413 = {}
L1_5413.bEnabled = 1
L1_5413.fScale = 1
L1_5413.fStrength = 1
L2_5414 = {}
L2_5414.bAutoSpawn = 0
L2_5414.bSpawnOnMovement = 1
L2_5414.fFrequency = 1
L1_5413.Spawning = L2_5414
L2_5414 = {}
L2_5414.fRandomFreq = 0
L2_5414.fRandomScale = 0
L2_5414.fRandomStrength = 0
L2_5414.fRandomOffsetX = 0
L2_5414.fRandomOffsetY = 0
L1_5413.Randomization = L2_5414
L0_5412.Properties = L1_5413
L1_5413 = {}
L1_5413.Icon = "seed.bmp"
L0_5412.Editor = L1_5413
L1_5413 = {}
L0_5412.Client = L1_5413
L1_5413 = {}
L0_5412.Server = L1_5413
WaterRipplesGenerator = L0_5412
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5416)
  Game.SendEventToGameObject(A0_5416.id, "propertyChanged")
end
L0_5412.OnPropertyChange = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5417)
  Game.SendEventToGameObject(A0_5417.id, "enable")
end
L0_5412.Event_Enable = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5418)
  Game.SendEventToGameObject(A0_5418.id, "disable")
end
L0_5412.Event_Disable = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5419, A1_5420, A2_5421)
  local L3_5422
  L3_5422 = A0_5419.Properties
  L3_5422 = L3_5422.Spawning
  L3_5422.bAutoSpawn = A2_5421
end
L0_5412.Event_AutoSpawn = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5423, A1_5424, A2_5425)
  local L3_5426
  L3_5426 = A0_5423.Properties
  L3_5426 = L3_5426.Spawning
  L3_5426.bSpawnOnMovement = A2_5425
end
L0_5412.Event_SpawnOnMovement = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5427, A1_5428, A2_5429)
  A0_5427.Properties.fScale = A2_5429
end
L0_5412.Event_SetScale = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5430, A1_5431, A2_5432)
  local L3_5433
  L3_5433 = A0_5430.Properties
  L3_5433 = L3_5433.Randomization
  L3_5433.fRandomScale = A2_5432
end
L0_5412.Event_SetRandomScale = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5434, A1_5435, A2_5436)
  A0_5434.Properties.fStrength = A2_5436
end
L0_5412.Event_SetStrength = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5437, A1_5438, A2_5439)
  local L3_5440
  L3_5440 = A0_5437.Properties
  L3_5440 = L3_5440.Randomization
  L3_5440.fRandomStrength = A2_5439
end
L0_5412.Event_SetRandomStrength = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5441, A1_5442, A2_5443)
  local L3_5444
  L3_5444 = A0_5441.Properties
  L3_5444 = L3_5444.Spawning
  L3_5444.fFrequency = A2_5443
end
L0_5412.Event_SetFrequency = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5445, A1_5446, A2_5447)
  local L3_5448
  L3_5448 = A0_5445.Properties
  L3_5448 = L3_5448.Randomization
  L3_5448.fRandomFreq = A2_5447
end
L0_5412.Event_SetRandomFreq = L1_5413
L0_5412 = WaterRipplesGenerator
function L1_5413(A0_5449, A1_5450, A2_5451)
  local L3_5452, L4_5453
  L3_5452 = A0_5449.Properties
  L3_5452 = L3_5452.Randomization
  L4_5453 = A2_5451.x
  L3_5452.fRandomOffsetX = L4_5453
  L3_5452 = A0_5449.Properties
  L3_5452 = L3_5452.Randomization
  L4_5453 = A2_5451.y
  L3_5452.fRandomOffsetY = L4_5453
end
L0_5412.Event_SetRandomOffset = L1_5413
L0_5412 = WaterRipplesGenerator
L1_5413 = {}
L2_5414 = {}
L3_5415 = {
  WaterRipplesGenerator.Event_Enable,
  "any"
}
L2_5414.Enable = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_Disable,
  "any"
}
L2_5414.Disable = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_AutoSpawn,
  "bool"
}
L2_5414.AutoSpawn = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SpawnOnMovement,
  "bool"
}
L2_5414.SpawnOnMovement = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetScale,
  "float"
}
L2_5414.Scale = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetRandomScale,
  "float"
}
L2_5414.RandomScale = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetStrength,
  "float"
}
L2_5414.Strength = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetRandomStrength,
  "float"
}
L2_5414.RandomStrength = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetFrequency,
  "float"
}
L2_5414.Frequency = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetRandomFreq,
  "float"
}
L2_5414.RandomFreq = L3_5415
L3_5415 = {
  WaterRipplesGenerator.Event_SetRandomOffset,
  "vec3"
}
L2_5414.RandomOffset = L3_5415
L1_5413.Inputs = L2_5414
L2_5414 = {}
L2_5414.Disable = "bool"
L2_5414.Enable = "bool"
L1_5413.Outputs = L2_5414
L0_5412.FlowEvents = L1_5413
