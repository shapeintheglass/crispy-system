CI_NEWTABLE = 1
CI_ENDTABLE = 2
CI_STRING = 3
CI_NUMBER = 4
function WriteIndex(A0_10359, A1_10360)
  if type(A1_10360) == "number" then
    A0_10359:WriteBool(1)
    A0_10359:WriteInt(A1_10360)
  elseif type(A1_10360) == "string" then
    A0_10359:WriteBool(nil)
    A0_10359:WriteString(A1_10360)
  else
    System.Log("Unrecognized idx type")
  end
end
function ReadIndex(A0_10361)
  if A0_10361:ReadBool() then
    return A0_10361:ReadInt()
  else
    return A0_10361:ReadString()
  end
end
function WriteToStream(A0_10362, A1_10363, A2_10364)
  local L3_10365, L4_10366, L5_10367, L6_10368, L7_10369
  if A2_10364 == nil then
    A2_10364 = "__root__"
  end
  if L3_10365 == "table" then
    L3_10365(L4_10366, L5_10367)
    L3_10365(L4_10366, L5_10367)
    for L6_10368, L7_10369 in L3_10365(L4_10366) do
      WriteToStream(A0_10362, L7_10369, L6_10368)
    end
    L3_10365(L4_10366, L5_10367)
  elseif L3_10365 == "string" then
    L6_10368 = CI_STRING
    L4_10366(L5_10367, L6_10368)
    L6_10368 = A2_10364
    L4_10366(L5_10367, L6_10368)
    L6_10368 = A1_10363
    L4_10366(L5_10367, L6_10368)
  elseif L3_10365 == "number" then
    L6_10368 = CI_NUMBER
    L4_10366(L5_10367, L6_10368)
    L6_10368 = A2_10364
    L4_10366(L5_10367, L6_10368)
    L6_10368 = A1_10363
    L4_10366(L5_10367, L6_10368)
  end
end
function ReadFromStream(A0_10370, A1_10371)
  local L2_10372, L3_10373, L4_10374
  L3_10373 = A0_10370
  L2_10372 = A0_10370.ReadByte
  L2_10372 = L2_10372(L3_10373)
  L3_10373, L4_10374 = nil, nil
  if L2_10372 ~= CI_ENDTABLE then
    L3_10373 = ReadIndex(A0_10370)
    if L2_10372 == CI_NEWTABLE then
      L4_10374 = {}
      while true do
        if ReadFromStream(A0_10370, L4_10374) ~= CI_ENDTABLE then
        end
      end
      if A1_10371 then
        A1_10371[L3_10373] = L4_10374
      end
    elseif L2_10372 == CI_STRING then
      A1_10371[L3_10373] = A0_10370:ReadString()
    elseif L2_10372 == CI_NUMBER then
      A1_10371[L3_10373] = A0_10370:ReadFloat()
    end
  end
  if A1_10371 == nil then
    return L4_10374
  else
    return L2_10372
  end
