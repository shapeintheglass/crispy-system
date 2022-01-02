local L0_10491
L0_10491 = {
  {
    NAME = "Active Tweak profile:",
    CVAR = "g_TweakProfile",
    NOSAVE = true,
    EVALUATOR = function()
      local L0_10492
      L0_10492 = Tweaks
      L0_10492 = L0_10492.State
      L0_10492 = L0_10492.g_TweakProfile
      if Tweaks.State.CheckFeedbackTimer(L0_10492) then
        return "There are changes - save or revert"
      end
    end,
    INCREMENTER = function(A0_10493)
      local L1_10494, L2_10495, L3_10496, L4_10497, L5_10498, L6_10499, L7_10500, L8_10501
      L1_10494 = System
      L1_10494 = L1_10494.GetCVar
      L2_10495 = "g_TweakProfile"
      L1_10494 = L1_10494(L2_10495)
      L2_10495 = Tweaks
      L2_10495 = L2_10495.Saving
      L3_10496 = {}
      L2_10495.Temp = L3_10496
      L2_10495 = Tweaks
      L2_10495 = L2_10495.Saving
      L3_10496 = {}
      L2_10495.Diff = L3_10496
      L2_10495 = Tweaks
      L2_10495 = L2_10495.Saving
      L2_10495 = L2_10495.CollectValues
      L3_10496 = Tweaks
      L3_10496 = L3_10496.Menus
      L4_10497 = Tweaks
      L4_10497 = L4_10497.Saving
      L4_10497 = L4_10497.Temp
      L2_10495(L3_10496, L4_10497)
      L2_10495 = {}
      L3_10496 = FlattenTree
      L4_10497 = Tweaks
      L4_10497 = L4_10497.Saving
      L4_10497 = L4_10497.Temp
      L5_10498 = L2_10495
      L6_10499 = "tweakssave"
      L3_10496(L4_10497, L5_10498, L6_10499)
      L3_10496 = Tweaks
      L3_10496 = L3_10496.Saving
      L3_10496.Temp = L2_10495
      L3_10496 = Tweaks
      L3_10496 = L3_10496.Saving
      L3_10496 = L3_10496.Profiles
      L3_10496 = L3_10496[L1_10494]
      if not L3_10496 then
        L4_10497 = {}
        L3_10496 = L4_10497
      end
      L4_10497 = TableDifferenceRecursive
      L5_10498 = Tweaks
      L5_10498 = L5_10498.Saving
      L5_10498 = L5_10498.Temp
      L6_10499 = L3_10496
      L7_10500 = Tweaks
      L7_10500 = L7_10500.Saving
      L7_10500 = L7_10500.Diff
      L4_10497(L5_10498, L6_10499, L7_10500)
      L4_10497 = pairs
      L5_10498 = Tweaks
      L5_10498 = L5_10498.Saving
      L5_10498 = L5_10498.Diff
      L4_10497 = L4_10497(L5_10498)
      L5_10498 = Tweaks
      L5_10498 = L5_10498.Saving
      L5_10498 = L5_10498.Diff
      L4_10497 = L4_10497(L5_10498)
      if L4_10497 then
        L5_10498 = Tweaks
        L5_10498 = L5_10498.Scratchpad
        L5_10498 = L5_10498.WARNCHANGES
        if L5_10498 then
          L5_10498 = Tweaks
          L5_10498 = L5_10498.State
          L5_10498 = L5_10498.InitFeedbackTimer
          L6_10499 = Tweaks
          L6_10499 = L6_10499.State
          L6_10499 = L6_10499.g_TweakProfile
          L7_10500 = 3
          L5_10498(L6_10499, L7_10500)
          L5_10498 = Tweaks
          L5_10498 = L5_10498.Scratchpad
          L5_10498 = L5_10498.DEBUG
          if L5_10498 then
            L5_10498 = System
            L5_10498 = L5_10498.Log
            L6_10499 = "There were changes - description follows of Tweaks.Saving.Temp, profileTable, Tweaks.Saving.Diff (last is crucial)"
            L5_10498(L6_10499)
            L5_10498 = LogTable
            L6_10499 = Tweaks
            L6_10499 = L6_10499.Saving
            L6_10499 = L6_10499.Temp
            L7_10500 = "Tweaks.Saving.Temp"
            L5_10498(L6_10499, L7_10500)
            L5_10498 = LogTable
            L6_10499 = L3_10496
            L7_10500 = "profileTable"
            L5_10498(L6_10499, L7_10500)
            L5_10498 = LogTable
            L6_10499 = Tweaks
            L6_10499 = L6_10499.Saving
            L6_10499 = L6_10499.Diff
            L7_10500 = "Tweaks.Saving.Diff"
            L5_10498(L6_10499, L7_10500)
          end
        else
          L5_10498 = Tweaks
          L5_10498 = L5_10498.Saving
          L5_10498 = L5_10498.Profiles
          L6_10499 = Tweaks
          L6_10499 = L6_10499.Saving
          L6_10499 = L6_10499.Temp
          L5_10498[L1_10494] = L6_10499
          L5_10498 = Tweaks
          L5_10498 = L5_10498.Saving
          L6_10499 = {}
          L5_10498.Temp = L6_10499
        end
        return
      end
      L5_10498 = false
      L6_10499 = false
      L7_10500, L8_10501 = nil, nil
      for _FORV_12_, _FORV_13_ in pairs(Tweaks.Saving.Profiles) do
        if L5_10498 then
          if A0_10493 > 0 then
            L7_10500 = _FORV_12_
          end
          L5_10498 = false
        end
        if _FORV_12_ == L1_10494 then
          L5_10498 = true
          if A0_10493 <= 0 then
            L7_10500 = L8_10501
          end
        end
        L8_10501 = _FORV_12_
      end
      if not L7_10500 then
        if A0_10493 > 0 then
          L7_10500 = pairs(Tweaks.Saving.Profiles)(Tweaks.Saving.Profiles)
        else
          L7_10500 = L8_10501
        end
      end
      System.SetCVar("g_TweakProfile", L7_10500)
      Tweaks.Scratchpad.APPLYPROFILE = true
      Tweaks.State.g_TweakProfile.time = nil
    end
  },
  {
    NAME = "Profile comment: ",
    CVAR = "g_TweakComment"
  },
  {
    NAME = "Black menu background",
    LUA = "Tweaks.Scratchpad.BLACKBACKGROUND"
  },
  {
    NAME = "Black menu background alpha",
    LUA = "Tweaks.Scratchpad.BLACKBACKGROUNDALPHA",
    DELTA = "0.1"
  },
  {
    NAME = "Tweaks menu input repeat rate",
    LUA = "Tweaks.Scratchpad.REPEATRATE",
    DELTA = "0.025"
  },
  {
    NAME = "Tweaks menu input repeat delay (until first repeat)",
    LUA = "Tweaks.Scratchpad.REPEATDELAY",
    DELTA = "0.05",
    MINIMUM = 0.05,
    MAXIMUM = 2
  },
  {
    NAME = "Tweak menu font size",
    LUA = "Tweaks.Scratchpad.FONTSIZE",
    DELTA = "1",
    MINIMUM = 10,
    MAXIMUM = 100
  },
  {
    NAME = "Tweak menu vertical spacing",
    LUA = "Tweaks.Scratchpad.VERTSPACE",
    DELTA = "1",
    MINIMUM = 10,
    MAXIMUM = 50
  },
  {
    NAME = "Display MotD:",
    HIDDEN = true,
    LUA = "Tweaks.Scratchpad.MOTD",
    INCREMENTER = function()
      Tweaks.Scratchpad.MOTD = not Tweaks.Scratchpad.MOTD
      Script.ReloadScript("Scripts/Tweaks.lua")
    end
  },
  {
    NAME = "Save active profile on exit",
    NOSAVE = true,
    LUA = "Tweaks.Scratchpad.SAVEONEXIT"
  },
  {
    NAME = "Save active profile now, last saved this session:",
    LUA = "Tweaks.Scratchpad.VALUESLASTSAVED.asString",
    NOSAVE = true,
    INCREMENTER = function()
      local L0_10502, L1_10503
      L0_10502 = Tweaks
      L0_10502 = L0_10502.Scratchpad
      L0_10502.SAVEVALUES = true
    end
  },
  {
    NAME = "Force complete save of active profile now",
    LUA = "",
    EVALUATOR = function()
      local L0_10504, L1_10505
      L0_10504 = ""
      return L0_10504
    end,
    NOSAVE = true,
    INCREMENTER = function()
      local L0_10506, L1_10507
      L0_10506 = Tweaks
      L0_10506 = L0_10506.Scratchpad
      L0_10506.SAVEVALUES = true
      L0_10506 = Tweaks
      L0_10506 = L0_10506.Scratchpad
      L0_10506.FORCESAVE = true
    end
  },
  {
    NAME = "Revert all values in all profiles",
    LUA = "Tweaks.Scratchpad.RELOADVALUES",
    NOSAVE = true,
    EVALUATOR = function()
      local L0_10508
      L0_10508 = ""
      if Tweaks.State.CheckFeedbackTimer(Tweaks.State.RELOADVALUES) then
        L0_10508 = "Loaded..."
      end
      return L0_10508
    end,
    INCREMENTER = function()
      Tweaks.Scratchpad.RELOADVALUES = true
      Tweaks.State.InitFeedbackTimer(Tweaks.State.RELOADVALUES, 2)
    end
  },
  {
    NAME = "Reload Tweak menu structure",
    LUA = "Dummy",
    NOSAVE = true,
    EVALUATOR = function()
      local L0_10509, L1_10510
      L0_10509 = ""
      return L0_10509
    end,
    INCREMENTER = function()
      Tweaks.ReloadStructure()
    end
  }
}
L0_10491.MENU = "Menu Configuration"
tMenuTweaks = L0_10491
