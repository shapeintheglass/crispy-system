Script.ReloadScript("scripts/gamerules/GameRulesUtils.lua")
Assault = {}
GameRulesSetStandardFuncs(Assault)
Assault.OldCVars = {}
Assault.OldCVars.AllSeeingRadar = nil
Assault.OldCVars.NoEnemiesOnRadar = nil
function Assault.SetupPlayerTeamSpecifics(A0_9490, A1_9491)
  local L2_9492, L3_9493
  L2_9492 = assert
  L3_9493 = A1_9491
  L2_9492(L3_9493)
  L2_9492 = A0_9490.game
  L3_9493 = L2_9492
  L2_9492 = L2_9492.GetTeam
  L2_9492 = L2_9492(L3_9493, A1_9491)
  L3_9493 = L2_9492 and L2_9492 > 0 and L2_9492 == L3_9493
  Log("[tlh] @ Assault:SetupPlayerTeamSpecifics(), isAttacker=%s", tostring(L3_9493))
  if not A0_9490.OldCVars.AllSeeingRadar or A0_9490.OldCVars.AllSeeingRadar == nil then
    A0_9490.OldCVars.AllSeeingRadar = System.GetCVar("g_mpAllSeeingRadar")
  end
  if not A0_9490.OldCVars.NoEnemiesOnRadar or A0_9490.OldCVars.NoEnemiesOnRadar == nil then
    A0_9490.OldCVars.NoEnemiesOnRadar = System.GetCVar("g_mpNoEnemiesOnRadar")
  end
  if L3_9493 and L3_9493 == true then
    System.SetCVar("g_mpNoEnemiesOnRadar", 0)
  else
    System.SetCVar("g_mpAllSeeingRadar", 0)
  end
  A0_9490:SetTeamSpecificsForGeneralPlayer(A1_9491)
end
function Assault.SetupRemotePlayerTeamSpecifics(A0_9494, A1_9495)
  assert(A1_9495)
  assert(A1_9495 ~= g_localActorId)
  A0_9494:SetTeamSpecificsForGeneralPlayer(A1_9495)
end
function Assault.SetTeamSpecificsForGeneralPlayer(A0_9496, A1_9497)
  local L2_9498, L3_9499, L4_9500, L5_9501
  L2_9498 = Log
  L3_9499 = "[tlh] @ Assault:SetTeamSpecificsForGeneralPlayer(playerId)"
  L2_9498(L3_9499)
  L2_9498 = assert
  L3_9499 = A1_9497
  L2_9498(L3_9499)
  L2_9498 = System
  L2_9498 = L2_9498.GetEntity
  L3_9499 = A1_9497
  L2_9498 = L2_9498(L3_9499)
  L3_9499 = assert
  L4_9500 = L2_9498 and L2_9498 ~= nil
  L3_9499(L4_9500)
  if L2_9498 and L2_9498 ~= nil then
    L3_9499 = L2_9498.actor
    if L3_9499 then
      L3_9499 = Log
      L4_9500 = "[tlh]     setting team-specific settings for player \"%s\"..."
      L5_9501 = L2_9498.GetName
      L5_9501 = L5_9501(L2_9498)
      L3_9499(L4_9500, L5_9501, L5_9501(L2_9498))
      L3_9499 = A0_9496.game
      L4_9500 = L3_9499
      L3_9499 = L3_9499.GetTeam
      L5_9501 = A1_9497
      L3_9499 = L3_9499(L4_9500, L5_9501)
      L4_9500 = L3_9499 and L3_9499 > 0 and L3_9499 == L4_9500
      L5_9501 = L2_9498.Properties
      L5_9501 = L5_9501.Damage
      L5_9501 = L5_9501.health
      if not L4_9500 or L4_9500 == false then
        L5_9501 = System.GetCVar("g_mp_as_DefendersMaxHealth")
      end
      if L2_9498.actor then
        Log("[tlh]     setting MaxHealth to %f", L5_9501)
        L2_9498.actor:SetMaxHealth(L5_9501)
      end
    end
  end
end
function Assault.ResetPlayerTeamSpecifics(A0_9502)
  Log("[tlh] @ Assault:ResetTeamSpecifics()")
  if A0_9502.OldCVars.AllSeeingRadar and A0_9502.OldCVars.AllSeeingRadar ~= nil then
    System.SetCVar("g_mpAllSeeingRadar", A0_9502.OldCVars.AllSeeingRadar)
    A0_9502.OldCVars.AllSeeingRadar = nil
  end
  if A0_9502.OldCVars.NoEnemiesOnRadar and A0_9502.OldCVars.NoEnemiesOnRadar ~= nil then
    System.SetCVar("g_mpNoEnemiesOnRadar", A0_9502.OldCVars.NoEnemiesOnRadar)
    A0_9502.OldCVars.NoEnemiesOnRadar = nil
  end
end
function Assault.EquipTeamSpecifics(A0_9503, A1_9504)
  local L2_9505, L3_9506, L4_9507
  L2_9505 = System
  L2_9505 = L2_9505.GetEntity
  L3_9506 = A1_9504
  L2_9505 = L2_9505(L3_9506)
  L3_9506 = A0_9503.game
  L4_9507 = L3_9506
  L3_9506 = L3_9506.GetTeam
  L3_9506 = L3_9506(L4_9507, A1_9504)
  L4_9507 = L3_9506 and L3_9506 > 0 and L3_9506 == L4_9507
  Log("[tlh] @ Assault:EquipTeamSpecifics(), isAttacker=%s", tostring(L4_9507))
  if L4_9507 and L4_9507 == true then
    ItemSystem.GiveItem("FlashBangGrenades", A1_9504, false)
    ItemSystem.GiveItem("Nova", A1_9504, false)
  else
    ItemSystem.GiveItem("FragGrenades", A1_9504, false)
    ItemSystem.GiveItem("K-Volt", A1_9504, false)
    ItemSystem.GiveItem("SCAR", A1_9504, false)
  end
end
