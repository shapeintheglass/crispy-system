local L0_7807, L1_7808, L2_7809, L3_7810
L0_7807 = {}
L1_7808 = {}
L1_7808.bActive = 1
L1_7808.Strength = 10
L1_7808.Radius = 10
L1_7808.bSpline = 0
L0_7807.Properties = L1_7808
L1_7808 = {}
L0_7807.Server = L1_7808
L1_7808 = {}
L0_7807.Client = L1_7808
L1_7808 = {}
L2_7809 = {}
L1_7808.Area = L2_7809
L0_7807._PhysTableCyl = L1_7808
L1_7808 = {}
L2_7809 = {}
L1_7808.Area = L2_7809
L0_7807._PhysTableSph = L1_7808
L1_7808 = {}
L2_7809 = {}
L3_7810 = {}
L2_7809.points = L3_7810
L1_7808.Area = L2_7809
L0_7807._PhysTableSpl = L1_7808
L1_7808 = {}
L0_7807._Points = L1_7808
L1_7808 = {}
L0_7807._Caps = L1_7808
L1_7808 = {}
L1_7808.Icon = "GravitySphere.bmp"
L1_7808.ShowBounds = 1
L0_7807.Editor = L1_7808
GravityValve = L0_7807
L0_7807 = GravityValve
function L1_7808(A0_7811, A1_7812)
  local L2_7813
  L2_7813 = A1_7812.bActive
  A0_7811.bActive = L2_7813
  L2_7813 = A1_7812._Points
  A0_7811._Points = L2_7813
  L2_7813 = A1_7812._Caps
  A0_7811._Caps = L2_7813
end
L0_7807.OnLoad = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7814, A1_7815)
  local L2_7816
  L2_7816 = A0_7814.bActive
  A1_7815.bActive = L2_7816
  L2_7816 = A0_7814._Points
  A1_7815._Points = L2_7816
  L2_7816 = A0_7814._Caps
  A1_7815._Caps = L2_7816
end
L0_7807.OnSave = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7817)
  A0_7817:SetActive(A0_7817.Properties.bActive)
end
L0_7807.OnSpawn = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7818)
  local L1_7819
  L1_7819 = A0_7818._Caps
  while table.getn(L1_7819) > 0 do
    System.RemoveEntity(L1_7819[1])
    table.remove(L1_7819, 1)
  end
end
L0_7807.OnDestroy = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7820)
  A0_7820:NeedSetup()
end
L0_7807.OnPropertyChange = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7821)
  A0_7821:NeedSetup()
end
L0_7807.OnReset = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7822)
  local L1_7823, L2_7824, L3_7825, L4_7826, L5_7827, L6_7828, L7_7829, L8_7830, L9_7831
  L1_7823 = 50
  L3_7825 = A0_7822
  L2_7824 = A0_7822.GetName
  L2_7824 = L2_7824(L3_7825)
  L3_7825 = "_p"
  L2_7824 = L2_7824 .. L3_7825
  L3_7825 = nil
  L4_7826 = 1
  L5_7827 = A0_7822._Points
  L5_7827[1] = A0_7822
  for L9_7831 = 1, L1_7823 do
    L3_7825 = L2_7824 .. tostring(L9_7831)
    if not System.GetEntityByName(L3_7825) then
      break
    end
    L5_7827[L9_7831 + 1] = System.GetEntityByName(L3_7825)
    L4_7826 = L9_7831 + 1
    Log("npoints " .. L4_7826)
  end
  while true do
    if L4_7826 < L6_7828 then
      L6_7828(L7_7829)
      L6_7828(L7_7829)
    end
  end
  for L9_7831 = 1, L7_7829(L8_7830) do
    Log(".. " .. L5_7827[L9_7831]:GetName())
  end
end
L0_7807.FillPoints = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7832, A1_7833, A2_7834, A3_7835, A4_7836)
  local L5_7837, L6_7838
  L5_7837 = A0_7832._PhysTableCyl
  L5_7837 = L5_7837.Area
  L6_7838 = DifferenceVectors
  L6_7838 = L6_7838(A2_7834, A1_7833)
  L5_7837.type = AREA_CYLINDER
  L5_7837.radius = A3_7835
  L5_7837.height = LengthVector(L6_7838) * 0.5
  L5_7837.center = ScaleVector(SumVectors(A2_7834, A1_7833), 0.5)
  L5_7837.axis = NormalizeVector(L6_7838)
  L5_7837.gravity = ScaleVector(L5_7837.axis, A4_7836)
  L5_7837.uniform = 1
  L5_7837.falloff = 0
  return L5_7837
end
L0_7807.CreateCylinderArea = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7839, A1_7840, A2_7841)
  local L3_7842
  L3_7842 = A0_7839._PhysTableSph
  L3_7842 = L3_7842.Area
  L3_7842.type = AREA_SPHERE
  L3_7842.radius = A1_7840
  L3_7842.uniform = 1
  L3_7842.falloff = 0
  L3_7842.gravity = ScaleVector(A2_7841, 8)
  return L3_7842
