local L0_7760, L1_7761, L2_7762, L3_7763
L0_7760 = {}
L1_7761 = {}
L1_7761.bActive = 1
L1_7761.Radius = 2
L1_7761.Height = 1
L2_7762 = {}
L2_7762.x = 0
L2_7762.y = 0
L2_7762.z = 1
L1_7761.Axis = L2_7762
L2_7762 = {}
L2_7762.x = 0
L2_7762.y = 0
L2_7762.z = 0
L1_7761.Gravity = L2_7762
L2_7762 = {}
L2_7762.x = 0
L2_7762.y = 0
L2_7762.z = 0
L1_7761.vector_ImpulseActivate = L2_7762
L2_7762 = {}
L2_7762.x = 0
L2_7762.y = 0
L2_7762.z = 0
L1_7761.vector_ImpulseDeactivate = L2_7762
L0_7760.Properties = L1_7761
L1_7761 = {}
L1_7761.Icon = "GravitySphere.bmp"
L1_7761.ShowBounds = 1
L0_7760.Editor = L1_7761
L1_7761 = {}
L2_7762 = {}
L1_7761.Area = L2_7762
L0_7760._PhysTable = L1_7761
GravityCylinder = L0_7760
L0_7760 = GravityCylinder
function L1_7761(A0_7764, A1_7765)
  A0_7764.bActive = A1_7765.bActive
  if A0_7764.bActive == 1 then
    A0_7764:PhysicalizeThis()
  else
    A0_7764:DestroyPhysics()
  end
end
L0_7760.OnLoad = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7766, A1_7767)
  A1_7767.bActive = A0_7766.bActive
end
L0_7760.OnSave = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7768)
  A0_7768.bActive = A0_7768.Properties.bActive
  if A0_7768.bActive == 1 then
    A0_7768:PhysicalizeThis()
  end
end
L0_7760.OnInit = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7769)
  if A0_7769.bActive ~= A0_7769.Properties.bActive then
    A0_7769.bActive = A0_7769.Properties.bActive
  end
  if A0_7769.bActive == 1 then
    A0_7769:PhysicalizeThis()
  else
    A0_7769:DestroyPhysics()
  end
end
L0_7760.OnPropertyChange = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7770)
  A0_7770:OnInit()
end
L0_7760.OnReset = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7771)
  local L1_7772, L2_7773
  L1_7772 = A0_7771.bActive
  if L1_7772 == 1 then
    L1_7772 = A0_7771.Properties
    L2_7773 = A0_7771._PhysTable
    L2_7773 = L2_7773.Area
    L2_7773.type = AREA_CYLINDER
    L2_7773.radius = L1_7772.Radius
    L2_7773.height = L1_7772.Height
    L2_7773.axis = L1_7772.Axis
    L2_7773.gravity = L1_7772.Gravity
    L2_7773.center = A0_7771:GetPos()
    A0_7771:Physicalize(0, PE_AREA, A0_7771._PhysTable)
  end
end
L0_7760.PhysicalizeThis = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7774)
  if A0_7774.bActive ~= 1 then
    A0_7774.bActive = 1
    A0_7774:PhysicalizeThis()
    Game.ImpulseEnvironment(A0_7774.id, A0_7774.Properties.vector_ImpulseActivate)
  end
end
L0_7760.Event_Activate = L1_7761
L0_7760 = GravityCylinder
function L1_7761(A0_7775)
  if A0_7775.bActive ~= 0 then
    Game.ImpulseEnvironment(A0_7775.id, A0_7775.Properties.vector_ImpulseActivate)
    A0_7775.bActive = 0
    A0_7775:DestroyPhysics()
  end
end
L0_7760.Event_Deactivate = L1_7761
L0_7760 = GravityCylinder
L1_7761 = {}
L2_7762 = {}
L3_7763 = {
  GravityCylinder.Event_Deactivate,
  "bool"
}
L2_7762.Deactivate = L3_7763
L3_7763 = {
  GravityCylinder.Event_Activate,
  "bool"
}
L2_7762.Activate = L3_7763
L1_7761.Inputs = L2_7762
L2_7762 = {}
L2_7762.Deactivate = "bool"
L2_7762.Activate = "bool"
L1_7761.Outputs = L2_7762
L0_7760.FlowEvents = L1_7761
