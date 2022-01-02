Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkTrackingChip = {
  PropertiesInstance = {character_TrackedCharacter = ""}
}
ArkMakeDerivedEntityOverride(ArkTrackingChip, ArkItem, true)
ArkMakeInstanceObjectSaveable(ArkTrackingChip)
function ArkTrackingChip.OnPickup(A0_3071, A1_3072)
  local L2_3073
  L2_3073 = A0_3071.PropertiesInstance
  L2_3073 = L2_3073.character_TrackedCharacter
  if A1_3072 == g_localActorId and not ArkRoster.GetCharacterHasTrackingChip(L2_3073) then
    ArkRoster.DiscoverCharacter(L2_3073)
  end
  ArkItem.OnPickup(A0_3071, A1_3072)
end
function ArkTrackingChip.OnPostLoad(A0_3074)
  local L1_3075
  L1_3075 = A0_3074.PropertiesInstance
  L1_3075 = L1_3075.character_TrackedCharacter
  ArkRoster.UpdateTrackingChipLocation(L1_3075)
  ArkItem.OnPostLoad(A0_3074)
end
function ArkTrackingChip.GetUsable(A0_3076)
  local L1_3077
  L1_3077 = A0_3076.PropertiesInstance
  L1_3077 = L1_3077.character_TrackedCharacter
  if not ArkRoster.GetCharacterHasTrackingChip(L1_3077) then
    ArkRoster.DiscoverCharacter(L1_3077)
  end
  return {}
end
function ArkTrackingChip.UpdateDisplayName(A0_3078)
  local L1_3079
  L1_3079 = ArkRoster
  L1_3079 = L1_3079.GetCharacterName
  L1_3079 = L1_3079(A0_3078.PropertiesInstance.character_TrackedCharacter)
  if L1_3079 ~= nil then
    A0_3078.displayName = L1_3079 .. ": " .. A0_3078.Properties.textDisplayName
  else
    LogWarning(A0_3078:GetName() .. ": Invalid characterId assigned to tracking bracelet.")
    A0_3078.displayName = A0_3078.Properties.textDisplayName
  end
end
function ArkTrackingChip.UpdateInventoryName(A0_3080)
  local L1_3081
  L1_3081 = ArkRoster
  L1_3081 = L1_3081.GetCharacterName
  L1_3081 = L1_3081(A0_3080.PropertiesInstance.character_TrackedCharacter)
  if L1_3081 ~= nil then
    return " " .. L1_3081 .. " @ui_Colon " .. A0_3080.Properties.textDisplayName
  else
    LogWarning(A0_3080:GetName() .. ": Invalid characterId assigned to tracking bracelet.")
    return A0_3080.Properties.textDisplayName
  end
end
