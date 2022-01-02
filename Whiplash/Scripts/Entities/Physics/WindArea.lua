local L0_8012, L1_8013, L2_8014, L3_8015
L0_8012 = {}
L1_8013 = {}
L1_8013.bActive = 1
L2_8014 = {}
L2_8014.x = 10
L2_8014.y = 10
L2_8014.z = 10
L1_8013.Size = L2_8014
L1_8013.bEllipsoidal = 0
L1_8013.FalloffInner = 0
L2_8014 = {}
L2_8014.x = 0
L2_8014.y = 0
L2_8014.z = 0
L1_8013.Dir = L2_8014
L1_8013.Speed = 20
L1_8013.AirResistance = 1
L1_8013.AirDensity = 1
L0_8012.Properties = L1_8013
L1_8013 = {}
L1_8013.Icon = "Tornado.bmp"
L0_8012.Editor = L1_8013
L1_8013 = {}
L2_8014 = {}
L1_8013.Area = L2_8014
L0_8012._PhysTable = L1_8013
WindArea = L0_8012
L0_8012 = WindArea
function L1_8013(A0_8016, A1_8017)
  A0_8016.bActive = A1_8017.bActive
end
L0_8012.OnLoad = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8018, A1_8019)
  A1_8019.bActive = A0_8018.bActive
end
L0_8012.OnSave = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8020)
  A0_8020.bActive = A0_8020.Properties.bActive
  if A0_8020.bActive == 1 then
    A0_8020:PhysicalizeThis()
  end
end
L0_8012.OnInit = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8021)
  A0_8021.bActive = A0_8021.Properties.bActive
  A0_8021:PhysicalizeThis()
end
L0_8012.OnPropertyChange = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8022)
  local L1_8023
end
L0_8012.OnReset = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8024)
  if A0_8024.bActive == 1 then
    if A0_8024.Properties.bEllipsoidal == 1 then
      A0_8024._PhysTable.Area.type = AREA_SPHERE
      A0_8024._PhysTable.Area.radius = LengthVector(A0_8024.Properties.Size) * 0.577
    else
      A0_8024._PhysTable.Area.type = AREA_BOX
    end
    A0_8024._PhysTable.Area.box_max = A0_8024.Properties.Size
    A0_8024._PhysTable.Area.box_min = {
      x = -A0_8024._PhysTable.Area.box_max.x,
      y = -A0_8024._PhysTable.Area.box_max.y,
      z = -A0_8024._PhysTable.Area.box_max.z
    }
    if A0_8024.Properties.bEllipsoidal == 1 or 1 > A0_8024.Properties.FalloffInner then
      A0_8024._PhysTable.Area.falloffInner = A0_8024.Properties.FalloffInner
    else
      A0_8024._PhysTable.Area.falloffInner = -1
    end
    if A0_8024.Properties.Dir.x == 0 and A0_8024.Properties.Dir.y == 0 and A0_8024.Properties.Dir.z == 0 then
      A0_8024._PhysTable.Area.uniform = 0
      A0_8024._PhysTable.Area.wind = {
        x = 0,
        y = 0,
        z = A0_8024.Properties.Speed
      }
    else
      A0_8024._PhysTable.Area.uniform = 2
      A0_8024._PhysTable.Area.wind = {
        x = A0_8024.Properties.Dir.x * A0_8024.Properties.Speed,
        y = A0_8024.Properties.Dir.y * A0_8024.Properties.Speed,
        z = A0_8024.Properties.Dir.z * A0_8024.Properties.Speed
      }
    end
    A0_8024._PhysTable.Area.water_damping = 0
    A0_8024._PhysTable.Area.resistance = A0_8024.Properties.AirResistance
    A0_8024._PhysTable.Area.density = A0_8024.Properties.AirDensity
    A0_8024:Physicalize(0, PE_AREA, A0_8024._PhysTable)
    A0_8024:AwakeEnvironment()
  else
    A0_8024:DestroyPhysics()
  end
end
L0_8012.PhysicalizeThis = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8025)
  if A0_8025.bActive ~= 1 then
    A0_8025.bActive = 1
    A0_8025:PhysicalizeThis()
  end
end
L0_8012.Event_Activate = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8026)
  if A0_8026.bActive ~= 0 then
    A0_8026.bActive = 0
    A0_8026:PhysicalizeThis()
  end
end
L0_8012.Event_Deactivate = L1_8013
L0_8012 = WindArea
function L1_8013(A0_8027, A1_8028, A2_8029)
  A0_8027.Properties.Speed = A2_8029
  A0_8027:OnPropertyChange()
end
L0_8012.Event_Speed = L1_8013
L0_8012 = WindArea
L1_8013 = {}
L2_8014 = {}
L3_8015 = {
  WindArea.Event_Deactivate,
  "bool"
}
L2_8014.Deactivate = L3_8015
L3_8015 = {
  WindArea.Event_Activate,
  "bool"
}
L2_8014.Activate = L3_8015
L3_8015 = {
  WindArea.Event_Speed,
  "float"
}
L2_8014.Speed = L3_8015
L1_8013.Inputs = L2_8014
L2_8014 = {}
L2_8014.Deactivate = "bool"
L2_8014.Activate = "bool"
L1_8013.Outputs = L2_8014
L0_8012.FlowEvents = L1_8013
