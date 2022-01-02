Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupDiscs = {
  Properties = {bIsAmmo = true},
  Editor = {Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupDiscs, ArkItem, true)
function ArkAmmoPickupDiscs.OnUsedFromInventory(A0_2910, A1_2911)
  Log("ArkAmmoPickupHeavyLaser used from inventory!")
end
