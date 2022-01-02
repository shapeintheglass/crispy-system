local L1_14, L2_15
L1_14 = AICharacter
L2_15 = {}
function L2_15.Constructor(A0_16, A1_17)
  A1_17.AI.weaponIdx = 1
end
L2_15.AnyBehavior = {STOP_VEHICLE = "TankIdle"}
L2_15.AAAIdle = {
  ACT_GOTO = "TankGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "",
  OnEnemySeen = "TankAttack"
}
L2_15.TankIdle = {
  ACT_GOTO = "TankGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "",
  OnEnemySeen = "TankAttack"
}
L2_15.TankGoto = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "TankIdle",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "",
  OnEnemySeen = "TankAttack"
}
L2_15.TankAttack = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "TankMove",
  OnEnemySeen = ""
}
L2_15.TankMove = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "TankAlert",
  TO_TANK_ATTACK = "TankAttack",
  TO_TANK_MOVE = "",
  OnEnemySeen = ""
}
L2_15.TankAlert = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "TankAttack",
  TO_TANK_MOVE = "",
  OnEnemySeen = ""
}
L1_14.AAA = L2_15
