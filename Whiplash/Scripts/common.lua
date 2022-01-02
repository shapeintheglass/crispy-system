g_SignalData_point = {
  x = 0,
  y = 0,
  z = 0
}
g_SignalData_point2 = {
  x = 0,
  y = 0,
  z = 0
}
g_SignalData = {
  point = g_SignalData_point,
  point2 = g_SignalData_point2,
  ObjectName = "",
  id = NULL_ENTITY,
  fValue = 0,
  iValue = 0,
  iValue2 = 0
}
g_StringTemp1 = "                                            "
g_HitTable = {
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
}
function ShowTime()
  System.Log(string.format("%d/%d/%d, %02d:%02d", System.GetLocalOSTime().mday, System.GetLocalOSTime().mon + 1, System.GetLocalOSTime().year + 1900, System.GetLocalOSTime().hour, System.GetLocalOSTime().min))
end
function count(A0_10290)
  if A0_10290 then
    for _FORV_5_, _FORV_6_ in pairs(A0_10290) do
    end
  end
  return 0 + 1
end
function new(A0_10291, A1_10292)
  local L2_10293, L3_10294, L4_10295, L5_10296, L6_10297, L7_10298
  L2_10293 = type
  L2_10293 = L2_10293(L3_10294)
  if L2_10293 == "table" then
    L2_10293 = {}
    if A1_10292 then
      for L6_10297, L7_10298 in L3_10294(L4_10295) do
        L2_10293[L6_10297] = L7_10298
      end
    else
      for L6_10297, L7_10298 in L3_10294(L4_10295) do
        if type(L7_10298) == "table" and A0_10291 ~= L7_10298 then
          L2_10293[L6_10297] = new(L7_10298)
        else
          L2_10293[L6_10297] = L7_10298
        end
      end
    end
    return L2_10293
  else
    return A0_10291
  end
end
function merge(A0_10299, A1_10300, A2_10301)
  local L3_10302, L4_10303, L5_10304, L6_10305, L7_10306
  for L6_10305, L7_10306 in L3_10302(L4_10303) do
    if type(L7_10306) ~= "function" then
      if A2_10301 then
        if type(L7_10306) == "table" and L7_10306 ~= A1_10300 then
          if A0_10299[L6_10305] == nil then
            A0_10299[L6_10305] = {}
          end
          merge(A0_10299[L6_10305], L7_10306, A2_10301)
        elseif A0_10299[L6_10305] == nil then
          A0_10299[L6_10305] = L7_10306
        end
      elseif A0_10299[L6_10305] == nil then
        A0_10299[L6_10305] = L7_10306
      end
    end
  end
  return A0_10299
end
function mergef(A0_10307, A1_10308, A2_10309)
  local L3_10310, L4_10311, L5_10312, L6_10313, L7_10314
  for L6_10313, L7_10314 in L3_10310(L4_10311) do
    if A2_10309 then
      if type(L7_10314) == "table" and L7_10314 ~= A1_10308 then
        if A0_10307[L6_10313] == nil then
          A0_10307[L6_10313] = {}
        end
        mergef(A0_10307[L6_10313], L7_10314, A2_10309)
      elseif A0_10307[L6_10313] == nil then
        A0_10307[L6_10313] = L7_10314
      end
    elseif A0_10307[L6_10313] == nil then
      A0_10307[L6_10313] = L7_10314
    end
  end
  return A0_10307
end
function Vec2Str(A0_10315)
  return string.format("(x: %.3f y: %.3f z: %.3f)", A0_10315.x, A0_10315.y, A0_10315.z)
end
function LogError(A0_10316, ...)
  System.LogError("$4" .. string.format(A0_10316, ...))
end
function LogWarning(A0_10318, ...)
  System.LogWarning("$6" .. string.format(A0_10318, ...))
end
function LogComment(A0_10320, ...)
  System.LogComment("$3" .. string.format(A0_10320, ...))
end
function Log(A0_10322, ...)
  local L4_10324, L5_10325
  L4_10324 = System
  L4_10324 = L4_10324.Log
  L5_10325 = string
  L5_10325 = L5_10325.format
  L5_10325 = L5_10325(A0_10322, ...)
  L4_10324(L5_10325, L5_10325(A0_10322, ...))
