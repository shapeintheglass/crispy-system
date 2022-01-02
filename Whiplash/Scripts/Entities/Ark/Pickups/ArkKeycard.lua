Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkKeycard = {
  PropertiesInstance = {keycard_Keycard = ""}
}
ArkMakeDerivedEntityOverride(ArkKeycard, ArkItem, true)
ArkMakeInstanceObjectSaveable(ArkKeycard)
function ArkKeycard.UpdateDisplayName(A0_3033)
  A0_3033.displayName = Ark.GetKeyCardLabel(A0_3033.PropertiesInstance.keycard_Keycard)
end
function ArkKeycard.UpdateInventoryName(A0_3034)
  return Ark.GetKeyCardLabel(A0_3034.PropertiesInstance.keycard_Keycard)
end
function ArkKeycard.OnPickup(A0_3035, A1_3036)
  BroadcastEvent(A0_3035, "OnPickup")
  A0_3035:ActivateOutput("ItemType", A0_3035.Properties.sType)
  A0_3035:UpdateDisplayName()
  if not g_localActor.arkPlayer:IsExternalInventoryOpen() then
    A0_3035:GiveKeycard()
  end
end
function ArkKeycard.OnMyContainerClose(A0_3037)
  ArkItem.OnMyContainerClose(A0_3037)
  A0_3037:GiveKeycard()
end
function ArkKeycard.GiveKeycard(A0_3038)
  local L1_3039
  L1_3039 = A0_3038.Log
  L1_3039(A0_3038, "ArkKeycard:GiveKeycard()")
  L1_3039 = A0_3038.PropertiesInstance
  L1_3039 = L1_3039.keycard_Keycard
  if L1_3039 ~= "" then
    g_localActor.arkPlayer:GiveKeyCard(L1_3039)
  else
    LogWarning(A0_3038:GetName() .. " attempted to add a Keycard to player, but no Keycard was specified.")
  end
end
function ArkKeycard.OnStartLevel(A0_3040)
  A0_3040:UpdateDisplayName()
end
