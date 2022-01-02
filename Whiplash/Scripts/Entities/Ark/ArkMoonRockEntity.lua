Script.ReloadScript("Scripts/Entities/Physics/RigidBodyEx.lua")
ArkMoonRockEntity = {
  Properties = {
    CameraShake = {
      throwImpactCameraShakeId = "3149325216979739866"
    },
    ArkEffects = {
      particleeffect_spawnParticleEffect = "Characters.Aliens.LunarNightmare.MoonRock.SpawnTrail",
      particleeffect_throwLevitatedParticleEffect = "Characters.Aliens.LunarNightmare.Abilities.RockThrow.RockLevitate",
      audioTrigger_spawnAudio = ""
    }
  },
  PropertiesInstance = {bCarryBlocked = false},
  Editor = {Icon = "", IconOnTop = 1}
}
function ArkMoonRockEntity.GetUsable(A0_4304)
  local L2_4305, L3_4306
  L2_4305 = {}
  L3_4306 = A0_4304.Properties
  L3_4306 = L3_4306.Physics
  L3_4306 = L3_4306.Mass
  if not (L3_4306 > 0) then
    L3_4306 = A0_4304.Properties
    L3_4306 = L3_4306.Physics
    L3_4306 = L3_4306.Density
  elseif L3_4306 > 0 then
    L3_4306 = A0_4304.Properties
    L3_4306 = L3_4306.Physics
    L3_4306 = L3_4306.bPhysicalize
    if L3_4306 == 1 then
      L3_4306 = A0_4304.Properties
      L3_4306 = L3_4306.bIsCarryable
      if L3_4306 == 1 then
        L3_4306 = A0_4304.PropertiesInstance
        L3_4306 = L3_4306.bCarryBlocked
        if L3_4306 == false then
          L3_4306 = {}
          L3_4306.ActionType = "Carry"
          if A0_4304.Properties.ability_CarryRequirement == "" then
            L3_4306.DisplayText = ""
          end
          L2_4305.Use = L3_4306
        end
      end
    end
  end
  return L2_4305
end
MakeDerivedEntity(ArkMoonRockEntity, RigidBodyEx)
