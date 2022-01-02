local L0_125, L1_126
L0_125 = assignmentsHaveBeenCreated
if L0_125 == nil then
  L0_125 = true
  assignmentsHaveBeenCreated = L0_125
  L0_125 = {}
  L1_126 = {}
  L0_125.Assignments = L1_126
  function L1_126(A0_127)
    if A0_127.AI.currentAssignment ~= nil and A0_127.AI.currentAssignment ~= Assignment_NoAssignment then
      A0_127:SetAssignment(A0_127.AI.currentAssignment, A0_127.AI.currentAssignmentData)
    end
  end
  L0_125.OnResetSavedAssignment = L1_126
  function L1_126(A0_128, A1_129, A2_130)
    if A1_129 == Assignment_NoAssignment then
      A0_128:ClearAssignment()
      return
    end
    if A0_128.AI.currentAssignment and A0_128.AI.currentAssignment == A1_129 then
      A0_128:CallBehaviorFunction("Reset")
      AI.Signal(SIGNALFILTER_SENDER, 1, "OnResetAssignment", A0_128.id)
    end
    A0_128:ClearAssignment()
    if A0_128.Assignments[A1_129] == nil then
      A0_128:OnError("Assignment not available for this entity : " .. A1_129)
      return
    end
    if A0_128.Assignments[A1_129]:Start(A0_128, A2_130) then
      A0_128.AI.currentAssignment = A1_129
      A0_128.AI.currentAssignmentData = A2_130
    else
      A0_128:OnError("Assignment failed to start")
    end
  end
  L0_125.SetAssignment = L1_126
  function L1_126(A0_131)
    local L1_132
    L1_132 = A0_131.AI
    L1_132 = L1_132.currentAssignment
    if L1_132 ~= nil then
      L1_132 = A0_131.Assignments
      L1_132 = L1_132[A0_131.AI.currentAssignment]
      L1_132:Stop(A0_131)
      A0_131.AI.currentAssignment = nil
      A0_131.AI.currentAssignmentData = nil
    end
  end
  L0_125.ClearAssignment = L1_126
  AssignmentFunctionality = L0_125
  function L0_125(A0_133)
    mergef(A0_133, AssignmentFunctionality, 1)
  end
  InjectAssignmentFunctionality = L0_125
  L0_125 = {}
  function L1_126(A0_134, A1_135, A2_136)
    if IsNullVector(A2_136.position) then
      A1_135:OnError("DefendArea : position not valid")
      return false
    end
    A1_135.AI.defendArea = {
      position = {
        x = 0,
        y = 0,
        z = 0
      },
      radiusSq = 225
    }
    CopyVector(A1_135.AI.defendArea.position, A2_136.position)
    AI.SetBehaviorVariable(A1_135.id, "DefendArea", true)
    AI.SetBehaviorVariable(A1_135.id, "InsideDefendArea", A0_134:IsInsideDefendArea(A1_135))
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_137, A1_138)
    AI.RequestToStopMovement(A1_138.id)
    AI.SetBehaviorVariable(A1_138.id, "DefendArea", false)
  end
  L0_125.Stop = L1_126
  function L1_126(A0_139, A1_140)
    return DistanceSqVectors(A1_140:GetWorldPos(), A1_140.AI.defendArea.position) < A1_140.AI.defendArea.radiusSq
  end
  L0_125.IsInsideDefendArea = L1_126
  DefendAreaAssignment = L0_125
  function L0_125(A0_141)
    A0_141.Assignments[Assignment_DefendArea] = DefendAreaAssignment
  end
  AddDefendAreaAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_142, A1_143, A2_144)
    if IsNullVector(A2_144.position) then
      A1_143:OnError("HoldPosition : position not valid")
      return false
    end
    A1_143.AI.holdPosition = {
      position = {
        x = 0,
        y = 0,
        z = 0
      },
      direction = {
        x = 0,
        y = 0,
        z = 0
      },
      radiusSq = 9,
      useCover = A2_144.useCover
    }
    CopyVector(A1_143.AI.holdPosition.position, A2_144.position)
    CopyVector(A1_143.AI.holdPosition.direction, A2_144.direction)
    if 0 < A2_144.radius then
      A1_143.AI.holdPosition.radiusSq = A2_144.radius * A2_144.radius
    end
    AI.SetBehaviorVariable(A1_143.id, "HoldPosition", true)
    AI.SetBehaviorVariable(A1_143.id, "AtHoldPosition", A0_142:IsAtHoldPosition(A1_143))
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_145, A1_146)
    AI.RequestToStopMovement(A1_146.id)
    AI.SetBehaviorVariable(A1_146.id, "HoldPosition", false)
  end
  L0_125.Stop = L1_126
  function L1_126(A0_147, A1_148)
    return DistanceSqVectors(A1_148:GetWorldPos(), A1_148.AI.holdPosition.position) < A1_148.AI.holdPosition.radiusSq
  end
  L0_125.IsAtHoldPosition = L1_126
  HoldPositionAssignment = L0_125
  function L0_125(A0_149)
    A0_149.Assignments[Assignment_HoldPosition] = HoldPositionAssignment
  end
  AddHoldPositionAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_150, A1_151, A2_152)
    if IsNullVector(A2_152.position) then
      A1_151:OnError("CombatMove : position not valid")
      return false
    end
    A1_151.AI.combatMove = {
      position = {
        x = 0,
        y = 0,
        z = 0
      },
      useCover = A2_152.useCover
    }
    CopyVector(A1_151.AI.combatMove.position, A2_152.position)
    AI.SetBehaviorVariable(A1_151.id, "CombatMove", true)
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_153, A1_154)
    AI.RequestToStopMovement(A1_154.id)
    AI.SetBehaviorVariable(A1_154.id, "CombatMove", false)
  end
  L0_125.Stop = L1_126
  CombatMoveAssignment = L0_125
  function L0_125(A0_155)
    A0_155.Assignments[Assignment_CombatMove] = CombatMoveAssignment
  end
  AddCombatMoveAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_156, A1_157, A2_158)
    if A2_158.scanSpotEntityId == 0 then
      A1_157:Error("ScanSpotAssignment : ScanSpot entityId not set")
      return false
    end
    A1_157.AI.scanSpotAssignment = {}
    A1_157.AI.scanSpotAssignment.scanSpotEntityId = A2_158.scanSpotEntityId
    AI.SetBehaviorVariable(A1_157.id, "ScanSpotAssignment", true)
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_159, A1_160)
    AI.RequestToStopMovement(A1_160.id)
    A1_160.AI.scanSpotAssignment = nil
    AI.SetBehaviorVariable(A1_160.id, "ScanSpotAssignment", false)
  end
  L0_125.Stop = L1_126
  ScanSpotAssignment = L0_125
  function L0_125(A0_161)
    A0_161.Assignments[Assignment_ScanSpot] = ScanSpotAssignment
  end
  AddScanSpotAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_162, A1_163, A2_164)
    local L3_165
    L3_165 = A2_164.scorchSpotEntityID
    if L3_165 == 0 then
      A1_163:OnError("ScorchSpotAssignment : Entity ID invalid!")
      return false
    end
    A1_163.AI.scorchSpotAssignment = {
      scorchSpotEntityID = L3_165,
      aimOffset = A2_164.aimOffset,
      firingPattern = A2_164.firingPattern
    }
    AI.SetBehaviorVariable(A1_163.id, "ScorchSpotAssignment", true)
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_166, A1_167)
    AI.SetBehaviorVariable(A1_167.id, "ScorchSpotAssignment", false)
  end
  L0_125.Stop = L1_126
  ScorchSpotAssignment = L0_125
  function L0_125(A0_168)
    A0_168.Assignments[Assignment_ScorchSpot] = ScorchSpotAssignment
  end
  AddScorchSpotAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_169, A1_170, A2_171)
    AI.SetBehaviorVariable(A1_170.id, "PsychoCombatAllowed", true)
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_172, A1_173)
    AI.SetBehaviorVariable(A1_173.id, "PsychoCombatAllowed", false)
  end
  L0_125.Stop = L1_126
  PsychoCombatAllowedAssignment = L0_125
  function L0_125(A0_174)
    A0_174.Assignments[Assignment_PsychoCombatAllowed] = PsychoCombatAllowedAssignment
  end
  AddPsychoCombatAllowedAssignment = L0_125
  L0_125 = {}
  function L1_126(A0_175, A1_176, A2_177)
    AI.SetBehaviorVariable(A1_176.id, "StalkerAggressive", true)
    return true
  end
  L0_125.Start = L1_126
  function L1_126(A0_178, A1_179)
    AI.SetBehaviorVariable(A1_179.id, "StalkerAggressive", false)
  end
  L0_125.Stop = L1_126
  StalkerAggressiveAssignment = L0_125
  function L0_125(A0_180)
    A0_180.Assignments[Assignment_StalkerAggressive] = StalkerAggressiveAssignment
  end
  AddStalkerAggressiveAssignment = L0_125
end