end
StringStream = {
  buffer = "",
  New = function()
    local L0_10375
    L0_10375 = {}
    for _FORV_4_, _FORV_5_ in pairs(StringStream) do
      L0_10375[_FORV_4_] = _FORV_5_
    end
    L0_10375.buffer = ""
    return L0_10375
  end,
  Write = function(A0_10376, A1_10377)
    A0_10376.buffer = A0_10376.buffer .. A1_10377
  end,
  WriteLine = function(A0_10378, A1_10379)
    A0_10378.buffer = A0_10378.buffer .. A1_10379 .. "\n"
  end,
  WriteValue = function(A0_10380, A1_10381)
    local L2_10382
    L2_10382 = type
    L2_10382 = L2_10382(A1_10381)
    if L2_10382 == "number" then
      A0_10380.buffer = A0_10380.buffer .. A1_10381
    elseif L2_10382 == "string" then
      A0_10380.buffer = A0_10380.buffer .. "\"" .. A1_10381 .. "\""
    elseif L2_10382 == "boolean" then
      A0_10380.buffer = A0_10380.buffer .. (A1_10381 and "true" or "false")
    elseif L2_10382 == "table" or L2_10382 == "function" then
      A0_10380.buffer = A0_10380.buffer .. "[" .. tostring(A1_10381) .. "]"
    else
      A0_10380.buffer = A0_10380.buffer .. "Unrecognised type " .. L2_10382
    end
  end,
  WriteIndex = function(A0_10383, A1_10384)
    local L2_10385
    L2_10385 = type
    L2_10385 = L2_10385(A1_10384)
    if L2_10385 == "number" then
      A0_10383.buffer = A0_10383.buffer .. "[" .. A1_10384 .. "]"
    elseif L2_10385 == "string" then
      A0_10383.buffer = A0_10383.buffer .. "[\"" .. A1_10384 .. "\"]"
    else
      A0_10383.buffer = A0_10383.buffer .. "Unrecognised type " .. L2_10385
    end
  end,
  Reset = function(A0_10386)
    local L1_10387
    A0_10386.buffer = ""
  end
}
LuaDumpRecursionTable = Set.New()
function DumpTableAsLua(A0_10388, A1_10389, A2_10390, A3_10391, A4_10392)
  local L5_10393, L6_10394, L7_10395, L8_10396, L9_10397, L10_10398, L11_10399, L12_10400, L13_10401, L14_10402, L15_10403
  A4_10392 = A4_10392 or 0
  L5_10393 = string
  L5_10393 = L5_10393.rep
  L6_10394 = "  "
  L7_10395 = A4_10392
  L5_10393 = L5_10393(L6_10394, L7_10395)
  L7_10395 = A2_10390
  L6_10394 = A2_10390.WriteLine
  L8_10396 = L5_10393
  L9_10397 = "--Automatically dumped LUA table"
  L8_10396 = L8_10396 .. L9_10397
  L6_10394(L7_10395, L8_10396)
  L7_10395 = A2_10390
  L6_10394 = A2_10390.WriteLine
  L8_10396 = L5_10393
  L9_10397 = A1_10389
  L10_10398 = " = {"
  L8_10396 = L8_10396 .. L9_10397 .. L10_10398
  L6_10394(L7_10395, L8_10396)
  L6_10394 = A4_10392 + 2
  L7_10395 = string
  L7_10395 = L7_10395.rep
  L8_10396 = "  "
  L9_10397 = L6_10394
  L7_10395 = L7_10395(L8_10396, L9_10397)
  L8_10396 = {}
  L9_10397 = 1
  L10_10398 = StringStream
  L10_10398 = L10_10398.New
  L10_10398 = L10_10398(L11_10399)
  for L14_10402, L15_10403 in L11_10399(L12_10400) do
    if type(L15_10403) == "table" and A3_10391 and Set.Add(LuaDumpRecursionTable, L15_10403) then
      if type(L14_10402) == "table" then
        L14_10402 = "[Table]"
      end
      DumpTableAsLua(L15_10403, L14_10402, A2_10390, A3_10391, L6_10394)
    else
      L10_10398:Write(L7_10395)
      L10_10398:WriteIndex(L14_10402)
      L10_10398:Write(" = ")
      L10_10398:WriteValue(L15_10403)
      L10_10398:Write(",")
      L8_10396[L9_10397] = L10_10398.buffer
      L9_10397 = L9_10397 + 1
      L10_10398:Reset()
    end
  end
  L11_10399(L12_10400)
  for L14_10402, L15_10403 in L11_10399(L12_10400) do
    A2_10390:WriteLine(L15_10403)
  end
  if A4_10392 == 0 then
    L14_10402 = "}"
    L11_10399(L12_10400, L13_10401)
  else
    L14_10402 = "},"
    L11_10399(L12_10400, L13_10401)
  end
end
function DumpTableAsLuaString(A0_10404, A1_10405, A2_10406)
  StringStream:Reset()
  Set.RemoveAll(LuaDumpRecursionTable)
  DumpTableAsLua(A0_10404, A1_10405, StringStream, A2_10406)
  Set.RemoveAll(LuaDumpRecursionTable)
  return StringStream.buffer
