Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkConsumable = {
  Properties = {
    Description = {
      sKeyword = "",
      signal_keywordSignal = "",
      sKeyword2 = "",
      signal_keywordSignal2 = "",
      fSignalScale = 1,
      fSignalScale2 = 1
    },
    bCanBeFavorited = 1,
    gameMetric_MetricUsedFromWorld = "",
    gameMetric_MetricUsedTotal = "",
    AppliedOnConsume = {
      es_RestoredPoints = "",
      signalpackage_SignalPackage = "",
      OptionalAbilityRequirement = {ability_AbilityRequirement = "", signalpackage_AbilityRequirementSignalPackage = ""}
    },
    Effects = {posteffect_ConsumeVFX = ""},
    Sound = {audioTrigger_ConsumeSFX = ""},
    Inventory = {ei_ItemCategory = 2},
    textConsumeVerb = "@ui_Use"
  }
}
ArkMakeDerivedEntityOverride(ArkConsumable, ArkItem, true)
function ArkConsumable.Consume(A0_2941, A1_2942, A2_2943)
  local L3_2944, L4_2945, L5_2946
  L3_2944 = A0_2941.Properties
  L4_2945 = L3_2944.AppliedOnConsume
  L4_2945 = L4_2945.signalpackage_SignalPackage
  L5_2946 = L3_2944.AppliedOnConsume
  L5_2946 = L5_2946.OptionalAbilityRequirement
  L5_2946 = L5_2946.signalpackage_AbilityRequirementSignalPackage
  if L4_2945 ~= "" then
    Ark.SendSignalPackage(A1_2942.id, A0_2941.id, A1_2942.id, L4_2945)
  end
  if L5_2946 ~= "" and g_localActor.arkPlayer:HasAbility(L3_2944.AppliedOnConsume.OptionalAbilityRequirement.ability_AbilityRequirement) then
    Ark.SendSignalPackage(A1_2942.id, A0_2941.id, A1_2942.id, L5_2946)
  end
  Ark.TriggerPostEffect(L3_2944.Effects.posteffect_ConsumeVFX)
  A0_2941:PlaySFX(L3_2944.Sound.audioTrigger_ConsumeSFX)
  ArkItem.ConsumedItem(A0_2941, A1_2942)
end
function ArkConsumable.CanUse(A0_2947)
  if A0_2947.Properties.AppliedOnConsume.es_RestoredPoints == "HEALTH" then
    return g_localActor.arkPlayer:IsMaxHealth() ~= true
  elseif A0_2947.Properties.AppliedOnConsume.es_RestoredPoints == "PSI" then
    return g_localActor.arkPlayer:IsMaxPsi() ~= true
  elseif A0_2947.Properties.AppliedOnConsume.es_RestoredPoints == "OXYGEN" then
    return g_localActor.arkPlayer:IsMaxOxygen() ~= true
  else
    return true
  end
end
function ArkConsumable.PlayCameraFX(A0_2948, A1_2949)
  Particle.SpawnEffect(A1_2949, g_Vectors.v000, g_Vectors.v000, 1)
end
function ArkConsumable.OnUsedFromInventory(A0_2950, A1_2951)
  A0_2950:Log("ArkConsumable used from inventory!")
  ArkItem.OnUsedFromInventory(A0_2950, A1_2951)
  A0_2950:Consume(A1_2951, true)
  Ark.ModifyGameMetric(A0_2950.Properties.gameMetric_MetricUsedTotal, 1)
end
function ArkConsumable.OnUsedFromWorld(A0_2952, A1_2953)
  A0_2952:Log("ArkConsumable consumed from world!")
  A0_2952:Consume(A1_2953, false)
  Ark.ModifyGameMetric(A0_2952.Properties.gameMetric_MetricUsedFromWorld, 1)
  Ark.ModifyGameMetric(A0_2952.Properties.gameMetric_MetricUsedTotal, 1)
end
