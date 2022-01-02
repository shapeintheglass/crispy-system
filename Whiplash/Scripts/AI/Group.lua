local L0_181, L1_182
L0_181 = {}
L0_181.defendPressureThreshold = 0.75
function L1_182(A0_183, A1_184)
  local L2_185
  L2_185 = A0_183.AreaSearchCoordId
  A1_184.AreaSearchCoordId = L2_185
  L2_185 = A0_183.investigateMemberDeathID
  A1_184.investigateMemberDeathID = L2_185
end
L0_181.OnSaveAI = L1_182
function L1_182(A0_186, A1_187)
  local L2_188
  L2_188 = A1_187.AreaSearchCoordId
  A0_186.AreaSearchCoordId = L2_188
  L2_188 = A1_187.investigateMemberDeathID
  A0_186.investigateMemberDeathID = L2_188
end
L0_181.OnLoadAI = L1_182
AIGroup = L0_181
