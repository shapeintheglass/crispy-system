local L1_36, L2_37
L1_36 = AICharacter
L2_37 = {}
function L2_37.Constructor(A0_38, A1_39)
  A1_39.AI.weaponIdx = 1
end
L2_37.AnyBehavior = {
  STOP_VEHICLE = "TankCloseIdle"
}
L2_37.TankCloseIdle = {
  ACT_GOTO = "TankCloseGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  TO_TANKCLOSE_ATTACK = "TankCloseAttack",
  TO_TANKCLOSE_GOTOPATH = "TankCloseGotoPath",
  TO_TANKCLOSE_SWITCHPATH = "TankCloseSwitchPath",
  TO_TANKCLOSE_RUNAWAY = "TankCloseRunAway",
  TO_TANKCLOSE_IDLE = "",
  OnEnemySeen = ""
}
L2_37.TankCloseGoto = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankCloseIdle",
  VEHICLE_GOTO_DONE = "TankCloseIdle",
  TO_TANKCLOSE_ATTACK = "",
  TO_TANKCLOSE_GOTOPATH = "",
  TO_TANKCLOSE_SWITCHPATH = "TankCloseSwitchPath",
  TO_TANKCLOSE_RUNAWAY = "TankCloseRunAway",
  TO_TANKCLOSE_IDLE = "",
  OnEnemySeen = "TankCloseAttack"
}
L2_37.TankCloseAttack = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankCloseIdle",
  VEHICLE_GOTO_DONE = "TankCloseIdle",
  TO_TANKCLOSE_ATTACK = "",
  TO_TANKCLOSE_GOTOPATH = "",
  TO_TANKCLOSE_SWITCHPATH = "TankCloseSwitchPath",
  TO_TANKCLOSE_RUNAWAY = "TankCloseRunAway",
  TO_TANKCLOSE_IDLE = "",
  OnEnemySeen = ""
}
L2_37.TankCloseGotoPath = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankCloseIdle",
  VEHICLE_GOTO_DONE = "TankCloseIdle",
  TO_TANKCLOSE_ATTACK = "",
  TO_TANKCLOSE_GOTOPATH = "",
  TO_TANKCLOSE_SWITCHPATH = "TankCloseSwitchPath",
  TO_TANKCLOSE_RUNAWAY = "TankCloseRunAway",
  TO_TANKCLOSE_IDLE = "TankCloseIdle",
  OnEnemySeen = "TankCloseAttack"
}
L2_37.TankCloseSwitchPath = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankCloseIdle",
  VEHICLE_GOTO_DONE = "TankCloseIdle",
  TO_TANKCLOSE_ATTACK = "TankCloseAttack",
  TO_TANKCLOSE_GOTOPATH = "",
  TO_TANKCLOSE_SWITCHPATH = "",
  TO_TANKCLOSE_RUNAWAY = "TankCloseRunAway",
  TO_TANKCLOSE_IDLE = "TankCloseIdle",
  OnEnemySeen = ""
}
L2_37.TankCloseRunAway = {
  ACT_GOTO = "",
  STOP_VEHICLE = "TankCloseIdle",
  VEHICLE_GOTO_DONE = "TankCloseIdle",
  TO_TANKCLOSE_ATTACK = "",
  TO_TANKCLOSE_GOTOPATH = "",
  TO_TANKCLOSE_SWITCHPATH = "",
  TO_TANKCLOSE_RUNAWAY = "",
  TO_TANKCLOSE_IDLE = "TankCloseIdle",
  OnEnemySeen = ""
}
L1_36.TankClose = L2_37
