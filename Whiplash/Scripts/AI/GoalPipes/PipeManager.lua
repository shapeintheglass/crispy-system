local L0_50, L1_51
L0_50 = {}
PipeManager = L0_50
L0_50 = PipeManager
function L1_51(A0_52)
  local L1_53
end
L0_50.OnInit = L1_51
L0_50 = PipeManager
function L1_51(A0_54)
  Script.ReloadScript("Scripts/AI/GoalPipes/PipeManagerVehicle.lua")
  Script.ReloadScript("Scripts/AI/GoalPipes/PipeManagerHuman.lua")
  Script.ReloadScript("Scripts/AI/GoalPipes/PipeManagerReusable.lua")
end
L0_50.ReloadScripts = L1_51
L0_50 = PipeManager
function L1_51(A0_55)
  AI.LoadGoalPipes("Scripts/AI/GoalPipes/GoalPipesShared.xml")
  AI.LoadGoalPipes("Scripts/AI/GoalPipes/GoalPipesCoordination.xml")
  PipeManager:InitVehicle()
  PipeManager:InitHuman()
  PipeManager:InitReusable()
  AI.LoadGoalPipes("Scripts/AI/GoalPipes/GoalPipesHuman.xml")
  AI.LoadGoalPipes("Scripts/AI/GoalPipes/GoalPipesHeli.xml")
  A0_55:CreateAISystemGoalPipes()
end
L0_50.CreateGoalPipes = L1_51
L0_50 = PipeManager
function L1_51(A0_56)
  AI.CreateGoalPipe("_action_")
  AI.PushGoal("_action_", "timeout", 1, 0.1)
  AI.PushGoal("_action_", "branch", 1, -1, BRANCH_ALWAYS)
  AI.CreateGoalPipe("_SETINCODE_HIT_REACT_")
  AI.PushGoal("_SETINCODE_HIT_REACT_", "timeout", 1, 0.1)
  AI.PushGoal("_SETINCODE_HIT_REACT_", "branch", 1, -1, BRANCH_ALWAYS)
  AI.CreateGoalPipe("_last_")
end
L0_50.CreateAISystemGoalPipes = L1_51