end
function TableDifference(A0_10407, A1_10408, A2_10409)
  table.foreach(A0_10407, function(A0_10410, A1_10411)
    local L2_10412, L3_10413
    L2_10412 = _UPVALUE0_
    L2_10412 = L2_10412[A0_10410]
    L3_10413 = A1_10411
    if L2_10412 ~= L3_10413 and tostring(L2_10412) ~= tostring(L3_10413) then
      _UPVALUE1_[A0_10410] = A1_10411
    end
  end)
end
function TableDifferenceRecursive(A0_10414, A1_10415, A2_10416)
  local L3_10417, L4_10418, L5_10419, L6_10420, L7_10421, L8_10422, L9_10423
  for L6_10420, L7_10421 in L3_10417(L4_10418) do
    L8_10422 = type
    L9_10423 = L7_10421
    L8_10422 = L8_10422(L9_10423)
    if L8_10422 == "table" then
      L8_10422 = {}
      A2_10416[L6_10420] = L8_10422
      L8_10422 = A1_10415[L6_10420]
      if L8_10422 then
        L8_10422 = TableDifferenceRecursive
        L9_10423 = L7_10421
        L8_10422(L9_10423, A1_10415[L6_10420], A2_10416[L6_10420])
        L8_10422 = pairs
        L9_10423 = A2_10416[L6_10420]
        L8_10422 = L8_10422(L9_10423)
        L9_10423 = A2_10416[L6_10420]
        L8_10422 = L8_10422(L9_10423)
        if not L8_10422 then
          A2_10416[L6_10420] = nil
        end
      else
        L8_10422 = table
        L8_10422 = L8_10422.foreach
        L9_10423 = L7_10421
        L8_10422(L9_10423, function(A0_10424, A1_10425)
          local L2_10426
          L2_10426 = _UPVALUE0_
          L2_10426 = L2_10426[_UPVALUE1_]
          L2_10426[A0_10424] = A1_10425
        end)
      end
    else
      L8_10422 = A1_10415[L6_10420]
      L9_10423 = L7_10421
      if L8_10422 ~= L9_10423 and tostring(L8_10422) ~= tostring(L9_10423) then
        A2_10416[L6_10420] = L7_10421
      end
    end
  end
end
function TableAdd(A0_10427, A1_10428)
  for _FORV_5_, _FORV_6_ in pairs(A0_10427) do
    if A1_10428[_FORV_5_] == nil then
      A1_10428[_FORV_5_] = _FORV_6_
    end
  end
end
function TableAddRecursive(A0_10429, A1_10430)
  local L2_10431, L3_10432, L4_10433, L5_10434, L6_10435
  for L5_10434, L6_10435 in L2_10431(L3_10432) do
    if A1_10430[L5_10434] == nil then
      if type(L6_10435) == "table" then
        A1_10430[L5_10434] = {}
        TableAddRecursive(L6_10435, A1_10430[L5_10434])
      else
        A1_10430[L5_10434] = L6_10435
      end
    elseif type(L6_10435) == "table" and type(A1_10430[L5_10434]) == "table" then
      TableAddRecursive(L6_10435, A1_10430[L5_10434])
    end
  end
end
function TableIntersectKeys(A0_10436, A1_10437)
  for _FORV_5_, _FORV_6_ in pairs(A1_10437) do
    if A0_10436[_FORV_5_] == nil then
      A1_10437[_FORV_5_] = nil
    end
  end
end
function TableIntersectKeysRecursive(A0_10438, A1_10439)
  local L2_10440, L3_10441, L4_10442, L5_10443, L6_10444
  for L5_10443, L6_10444 in L2_10440(L3_10441) do
    if A0_10438[L5_10443] == nil then
      A1_10439[L5_10443] = nil
    elseif type(A0_10438[L5_10443]) == "table" and type(L6_10444) == "table" then
      TableIntersectKeysRecursive(A0_10438[L5_10443], L6_10444)
    end
  end
