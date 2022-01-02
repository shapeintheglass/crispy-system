Script.ReloadScript("scripts/gamerules/GameRulesUtils.lua")
CaptureTheFlag = {}
GameRulesSetStandardFuncs(CaptureTheFlag)
CaptureTheFlag.TeamInfo = {
  {
    DbgTeamName = "North Korea",
    Flag = nil,
    Base = nil
  },
  {
    DbgTeamName = "USA",
    Flag = nil,
    Base = nil
  }
}
function CaptureTheFlag.SetupPlayerTeamSpecifics(A0_9508, A1_9509)
  local L2_9510
  L2_9510 = assert
  L2_9510(A1_9509)
  L2_9510 = A0_9508.game
  L2_9510 = L2_9510.GetTeam
  L2_9510 = L2_9510(L2_9510, A1_9509)
  Log("[tlh] @ CaptureTheFlag:SetupPlayerTeamSpecifics(), localTeam = " .. L2_9510)
  A0_9508:RecolourEntitiesOfClass("CTFFlag", L2_9510, A1_9509)
end
function CaptureTheFlag.RecolourEntitiesOfClass(A0_9511, A1_9512, A2_9513, A3_9514)
  local L4_9515, L5_9516, L6_9517, L7_9518, L8_9519, L9_9520
  L4_9515 = Log
  L4_9515(L5_9516)
  L4_9515 = System
  L4_9515 = L4_9515.GetEntitiesByClass
  L4_9515 = L4_9515(L5_9516)
  if L4_9515 then
    for L8_9519, L9_9520 in L5_9516(L6_9517) do
      if L9_9520.id ~= A3_9514 then
        A0_9511:RecolourTeamEntity(L9_9520, A2_9513)
      end
    end
  end
end
function CaptureTheFlag.RecolourTeamEntity(A0_9521, A1_9522, A2_9523)
  local L3_9524
  L3_9524 = A0_9521.game
  L3_9524 = L3_9524.GetTeam
  L3_9524 = L3_9524(L3_9524, A1_9522.id)
  Log("CaptureTheFlag:RecolourTeamEntity - class=\"" .. A1_9522.class .. "\" name=\"" .. A1_9522:GetName() .. "\" teamId=" .. L3_9524 .. " playerTeamId=" .. A2_9523)
  if A1_9522.class == "CTFFlag" then
    A1_9522:LoadCorrectGeometry()
  end
end
