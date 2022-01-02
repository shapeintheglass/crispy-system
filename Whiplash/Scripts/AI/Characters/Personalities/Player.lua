local L1_8, L2_9
L1_8 = AICharacter
L2_9 = {}
L2_9.Class = UNIT_CLASS_LEADER
function L2_9.InitItems(A0_10, A1_11)
end
function L2_9.Constructor(A0_12, A1_13)
  A0_12:InitItems(A1_13)
  AI.ChangeParameter(A1_13.id, AIPARAM_COMBATCLASS, AICombatClasses.Infantry)
end
L2_9.AnyBehavior = {entered_vehicle = "", entered_vehicle_gunner = ""}
L2_9.PlayerIdle = {
  entered_vehicle = "",
  entered_vehicle_gunner = "",
  START_ATTACK = "PlayerAttack"
}
L2_9.PlayerAttack = {
  entered_vehicle = "",
  entered_vehicle_gunner = "",
  OnLeaderActionCompleted = "PlayerIdle",
  OnLeaderActionFailed = "PlayerIdle"
}
L1_8.Player = L2_9
