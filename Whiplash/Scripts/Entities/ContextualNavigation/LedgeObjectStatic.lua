local L0_4731, L1_4732, L2_4733
L0_4731 = {}
L1_4732 = {}
L1_4732.bIsThin = 0
L1_4732.bIsWindow = 0
L1_4732.bLedgeDoubleSide = 0
L1_4732.bLedgeFlipped = 0
L1_4732.fCornerMaxAngle = 130
L1_4732.fCornerEndAdjustAmount = 0.5
L2_4733 = {}
L2_4733.bEndCrouched = 0
L2_4733.bEndFalling = 0
L2_4733.bUsableByMarines = 1
L2_4733.esLedgeType = "Normal"
L1_4732.MainSide = L2_4733
L2_4733 = {}
L2_4733.bEndCrouched = 0
L2_4733.bEndFalling = 0
L2_4733.bUsableByMarines = 1
L2_4733.esLedgeType = "Normal"
L1_4732.OppositeSide = L2_4733
L0_4731.Properties = L1_4732
L1_4732 = {}
L0_4731.Client = L1_4732
L1_4732 = {}
L0_4731.Server = L1_4732
L1_4732 = {}
L1_4732.Icon = "ledge.bmp"
L1_4732.ShowBounds = 1
L0_4731.Editor = L1_4732
LedgeObjectStatic = L0_4731
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4734)
  local L1_4735
end
L0_4731.OnPropertyChange = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4736)
  local L1_4737
  L1_4737 = 1
  return L1_4737
end
L0_4731.IsShapeOnly = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4738)
  local L1_4739
  L1_4739 = 0
  return L1_4739
end
L0_4731.IsClosed = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4740)
  local L1_4741
  L1_4741 = 2
  return L1_4741
end
L0_4731.ShapeMinPoints = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4742)
  local L1_4743
  L1_4743 = 33
  return L1_4743
end
L0_4731.ShapeMaxPoints = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4744)
  local L1_4745
  L1_4745 = 0
  return L1_4745
end
L0_4731.ExportToGame = L1_4732
L0_4731 = LedgeObjectStatic
function L1_4732(A0_4746)
  A0_4746:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  A0_4746:SetFlags(ENTITY_FLAG_NO_PROXIMITY, 0)
end
L0_4731.OnSpawn = L1_4732
