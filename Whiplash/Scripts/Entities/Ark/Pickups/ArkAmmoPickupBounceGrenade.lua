Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAmmoPickupBouncyBall = {
  Properties = {
    iCount = 10,
    sSubMaterial = "opaque_box",
    nSubMaterialId = 3,
    bIsGrenade = true,
    bIsAmmo = true
  },
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkAmmoPickupBouncyBall, ArkItem, true)
function ArkAmmoPickupBouncyBall.OnUsedFromInventory(A0_2908, A1_2909)
  Log("ArkAmmoPickupBouncyBall used from inventory!")
end
