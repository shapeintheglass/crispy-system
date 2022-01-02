local L0_8787, L1_8788, L2_8789
L0_8787 = {}
L1_8788 = {}
L1_8788.sFabricationPlan = "random"
L1_8788.object_Model = "GameSDK/Objects/User/sshain/pickups/Ark_sshain_pickup_fabplan.cgf"
L0_8787.Properties = L1_8788
L1_8788 = {}
L1_8788.Icon = "Seed.bmp"
L0_8787.Editor = L1_8788
L1_8788 = {}
L0_8787.m_fabPlan = L1_8788
L0_8787.m_usable = 1
L0_8787.m_useMessage = "Fabrication Plan"
Ark_sshain_FabricationPlan = L0_8787
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8790)
  A0_8790.m_fabPlan = A0_8790:GetFabricationPlanByName(A0_8790.Properties.sFabricationPlan)
  if A0_8790.m_fabPlan ~= nil then
    A0_8790.Properties.sFabricationPlan = A0_8790.m_fabPlan.itemName
    A0_8790.m_useMessage = A0_8790.Properties.sFabricationPlan .. " Fabrication Plan"
    A0_8790:LoadObject(0, A0_8790.Properties.object_Model)
    A0_8790:PhysicalizeThis()
  else
    LogWarning(A0_8790.class .. " has invalid FabricationPlan specified or FabricationPlan data not loaded.")
  end
end
L0_8787.Reset = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8791, A1_8792)
  local L2_8793, L3_8794
  L3_8794 = g_localActor
  L3_8794 = L3_8794.AllFabPlans
  if L3_8794 then
    L3_8794 = g_localActor
    L3_8794 = L3_8794.AllFabPlans
    if A1_8792 == "random" then
      L2_8793 = A0_8791:GetRandomPlan(L3_8794)
    else
      for _FORV_7_, _FORV_8_ in ipairs(L3_8794) do
        if A1_8792 == _FORV_8_.itemName then
        end
      end
    end
  end
  return L2_8793
end
L0_8787.GetFabricationPlanByName = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8795, A1_8796)
  local L2_8797
  L2_8797 = #A1_8796
  L2_8797 = L2_8797 or 0
  if L2_8797 ~= 0 then
    return A1_8796[math.random(1, L2_8797)]
  else
    return nil
  end
end
L0_8787.GetRandomPlan = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8798, A1_8799)
  local L2_8800
  A0_8798.m_usable = 1
  L2_8800 = A0_8798.m_usable
  return L2_8800
end
L0_8787.IsUsable = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8801, A1_8802)
  if A0_8801.m_usable == 1 then
    return A0_8801.m_useMessage
  else
    return "@use_object"
  end
end
L0_8787.GetUsableMessage = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8803)
  System.Log(A0_8803.class .. " OnInit")
end
L0_8787.OnInit = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8804)
  A0_8804:Reset()
end
L0_8787.OnPropertyChange = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8805)
  A0_8805:Reset()
end
L0_8787.OnReset = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8806, A1_8807, A2_8808)
  if A1_8807:AddFabricationPlan(A0_8806.m_fabPlan) == false then
  end
  BroadcastEvent(A0_8806, "Used")
  A0_8806:Hide(1)
end
L0_8787.OnUsed = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
function L1_8788(A0_8809)
  local L1_8810
  L1_8810 = {}
  L1_8810.bRigidBody = 1
  L1_8810.bRigidBodyActive = 0
  L1_8810.bRigidBodyAfterDeath = 1
  L1_8810.bResting = 1
  L1_8810.Density = 999
  L1_8810.Mass = -1
  EntityCommon.PhysicalizeRigid(A0_8809, 0, L1_8810, 1)
end
L0_8787.PhysicalizeThis = L1_8788
L0_8787 = Ark_sshain_FabricationPlan
L1_8788 = {}
L2_8789 = {}
L1_8788.Inputs = L2_8789
L2_8789 = {}
L2_8789.Used = "bool"
L1_8788.Outputs = L2_8789
L0_8787.FlowEvents = L1_8788
