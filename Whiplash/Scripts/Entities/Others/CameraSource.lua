local L0_6645, L1_6646
L0_6645 = {}
L1_6646 = {}
L1_6646.Icon = "Camera.bmp"
L0_6645.Editor = L1_6646
CameraSource = L0_6645
L0_6645 = CameraSource
function L1_6646(A0_6647)
  A0_6647:CreateCameraProxy()
  A0_6647:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_6645.OnInit = L1_6646
