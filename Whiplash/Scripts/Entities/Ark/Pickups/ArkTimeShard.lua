Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkConsumable.lua")
ArkTimeShard = {
  Properties = {nTimeRestored = -1}
}
ArkMakeDerivedEntityOverride(ArkTimeShard, ArkConsumable, true)
function ArkTimeShard.CanUse(A0_3067)
  return Ark.GetDoomClockAccumulation() > 0
end
function ArkTimeShard.Consume(A0_3068, A1_3069, A2_3070)
  if A0_3068:CanUse() then
    Ark.IncreaseDoomClockDuration(A0_3068.Properties.nTimeRestored)
    ArkConsumable.Consume(A0_3068, A1_3069, A2_3070)
  end
end
