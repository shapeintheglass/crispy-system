local L0_103, L1_104
L0_103 = AI
L0_103 = L0_103.TacticalPositionManager
L1_104 = AI
L1_104 = L1_104.TacticalPositionManager
L1_104 = L1_104.Helicopter
L1_104 = L1_104 or {}
L0_103.Helicopter = L1_104
L0_103 = AI
L0_103 = L0_103.TacticalPositionManager
L0_103 = L0_103.Helicopter
function L1_104(A0_105)
  AI.RegisterTacticalPointQuery({
    Name = "HelicopterFindGoodFiringSpot",
    {
      Parameters = {density = 8, horizontalSpacing = 4},
      Generation = {pointsInDesignerPath_around_puppet = 75},
      Conditions = {min_distance2d_to_attentionTarget = 15, canShootTwoRayTest_to_attentionTarget = true},
      Weights = {distance_from_puppet = -1}
    }
  })
end
L0_103.OnInit = L1_104
