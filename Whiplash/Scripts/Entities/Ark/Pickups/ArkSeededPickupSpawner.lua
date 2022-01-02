Script.ReloadScript("Scripts/ArkEntityUtils.lua")
ArkSeededPickupSpawner = {
  Properties = {loottable_PickupArchetypes = ""},
  PropertiesInstance = {
    itemarchetype_ArchetypeOverride = "",
    ei_ItemQuality = -1,
    weaponEnchantment_WeaponEnchantmentOverride = ""
  }
}
ArkSeededPickupSpawner.FlowEvents = {
  Outputs = {SpawnedEntity = "entity", SpawnedArchetype = "string"}
}