end
function TableAddRecursive(A0_10445, A1_10446)
  local L2_10447, L3_10448, L4_10449, L5_10450, L6_10451
  for L5_10450, L6_10451 in L2_10447(L3_10448) do
    if not A1_10446[L5_10450] then
      if type(L6_10451) == "table" then
        A1_10446[L5_10450] = {}
        TableAddRecursive(L6_10451, A1_10446[L5_10450])
      else
        A1_10446[L5_10450] = L6_10451
      end
    elseif type(L6_10451) == "table" and type(A1_10446[L5_10450]) == "table" then
      TableAddRecursive(L6_10451, A1_10446[L5_10450])
    end
  end
end
function FlattenTree(A0_10452, A1_10453, A2_10454)
  A2_10454 = A2_10454 or "Root"
  A1_10453[A2_10454] = {}
  FlattenSubTree(A0_10452, A1_10453, A1_10453[A2_10454])
end
function FlattenSubTree(A0_10455, A1_10456, A2_10457)
  table.foreach(A0_10455, function(A0_10458, A1_10459)
    if type(A1_10459) == "table" then
      _UPVALUE0_[A0_10458] = {}
      FlattenSubTree(A1_10459, _UPVALUE0_, _UPVALUE0_[A0_10458])
    else
      _UPVALUE1_[A0_10458] = A1_10459
    end
  end)
end
function BreakUpHugeString(A0_10460, A1_10461, A2_10462)
  local L3_10463, L4_10464, L5_10465, L6_10466, L7_10467, L8_10468
  A1_10461 = A1_10461 or 128
  A2_10462 = A2_10462 or 256
  L3_10463 = {}
  L4_10464 = 1
  L5_10465 = string
  L5_10465 = L5_10465.len
  L6_10466 = A0_10460
  L5_10465 = L5_10465(L6_10466)
  L6_10466 = 1
  L7_10467 = L4_10464
  while L4_10464 < L5_10465 do
    L8_10468 = string
    L8_10468 = L8_10468.find
    L8_10468 = L8_10468(A0_10460, "\n", L4_10464, true)
    L8_10468 = L8_10468 or L5_10465
    if A2_10462 < L8_10468 - L7_10467 then
      L8_10468 = L7_10467 + A2_10462
    end
    if A1_10461 < L8_10468 - L7_10467 or L8_10468 == L5_10465 then
      L3_10463[L6_10466] = string.sub(A0_10460, L7_10467, L8_10468)
      L6_10466 = L6_10466 + 1
      L7_10467 = L8_10468 + 1
    end
    L4_10464 = L8_10468 + 1
  end
  return L3_10463
end
function LogTable(A0_10469, A1_10470, A2_10471)
  local L3_10472, L4_10473, L5_10474, L6_10475, L7_10476, L8_10477, L9_10478
  A1_10470 = A1_10470 or "DumpedTable"
  if A2_10471 == nil then
    A2_10471 = true
  end
  L3_10472 = DumpTableAsLuaString
  L4_10473 = A0_10469
  L3_10472 = L3_10472(L4_10473, L5_10474, L6_10475)
  L4_10473 = BreakUpHugeString
  L4_10473 = L4_10473(L5_10474)
  for L8_10477, L9_10478 in L5_10474(L6_10475) do
    System.Log(L9_10478)
  end
end
function GetValueRecursive(A0_10479)
  local L1_10480
  L1_10480 = loadstring
  L1_10480 = L1_10480("return " .. A0_10479)
  if L1_10480 and pcall(L1_10480) then
    return pcall(L1_10480)
  end
  return nil
end
function SetValueRecursive(A0_10481, A1_10482)
  local L2_10483
  L2_10483 = loadstring
  L2_10483 = L2_10483(A0_10481 .. " = " .. A1_10482)
  if L2_10483 then
    return L2_10483()
  end
  return nil
end
function out(...)
  local L1_10485, L2_10486
  L1_10485 = System
  if L1_10485 then
    L1_10485 = System
    L1_10485 = L1_10485.Log
    if L1_10485 then
      L1_10485 = 0
      for _FORV_5_ = 1, 10 do
        if L0_10484[_FORV_5_] ~= nil then
          L1_10485 = _FORV_5_
        end
      end
      while L1_10485 > 0 do
      end
      System.Log(L2_10486)
    end
  else
    L1_10485 = print
    if L1_10485 then
      L1_10485 = print
      L1_10485(L2_10486)
    end
  end
end
