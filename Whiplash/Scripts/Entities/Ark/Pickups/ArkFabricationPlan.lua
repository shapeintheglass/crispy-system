Script.ReloadScript("Scripts/Entities/Ark/Pickups/ArkItem.lua")
ArkFabricationPlan = {
  Properties = {
    fabricationplan_Plan = "",
    fabricationplan_PlanCommon = "",
    fabricationplan_PlanRare = "",
    fabricationplan_PlanLegendary = "",
    gametokenid_FirstAcquiredToken = "",
    Inventory = {bAddToInventory = 0}
  },
  Editor = {Icon = "Seed.bmp"},
  m_bVerbose = false,
  m_audioIds = {}
}
ArkMakeDerivedEntityOverride(ArkFabricationPlan, ArkItem, true)
ArkFabricationPlanPharma = ArkFabricationPlan
ArkFabricationPlanCharge = ArkFabricationPlan
ArkFabricationPlanAmmo = ArkFabricationPlan
ArkFabricationPlanWeapon = ArkFabricationPlan
ArkFabricationPlanSuitMaint = ArkFabricationPlan
function ArkFabricationPlan.GetRandomPlan(A0_2959)
  return A0_2959.Properties.fabricationplan_Plan
end
function ArkFabricationPlan.OnPickup(A0_2960, A1_2961)
  local L2_2962, L3_2963, L4_2964
  L2_2962 = g_localActorId
  if A1_2961 == L2_2962 then
    L2_2962 = A0_2960.arkitem
    L3_2963 = L2_2962
    L2_2962 = L2_2962.GetQualityTier
    L2_2962 = L2_2962(L3_2963)
    L3_2963 = A0_2960.Properties
    L4_2964 = L3_2963.fabricationplan_Plan
    if L2_2962 == 3 and L3_2963.fabricationplan_PlanLegendary ~= "" then
      L4_2964 = L3_2963.fabricationplan_PlanLegendary
    elseif L2_2962 >= 2 and L3_2963.fabricationplan_PlanRare ~= "" then
      L4_2964 = L3_2963.fabricationplan_PlanRare
    elseif L2_2962 >= 1 and L3_2963.fabricationplan_PlanCommon ~= "" then
      L4_2964 = L3_2963.fabricationplan_PlanCommon
    end
    g_localActor.arkPlayer:GiveFabricationPlan(L4_2964)
  end
  L2_2962 = BroadcastEvent
  L3_2963 = A0_2960
  L4_2964 = "OnPickup"
  L2_2962(L3_2963, L4_2964)
end
function ArkFabricationPlan.OnInit(A0_2965)
  ArkItem.OnInit(A0_2965)
  if A0_2965.Properties.fabricationplan_PlanCommon == "" and A0_2965.Properties.fabricationplan_PlanRare == "" and A0_2965.Properties.fabricationplan_PlanLegendary == "" then
    A0_2965.arkitem:SetFabricationPlanQuality(A0_2965.Properties.fabricationplan_Plan)
  end
end
function ArkFabricationPlan.OnReset(A0_2966, A1_2967)
  ArkItem.OnReset(A0_2966, A1_2967)
  if A0_2966.Properties.fabricationplan_PlanCommon == "" and A0_2966.Properties.fabricationplan_PlanRare == "" and A0_2966.Properties.fabricationplan_PlanLegendary == "" then
    A0_2966.arkitem:SetFabricationPlanQuality(A0_2966.Properties.fabricationplan_Plan)
  end
end
ArkFabricationPlan.FlowEvents = {
  Inputs = {},
  Outputs = {OnPickup = "bool"}
}
