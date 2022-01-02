local L0_7347, L1_7348, L2_7349, L3_7350
L0_7347 = {}
L1_7348 = {}
L1_7348.Icon = "Comment.bmp"
L0_7347.Editor = L1_7348
L1_7348 = {}
L1_7348.fileModel = ""
L1_7348.ModelSubObject = ""
L1_7348.bEnabled = 1
L1_7348.bPhysicalize = 0
L1_7348.bAutoTarget = 0
L2_7349 = {}
L2_7349.bRigidBody = 1
L2_7349.bRigidBodyActive = 1
L2_7349.bResting = 1
L2_7349.Density = -1
L2_7349.Mass = 300
L3_7350 = {}
L3_7350.water_density = 1000
L3_7350.water_damping = 0
L3_7350.water_resistance = 1000
L2_7349.Buoyancy = L3_7350
L1_7348.Physics = L2_7349
L2_7349 = {}
L2_7349.LookupName = ""
L1_7348.TacticalInfo = L2_7349
L0_7347.Properties = L1_7348
L0_7347.registeredForAutoTarget = 0
TacticalEntity = L0_7347
L0_7347 = TacticalEntity
function L1_7348(A0_7351)
  A0_7351:OnReset()
  Game.AddTacticalEntity(A0_7351.id, eTacticalEntity_Story)
end
L0_7347.OnInit = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7352)
  A0_7352:OnReset()
end
L0_7347.OnPropertyChange = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7353)
  local L1_7354, L2_7355, L3_7356, L4_7357
  L1_7354 = A0_7353.Properties
  L2_7355 = L1_7354.bAutoTarget
  if L2_7355 ~= 0 then
    L2_7355 = A0_7353.registeredForAutoTarget
    if L2_7355 == 0 then
      L2_7355 = 0.35
      L3_7356 = 0.6
      L4_7357 = 1.25
      Game.RegisterWithAutoAimManager(A0_7353.id, L2_7355, L3_7356, L4_7357)
      A0_7353.registeredForAutoTarget = 1
    end
  end
  L2_7355 = L1_7354.bAutoTarget
  if L2_7355 == 0 then
    L2_7355 = A0_7353.registeredForAutoTarget
    if L2_7355 ~= 0 then
      L2_7355 = Game
      L2_7355 = L2_7355.UnregisterFromAutoAimManager
      L3_7356 = A0_7353.id
      L2_7355(L3_7356)
      A0_7353.registeredForAutoTarget = 0
    end
  end
end
L0_7347.EnableAutoTarget = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7358)
  if A0_7358.registeredForAutoTarget ~= 0 then
    Game.UnregisterFromAutoAimManager(A0_7358.id)
    A0_7358.registeredForAutoTarget = 0
  end
end
L0_7347.DisableAutoTarget = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7359)
  local L1_7360
  L1_7360 = A0_7359.Properties
  if not EmptyString(L1_7360.fileModel) then
    A0_7359:LoadSubObject(0, L1_7360.fileModel, L1_7360.ModelSubObject)
    if L1_7360.bPhysicalize == 1 then
      A0_7359:PhysicalizeThis(0)
    end
  end
  A0_7359:EnableAutoTarget()
end
L0_7347.OnReset = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7361, A1_7362)
  local L2_7363
  L2_7363 = A0_7361.Properties
  L2_7363 = L2_7363.Physics
  EntityCommon.PhysicalizeRigid(A0_7361, A1_7362, L2_7363, 1)
  if L2_7363.Buoyancy then
    A0_7361:SetPhysicParams(PHYSICPARAM_BUOYANCY, L2_7363.Buoyancy)
  end
end
L0_7347.PhysicalizeThis = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7364)
  A0_7364:DisableAutoTarget()
  Game.RemoveTacticalEntity(A0_7364.id, eTacticalEntity_Story)
end
L0_7347.OnDestroy = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7365)
  A0_7365.Properties.bEnabled = 1
  A0_7365:EnableAutoTarget()
  Game.AddTacticalEntity(A0_7365.id, eTacticalEntity_Story)
end
L0_7347.Event_Enable = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7366)
  A0_7366.Properties.bEnabled = 0
  A0_7366:DisableAutoTarget()
  Game.RemoveTacticalEntity(A0_7366.id, eTacticalEntity_Story)
end
L0_7347.Event_Disable = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7367)
  A0_7367:ActivateOutput("Scanned", true)
end
L0_7347.HasBeenScanned = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7368, A1_7369)
  A1_7369.registeredForAutoTarget = A0_7368.registeredForAutoTarget
end
L0_7347.OnSave = L1_7348
L0_7347 = TacticalEntity
function L1_7348(A0_7370, A1_7371)
  if A1_7371.registeredForAutoTarget == 1 then
    A0_7370:EnableAutoTarget()
  else
    A0_7370:DisableAutoTarget()
  end
end
L0_7347.OnLoad = L1_7348
L0_7347 = TacticalEntity
L1_7348 = {}
L2_7349 = {}
L3_7350 = {
  TacticalEntity.Event_Enable,
  "bool"
}
L2_7349.Enable = L3_7350
L3_7350 = {
  TacticalEntity.Event_Disable,
  "bool"
}
L2_7349.Disable = L3_7350
L1_7348.Inputs = L2_7349
L2_7349 = {}
L2_7349.Scanned = "bool"
L1_7348.Outputs = L2_7349
L0_7347.FlowEvents = L1_7348
