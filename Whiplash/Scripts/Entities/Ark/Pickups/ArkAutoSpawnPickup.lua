Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkAutoSpawnPickup = {
  Properties = {
    archetype_Archetype = "",
    vector_LocalOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    stringCollection_RandomNamePool = "",
    playableCharacter_RandomNameCharacter = "",
    bDeployTurret = false
  },
  Editor = {Icon = "Seed.bmp"},
  m_bVerbose = false,
  m_audioIds = {}
}
ArkMakeDerivedEntityOverride(ArkAutoSpawnPickup, ArkItem, true)
function ArkAutoSpawnPickup.OnPlayerSpawn(A0_2937)
  local L1_2938
  L1_2938 = A0_2937.Properties
  Ark.ApplyRandomName(A0_2937.arkitem:SpawnAndConsume(L1_2938.archetype_Archetype, L1_2938.vector_LocalOffset, L1_2938.bDeployTurret).id, L1_2938.stringCollection_RandomNamePool, L1_2938.playableCharacter_RandomNameCharacter)
end
