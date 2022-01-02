Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkTranScribe = {
  Properties = {nSubMatIndex = 3},
  PropertiesInstance = {audioLogCollection_OnPickup = "", bAutoPlayAudioLog = false}
}
ArkMakeDerivedEntityOverride(ArkTranScribe, ArkItem, true)
ArkMakeInstanceObjectSaveable(ArkTranScribe)
function ArkTranScribe.IsPlotCritical(A0_3082)
  return Ark.IsAudioLogCollectionPlotCritical(A0_3082.PropertiesInstance.audioLogCollection_OnPickup)
end
function ArkTranScribe.UpdateDisplayName(A0_3083)
  local L1_3084, L2_3085
  L1_3084 = A0_3083.PropertiesInstance
  L1_3084 = L1_3084.audioLogCollection_OnPickup
  if L1_3084 ~= "" then
    L2_3085 = A0_3083.arkitem
    L2_3085 = L2_3085.GetAudioLogCollectionOwnerName
    L2_3085 = L2_3085(L2_3085, L1_3084)
    if L2_3085 then
      A0_3083.displayName = A0_3083.Properties.textDisplayName .. " @ui_Colon " .. L2_3085
    else
      A0_3083.displayName = A0_3083.Properties.textDisplayName
    end
  else
    L2_3085 = A0_3083.Properties
    L2_3085 = L2_3085.textDisplayName
    A0_3083.displayName = L2_3085
  end
end
function ArkTranScribe.OnPickup(A0_3086, A1_3087)
  BroadcastEvent(A0_3086, "OnPickup")
  A0_3086:ActivateOutput("ItemType", A0_3086.Properties.sType)
  A0_3086:UpdateDisplayName()
  if not g_localActor.arkPlayer:IsExternalInventoryOpen() then
    A0_3086:GiveAudioLogData()
  end
end
function ArkTranScribe.OnMyContainerClose(A0_3088)
  ArkItem.OnMyContainerClose(A0_3088)
  A0_3088:GiveAudioLogData()
end
function ArkTranScribe.GiveAudioLogData(A0_3089)
  local L1_3090, L2_3091
  L1_3090 = A0_3089.PropertiesInstance
  L1_3090 = L1_3090.audioLogCollection_OnPickup
  if L1_3090 ~= "" then
    L2_3091 = A0_3089.PropertiesInstance
    L2_3091 = L2_3091.bAutoPlayAudioLog
    g_localActor.arkPlayer:GiveAudioLog(L1_3090, L2_3091)
  end
end
