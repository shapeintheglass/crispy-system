Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkPetSpawner = {
  Properties = {psiPower_Power = ""}
}
ArkMakeDerivedEntityOverride(ArkPetSpawner, ArkItem, true)
function ArkPetSpawner.OnUsedFromInventory(A0_3049, A1_3050)
  ArkItem.OnUsedFromInventory(A0_3049, A1_3050)
  Ark.ActivatePsiPower(A0_3049.Properties.psiPower_Power)
end
function ArkPetSpawner.OnRemovedFromInventory(A0_3051, A1_3052)
  if A1_3052 == g_localActorId then
    Ark.LockPsiPower(A0_3051.Properties.psiPower_Power)
  end
end
function ArkPetSpawner.OnPickup(A0_3053, A1_3054)
  ArkItem.OnPickup(A0_3053, A1_3054)
  if not A0_3053.arkitem:InPlayerMuleInventory() then
    Ark.UnlockPsiPower(A0_3053.Properties.psiPower_Power)
  end
end
function ArkPetSpawner.CanDismiss(A0_3055, A1_3056)
  return Ark.IsPsiPowerActive(A0_3055.Properties.psiPower_Power)
end
