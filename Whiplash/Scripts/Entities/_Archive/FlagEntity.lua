local L0_585, L1_586, L2_587, L3_588
L0_585 = {}
L1_586 = {}
L1_586.object_Model_Supporter_Animated = "objects/multiplayer/flagbase/mp_flag_animated.cgf"
L1_586.object_Model_Supporter_AnimatedAMD64 = "objects/multiplayer/flagbase/mp_flag_animated_amd.cgf"
L0_585.Properties = L1_586
L0_585.ASSAULTCheckPointID = nil
L0_585.fRaiseHeight = 0
L0_585.animation_state = 0
L0_585.is_moving = 0
FlagEntity = L0_585
L0_585 = FlagEntity
function L1_586(A0_589)
  A0_589.fRaiseHeight = 0
  A0_589:GotoState("down")
end
L0_585.OnReset = L1_586
L0_585 = FlagEntity
function L1_586(A0_590)
  if Client and Client:GetServerCPUTargetName() == "AMD64" then
    A0_590:LoadCharacter(A0_590.Properties.object_Model_Supporter_AnimatedAMD64, 0)
  else
    A0_590:LoadCharacter(A0_590.Properties.object_Model_Supporter_Animated, 0)
  end
  A0_590:DrawCharacter(0, 1)
  A0_590:ResetAnimation(0, -1)
  A0_590:StartAnimation(0, "flag_bottom", 0, 0, 1, 1)
  A0_590.fRaiseHeight = 0
end
L0_585.LoadGeometry = L1_586
L0_585 = FlagEntity
function L1_586(A0_591, A1_592)
end
L0_585.OnContact = L1_586
L0_585 = FlagEntity
function L1_586(A0_593, A1_594)
end
L0_585.OnUpdate = L1_586
L0_585 = FlagEntity
function L1_586(A0_595)
  local L1_596
end
L0_585.OnShutDown = L1_586
L0_585 = FlagEntity
function L1_586(A0_597)
  local L1_598
end
L0_585.OnActivate = L1_586
L0_585 = FlagEntity
function L1_586(A0_599)
  A0_599:RegisterState("up")
  A0_599:RegisterState("down")
end
L0_585.RegisterStates = L1_586
L0_585 = FlagEntity
function L1_586(A0_600, A1_601)
  if A0_600.is_moving == 0 then
    if A1_601 ~= A0_600.animation_state then
      if A1_601 == 1 then
        A0_600:StartAnimation(0, "flag_up", 0, 0)
      else
        A0_600:StartAnimation(0, "flag_down", 0, 0)
      end
      A0_600.is_moving = 1
    elseif A0_600:IsAnimationRunning(0) == nil then
      if A1_601 == 1 then
        A0_600:StartAnimation(0, "flag_waving", 0, 0, 1, 1)
      else
        A0_600:StartAnimation(0, "flag_bottom", 0, 0, 1, 1)
      end
    end
  elseif A0_600:IsAnimationRunning(0) == nil then
    A0_600.animation_state = A1_601
    A0_600.is_moving = 0
  end
end
L0_585.UpdateAnimation = L1_586
L0_585 = FlagEntity
L1_586 = {}
function L2_587(A0_602)
  A0_602:LoadGeometry()
  A0_602:RegisterStates()
  A0_602:OnReset()
  A0_602:NetPresent(nil)
  A0_602:Activate(1)
end
L1_586.OnInit = L2_587
L2_587 = {}
L1_586.up = L2_587
L2_587 = {}
L1_586.down = L2_587
L0_585.Server = L1_586
L0_585 = FlagEntity
L1_586 = {}
function L2_587(A0_603)
  A0_603:LoadGeometry()
  A0_603:RegisterStates()
end
L1_586.OnInit = L2_587
L2_587 = {}
function L3_588(A0_604)
  local L1_605
end
L2_587.OnBeginState = L3_588
function L3_588(A0_606)
  A0_606:UpdateAnimation(1)
end
L2_587.OnUpdate = L3_588
L1_586.up = L2_587
L2_587 = {}
function L3_588(A0_607)
  local L1_608
end
L2_587.OnBeginState = L3_588
function L3_588(A0_609)
  A0_609:UpdateAnimation(0)
end
L2_587.OnUpdate = L3_588
L1_586.down = L2_587
L0_585.Client = L1_586
