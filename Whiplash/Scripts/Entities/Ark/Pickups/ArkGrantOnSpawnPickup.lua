Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkGrantOnSpawnPickup = {
  Properties = {archetype_Archetype = "", nQuantity = 1},
  Editor = {Icon = "Seed.bmp"},
  m_bVerbose = false,
  m_audioIds = {}
}
ArkMakeDerivedEntityOverride(ArkGrantOnSpawnPickup, ArkItem, true)
function ArkGrantOnSpawnPickup.OnPlayerSpawn(A0_2968)
  local L1_2969
  L1_2969 = A0_2968.Properties
  A0_2968.arkitem:GrantAndConsume(L1_2969.archetype_Archetype, L1_2969.nQuantity)
end
