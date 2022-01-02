local L0_7582, L1_7583, L2_7584
L0_7582 = {}
L1_7583 = {}
L1_7583.radius = 0.03
L1_7583.damping = 0
L1_7583.bNoSelfCollisions = 1
L1_7583.bUseEntityFrame = 1
L1_7583.max_pull_force = 0
L1_7583.max_bend_torque = 0
L1_7583.bConstrainToLine = 0
L1_7583.bConstrainToPlane = 0
L1_7583.bConstrainFully = 1
L1_7583.bNoRotation = 0
L2_7584 = {}
L2_7584.x_min = 0
L2_7584.x_max = 0
L2_7584.yz_min = 0
L2_7584.yz_max = 0
L1_7583.Limits = L2_7584
L0_7582.Properties = L1_7583
L0_7582.numUpdates = 0
L1_7583 = {}
L1_7583.Icon = "Magnet.bmp"
L1_7583.ShowBounds = 1
L0_7582.Editor = L1_7583
Constraint = L0_7582
L0_7582 = Constraint
function L1_7583(A0_7585)
  A0_7585.idEnt = nil
  A0_7585.idConstr = nil
  A0_7585.broken = nil
  A0_7585.numUpdates = 0
  A0_7585:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
end
L0_7582.OnReset = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7586)
  local L1_7587
  L1_7587 = {}
  L1_7587.pivot = {}
  L1_7587.frame0 = {}
  L1_7587.frame1 = {}
  if A0_7586.idEnt then
  elseif not A0_7586.broken then
    if Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[1] and Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[6] then
      CopyVector(L1_7587.pivot, A0_7586:GetPos())
      if A0_7586.Properties.bUseEntityFrame == 1 then
        CopyVector(L1_7587.frame1, Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[1]:GetAngles())
      else
        CopyVector(L1_7587.frame1, A0_7586:GetAngles())
      end
      CopyVector(L1_7587.frame0, L1_7587.frame1)
      L1_7587.entity_part_id_1 = Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[2]
      L1_7587.phys_entity_id = Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[6]
      L1_7587.entity_part_id_2 = Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[5]
      L1_7587.xmin = A0_7586.Properties.Limits.x_min
      L1_7587.xmax = A0_7586.Properties.Limits.x_max
      L1_7587.yzmin = A0_7586.Properties.Limits.yz_min
      L1_7587.yzmax = A0_7586.Properties.Limits.yz_max
      L1_7587.ignore_buddy = A0_7586.Properties.bNoSelfCollisions
      L1_7587.damping = A0_7586.Properties.damping
      L1_7587.sensor_size = A0_7586.Properties.radius
      L1_7587.max_pull_force = A0_7586.Properties.max_pull_force
      L1_7587.max_bend_torque = A0_7586.Properties.max_bend_torque
      L1_7587.line = A0_7586.Properties.bConstrainToLine
      L1_7587.plane = A0_7586.Properties.bConstrainToPlane
      L1_7587.no_rotation = A0_7586.Properties.bNoRotation
      L1_7587.full = A0_7586.Properties.bConstrainFully
      A0_7586.idConstr = Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[1]:SetPhysicParams(PHYSICPARAM_CONSTRAINT, L1_7587)
      A0_7586.idEnt = Physics.SamplePhysEnvironment(A0_7586:GetPos(), A0_7586.Properties.radius)[1].id
    else
      A0_7586:SetTimer(1, 1)
    end
  end
end
L0_7582.Apply = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7588)
  if A0_7588.numUpdates < 10 then
    A0_7588:Apply()
    A0_7588.numUpdates = A0_7588.numUpdates + 1
  end
end
L0_7582.OnTimer = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7589)
  if not A0_7589.broken and not A0_7589.idConstr then
    A0_7589.numUpdates = 0
    A0_7589.idEnt = nil
    A0_7589.idConstr = nil
    A0_7589:Apply()
  end
end
L0_7582.OnLevelLoaded = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7590)
  A0_7590:OnReset()
end
L0_7582.OnPropertyChange = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7591)
  A0_7591:OnReset()
end
L0_7582.OnSpawn = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7592, A1_7593)
  if A0_7592.idEnt then
    System.GetEntity(A0_7592.idEnt):SetPhysicParams(PHYSICPARAM_REMOVE_CONSTRAINT, {
      id = A0_7592.idConstr
    })
    A0_7592.idEnt = nil
    A0_7592.idConstr = nil
  end
  A0_7592.broken = true
  A0_7592:KillTimer(1)
  BroadcastEvent(A0_7592, "ConstraintBroken")
end
L0_7582.Event_ConstraintBroken = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7594, A1_7595)
  local L2_7596
  L2_7596 = A0_7594.broken
  A1_7595.broken = L2_7596
  L2_7596 = A0_7594.idEnt
  A1_7595.idEnt = L2_7596
  L2_7596 = A0_7594.idConstr
  A1_7595.idConstr = L2_7596
end
L0_7582.OnSave = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7597, A1_7598)
  local L2_7599
  L2_7599 = A1_7598.broken
  A0_7597.broken = L2_7599
  L2_7599 = A1_7598.idEnt
  A0_7597.idEnt = L2_7599
  L2_7599 = A1_7598.idConstr
  A0_7597.idConstr = L2_7599
end
L0_7582.OnLoad = L1_7583
L0_7582 = Constraint
function L1_7583(A0_7600)
  local L1_7601
end
L0_7582.OnDestroy = L1_7583
L0_7582 = Constraint
L1_7583 = {}
L2_7584 = {}
L2_7584.ConstraintBroken = {
  Constraint.Event_ConstraintBroken,
  "bool"
}
L1_7583.Inputs = L2_7584
L2_7584 = {}
L2_7584.ConstraintBroken = "bool"
L1_7583.Outputs = L2_7584
L0_7582.FlowEvents = L1_7583
