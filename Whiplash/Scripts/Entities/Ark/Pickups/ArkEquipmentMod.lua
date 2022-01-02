Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkEquipmentMod = {
  Properties = {
    bConsumable = false,
    bLockQuality = true,
    bUsable = true,
    object_GeometryTP = "objectsenvironmentpropsgameplaymod_suit_pickup_amod_suit_pickup_a.cgf",
    EquipmentMod = {
      signalModifiers_inboundSignalMods = "",
      signalModifiers_outboundSignalMods = "",
      signalModifiers_inboundActivationSignalMods = "",
      signalModifiers_outboundActivationSignalMods = "",
      playerStatModPkgs_statMods = "",
      chipsetArchetypes_exclusives = "",
      signalPackage_package = "",
      fCryptoCost = 0,
      ei_ItemQuality = 0
    },
    audioTrigger_installFailed = "Play_Container_Cannot_Loot"
  }
}
ArkMakeDerivedEntityOverride(ArkEquipmentMod, ArkItem, true)
ArkPsychoscopeMod = ArkEquipmentMod
function ArkEquipmentMod.OnPickup(A0_2954, A1_2955)
  ArkItem.OnPickup(A0_2954, A1_2955)
  if A1_2955 == g_localActorId then
    g_localActor.arkPlayer:GiveChipset(A0_2954:GetArchetype())
  end
end
function ArkEquipmentMod.OnInit(A0_2956)
  ArkItem.OnInit(A0_2956)
  A0_2956.arkitem:SetQualityTier(A0_2956.Properties.EquipmentMod.ei_ItemQuality)
end
function ArkEquipmentMod.OnReset(A0_2957, A1_2958)
  ArkItem.OnReset(A0_2957, A1_2958)
  A0_2957.arkitem:SetQualityTier(A0_2957.Properties.EquipmentMod.ei_ItemQuality)
end
