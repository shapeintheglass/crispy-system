local L1_24, L2_25
L1_24 = AICharacter
L2_25 = {}
L2_25.AnyBehavior = {STOP_VEHICLE = "CarIdle"}
L2_25.CarIdle = {
  ACT_GOTO = "CarGoto",
  STOP_VEHICLE = "",
  VEHICLE_GOTO_DONE = "",
  OnEnemySeen = "CarAlerted",
  TO_CAR_IDLE = "",
  TO_CAR_SKID = "CarSkid"
}
L2_25.CarAlerted = {
  ACT_GOTO = "",
  STOP_VEHICLE = "CarIdle",
  VEHICLE_GOTO_DONE = "",
  OnEnemySeen = "",
  TO_CAR_IDLE = "",
  TO_CAR_SKID = "CarSkid",
  OnNoTarget = "CarIdle"
}
L2_25.CarGoto = {
  ACT_GOTO = "",
  STOP_VEHICLE = "CarIdle",
  VEHICLE_GOTO_DONE = "CarIdle",
  OnEnemySeen = "CarAlerted",
  TO_CAR_IDLE = "",
  TO_CAR_SKID = "CarSkid"
}
L2_25.CarSkid = {
  STOP_VEHICLE = "CarIdle",
  VEHICLE_GOTO_DONE = "",
  OnEnemySeen = "",
  TO_CAR_IDLE = "CarIdle",
  TO_CAR_SKID = ""
}
L1_24.Car = L2_25
