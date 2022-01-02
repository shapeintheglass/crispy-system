Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkIngredientScrap = {
  Properties = {
    minScaleForSpawnedScraps = 0.5,
    maxScaleForSpawnedScraps = 3,
    minCountForSpawnedScraps = 100,
    maxCountForSpawnedScraps = 500
  }
}
ArkMakeDerivedEntityOverride(ArkIngredientScrap, ArkItem, true)
function ArkIngredientScrap.OnReset(A0_2970, A1_2971)
  ArkItem.OnReset(A0_2970, A1_2971)
  A0_2970:OnUpdateAppearance()
end
function ArkIngredientScrap.OnUpdateAppearance(A0_2972)
  local L1_2973, L2_2974, L3_2975, L4_2976, L5_2977, L6_2978, L7_2979
  L1_2973 = A0_2972.arkitem
  L2_2974 = L1_2973
  L1_2973 = L1_2973.GetCount
  L1_2973 = L1_2973(L2_2974)
  if L1_2973 > 0 then
    L2_2974 = A0_2972.Properties
    L2_2974 = L2_2974.minScaleForSpawnedScraps
    L3_2975 = A0_2972.Properties
    L3_2975 = L3_2975.maxScaleForSpawnedScraps
    L4_2976 = L3_2975 - L2_2974
    if L4_2976 > 0 then
      L5_2977 = A0_2972.Properties
      L5_2977 = L5_2977.maxCountForSpawnedScraps
      L6_2978 = A0_2972.Properties
      L6_2978 = L6_2978.minCountForSpawnedScraps
      if L1_2973 > L5_2977 then
        L1_2973 = L5_2977
      end
      if L6_2978 > L1_2973 then
        L1_2973 = L6_2978
      end
      if L5_2977 > 0 then
        L7_2979 = L1_2973 * L4_2976
        L7_2979 = L7_2979 / L5_2977
        L7_2979 = L2_2974 + L7_2979
        A0_2972:SetScale(L7_2979)
      end
    end
  end
end
function ArkIngredientScrap.OnInit(A0_2980)
  ArkItem.OnInit(A0_2980)
  A0_2980:OnUpdateAppearance()
end
function ArkIngredientScrap.OnPropertyChange(A0_2981)
  ArkItem.OnPropertyChange(A0_2981)
  A0_2981:OnUpdateAppearance()
end
