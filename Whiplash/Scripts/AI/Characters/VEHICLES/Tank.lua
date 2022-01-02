local L1_32, L2_33
L1_32 = AICharacter
L2_33 = {}
function L2_33.Constructor(A0_34, A1_35)
  A1_35.AI.weaponIdx = 1
end
L2_33.AnyBehavior = {STOP_VEHICLE = "TankIdle"}
L2_33.TankIdle = {
  ACT_GOTO = "TankGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "",
  OnEnemySeen = "TankAttack",
  TO_TANK_EMERGENCYEXIT = "",
  TO_TANK_IDLE = "TankIdle"
}
L2_33.TankGoto = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "TankIdle",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "",
  OnEnemySeen = "TankAttack",
  TO_TANK_EMERGENCYEXIT = "",
  TO_TANK_IDLE = "TankIdle"
}
L2_33.TankAttack = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "",
  TO_TANK_MOVE = "TankMove",
  OnEnemySeen = "",
  TO_TANK_EMERGENCYEXIT = "",
  TO_TANK_IDLE = "TankIdle"
}
L2_33.TankMove = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "TankAlert",
  TO_TANK_ATTACK = "TankAttack",
  TO_TANK_MOVE = "",
  OnEnemySeen = "",
  TO_TANK_EMERGENCYEXIT = "TankEmergencyExit",
  TO_TANK_IDLE = "TankIdle"
}
L2_33.TankAlert = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "TankAttack",
  TO_TANK_MOVE = "",
  OnEnemySeen = "",
  TO_TANK_EMERGENCYEXIT = "",
  TO_TANK_IDLE = "TankIdle"
}
L2_33.TankEmergencyExit = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankIdle",
  VEHICLE_GOTO_DONE = "",
  TO_TANK_ALERT = "",
  TO_TANK_ALERT2 = "",
  TO_TANK_ATTACK = "TankAttack",
  TO_TANK_MOVE = "",
  OnEnemySeen = "",
  TO_TANK_EMERGENCYEXIT = "",
  TO_TANK_IDLE = "TankIdle"
}
L1_32.Tank = L2_33