end
g_dump_tabs = 0
function dump(A0_10326, A1_10327, A2_10328)
  local L3_10329, L4_10330, L5_10331, L6_10332, L7_10333, L8_10334
  if not A0_10326 then
    L3_10329 = System
    L3_10329 = L3_10329.Log
    L3_10329(L4_10330)
  else
    A2_10328 = A2_10328 or 8
    L3_10329 = ""
    for L7_10333 = 0, g_dump_tabs do
      L8_10334 = L3_10329
      L3_10329 = L8_10334 .. "  "
    end
    for L7_10333, L8_10334 in L4_10330(L5_10331) do
      if type(L8_10334) == "table" then
        if A2_10328 > g_dump_tabs then
          g_dump_tabs = g_dump_tabs + 1
          System.Log(L3_10329 .. "$4" .. tostring(L7_10333) .. "$1= {")
          dump(L8_10334, A1_10327, A2_10328)
          System.Log(L3_10329 .. "$1}")
          g_dump_tabs = g_dump_tabs - 1
        else
          System.Log(L3_10329 .. "$4" .. tostring(L7_10333) .. "$1= { $4...$1 }")
        end
      elseif type(L8_10334) == "number" then
        System.Log("$2" .. L3_10329 .. "$6" .. tostring(L7_10333) .. "$1=$8" .. L8_10334)
      elseif type(L8_10334) == "string" then
        System.Log("$2" .. L3_10329 .. "$6" .. tostring(L7_10333) .. "$1=$8" .. "\"" .. L8_10334 .. "\"")
      elseif type(L8_10334) == "boolean" then
        System.Log("$2" .. L3_10329 .. "$6" .. tostring(L7_10333) .. "$1=$8" .. "\"" .. tostring(L8_10334) .. "\"")
      elseif not A1_10327 then
        if type(L8_10334) == "function" then
          System.Log("$2" .. L3_10329 .. "$5" .. tostring(L7_10333) .. "()")
        else
          System.Log("$2" .. L3_10329 .. "$7" .. tostring(L7_10333) .. "$8<userdata>")
        end
      end
    end
  end
end
function EmptyString(A0_10335)
  if A0_10335 and string.len(A0_10335) > 0 then
    return false
  end
  return true
end
function NumberToBool(A0_10336)
  if A0_10336 and tonumber(A0_10336) ~= 0 then
    return true
  else
    return false
  end
end
function EntityName(A0_10337)
  if type(A0_10337) == "userdata" then
    if System.GetEntity(A0_10337) then
      return System.GetEntity(A0_10337):GetName()
    end
  elseif type(A0_10337) == "table" then
    return A0_10337:GetName()
  end
  return ""
end
function EntityNamed(A0_10338)
  return System.GetEntityByName(A0_10338)
end
function SafeTableGet(A0_10339, A1_10340)
  local L2_10341
  if A0_10339 then
    L2_10341 = A0_10339[A1_10340]
    return L2_10341
  else
    L2_10341 = nil
    return L2_10341
  end
end
Script.ReloadScript("scripts/Utils/Containers.lua")
Script.ReloadScript("scripts/Utils/Math.lua")
Script.ReloadScript("scripts/Utils/EntityUtils.lua")
Script.ReloadScript("scripts/Utils/ZeroG.lua")
g_AIDebugToggleOn = 0
function AIDebugToggle()
  if g_AIDebugToggleOn == 0 then
    g_AIDebugToggleOn = 1
    System.SetCVar("ai_DebugDraw", 1)
  else
    System.SetCVar("ai_DebugDraw", 0)
    g_AIDebugToggleOn = 0
  end
end
Script.ReloadScript("scripts/entities/items/itemsystemmath.lua")
function RemoveFromTable(A0_10342, A1_10343)
  local L2_10344, L3_10345, L4_10346, L5_10347
  for L5_10347, _FORV_6_ in L2_10344(L3_10345) do
    if _FORV_6_ == A1_10343 then
      table.remove(A0_10342, L5_10347)
      break
    end
  end
end
function InsertIntoTable(A0_10348, A1_10349)
  for _FORV_6_, _FORV_7_ in ipairs(A0_10348) do
    if _FORV_7_ == A1_10349 then
      break
    end
  end
  if not true then
    table.insert(A0_10348, A1_10349)
  end
end
function IsInsideTable(A0_10350, A1_10351)
  for _FORV_5_, _FORV_6_ in ipairs(A0_10350) do
    if _FORV_6_ == A1_10351 then
      return true
    end
  end
  return false
end
function SafeKillTimer(A0_10352)
  if A0_10352 then
    Script.KillTimer(A0_10352)
  end
end
