local L0_9527, L1_9528
L0_9527 = {}
HitDeathReactions = L0_9527
L0_9527 = HitDeathReactions
function L1_9528(A0_9529, A1_9530)
  return CryAction.LoadXML("Scripts/GameRules/HitDeathReactions_Defs.xml", A1_9530)
end
L0_9527.LoadXMLData = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9531, A1_9532)
  A0_9531.entity:IgnoreNextDeathImpulse()
  A0_9531.binds:ExecuteDeathReaction(A1_9532)
end
L0_9527.DefaultKillReaction = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9533, A1_9534)
  A0_9533.binds:ExecuteHitReaction(A1_9534)
end
L0_9527.DefaultHitReaction = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9535, A1_9536, A2_9537, A3_9538)
  return (A0_9535.binds:IsValidReaction(A1_9536, A2_9537, A3_9538))
end
L0_9527.DefaultValidation = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9539, A1_9540)
  A0_9539.entity:IgnoreNextDeathImpulse()
  A0_9539.binds:EndCurrentReaction()
end
L0_9527.ReactionDontApplyDeathImpulse = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9541, A1_9542, A2_9543)
  return A2_9543.knocksDownLeg and A0_9541.binds:IsValidReaction(A1_9542, A2_9543)
end
L0_9527.FallAndPlay_Validation = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9544)
  A0_9544.binds:EndCurrentReaction()
  BasicActor.ApplyDeathImpulse(A0_9544.entity, A0_9544.entity.hitDeathReactionsParams.HitDeathReactionsConfig and A0_9544.entity.hitDeathReactionsParams.HitDeathReactionsConfig.maxRagdolImpulse or -1)
end
L0_9527.DeathImpulse = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9545, A1_9546)
  A0_9545.binds:ExecuteHitReaction(A1_9546)
  Script.SetTimer(500, function()
    _UPVALUE0_.entity:LeaveCover()
    AI.SetStance(_UPVALUE0_.entity.id, STANCE_STAND)
  end)
end
L0_9527.BackHitInCover_Reaction = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9547, A1_9548, A2_9549)
  return (A0_9547.binds:IsValidReaction(A1_9548, A2_9549))
end
L0_9527.TestValidation = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9550, A1_9551, A2_9552)
  local L3_9553, L4_9554
  L3_9553 = A0_9550.entity
  L3_9553 = L3_9553.lastHitEvent
  if L3_9553 ~= nil then
    L3_9553 = A0_9550.binds
    L4_9554 = L3_9553
    L3_9553 = L3_9553.IsValidReaction
    L3_9553 = L3_9553(L4_9554, A1_9551, A2_9552)
    L4_9554 = A0_9550.entity
    L4_9554 = L4_9554.lastHitEvent
    L4_9554 = L4_9554 == A1_9551.destructibleEvent
    return L3_9553 and L4_9554
  else
    L3_9553 = false
    return L3_9553
  end
end
L0_9527.Destructible_Validation = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9555, A1_9556)
  A0_9555.entity:IgnoreNextDeathImpulse()
  if not A0_9555.binds:StartReactionAnim("deathReact_spiral_all_3p_01", true, 0.1) then
    Script.SetTimer(700, BasicActor.TurnRagdoll, A0_9555.entity, 1)
  end
end
L0_9527.TestKillReaction = L1_9528
L0_9527 = HitDeathReactions
function L1_9528(A0_9557, A1_9558)
  A0_9557.binds:ExecuteDeathReaction(A1_9558)
  if not A0_9557.binds:StartInteractiveAction(A1_9558.interactiveAction, 1000) then
    Script.SetTimer(3900, A0_9557.binds.EndCurrentReaction, A0_9557.binds)
  end
end
L0_9527.PlayerDeathTest = L1_9528
