Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupLureGrenades = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupLureGrenades, ArkItem, true)
function ArkAmmoPickupLureGrenades.OnUsedFromInventory(A0_2922, A1_2923)
  Log("ArkAmmoPickupLureGrenades used from inventory!")
end
