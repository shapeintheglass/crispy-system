local L0_7744, L1_7745, L2_7746, L3_7747
L0_7744 = {}
L1_7745 = {}
L1_7745.bActive = 1
L2_7746 = {}
L2_7746.x = -10
L2_7746.y = -10
L2_7746.z = -10
L1_7745.BoxMin = L2_7746
L2_7746 = {}
L2_7746.x = 10
L2_7746.y = 10
L2_7746.z = 10
L1_7745.BoxMax = L2_7746
L1_7745.bUniform = 1
L2_7746 = {}
L2_7746.x = 0
L2_7746.y = 0
L2_7746.z = 0
L1_7745.Gravity = L2_7746
L1_7745.FalloffInner = 1
L2_7746 = {}
L2_7746.x = 0
L2_7746.y = 0
L2_7746.z = 0
L1_7745.vector_ImpulseActivate = L2_7746
L2_7746 = {}
L2_7746.x = 0
L2_7746.y = 0
L2_7746.z = 0
L1_7745.vector_ImpulseDeactivate = L2_7746
L1_7745.bAffectsParticleEmitterPosition = 0
L0_7744.Properties = L1_7745
L1_7745 = {}
L1_7745.Icon = "GravitySphere.bmp"
L0_7744.Editor = L1_7745
L1_7745 = {}
L2_7746 = {}
L1_7745.Area = L2_7746
L0_7744._PhysTable = L1_7745
GravityBox = L0_7744
L0_7744 = GravityBox
function L1_7745(A0_7748, A1_7749)
  A0_7748.bActive = A1_7749.bActive
  if A0_7748.bActive == 1 then
    A0_7748:PhysicalizeThis()
  else
    A0_7748:DestroyPhysics()
  end
end
L0_7744.OnLoad = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7750, A1_7751)
  A1_7751.bActive = A0_7750.bActive
end
L0_7744.OnSave = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7752)
  A0_7752.bActive = A0_7752.Properties.bActive
  if A0_7752.bActive == 1 then
    A0_7752:PhysicalizeThis()
  end
end
L0_7744.OnInit = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7753)
  if A0_7753.bActive ~= A0_7753.Properties.bActive then
    A0_7753.bActive = A0_7753.Properties.bActive
  end
  if A0_7753.bActive == 1 then
    A0_7753:PhysicalizeThis()
  else
    A0_7753:DestroyPhysics()
  end
end
L0_7744.OnPropertyChange = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7754)
  A0_7754:OnInit()
end
L0_7744.OnReset = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7755)
  local L1_7756, L2_7757
  L1_7756 = A0_7755.bActive
  if L1_7756 == 1 then
    L1_7756 = A0_7755.Properties
    L2_7757 = A0_7755._PhysTable
    L2_7757 = L2_7757.Area
    L2_7757.type = AREA_BOX
    L2_7757.box_min = L1_7756.BoxMin
    L2_7757.box_max = L1_7756.BoxMax
    L2_7757.uniform = L1_7756.bUniform
    L2_7757.falloffInner = L1_7756.FalloffInner
    L2_7757.gravity = L1_7756.Gravity
    A0_7755:Physicalize(0, PE_AREA, A0_7755._PhysTable)
    A0_7755:SetAreaAffectsParticleEmitterPosition(L1_7756.bAffectsParticleEmitterPosition)
  end
end
L0_7744.PhysicalizeThis = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7758)
  if A0_7758.bActive ~= 1 then
    A0_7758.bActive = 1
    A0_7758:PhysicalizeThis()
    Game.ImpulseEnvironment(A0_7758.id, A0_7758.Properties.vector_ImpulseActivate)
  end
end
L0_7744.Event_Activate = L1_7745
L0_7744 = GravityBox
function L1_7745(A0_7759)
  if A0_7759.bActive ~= 0 then
    Game.ImpulseEnvironment(A0_7759.id, A0_7759.Properties.vector_ImpulseDeactivate)
    A0_7759.bActive = 0
    A0_7759:DestroyPhysics()
  end
end
L0_7744.Event_Deactivate = L1_7745
L0_7744 = GravityBox
L1_7745 = {}
L2_7746 = {}
L3_7747 = {
  GravityBox.Event_Deactivate,
  "bool"
}
L2_7746.Deactivate = L3_7747
L3_7747 = {
  GravityBox.Event_Activate,
  "bool"
}
L2_7746.Activate = L3_7747
L1_7745.Inputs = L2_7746
L2_7746 = {}
L2_7746.Deactivate = "bool"
L2_7746.Activate = "bool"
L1_7745.Outputs = L2_7746
L0_7744.FlowEvents = L1_7745
