local L1_18, L2_19
L1_18 = AICharacter
L2_19 = {}
function L2_19.Constructor(A0_20, A1_21)
  A1_21.AI.weaponIdx = 1
end
L2_19.AnyBehavior = {STOP_VEHICLE = "TankIdle"}
L2_19.APCIdle = {
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
L2_19.TankIdle = {
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
L2_19.TankGoto = {
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
L2_19.TankAttack = {
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
L2_19.TankMove = {
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
L2_19.TankAlert = {
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
L2_19.TankEmergencyExit = {
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
L1_18.APC = L2_19
