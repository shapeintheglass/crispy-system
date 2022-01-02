AI.TacticalPositionManager = AI.TacticalPositionManager or {}
Script.ReloadScript("Scripts/AI/TPS/SDKGruntQueries.lua")
Script.ReloadScript("Scripts/AI/TPS/HumanGruntQueries.lua")
Script.ReloadScript("Scripts/AI/TPS/SharedQueries.lua")
Script.ReloadScript("Scripts/AI/TPS/HelicopterQueries.lua")
function AI.TacticalPositionManager.OnInit(A0_190)
  local L1_191, L2_192, L3_193, L4_194, L5_195
  for L4_194, L5_195 in L1_191(L2_192) do
    if type(L5_195) == "table" and L5_195.OnInit then
      L5_195:OnInit()
    end
  end
end
