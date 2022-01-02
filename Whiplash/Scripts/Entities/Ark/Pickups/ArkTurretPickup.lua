Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkTurretPickup = {
  Properties = {
    archetype_Turret = "",
    textUseMessage = "",
    AI = {bUsedAsDynamicObstacle = 1}
  },
  PropertiesInstance = {bUsedAsDynamicObstacle = 1},
  Editor = {IconOnTop = true, Icon = "mine.bmp"}
}
ArkMakeDerivedEntityOverride(ArkTurretPickup, ArkItem, true)
function ArkTurretPickup.GetUsable(A0_3092)
  local L2_3093, L3_3094
  L2_3093 = {}
  L3_3094 = {}
  L3_3094.ActionType = "ScriptDefined"
  L3_3094.DisplayText = A0_3092.Properties.textUseMessage
  if A0_3092.m_usable == 1 then
    L2_3093.Use = L3_3094
  end
  return L2_3093
end
function ArkTurretPickup.GetRemoteManipulationInteraction(A0_3095)
  local L1_3096
  L1_3096 = {}
  L1_3096.ActionType = "ScriptDefined"
  L1_3096.CouldChange = false
  return L1_3096
end
function ArkTurretPickup.SpawnTurret(A0_3097)
  local L1_3098
  L1_3098 = {}
  L1_3098.class = "ArkTurret"
  L1_3098.archetype = A0_3097.Properties.archetype_Turret
  L1_3098.name = "PickupSpawnedTurret"
  L1_3098.position = A0_3097:GetWorldPos()
  L1_3098.orientation = A0_3097:GetDirectionVector(1)
  System.SpawnEntity(L1_3098)
end
function ArkTurretPickup.OnUsed(A0_3099, A1_3100, A2_3101)
  BroadcastEvent(A0_3099, "OnPickup")
  A0_3099:SpawnTurret()
  if System.IsEditor() then
    A0_3099:Hide(1)
  else
    A0_3099:DeleteThis()
  end
end
function ArkTurretPickup.OnRemoteManipulation(A0_3102, A1_3103)
  A0_3102:OnUsed()
end
function ArkTurretPickup.OnReset(A0_3104, A1_3105)
  ArkItem.OnReset(A0_3104, A1_3105)
  A0_3104:Hide(0)
end
