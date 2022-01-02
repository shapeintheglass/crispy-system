local L0_8105, L1_8106
L0_8105 = {}
L0_8105.type = "FogController"
L1_8106 = {}
L1_8106.GlobalDensityModifier = 1
L1_8106.AtmosphereHeightModifier = 0
L1_8106.FadeTime = 1
L0_8105.Properties = L1_8106
L1_8106 = {}
L1_8106.Icon = "Fog.bmp"
L0_8105.Editor = L1_8106
L0_8105.LastTime = 0
L0_8105.CurFadeAmount = 0
Fog = L0_8105
L0_8105 = Fog
function L1_8106(A0_8107, A1_8108)
  A0_8107:SetFog()
end
L0_8105.OnUpdate = L1_8106
L0_8105 = Fog
function L1_8106(A0_8109)
  A0_8109:OnReset()
end
L0_8105.OnInit = L1_8106
L0_8105 = Fog
function L1_8106(A0_8110)
  A0_8110:OnReset()
end
L0_8105.OnPropertyChange = L1_8106
L0_8105 = Fog
function L1_8106(A0_8111)
  A0_8111:KillTimer(0)
  A0_8111:KillTimer(1)
  A0_8111:ResetValues()
end
L0_8105.OnReset = L1_8106
L0_8105 = Fog
function L1_8106(A0_8112, A1_8113)
  local L2_8114
  L2_8114 = A0_8112.LastTime
  A1_8113.LastTime = L2_8114
  L2_8114 = A0_8112.CurFadeAmount
  A1_8113.CurFadeAmount = L2_8114
end
L0_8105.OnSave = L1_8106
L0_8105 = Fog
function L1_8106(A0_8115, A1_8116)
  local L2_8117
  L2_8117 = A1_8116.LastTime
  A0_8115.LastTime = L2_8117
  L2_8117 = A1_8116.CurFadeAmount
  A0_8115.CurFadeAmount = L2_8117
end
L0_8105.OnLoad = L1_8106
L0_8105 = Fog
function L1_8106(A0_8118)
  local L1_8119
  A0_8118.LastTime = 0
  A0_8118.CurFadeAmount = 0
end
L0_8105.ResetValues = L1_8106
L0_8105 = Fog
function L1_8106(A0_8120)
  local L1_8121, L2_8122, L3_8123
  L1_8121 = A0_8120.CurFadeAmount
  L2_8122 = A0_8120.Properties
  L2_8122 = L2_8122.GlobalDensityModifier
  L2_8122 = L2_8122 * L1_8121
  L3_8123 = A0_8120.Properties
  L3_8123 = L3_8123.AtmosphereHeightModifier
  L3_8123 = L3_8123 * L1_8121
  System.SetVolumetricFogModifiers(L2_8122, L3_8123)
end
L0_8105.SetFog = L1_8106
L0_8105 = Fog
function L1_8106(A0_8124, A1_8125, A2_8126)
  A0_8124.LastTime = _time
  A0_8124:KillTimer(1)
  A0_8124:SetTimer(0, 1)
  A0_8124:Activate(1)
end
L0_8105.OnEnterArea = L1_8106
L0_8105 = Fog
function L1_8106(A0_8127, A1_8128, A2_8129)
  A0_8127.LastTime = _time
  A0_8127:KillTimer(0)
  A0_8127:SetTimer(1, 1)
end
L0_8105.OnLeaveArea = L1_8106
L0_8105 = Fog
function L1_8106(A0_8130)
  local L1_8131
end
L0_8105.OnShutDown = L1_8106
L0_8105 = Fog
function L1_8106(A0_8132, A1_8133)
  local L2_8134
  L2_8134 = _time
  L2_8134 = L2_8134 - A0_8132.LastTime
  A0_8132.LastTime = _time
  if A1_8133 == 0 then
    A0_8132.CurFadeAmount = A0_8132.CurFadeAmount + L2_8134 / A0_8132.Properties.FadeTime
    if A0_8132.CurFadeAmount >= 1 then
      A0_8132.CurFadeAmount = 1
      A0_8132:KillTimer(0)
    else
      A0_8132:SetTimer(0, 1)
    end
  else
    A0_8132.CurFadeAmount = A0_8132.CurFadeAmount - L2_8134 / A0_8132.Properties.FadeTime
    if 0 >= A0_8132.CurFadeAmount then
      A0_8132.CurFadeAmount = 0
      A0_8132:KillTimer(1)
      A0_8132:Activate(0)
      A0_8132:SetFog()
    else
      A0_8132:SetTimer(1, 1)
    end
  end
end
L0_8105.OnTimer = L1_8106
