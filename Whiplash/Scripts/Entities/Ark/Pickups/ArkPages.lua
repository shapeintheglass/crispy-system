Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkPages = {
  Properties = {
    Inventory = {bAddToInventory = 0}
  },
  PropertiesInstance = {note_OnPickup = ""}
}
ArkMakeDerivedEntityOverride(ArkPages, ArkItem, true)
function ArkPages.IsPlotCritical(A0_3045)
  return Ark.IsNotePlotCritical(A0_3045.PropertiesInstance.note_OnPickup)
end
function ArkPages.OnPickup(A0_3046, A1_3047)
  local L2_3048
  L2_3048 = A0_3046.PropertiesInstance
  L2_3048 = L2_3048.note_OnPickup
  if L2_3048 ~= "" then
    g_localActor.arkPlayer:GiveNote(L2_3048)
  else
    LogWarning(A0_3046:GetName() .. " attempted to add a note to player, but no note was specified.")
  end
  BroadcastEvent(A0_3046, "OnPickup")
end
