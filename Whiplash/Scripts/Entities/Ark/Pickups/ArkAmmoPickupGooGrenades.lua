Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupGooGrenades = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupGooGrenades, ArkItem, true)
function ArkAmmoPickupGooGrenades.OnUsedFromInventory(A0_2916, A1_2917)
  Log("ArkAmmoPickupGooGrenades used from inventory!")
end
