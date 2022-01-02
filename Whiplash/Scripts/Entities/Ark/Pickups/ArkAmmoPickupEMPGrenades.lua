Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupEMPGrenades = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupEMPGrenades, ArkItem, true)
function ArkAmmoPickupEMPGrenades.OnUsedFromInventory(A0_2912, A1_2913)
  Log("ArkAmmoPickupEMPGrenades used from inventory!")
end
