Script.ReloadScript("SCRIPTS/Entities/actor/BasicActor.lua")
Script.ReloadScript("SCRIPTS/Entities/AI/Shared/BasicAI.lua")
NullAI_x = {
  IsAIControlled = function()
    local L0_2726, L1_2727
    L0_2726 = true
    return L0_2726
  end,
  PropertiesInstance = {
    AITerritoryAndWave = {aiterritory_Territory = "<None>", aiwave_Wave = "<None>"},
    soclasses_SmartObjectClass = "",
    groupid = -1,
    bAutoDisable = 0
  },
  Properties = {
    fileModel = "",
    fileHitDeathReactionsParamsDataFile = "",
    soclasses_SmartObjectClass = ""
  },
  gameParams = {
    physicsParams = {
      Living = {inertia = 0, inertiaAccel = 0}
    }
  },
  AIMovementAbility = {},
  hitDeathReactionsParamsDefFile = "",
  AnimationGraph = "",
  UpperBodyGraph = "",
  ActionController = "",
  _Parent = {}
}
function NullAI_x.InitNullAI(A0_2728)
  local L1_2729, L2_2730
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.Reset
  L1_2729.Reset = L2_2730
  L1_2729 = A0_2728.NullAI_Reset
  A0_2728.Reset = L1_2729
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.OnReset
  L1_2729.OnReset = L2_2730
  L1_2729 = A0_2728.NullAI_OnReset
  A0_2728.OnReset = L1_2729
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.ResetCommon
  L1_2729.ResetCommon = L2_2730
  L1_2729 = A0_2728.NullAI_ResetCommon
  A0_2728.ResetCommon = L1_2729
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.OnInit
  L1_2729.OnInit = L2_2730
  L1_2729 = A0_2728.NullAI_OnInit
  A0_2728.OnInit = L1_2729
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.SetActorModel
  L1_2729.SetActorModel = L2_2730
  L1_2729 = A0_2728.NullAI_SetActorModel
  A0_2728.SetActorModel = L1_2729
  L1_2729 = A0_2728._Parent
  L2_2730 = A0_2728.OnSpawn
  L1_2729.OnSpawn = L2_2730
  L1_2729 = A0_2728.NullAI_OnSpawn
  A0_2728.OnSpawn = L1_2729
end
function NullAI_x.NullAI_Reset(A0_2731, A1_2732, A2_2733)
  A0_2731:NullAI_ResetCommon(A1_2732, A2_2733)
end
function NullAI_x.NullAI_OnReset(A0_2734, A1_2735, A2_2736)
  A0_2734.UpdateTime = 0.05
  A0_2734:NetPresent(1)
  A0_2734:SetScriptUpdateRate(A0_2734.UpdateTime)
  A0_2734:NullAI_ResetCommon(A1_2735, A2_2736)
end
function NullAI_x.NullAI_ResetCommon(A0_2737, A1_2738, A2_2739)
  A0_2737.AI = {}
end
function NullAI_x.NullAI_OnInit(A0_2740, A1_2741)
  A0_2740.AI = {}
  if not A1_2741 or A1_2741 == false then
    BasicAI.RegisterAI(A0_2740)
  end
  A0_2740:NullAI_OnReset(true, A1_2741)
end
function NullAI_x.NullAI_SetActorModel(A0_2742, A1_2743)
  A0_2742:CreateRenderProxy()
end
function NullAI_x.NullAI_OnSpawn(A0_2744)
  local L1_2745
end
function NullAI_x.RegisterAI(A0_2746, A1_2747)
end
