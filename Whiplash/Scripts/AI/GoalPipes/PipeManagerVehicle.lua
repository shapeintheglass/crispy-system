function PipeManager.InitVehicle(A0_59)
  AI.BeginGoalPipe("tankclose_wait")
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_wait3")
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_ATTACK_START", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_wait4")
  AI.PushGoal("signal", 1, 1, "TANKCLOSE_CHECK_SHOOT", SIGNALFILTER_SENDER)
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 1, 1, "TANKCLOSE_ATTACK_START", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_attack_start")
  AI.PushGoal("timeout", 1, 1)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_INIT", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_____________error")
  AI.PushGoal("timeout", 1, 3)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_INIT", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_speedzero")
  AI.PushGoal("timeout", 1, 0.5)
  AI.PushGoal("signal", 1, 1, "TANKCLOSE_ATTACK_START", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_memoryattack")
  AI.PushGoal("timeout", 1, 1)
  AI.PushGoal("firecmd", 0, 1)
  AI.PushGoal("timeout", 1, 4)
  AI.PushGoal("firecmd", 0, 0)
  AI.PushGoal("signal", 0, 1, "TANKCLOSE_MEMORYATTACK_START", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tankclose_alert_action")
  AI.PushGoal("timeout", 1, 1)
  AI.PushGoal("signal", 1, 1, "TANKCLOSE_MEMORYATTACK_START", SIGNALFILTER_SENDER)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tank_fire")
  AI.PushGoal("firecmd", 0, FIREMODE_FORCED)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tank_nofire")
  AI.PushGoal("firecmd", 0, 0)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tank_fire_sec")
  AI.PushGoal("firecmd", 0, FIREMODE_SECONDARY)
  AI.EndGoalPipe()
  AI.BeginGoalPipe("tank_fire_burst")
  AI.PushGoal("firecmd", 0, FIREMODE_BURST)
  AI.EndGoalPipe()
  AI.LogEvent("VEHICLE PIPES LOADED")
end