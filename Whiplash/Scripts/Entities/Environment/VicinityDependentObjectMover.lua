local L0_5388, L1_5389, L2_5390, L3_5391
L0_5388 = {}
L0_5388.type = "VicinityDependentObjectMover"
L1_5389 = {}
L1_5389.objModel = "Objects/architecture/00_tutorial/columns/nanogon.cgf"
L1_5389.fMoveToDistance = 2
L1_5389.fMoveToSpeed = 30
L1_5389.fMoveBackSpeed = 30
L1_5389.fAreaTriggerRange = 10
L1_5389.fBackAreaTriggerRange = 10
L1_5389.fForceMoveCompleteDistance = 2
L1_5389.bUseAreaTrigger = 0
L1_5389.bDisableAreaTriggerOnMoveComplete = 0
L0_5388.Properties = L1_5389
L1_5389 = {}
L1_5389.Icon = "mine.bmp"
L0_5388.Editor = L1_5389
L1_5389 = {}
L0_5388.Client = L1_5389
L1_5389 = {}
L0_5388.Server = L1_5389
VicinityDependentObjectMover = L0_5388
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5392)
  Game.SendEventToGameObject(A0_5392.id, "UpdateFromProperties")
end
L0_5388.OnPropertyChange = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5393)
  Game.SendEventToGameObject(A0_5393.id, "EnableAreaTrigger")
end
L0_5388.Event_EnableAreaTrigger = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5394)
  Game.SendEventToGameObject(A0_5394.id, "DisableAreaTrigger")
end
L0_5388.Event_DisableAreaTrigger = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5395)
  Game.SendEventToGameObject(A0_5395.id, "MoveTo")
end
L0_5388.Event_MoveTo = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5396)
  Game.SendEventToGameObject(A0_5396.id, "MoveBack")
end
L0_5388.Event_MoveBack = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5397)
  Game.SendEventToGameObject(A0_5397.id, "Reset")
end
L0_5388.Event_Reset = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5398)
  Game.SendEventToGameObject(A0_5398.id, "ForceToTargetPos")
end
L0_5388.Event_ForceToTargetPos = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5399)
  Game.SendEventToGameObject(A0_5399.id, "ForceReverseMoveToStartPos")
end
L0_5388.Event_ForceReverseMoveToStartPos = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5400)
  A0_5400:Hide(1)
end
L0_5388.Event_Hide = L1_5389
L0_5388 = VicinityDependentObjectMover
function L1_5389(A0_5401)
  A0_5401:Hide(0)
end
L0_5388.Event_Unhide = L1_5389
L0_5388 = VicinityDependentObjectMover
L1_5389 = {}
L2_5390 = {}
L3_5391 = {
  VicinityDependentObjectMover.Event_EnableAreaTrigger,
  "bool"
}
L2_5390.EnableAreaTrigger = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_DisableAreaTrigger,
  "bool"
}
L2_5390.DisableAreaTrigger = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_MoveTo,
  "bool"
}
L2_5390.MoveTo = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_MoveBack,
  "bool"
}
L2_5390.MoveBack = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_Reset,
  "bool"
}
L2_5390.Reset = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_ForceToTargetPos,
  "bool"
}
L2_5390.ForceToTargetPos = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_ForceReverseMoveToStartPos,
  "bool"
}
L2_5390.ForceReverseMoveToStartPos = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_Hide,
  "bool"
}
L2_5390.Hide = L3_5391
L3_5391 = {
  VicinityDependentObjectMover.Event_Unhide,
  "bool"
}
L2_5390.Unhide = L3_5391
L1_5389.Inputs = L2_5390
L2_5390 = {}
L2_5390.MoveToStart = "bool"
L2_5390.MoveToComplete = "bool"
L2_5390.MoveBackStart = "bool"
L2_5390.MoveBackComplete = "bool"
L2_5390.OnReset = "bool"
L2_5390.OnForceToTargetPos = "bool"
L2_5390.OnHide = "bool"
L2_5390.OnUnhide = "bool"
L1_5389.Outputs = L2_5390
L0_5388.FlowEvents = L1_5389
