local L0_8769, L1_8770, L2_8771
L0_8769 = {}
L1_8770 = {}
L1_8770.nMinValue = 3
L1_8770.nMaxValue = 20
L1_8770.nIngredientType = 0
L0_8769.Properties = L1_8770
L1_8770 = {}
L1_8770.Icon = "Seed.bmp"
L0_8769.Editor = L1_8770
L0_8769.m_usable = 1
L0_8769.m_useMessage = ""
L0_8769.m_modelPath = "GameSDK/Objects/User/sshain/pickups/Ark_sshain_pickup_"
L0_8769.m_ingredientType = "organic"
L0_8769.m_value = 1
Ark_sshain_CraftingMaterial = L0_8769
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8772)
  local L1_8773
  L1_8773 = {
    "organic",
    "mineral",
    "synthetic",
    "exotic"
  }
  if A0_8772.Properties.nIngredientType ~= 0 then
  end
  A0_8772.m_ingredientType = L1_8773[A0_8772.Properties.nIngredientType]
  A0_8772.m_value = math.random(A0_8772.Properties.nMinValue, A0_8772.Properties.nMaxValue)
  A0_8772.Properties.object_Model = A0_8772.m_modelPath .. A0_8772.m_ingredientType .. ".cgf"
  A0_8772.m_useMessage = tostring(A0_8772.m_value) .. " " .. A0_8772.m_ingredientType .. " ingredients"
  A0_8772:LoadObject(0, A0_8772.Properties.object_Model)
end
L0_8769.Reset = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8774, A1_8775)
  local L2_8776
  A0_8774.m_usable = 1
  L2_8776 = A0_8774.m_usable
  return L2_8776
end
L0_8769.IsUsable = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8777, A1_8778)
  if A0_8777.m_usable == 1 then
    return A0_8777.m_useMessage
  else
    return "@use_object"
  end
end
L0_8769.GetUsableMessage = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8779)
  A0_8779:Reset()
  A0_8779:PhysicalizeThis()
end
L0_8769.OnInit = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8780)
  A0_8780:Reset()
end
L0_8769.OnPropertyChange = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8781)
  A0_8781:Reset()
end
L0_8769.OnReset = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8782, A1_8783, A2_8784)
  A1_8783:AddIngredient(A0_8782.m_ingredientType, A0_8782.m_value)
  BroadcastEvent(A0_8782, "Used")
  A0_8782:Hide(1)
end
L0_8769.OnUsed = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
function L1_8770(A0_8785)
  local L1_8786
  L1_8786 = {}
  L1_8786.bRigidBody = 1
  L1_8786.bRigidBodyActive = 0
  L1_8786.bRigidBodyAfterDeath = 1
  L1_8786.bResting = 1
  L1_8786.Density = 999
  L1_8786.Mass = -1
  EntityCommon.PhysicalizeRigid(A0_8785, 0, L1_8786, 1)
end
L0_8769.PhysicalizeThis = L1_8770
L0_8769 = Ark_sshain_CraftingMaterial
L1_8770 = {}
L2_8771 = {}
L1_8770.Inputs = L2_8771
L2_8771 = {}
L2_8771.Used = "bool"
L1_8770.Outputs = L2_8771
L0_8769.FlowEvents = L1_8770