end
L0_7807.CreateSphereArea = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7843)
  A0_7843.bNeedSetup = 1
  A0_7843:Activate(1)
end
L0_7807.NeedSetup = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7844, A1_7845)
  A0_7844:NeedSetup()
end
L0_7807.OnChange = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7846)
  local L1_7847
  L1_7847 = A0_7846.bNeedSetup
  if L1_7847 then
    L1_7847 = A0_7846.bActive
    A0_7846:SetActive(0)
    A0_7846:SetActive(L1_7847)
    A0_7846.bNeedSetup = nil
    A0_7846:Activate(0)
  end
end
L0_7807.OnUpdate = L1_7808
L0_7807 = GravityValve
L0_7807 = L0_7807.Server
L1_7808 = GravityValve
L1_7808 = L1_7808.OnUpdate
L0_7807.OnUpdate = L1_7808
L0_7807 = GravityValve
L0_7807 = L0_7807.Client
L1_7808 = GravityValve
L1_7808 = L1_7808.OnUpdate
L0_7807.OnUpdate = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7848, A1_7849)
  local L2_7850, L3_7851, L4_7852, L5_7853, L6_7854
  L2_7850 = A0_7848.bActive
  if A1_7849 == L2_7850 then
    return
  end
  L3_7851 = A0_7848
  L2_7850 = A0_7848.FillPoints
  L2_7850(L3_7851)
  L2_7850, L3_7851 = nil, nil
  L4_7852 = A0_7848._Points
  L5_7853 = A0_7848._Caps
  L3_7851 = L6_7854
  if A1_7849 == 1 then
    if L6_7854 == 1 then
      for _FORV_11_ = 1, L3_7851 do
        A0_7848._PhysTableSpl.Area.points[_FORV_11_] = {
          x = 0,
          y = 0,
          z = 0
        }
        L4_7852[_FORV_11_]:GetWorldPos(A0_7848._PhysTableSpl.Area.points[_FORV_11_])
      end
      L6_7854.type = _FOR_
      L6_7854.radius = A0_7848.Properties.Radius
      L6_7854.falloff = 0
      L6_7854.gravity = {
        x = 0,
        y = 0,
        z = A0_7848.Properties.Strength
      }
      L6_7854.damping = 2
      A0_7848:Physicalize(0, PE_AREA, A0_7848._PhysTableSpl)
      A0_7848:SetPhysicParams(PHYSICPARAM_FOREIGNDATA, {foreignData = ZEROG_AREA_ID})
    else
      L6_7854.class = "GravityStreamCap"
      L6_7854.orientation = {
        x = 1,
        y = 0,
        z = 0
      }
      for _FORV_10_ = 2, L3_7851 do
        A0_7848:CreateCylinderArea(L4_7852[_FORV_10_ - 1]:GetPos(), L4_7852[_FORV_10_]:GetPos(), A0_7848.Properties.Radius, A0_7848.Properties.Strength)
        L4_7852[_FORV_10_]:Physicalize(0, PE_AREA, A0_7848._PhysTableCyl)
        L4_7852[_FORV_10_]:SetPhysicParams(PHYSICPARAM_FOREIGNDATA, {foreignData = ZEROG_AREA_ID})
        if _FORV_10_ > 2 then
          L6_7854.position = L4_7852[_FORV_10_ - 1]:GetPos()
          table.insert(L5_7853, System.SpawnEntity(L6_7854).id)
          A0_7848:CreateSphereArea(A0_7848.Properties.Radius, A0_7848._PhysTableCyl.Area.gravity)
          System.SpawnEntity(L6_7854):Physicalize(0, PE_AREA, A0_7848._PhysTableSph)
          System.SpawnEntity(L6_7854):SetPhysicParams(PHYSICPARAM_FOREIGNDATA, {foreignData = ZEROG_AREA_ID})
        end
      end
    end
  elseif A1_7849 == 0 then
    if L6_7854 then
      L6_7854(A0_7848)
      for _FORV_9_ = 2, L3_7851 do
        L4_7852[_FORV_9_]:DestroyPhysics()
      end
      L6_7854(_FOR_)
    end
  end
  A0_7848.bActive = A1_7849
end
L0_7807.SetActive = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7855)
  A0_7855:SetActive(1)
end
L0_7807.Event_Enable = L1_7808
L0_7807 = GravityValve
function L1_7808(A0_7856)
  A0_7856:SetActive(0)
end
L0_7807.Event_Disable = L1_7808
L0_7807 = GravityValve
L1_7808 = {}
L2_7809 = {}
L3_7810 = {
  GravityValve.Event_Disable,
  "bool"
}
L2_7809.Disable = L3_7810
L3_7810 = {
  GravityValve.Event_Enable,
  "bool"
}
L2_7809.Enable = L3_7810
L1_7808.Inputs = L2_7809
L2_7809 = {}
L2_7809.Disable = "bool"
L2_7809.Enable = "bool"
L1_7808.Outputs = L2_7809
L0_7807.FlowEvents = L1_7808
