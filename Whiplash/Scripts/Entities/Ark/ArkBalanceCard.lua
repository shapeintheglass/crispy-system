local L0_3393, L1_3394
L0_3393 = {}
L1_3394 = {}
L1_3394.Icon = "Camera.bmp"
L0_3393.Editor = L1_3394
ArkBalanceCard = L0_3393
L0_3393 = ArkBalanceCard
function L1_3394(A0_3395)
  A0_3395:CreateCameraProxy()
  A0_3395:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_3393.OnInit = L1_3394
