Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkPsychoscope = {
  Properties = {tutorial_PsychoscopeTutorial = ""}
}
ArkMakeDerivedEntityOverride(ArkPsychoscope, ArkItem, true)
function ArkPsychoscope.OnPickup(A0_3064, A1_3065)
  if A1_3065 == g_localActor.id then
    A0_3064:PickupHelper()
  end
end
function ArkPsychoscope.PickupHelper(A0_3066)
  g_localActor.arkPlayer:UnlockPsiScanning(true)
  BroadcastEvent(A0_3066, "OnPickup")
end
