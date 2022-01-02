Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupHeavyLaser = {
  Properties = {bIsAmmo = true},
  Editor = {Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupHeavyLaser, ArkItem, true)
function ArkAmmoPickupHeavyLaser.OnUsedFromInventory(A0_2920, A1_2921)
  Log("ArkAmmoPickupHeavyLaser used from inventory!")
end
