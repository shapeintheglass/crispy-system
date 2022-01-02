if not Tweaks then
  Tweaks = {}
end
if not Tweaks.Scratchpad then
  Tweaks.Scratchpad = {
    SAVEVALUES = false,
    FORCESAVE = false,
    SAVEONEXIT = false,
    RELOADVALUES = true,
    APPLYPROFILE = false,
    WARNCHANGES = true,
    DEBUG = false,
    BLACKBACKGROUND = true,
    BLACKBACKGROUNDALPHA = 0.7,
    MENUACTIVE = false,
    VALUESLASTSAVED = {asString = "Not saved", timestampTable = nil},
    REPEATRATE = 0.2,
    REPEATDELAY = 0.4,
    FONTSIZE = 1.5,
    VERTSPACE = 24,
    MOTD = false,
    SHOWHIDDEN = false,
    AINOUPDATE = false
  }
end
function Tweaks.Scratchpad.VALUESLASTSAVED.UpdateTimestamp()
  local L0_10511, L1_10512, L2_10513
  L0_10511 = Tweaks
  L0_10511 = L0_10511.Scratchpad
  L0_10511 = L0_10511.VALUESLASTSAVED
  L1_10512 = L0_10511.timestampTable
  if not L1_10512 then
    L1_10512 = {}
    L0_10511.timestampTable = L1_10512
  end
  L1_10512 = L0_10511.timestampTable
  for _FORV_5_, _FORV_6_ in L2_10513(System.GetLocalOSTime()) do
    L1_10512[_FORV_5_] = _FORV_6_
  end
  L0_10511.asString = string.format("Profile %s on %d/%d/%d at %02d:%02d", L2_10513, L1_10512.mday, L1_10512.mon, L1_10512.year + 1900, L1_10512.hour, L1_10512.min)
end
if not Tweaks.State then
  Tweaks.State = {
    g_TweakProfile = {},
    RELOADVALUES = {}
  }
end
function Tweaks.State.InitFeedbackTimer(A0_10514, A1_10515)
  A0_10514.time = System.GetLocalOSTime().sec
  A0_10514.duration = A1_10515
end
function Tweaks.State.CheckFeedbackTimer(A0_10516)
  if A0_10516.time then
    if (System.GetLocalOSTime().sec - A0_10516.time) % 60 <= A0_10516.duration then
      return true
    else
      A0_10516.time = nil
      A0_10516.duration = nil
      return false
    end
  end
end
if not Tweaks.Menus then
  Tweaks.Menus = {MENU = "Tweak Menu"}
end
if not Tweaks.Saving then
  Tweaks.Saving = {
    Saved = {},
    Temp = {},
    Defaults = {},
    Diff = {},
    Profiles = {},
    SaveDump = {}
  }
