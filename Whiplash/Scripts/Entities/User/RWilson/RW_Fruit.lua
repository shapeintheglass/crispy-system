Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
RW_Fruit = {
  Properties = {sType = "random"}
}
ArkMakeDerivedEntityOverride(RW_Fruit, ArkItem, true)
function RW_Fruit.GetValidTypes(A0_8767)
  local L1_8768
  L1_8768 = {"apple", "banana"}
  return L1_8768
end
