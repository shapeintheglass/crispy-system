Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkCondenserCell = {
  Properties = {
    fHealth = 100,
    Explosion = {
      signalGroup_Damage = "",
      signalpackage_Explosion = "",
      fMaxImpulse = 1000,
      fMinRadius = 0.5,
      fMaxRadius = 1,
      cameraShake_ExplosionCameraShake = "10739735956147043737",
      particleeffect_ExplodeVFX = "",
      audioTrigger_ExplodeSFX = ""
    },
    Repair = {
      textPromptItemRequired = "",
      textDisplayNameBroken = "",
      nSparePartsRequired = 1,
      nHoldToUseDuration = 1000,
      ability_RepairRequirement = "",
      archetype_RepairItem = "",
      fRepairIconRange = 10,
      object_BrokenModel = ""
    }
  },
  PropertiesInstance = {bStartsBroken = 0}
}
ArkMakeDerivedEntityOverride(ArkCondenserCell, ArkItem, true)
function ArkCondenserCell.Event_Repair(A0_2939)
  BroadcastEvent(A0_2939, "Repair")
end
function ArkCondenserCell.Event_Break(A0_2940)
  BroadcastEvent(A0_2940, "Break")
end
ArkCondenserCell.FlowEvents = {
  Inputs = {
    Break = {
      ArkCondenserCell.Event_Break,
      "bool"
    },
    Repair = {
      ArkCondenserCell.Event_Repair,
      "bool"
    }
  },
  Outputs = {Repaired = "bool", Explode = "bool"}
}
