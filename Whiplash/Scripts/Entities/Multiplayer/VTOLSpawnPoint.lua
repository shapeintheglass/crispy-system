local L0_6604, L1_6605
L0_6604 = {}
L1_6605 = {}
L0_6604.Server = L1_6605
L1_6605 = {}
L0_6604.Client = L1_6605
L1_6605 = {}
L1_6605.Icon = "Item.bmp"
L1_6605.IconOnTop = 1
L1_6605.ShowBounds = 1
L0_6604.Editor = L1_6605
VTOLSpawnPoint = L0_6604
L0_6604 = VTOLSpawnPoint
L0_6604 = L0_6604.Server
function L1_6605(A0_6606)
  A0_6606:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_6604.OnInit = L1_6605
L0_6604 = VTOLSpawnPoint
L0_6604 = L0_6604.Client
function L1_6605(A0_6607)
  A0_6607:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_6604.OnInit = L1_6605
