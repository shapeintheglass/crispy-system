Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupExplosiveGrenades = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupExplosiveGrenades, ArkItem, true)
function ArkAmmoPickupExplosiveGrenades.OnUsedFromInventory(A0_2914, A1_2915)
  Log("ArkAmmoPickupExplosiveGrenades used from inventory!")
end
