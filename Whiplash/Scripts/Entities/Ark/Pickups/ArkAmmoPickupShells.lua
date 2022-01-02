Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupShells = {
  Properties = {
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    sProjectileClass = "ArkProjectileShotgunShell",
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupShells, ArkItem, true)
function ArkAmmoPickupShells.OnReset(A0_2926, A1_2927)
  ArkItem.OnReset(A0_2926, A1_2927)
  A0_2926:OnUpdateAppearance()
end
function ArkAmmoPickupShells.OnUpdateAppearance(A0_2928)
  local L1_2929, L2_2930
  L1_2929 = A0_2928.Properties
  L1_2929 = L1_2929.Stacks
  L1_2929 = L1_2929.iMaxCount
  L1_2929 = 1 / L1_2929
  L2_2930 = A0_2928.arkitem
  L2_2930 = L2_2930.GetCount
  L2_2930 = L2_2930(L2_2930)
  L2_2930 = L2_2930 * L1_2929
  L2_2930 = 1 - L2_2930
  A0_2928:SetMaterialFloat(thirdPersonSlot, A0_2928.Properties.nSubMaterialId, MaterialFloatParams.alpha_test, L2_2930)
end
function ArkAmmoPickupShells.OnUsedFromInventory(A0_2931, A1_2932)
  Log("ArkAmmoPickupShells used from inventory!")
end
function ArkAmmoPickupShells.OnPropertyChange(A0_2933)
  ArkItem.OnPropertyChange(A0_2933)
  A0_2933:OnUpdateAppearance()
end
function ArkAmmoPickupShells.OnSpawn(A0_2934)
  ArkItem.OnSpawn(A0_2934)
  A0_2934:CloneMaterial(thirdPersonSlot)
end
