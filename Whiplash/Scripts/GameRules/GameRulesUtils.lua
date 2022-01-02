Script.ReloadScript("scripts/gamerules/SinglePlayer.lua")
function GameRulesSetStandardFuncs(A0_9525)
  local L1_9526
  if not A0_9525 then
    return
  end
  L1_9526 = A0_9525.Server
  if not L1_9526 then
    L1_9526 = {}
    A0_9525.Server = L1_9526
  end
  L1_9526 = A0_9525.Client
  if not L1_9526 then
    L1_9526 = {}
    A0_9525.Client = L1_9526
  end
  L1_9526 = A0_9525.Createhit
  if not L1_9526 then
    L1_9526 = SinglePlayer
    L1_9526 = L1_9526.CreateHit
    A0_9525.CreateHit = L1_9526
  end
  L1_9526 = A0_9525.CreateExplosion
  if not L1_9526 then
    L1_9526 = SinglePlayer
    L1_9526 = L1_9526.CreateExplosion
    A0_9525.CreateExplosion = L1_9526
  end
end
