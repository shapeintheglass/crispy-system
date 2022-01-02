local L0_7109, L1_7110
L0_7109 = {}
L1_7110 = {}
L1_7110.Icon = "PrecacheCamera.bmp"
L0_7109.Editor = L1_7110
PrecacheCamera = L0_7109
L0_7109 = PrecacheCamera
function L1_7110(A0_7111)
  A0_7111:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_7109.OnSpawn = L1_7110
