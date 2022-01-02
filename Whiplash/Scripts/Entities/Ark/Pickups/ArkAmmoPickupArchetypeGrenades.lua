Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupArchetypeGrenades = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupArchetypeGrenades, ArkItem, true)
function ArkAmmoPickupArchetypeGrenades.OnUsedFromInventory(A0_2906, A1_2907)
  Log("ArkAmmoPickupArchetypeGrenades used from inventory!")
end
