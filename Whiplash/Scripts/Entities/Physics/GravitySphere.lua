local L0_7776, L1_7777, L2_7778, L3_7779
L0_7776 = {}
L1_7777 = {}
L1_7777.bActive = 1
L1_7777.Radius = 10
L1_7777.bUniform = 1
L1_7777.bEllipsoidal = 1
L1_7777.FalloffInner = 0
L2_7778 = {}
L2_7778.x = 0
L2_7778.y = 0
L2_7778.z = 0
L1_7777.Gravity = L2_7778
L1_7777.Damping = 0
L0_7776.Properties = L1_7777
L1_7777 = {}
L2_7778 = {}
L1_7777.Area = L2_7778
L0_7776._PhysTable = L1_7777
L1_7777 = {}
L1_7777.Icon = "GravitySphere.bmp"
L1_7777.IconOnTop = 0
L0_7776.Editor = L1_7777
GravitySphere = L0_7776
L0_7776 = GravitySphere
function L1_7777(A0_7780, A1_7781)
  A0_7780.bActive = A1_7781.bActive
  A0_7780:PhysicalizeThis()
end
L0_7776.OnLoad = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7782, A1_7783)
  A1_7783.bActive = A0_7782.bActive
end
L0_7776.OnSave = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7784)
  A0_7784:OnReset()
end
L0_7776.OnInit = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7785)
  A0_7785:DestroyPhysics()
  A0_7785.bActive = A0_7785.Properties.bActive
  if A0_7785.bActive ~= 0 then
    A0_7785:PhysicalizeThis()
  end
end
L0_7776.OnPropertyChange = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7786)
  A0_7786.bActive = A0_7786.Properties.bActive
  A0_7786:PhysicalizeThis()
end
L0_7776.OnReset = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7787)
  if A0_7787.bActive == 1 then
    if A0_7787.Properties.bEllipsoidal ~= 0 then
      A0_7787._PhysTable.Area.type = AREA_SPHERE
    else
      A0_7787._PhysTable.Area.type = AREA_BOX
      A0_7787._PhysTable.Area.box_min = {
        x = -A0_7787.Properties.Radius,
        y = -A0_7787.Properties.Radius,
        z = -A0_7787.Properties.Radius
      }
      A0_7787._PhysTable.Area.box_max = {
        x = A0_7787.Properties.Radius,
        y = A0_7787.Properties.Radius,
        z = A0_7787.Properties.Radius
      }
    end
    A0_7787._PhysTable.Area.radius = A0_7787.Properties.Radius
    A0_7787._PhysTable.Area.uniform = A0_7787.Properties.bUniform
    A0_7787._PhysTable.Area.falloffInner = A0_7787.Properties.FalloffInner
    A0_7787._PhysTable.Area.gravity = A0_7787.Properties.Gravity
    A0_7787._PhysTable.Area.damping = A0_7787.Properties.Damping
    A0_7787:Physicalize(0, PE_AREA, A0_7787._PhysTable)
    A0_7787:SetPhysicParams(PHYSICPARAM_FOREIGNDATA, {foreignData = ZEROG_AREA_ID})
  else
    A0_7787:DestroyPhysics()
  end
end
L0_7776.PhysicalizeThis = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7788)
  if A0_7788.bActive ~= 1 then
    A0_7788.bActive = 1
    A0_7788:PhysicalizeThis()
    BroadcastEvent(A0_7788, "Activate")
  end
end
L0_7776.Event_Activate = L1_7777
L0_7776 = GravitySphere
function L1_7777(A0_7789)
  if A0_7789.bActive ~= 0 then
    A0_7789.bActive = 0
    A0_7789:PhysicalizeThis()
    BroadcastEvent(A0_7789, "Deactivate")
  end
end
L0_7776.Event_Deactivate = L1_7777
L0_7776 = GravitySphere
L1_7777 = {}
L2_7778 = {}
L3_7779 = {
  GravitySphere.Event_Deactivate,
  "bool"
}
L2_7778.Deactivate = L3_7779
L3_7779 = {
  GravitySphere.Event_Activate,
  "bool"
}
L2_7778.Activate = L3_7779
L1_7777.Inputs = L2_7778
L2_7778 = {}
L2_7778.Deactivate = "bool"
L2_7778.Activate = "bool"
L1_7777.Outputs = L2_7778
L0_7776.FlowEvents = L1_7777
