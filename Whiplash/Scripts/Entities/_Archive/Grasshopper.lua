local L0_654, L1_655
L0_654 = {}
L0_654.type = "GrasshopperController"
L1_655 = {}
L1_655.GrasshopperNumber = 29
L1_655.objCGF1 = "Objects/characters/animals/grasshopper/grasshopper.cgf"
L1_655.objCGF2 = ""
L1_655.objCGF3 = ""
L1_655.objCGF4 = ""
L0_654.Properties = L1_655
L1_655 = {}
L1_655.Model = "Objects/Editor/T.cgf"
L0_654.Editor = L1_655
L0_654.outsideGrasshopperNumber = 0
Grasshopper = L0_654
L0_654 = Grasshopper
function L1_655(A0_656)
  if strlen(A0_656.Properties.objCGF1) > 0 then
    A0_656:LoadObject(A0_656.Properties.objCGF1, 0, 1)
  end
  if 0 < strlen(A0_656.Properties.objCGF2) then
    A0_656:LoadObject(A0_656.Properties.objCGF2, 1, 1)
  end
  if 0 < strlen(A0_656.Properties.objCGF3) then
    A0_656:LoadObject(A0_656.Properties.objCGF3, 2, 1)
  end
  if 0 < strlen(A0_656.Properties.objCGF4) then
    A0_656:LoadObject(A0_656.Properties.objCGF4, 3, 1)
  end
end
L0_654.OnInit = L1_655
L0_654 = Grasshopper
function L1_655(A0_657, A1_658, A2_659, A3_660)
  System.SetGrasshopperCount(Lerp(A0_657.outsideGrasshopperNumber, A0_657.Properties.GrasshopperNumber, A3_660))
end
L0_654.OnProceedFadeArea = L1_655
L0_654 = Grasshopper
function L1_655(A0_661, A1_662, A2_663)
  A0_661.outsideGrasshopperNumber = System.GetGrasshopperCount()
  System.SetGrasshopperCGF(A0_661.id)
end
L0_654.OnEnterArea = L1_655
L0_654 = Grasshopper
function L1_655(A0_664, A1_665, A2_666)
  System.SetGrasshopperCount(A0_664.outsideGrasshopperNumber)
end
L0_654.OnLeaveArea = L1_655
L0_654 = Grasshopper
function L1_655(A0_667)
  local L1_668
end
L0_654.OnShutDown = L1_655
