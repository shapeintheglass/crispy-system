local L0_6995, L1_6996, L2_6997, L3_6998
L0_6995 = {}
L1_6996 = {}
L1_6996.fileModel = "engine/engineassets/objects/default.cgf"
L1_6996.bUsable = 1
L1_6996.bTopBlocked = 0
L1_6996.height = 3.7
L1_6996.approachAngle = 60
L1_6996.approachAngleTop = 0
L2_6997 = {}
L2_6997.horizontalViewLimit = 30
L2_6997.verticalUpViewLimit = 0
L2_6997.verticalDownViewLimit = 0
L1_6996.ViewLimits = L2_6997
L2_6997 = {}
L2_6997.stopClimbDistanceFromTop = 1.92
L2_6997.stopClimbDistanceFromBottom = 0.5
L2_6997.playerHorizontalOffset = 0.38
L2_6997.getOnDistanceAwayTop = 1.4
L2_6997.getOnDistanceAwayBottom = 0.54
L1_6996.Offsets = L2_6997
L2_6997 = {}
L2_6997.movementAcceleration = 5
L2_6997.movementSpeedUpwards = 2.5
L2_6997.movementSpeedDownwards = 2.25
L2_6997.movementSettleSpeed = 0.8
L2_6997.movementInertiaDecayRate = 5.5
L1_6996.Movement = L2_6997
L2_6997 = {}
L2_6997.distanceBetweenRungs = 0.5
L2_6997.cameraAnimFraction_getOn = 0.85
L2_6997.cameraAnimFraction_getOff = 0.85
L2_6997.cameraAnimFraction_onLadder = 0.3
L2_6997.bUseThirdPersonCamera = 1
L2_6997.bRenderLadderLast = 0
L1_6996.Camera = L2_6997
L0_6995.Properties = L1_6996
L1_6996 = {}
L1_6996.Icon = "ladder.bmp"
L1_6996.IconOnTop = 1
L0_6995.Editor = L1_6996
L1_6996 = {}
L0_6995.Server = L1_6996
Ladder = L0_6995
L0_6995 = Ladder
function L1_6996(A0_6999)
  A0_6999:LoadObject(0, A0_6999.Properties.fileModel)
  A0_6999:Physicalize(0, PE_STATIC, {mass = 0, density = 0})
  if System.IsEditor() then
    A0_6999:Activate(1)
  end
end
L0_6995.OnSpawn = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7000)
  A0_7000:LoadObject(0, A0_7000.Properties.fileModel)
  A0_7000:Physicalize(0, PE_STATIC, {mass = 0, density = 0})
end
L0_6995.OnPropertyChange = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7001, A1_7002)
  return A0_7001.Properties.bUsable
end
L0_6995.IsUsable = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7003, A1_7004)
  local L2_7005
  L2_7005 = A0_7003.Properties
  L2_7005 = L2_7005.bUsable
  if L2_7005 == 1 then
    L2_7005 = "@use_ladder"
    return L2_7005
  end
end
L0_6995.GetUsableMessage = L1_6996
L0_6995 = Ladder
L0_6995 = L0_6995.Server
function L1_6996(A0_7006, A1_7007)
  if System.IsEditing() then
    Game.DebugDrawCylinder(A0_7006:GetWorldPos().x, A0_7006:GetWorldPos().y, A0_7006:GetWorldPos().z, 0.3, 0.3, 60, 60, 255, 100)
    Game.DebugDrawCylinder(A0_7006:GetWorldPos().x, A0_7006:GetWorldPos().y, A0_7006:GetWorldPos().z + A0_7006.Properties.height, 0.3, 0.3, 60, 60, 255, 100)
    Game.DebugDrawCylinder(A0_7006:GetWorldPos().x, A0_7006:GetWorldPos().y, A0_7006:GetWorldPos().z + A0_7006.Properties.height - A0_7006.Properties.Offsets.stopClimbDistanceFromTop, 0.3, 0.3, 255, 60, 60, 100)
    Game.DebugDrawCylinder(A0_7006:GetWorldPos().x, A0_7006:GetWorldPos().y, A0_7006:GetWorldPos().z + A0_7006.Properties.Offsets.stopClimbDistanceFromBottom, 0.3, 0.3, 255, 60, 60, 100)
  end
end
L0_6995.OnUpdate = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7008)
  A0_7008.Properties.bUsable = 1
end
L0_6995.Event_Enable = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7009)
  A0_7009.Properties.bUsable = 0
end
L0_6995.Event_Disable = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7010)
  A0_7010.Properties.bTopBlocked = 1
end
L0_6995.Event_TopBlocked = L1_6996
L0_6995 = Ladder
function L1_6996(A0_7011)
  A0_7011.Properties.bTopBlocked = 0
end
L0_6995.Event_TopUnblocked = L1_6996
L0_6995 = Ladder
L1_6996 = {}
L2_6997 = {}
L3_6998 = {
  Ladder.Event_Enable,
  "any"
}
L2_6997.EnableUsable = L3_6998
L3_6998 = {
  Ladder.Event_Disable,
  "any"
}
L2_6997.DisableUsable = L3_6998
L3_6998 = {
  Ladder.Event_TopBlocked,
  "any"
}
L2_6997.TopBlocked = L3_6998
L3_6998 = {
  Ladder.Event_TopUnblocked,
  "any"
}
L2_6997.TopUnblocked = L3_6998
L1_6996.Inputs = L2_6997
L2_6997 = {}
L2_6997.PlayerOn = "entity"
L2_6997.PlayerOff = "entity"
L1_6996.Outputs = L2_6997
L0_6995.FlowEvents = L1_6996
