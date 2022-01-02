local L0_324, L1_325
L0_324 = {}
L0_324.type = "BFlyController"
L1_325 = {}
L1_325.BFlyNumber = 23
L0_324.Properties = L1_325
L1_325 = {}
L1_325.Model = "Objects/Editor/T.cgf"
L0_324.Editor = L1_325
L0_324.outsideBFlyNumber = 0
BFly = L0_324
L0_324 = BFly
function L1_325(A0_326)
  local L1_327
end
L0_324.OnInit = L1_325
L0_324 = BFly
function L1_325(A0_328, A1_329, A2_330, A3_331)
  System.SetBFCount(Lerp(A0_328.outsideBFlyNumber, A0_328.Properties.BFlyNumber, A3_331))
end
L0_324.OnProceedFadeArea = L1_325
L0_324 = BFly
function L1_325(A0_332, A1_333, A2_334)
  A0_332.outsideBFlyNumber = System.GetBFCount()
end
L0_324.OnEnterArea = L1_325
L0_324 = BFly
function L1_325(A0_335, A1_336, A2_337)
  System.SetBFCount(A0_335.outsideBFlyNumber)
end
L0_324.OnLeaveArea = L1_325
L0_324 = BFly
function L1_325(A0_338)
  local L1_339
end
L0_324.OnShutDown = L1_325
