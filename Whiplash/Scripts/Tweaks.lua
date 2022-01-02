Script.ReloadScript("Scripts/TweakSystem.lua")
Script.ReloadScript("Scripts/TweaksConfig.lua")
Tweaks.State.SilhouetteModeChanged = nil
Tweaks.State.SilhouetteModeChangeNow = nil
Tweaks.State.SilhouetteModeTimerUp = 0
Tweaks.State.SilhouetteModeTimerDown = 0
Tweaks.Menus.Main = {MENU = "Main Menu", tMenuTweaks}
if Tweaks.Scratchpad.MOTD then
  Tweaks.Menus.Main.MOTD = {
    NAME = "Message of the day: ",
    LUA = "Dummy",
    NOSAVE = true,
    EVALUATOR = function()
      local L0_10487, L1_10488, L2_10489, L3_10490
      L0_10487 = System
      L0_10487 = L0_10487.GetLocalOSTime
      L0_10487 = L0_10487()
      L1_10488 = L0_10487.sec
      L2_10489 = L0_10487.wday
      L3_10490 = "   Difficult takes a day...loading takes a week..."
      L1_10488 = L1_10488 % (string.len(L3_10490) - 1)
      return string.sub(L3_10490, L1_10488) .. string.sub(L3_10490, 1, L1_10488 + 1)
    end
  }
end
Tweaks.Scratchpad.RELOAD = true
