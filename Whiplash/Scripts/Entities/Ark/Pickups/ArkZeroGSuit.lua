Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkZeroGSuit = {
  Properties = {
    fPropulsionForce = 0,
    fPropulsionDuration = 0,
    tutorial_ZeroGSuitTutorial = ""
  }
}
ArkMakeDerivedEntityOverride(ArkZeroGSuit, ArkItem, true)
function ArkZeroGSuit.OnPickup(A0_3106, A1_3107)
  if A1_3107 == g_localActorId then
    A0_3106:PickupHelper()
  end
end
function ArkZeroGSuit.PickupHelper(A0_3108)
  local L1_3109
  L1_3109 = A0_3108.Properties
  if g_localActor.arkPlayer:UnlockPropulsionSuit(L1_3109.fPropulsionForce, L1_3109.fPropulsionDuration) == true then
    Ark.DisplayTutorial(L1_3109.tutorial_ZeroGSuitTutorial)
  end
  BroadcastEvent(A0_3108, "OnPickup")
  A0_3108:ActivateOutput("ItemType", A0_3108.Properties.sType)
end
