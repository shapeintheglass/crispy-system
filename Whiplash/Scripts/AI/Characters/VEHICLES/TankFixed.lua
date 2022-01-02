local L1_40, L2_41
L1_40 = AICharacter
L2_41 = {}
function L2_41.Constructor(A0_42, A1_43)
  A1_43.AI.weaponIdx = 1
end
L2_41.AnyBehavior = {
  STOP_VEHICLE = "TankFixedIdle"
}
L2_41.TankFixedIdle = {
  ACT_GOTO = "TankFixedGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  TO_TANKCLOSE_ATTACK = "",
  OnEnemySeen = ""
}
L2_41.TankFixedGoto = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankFixedIdle",
  VEHICLE_GOTO_DONE = "TankFixedIdle",
  TO_TANKCLOSE_ATTACK = "",
  OnEnemySeen = ""
}
L2_41.TankFixedAttack = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankFixedIdle",
  VEHICLE_GOTO_DONE = "TankFixedIdle",
  TO_TANKCLOSE_ATTACK = "",
  OnEnemySeen = ""
}
L1_40.TankFixed = L2_41