end
function Tweaks.Saving.GetSaveValues()
  local L0_10517, L1_10518, L2_10519, L3_10520, L4_10521, L5_10522, L6_10523, L7_10524, L8_10525, L9_10526, L10_10527, L11_10528, L12_10529, L13_10530
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Saving
  L1_10518 = {}
  L0_10517.Saved = L1_10518
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Saving
  L1_10518 = {}
  L0_10517.Temp = L1_10518
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Saving
  L1_10518 = {}
  L0_10517.Diff = L1_10518
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Saving
  L0_10517 = L0_10517.CollectValues
  L1_10518 = Tweaks
  L1_10518 = L1_10518.Menus
  L2_10519 = Tweaks
  L2_10519 = L2_10519.Saving
  L2_10519 = L2_10519.Temp
  L0_10517(L1_10518, L2_10519)
  L0_10517 = FlattenTree
  L1_10518 = Tweaks
  L1_10518 = L1_10518.Saving
  L1_10518 = L1_10518.Temp
  L2_10519 = Tweaks
  L2_10519 = L2_10519.Saving
  L2_10519 = L2_10519.Saved
  L0_10517(L1_10518, L2_10519, L3_10520)
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Scratchpad
  L0_10517 = L0_10517.FORCESAVE
  if L0_10517 == true then
    L0_10517 = TableDifferenceRecursive
    L1_10518 = Tweaks
    L1_10518 = L1_10518.Saving
    L1_10518 = L1_10518.Saved
    L2_10519 = {}
    L0_10517(L1_10518, L2_10519, L3_10520)
    L0_10517 = Tweaks
    L0_10517 = L0_10517.Scratchpad
    L0_10517.FORCESAVE = false
  else
    L0_10517 = System
    L0_10517 = L0_10517.GetCVar
    L1_10518 = "g_TweakProfile"
    L0_10517 = L0_10517(L1_10518)
    L1_10518 = Tweaks
    L1_10518 = L1_10518.Saving
    L1_10518 = L1_10518.Profiles
    L1_10518 = L1_10518[L0_10517]
    if not L1_10518 then
      L2_10519 = Tweaks
      L2_10519 = L2_10519.Saving
      L2_10519 = L2_10519.Profiles
      L2_10519[L0_10517] = L3_10520
      L2_10519 = Tweaks
      L2_10519 = L2_10519.Saving
      L2_10519 = L2_10519.Profiles
      L1_10518 = L2_10519[L0_10517]
    end
    L2_10519 = TableDifferenceRecursive
    L2_10519(L3_10520, L4_10521, L5_10522)
  end
  L0_10517 = Tweaks
  L0_10517 = L0_10517.Saving
  L1_10518 = {}
  L0_10517.SaveDump = L1_10518
  L0_10517 = System
  L0_10517 = L0_10517.GetLocalOSTime
  L0_10517 = L0_10517()
  L1_10518 = string
  L1_10518 = L1_10518.format
  L2_10519 = "--By %s on %d/%d/%d at %02d:%02d\n"
  L6_10523 = L0_10517.year
  L6_10523 = L6_10523 + 1900
  L7_10524 = L0_10517.hour
  L8_10525 = L0_10517.min
  L1_10518 = L1_10518(L2_10519, L3_10520, L4_10521, L5_10522, L6_10523, L7_10524, L8_10525)
  L2_10519 = {}
  for L6_10523, L7_10524 in L3_10520(L4_10521) do
    L8_10525 = DumpTableAsLuaString
    L12_10529 = L6_10523
    L8_10525 = L8_10525(L9_10526, L10_10527, L11_10528)
    L2_10519[L6_10523] = L8_10525
  end
  for L6_10523, L7_10524 in L3_10520(L4_10521) do
    L8_10525 = Tweaks
    L8_10525 = L8_10525.Saving
    L8_10525 = L8_10525.Diff
    L8_10525 = L8_10525[L6_10523]
    if L8_10525 then
      L8_10525 = "--[[ State of other Tweaks at time of save was as follows:\n\n"
      for L12_10529, L13_10530 in L9_10526(L10_10527) do
        if L6_10523 ~= L12_10529 then
          L8_10525 = L8_10525 .. L13_10530 .. "\n"
        end
      end
      L12_10529 = L8_10525
      L13_10530 = "]]"
      L9_10526[L6_10523] = L10_10527
    end
  end
end
function Tweaks.Saving.GetDefaultValues()
  local L0_10531
  L0_10531 = Tweaks
  L0_10531 = L0_10531.Saving
  L0_10531.Defaults = {}
  L0_10531 = {}
  Tweaks.Saving.CollectValues(Tweaks.Menus, L0_10531)
  FlattenTree(L0_10531, Tweaks.Saving.Defaults, "tweakssave")
end
function Tweaks.Saving.PrepareProfiles()
  local L0_10532, L1_10533, L2_10534, L3_10535, L4_10536
  for L3_10535, L4_10536 in L0_10532(L1_10533) do
    TableAddRecursive(Tweaks.Saving.Defaults, L4_10536)
    TableIntersectKeysRecursive(Tweaks.Saving.Defaults, L4_10536)
  end
end
function Tweaks.Saving.CollectValues(A0_10537, A1_10538)
  local L2_10539, L3_10540, L4_10541, L5_10542, L6_10543
  for L5_10542, L6_10543 in L2_10539(L3_10540) do
    if type(L6_10543) == "table" then
      if L6_10543.MENU then
        if L6_10543.FILE then
          if not A1_10538[L6_10543.FILE] then
            A1_10538[L6_10543.FILE] = {}
          end
          Tweaks.Saving.CollectValues(L6_10543, A1_10538[L6_10543.FILE])
        else
          Tweaks.Saving.CollectValues(L6_10543, A1_10538)
        end
      elseif L6_10543.NAME and not L6_10543.NOSAVE then
        if L6_10543.LUA then
          A1_10538[L6_10543.LUA] = GetValueRecursive(L6_10543.LUA)
        elseif L6_10543.CVAR and L6_10543.CVAR ~= "" then
          A1_10538[L6_10543.CVAR] = System.GetCVar(L6_10543.CVAR)
        end
      end
    end
  end
end
function Tweaks.Saving.SaveComplete()
  Tweaks.Scratchpad.VALUESLASTSAVED.UpdateTimestamp()
  Tweaks.Saving.Profiles[System.GetCVar("g_TweakProfile")] = Tweaks.Saving.Saved
end
function Tweaks.Saving.SaveFailed(A0_10544)
  local L1_10545
  L1_10545 = Tweaks
  L1_10545 = L1_10545.Scratchpad
  L1_10545 = L1_10545.VALUESLASTSAVED
  L1_10545.asString = A0_10544
end
function Tweaks.ReloadStructure()
  Script.LoadScript("Scripts/Tweaks.lua", true, true)
end
Tweaks.Scratchpad.RELOAD = true
Script.ReloadScript("Scripts/SaveUtils.lua")
