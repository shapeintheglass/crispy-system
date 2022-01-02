local L0_5454, L1_5455, L2_5456, L3_5457
L0_5454 = {}
L0_5454.type = "WaterVolume"
L1_5455 = {}
L1_5455.StreamSpeed = 0
L1_5455.FogDensity = 0.5
L2_5456 = {}
L2_5456.x = 0.005
L2_5456.y = 0.01
L2_5456.z = 0.02
L1_5455.color_FogColor = L2_5456
L1_5455.FogColorMultiplier = 0.5
L1_5455.bFogColorAffectedBySun = 1
L1_5455.FogShadowing = 0.5
L1_5455.bCapFogAtVolumeDepth = 0
L1_5455.bCaustics = 1
L1_5455.CausticIntensity = 1
L1_5455.CausticTiling = 1
L1_5455.CausticHeight = 0.5
L1_5455.UScale = 1
L1_5455.VScale = 1
L1_5455.Depth = 5
L1_5455.ViewDistanceRatio = 100
L1_5455.MinSpec = 0
L1_5455.MaterialLayerMask = 0
L1_5455.bAwakeAreaWhenMoving = 0
L1_5455.bIsRiver = 0
L2_5456 = {}
L2_5456.bNetworked = 0
L1_5455.MultiplayerOptions = L2_5456
L0_5454.Properties = L1_5455
L1_5455 = {}
L1_5455.Model = "Editor/Objects/T.cgf"
L1_5455.Icon = "Water.bmp"
L1_5455.ShowBounds = 1
L1_5455.IsScalable = false
L1_5455.IsRotatable = true
L0_5454.Editor = L1_5455
WaterVolume = L0_5454
L0_5454 = WaterVolume
function L1_5455(A0_5458)
  if A0_5458.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_5458:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
end
L0_5454.OnSpawn = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5459)
  local L1_5460
end
L0_5454.OnPropertyChange = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5461)
  local L1_5462
  L1_5462 = 1
  return L1_5462
end
L0_5454.IsShapeOnly = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5463)
  A0_5463:Hide(1)
  A0_5463:ActivateOutput("Hidden", true)
end
L0_5454.Event_Hide = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5464)
  A0_5464:Hide(0)
  A0_5464:ActivateOutput("UnHidden", true)
end
L0_5454.Event_UnHide = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5465)
  Game.SendEventToGameObject(A0_5465.id, "PhysicsEnable")
end
L0_5454.Event_PhysicsEnable = L1_5455
L0_5454 = WaterVolume
function L1_5455(A0_5466)
  Game.SendEventToGameObject(A0_5466.id, "PhysicsDisable")
end
L0_5454.Event_PhysicsDisable = L1_5455
L0_5454 = WaterVolume
L1_5455 = {}
L2_5456 = {}
L3_5457 = {
  WaterVolume.Event_Hide,
  "bool"
}
L2_5456.Hide = L3_5457
L3_5457 = {
  WaterVolume.Event_UnHide,
  "bool"
}
L2_5456.UnHide = L3_5457
L3_5457 = {
  WaterVolume.Event_PhysicsEnable,
  "bool"
}
L2_5456.PhysicsEnable = L3_5457
L3_5457 = {
  WaterVolume.Event_PhysicsDisable,
  "bool"
}
L2_5456.PhysicsDisable = L3_5457
L1_5455.Inputs = L2_5456
L2_5456 = {}
L2_5456.Hidden = "bool"
L2_5456.UnHidden = "bool"
L1_5455.Outputs = L2_5456
L0_5454.FlowEvents = L1_5455
