local L0_10108, L1_10109
L0_10108 = {}
L1_10109 = {}
L0_10108.gravityNodes = L1_10109
GravityGlobals = L0_10108
L0_10108 = GravityGlobals
function L1_10109(A0_10110, A1_10111)
  local L2_10112
  if not A1_10111 then
    return
  end
  L2_10112 = table
  L2_10112 = L2_10112.getn
  L2_10112 = L2_10112(A0_10110.gravityNodes)
  for _FORV_6_ = 1, L2_10112 do
    if A0_10110.gravityNodes[_FORV_6_] and A0_10110.gravityNodes[_FORV_6_].id == A1_10111.id then
      if A1_10111.GetName then
        System.Log(A1_10111:GetName() .. "removed from the gravity array!")
      end
      A0_10110.gravityNodes[_FORV_6_] = nil
      return
    end
  end
end
L0_10108.RemoveGravityArea = L1_10109
L0_10108 = GravityGlobals
function L1_10109(A0_10113, A1_10114)
  local L2_10115
  if not A1_10114 then
    return
  end
  L2_10115 = table
  L2_10115 = L2_10115.getn
  L2_10115 = L2_10115(A0_10113.gravityNodes)
  for _FORV_6_ = 1, L2_10115 do
    if A0_10113.gravityNodes[_FORV_6_] and A0_10113.gravityNodes[_FORV_6_].id == A1_10114.id then
      return
    end
  end
  for _FORV_6_ = 1, L2_10115 do
    if A0_10113.gravityNodes[_FORV_6_] == nil then
      A0_10113.gravityNodes[_FORV_6_] = A1_10114
      return
    end
  end
  A0_10113.gravityNodes[L2_10115 + 1] = A1_10114
end
L0_10108.AddGravityArea = L1_10109
L0_10108 = GravityGlobals
function L1_10109(A0_10116, A1_10117)
  local L2_10118, L3_10119, L4_10120
  L2_10118 = table
  L2_10118 = L2_10118.getn
  L3_10119 = A0_10116.gravityNodes
  L2_10118 = L2_10118(L3_10119)
  L3_10119, L4_10120 = nil, nil
  for _FORV_8_ = 1, L2_10118 do
    L3_10119 = A0_10116.gravityNodes[_FORV_8_]
    if L3_10119 and L3_10119.GetPos and L3_10119.GetPosGravity then
      if L3_10119:GetPosGravity(A1_10117) and (not L4_10120 or L4_10120 < L3_10119:GetPosGravity(A1_10117)) then
        L4_10120 = L3_10119:GetPosGravity(A1_10117)
      end
    elseif L3_10119 then
      A0_10116.gravityNodes[_FORV_8_] = nil
    end
  end
  return L4_10120
end
L0_10108.GetPosGravity = L1_10109
function L0_10108(A0_10121)
  local L1_10122, L2_10123, L3_10124, L4_10125, L5_10126
  L1_10122 = GravityGlobals
  if L1_10122 then
    L1_10122 = 0
    L2_10123 = g_Vectors
    L2_10123 = L2_10123.temp_v1
    L3_10124 = CopyVector
    L4_10125 = L2_10123
    L5_10126 = A0_10121.GetPos
    L5_10126 = L5_10126(A0_10121)
    L3_10124(L4_10125, L5_10126, L5_10126(A0_10121))
    L3_10124 = nil
    L4_10125 = GravityGlobals
    L5_10126 = L4_10125
    L4_10125 = L4_10125.GetPosGravity
    L4_10125 = L4_10125(L5_10126, L2_10123)
    if L4_10125 then
      L5_10126 = A0_10121.SaveLastGravity
      if L5_10126 == nil then
        L5_10126 = A0_10121.GetPhysicalStats
        L5_10126 = L5_10126(A0_10121)
        A0_10121:AwakePhysics(1)
        A0_10121.SaveLastGravity = L5_10126.gravity
        if math.abs(L4_10125) < 9.81 then
          L1_10122 = L5_10126.mass
          if L1_10122 then
            L1_10122 = L1_10122 * 1
          else
            L1_10122 = 0
          end
        end
      end
      L5_10126 = A0_10121.TempPhysicsParams
      if L5_10126 == nil then
        L5_10126 = {}
        L5_10126.gravityz = -9.81
        L5_10126.freefall_gravityz = -9.81
        L5_10126.lying_gravityz = -9.81
        L5_10126.zeroG = 0
        L5_10126.air_control = 0
        A0_10121.TempPhysicsParams = L5_10126
      end
      L3_10124 = L4_10125
    else
      L5_10126 = A0_10121.SaveLastGravity
      if L5_10126 then
        L3_10124 = A0_10121.SaveLastGravity
        A0_10121.SaveLastGravity = nil
      end
    end
    if L3_10124 then
      L5_10126 = A0_10121.SaveLastGravity
      if L5_10126 then
        L5_10126 = A0_10121.SaveLastGravity
        L5_10126 = L5_10126 / -9.81
        L3_10124 = L3_10124 * L5_10126
      end
      L5_10126 = A0_10121.TempPhysicsParams
      L5_10126.gravityz = L3_10124
      L5_10126.freefall_gravityz = L3_10124
      L5_10126.lying_gravityz = L3_10124
      if A0_10121.type == "Player" and A0_10121.isDedbody ~= 1 then
        L5_10126.gravity = -L3_10124
        A0_10121:SetPhysicParams(PHYSICPARAM_PLAYERDYN, L5_10126)
      elseif A0_10121.IsProjectile then
        if not L5_10126.gravity then
          L5_10126.gravity = {
            x = 0,
            y = 0,
            z = L3_10124
          }
        else
          L5_10126.gravity.z = L3_10124
        end
        A0_10121:SetPhysicParams(PHYSICPARAM_PARTICLE, L5_10126)
      else
        A0_10121:SetPhysicParams(PHYSICPARAM_SIMULATION, L5_10126)
      end
    end
    if L1_10122 > 0 then
      L5_10126 = A0_10121.AddImpulse
      L5_10126(A0_10121, -1, L2_10123, g_Vectors.v001, L1_10122)
    end
  end
end
EntityUpdateGravity = L0_10108
