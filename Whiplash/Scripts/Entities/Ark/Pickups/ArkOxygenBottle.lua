Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkConsumable.lua")
ArkOxygenBottle = {
  Properties = {
    AppliedOnConsume = {nOxygenRestored = 500}
  }
}
ArkMakeDerivedEntityOverride(ArkOxygenBottle, ArkConsumable, true)
function ArkOxygenBottle.Consume(A0_3042, A1_3043, A2_3044)
  A0_3042:Log("ArkOxygenBottle:Consume()")
  g_localActor.arkPlayer:GiveOxygen(A0_3042.Properties.AppliedOnConsume.nOxygenRestored)
  ArkConsumable.Consume(A0_3042, A1_3043, A2_3044)
end
