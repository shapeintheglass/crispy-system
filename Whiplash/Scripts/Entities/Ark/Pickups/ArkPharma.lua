Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkConsumable.lua")
ArkPharma = {
  Properties = {
    nDuration = 30000,
    bIsAlcohol = false,
    AppliedOnConsume = {
      playerstatmodpkg_StatModifierPackage = "",
      signalmodifier_InboundSignalModifier = "",
      signalmodifier_OutboundSignalModifier = "",
      trauma_Cures = ""
    },
    UIStatusInfo = {
      textEffectsText = "",
      textRemovalText = "",
      sIcon = ""
    },
    Effects = {posteffect_PharmaStopVFX = ""},
    Sound = {audioTrigger_PharmaStopSFX = ""}
  }
}
ArkPharmaInstanceVars = {m_referenceTable = false, m_ownerId = false}
ArkMakeDerivedEntityOverride(ArkPharma, ArkConsumable, true)
ArkAlcohol = ArkPharma
ArkCure = ArkPharma
ArkSuitPatch = ArkPharma
function CreatePharma(A0_3057)
  mergef(A0_3057, ArkPharmaInstanceVars, 1)
  A0_3057.m_referenceTable = ArkPharmaInstanceVars
end
function ArkPharma.Consume(A0_3058, A1_3059, A2_3060)
  A0_3058:Log("StartPharma()")
  A0_3058.m_ownerId = A1_3059
  Ark.ApplyPharma(A0_3058.id)
  ArkConsumable.Consume(A0_3058, A0_3058.m_ownerId, A2_3060)
end
function ArkPharma.CanUse(A0_3061)
  if A0_3061.Properties.AppliedOnConsume.trauma_Cures ~= "" and A0_3061.Properties.bIsAlcohol == false then
    if A0_3061.Properties.AppliedOnConsume.es_RestoredPoints == "" then
      return (g_localActor.arkPlayer:CanHealTrauma(A0_3061.Properties.AppliedOnConsume.trauma_Cures))
    else
      return g_localActor.arkPlayer:CanHealTrauma(A0_3061.Properties.AppliedOnConsume.trauma_Cures) or ArkConsumable.CanUse(A0_3061)
    end
  else
    return ArkConsumable.CanUse(A0_3061)
  end
end
function ArkPharma.OnReset(A0_3062)
  A0_3062:KillTimer(A0_3062.m_timerId)
  A0_3062.m_ownerId = false
  ArkItem.OnReset(A0_3062)
end
function ArkPharma.OnSpawn(A0_3063)
  CreatePharma(A0_3063)
  A0_3063:Log("ArkPharma:OnSpawn")
  A0_3063.bRigidBodyActive = 1
end
