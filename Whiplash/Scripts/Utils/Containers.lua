local L0_9699
L0_9699 = Set
if L0_9699 then
  L0_9699 = Set
  L0_9699 = L0_9699.countTable
else
  L0_9699 = L0_9699 or {}
end
Set = {}
Set.countTable = L0_9699
setmetatable(Set.countTable, {__mode = "kv"})
function Set.New()
  local L1_9700
  L1_9700 = {}
  Set.countTable[L1_9700] = 0
  return L1_9700
end
function Set.SerializeValues(A0_9701)
  local L1_9702, L2_9703, L3_9704, L4_9705, L5_9706, L6_9707, L7_9708
  L1_9702 = {}
  for L5_9706, L6_9707 in L2_9703(L3_9704) do
    L7_9708 = {}
    table.insert(L7_9708, 1, L5_9706)
    table.insert(L7_9708, 2, L6_9707)
    table.insert(L1_9702, L7_9708)
  end
  return L1_9702
end
function Set.DeserializeValues(A0_9709)
  local L1_9710
  L1_9710 = Set
  L1_9710 = L1_9710.New
  L1_9710 = L1_9710()
  for _FORV_5_, _FORV_6_ in ipairs(A0_9709) do
    Set.Add(L1_9710, _FORV_6_[1], _FORV_6_[2])
  end
  return L1_9710
end
function Set.DeserializeEntities(A0_9711)
  local L1_9712, L2_9713, L3_9714, L4_9715, L5_9716, L6_9717
  L1_9712 = Set
  L1_9712 = L1_9712.New
  L1_9712 = L1_9712()
  for L5_9716, L6_9717 in L2_9713(L3_9714) do
    Set.Add(L1_9712, L6_9717)
  end
  return L1_9712
end
function Set.SerializeEntities(A0_9718)
  local L1_9719, L2_9720, L3_9721, L4_9722, L5_9723
  L1_9719 = {}
  for L5_9723, _FORV_6_ in L2_9720(L3_9721) do
    table.insert(L1_9719, L5_9723)
  end
  return L1_9719
end
function Set.DeserializeItems(A0_9724)
  local L1_9725, L2_9726, L3_9727, L4_9728, L5_9729, L6_9730
  L1_9725 = Set
  L1_9725 = L1_9725.New
  L1_9725 = L1_9725()
  for L5_9729, L6_9730 in L2_9726(L3_9727) do
    if L6_9730 then
      Set.Add(L1_9725, L6_9730)
    end
  end
  return L1_9725
end
function Set.SerializeItems(A0_9731)
  local L2_9732
  L2_9732 = {}
  for _FORV_6_, _FORV_7_ in pairs(A0_9731) do
    L2_9732[1] = _FORV_6_
  end
  return L2_9732
end
function Set.Check(A0_9733)
  if not Set.countTable[A0_9733] then
    if print then
      print(tostring(A0_9733) .. "is not registered as a Set")
    else
      System.Log(tostring(A0_9733) .. "is not registered as a Set")
    end
    System.ShowDebugger()
    Set.throwAnError.throwAnError = true
  end
end
function Set.Add(A0_9734, A1_9735, A2_9736)
  A2_9736 = A2_9736 or true
  Set.Check(A0_9734)
  if not A0_9734[A1_9735] then
    A0_9734[A1_9735] = A2_9736
    Set.countTable[A0_9734] = Set.countTable[A0_9734] + 1
    return true
  end
  return false
end
function Set.Remove(A0_9737, A1_9738)
  Set.Check(A0_9737)
  if A0_9737[A1_9738] then
    A0_9737[A1_9738] = nil
    Set.countTable[A0_9737] = Set.countTable[A0_9737] - 1
    return true
  end
  return false
end
function Set.Get(A0_9739, A1_9740)
  Set.Check(A0_9739)
  return A0_9739[A1_9740]
end
function Set.Set(A0_9741, A1_9742, A2_9743)
  A2_9743 = A2_9743 or true
  Set.Check(A0_9741)
  if not A0_9741[A1_9742] then
    A0_9741[A1_9742] = A2_9743
    Set.countTable[A0_9741] = Set.countTable[A0_9741] + 1
    return false
  else
    A0_9741[A1_9742] = A2_9743
    return true
  end
end
function Set.Size(A0_9744)
  Set.Check(A0_9744)
  return Set.countTable[A0_9744]
end
function Set.RemoveAll(A0_9745)
  Set.Check(A0_9745)
  for _FORV_4_, _FORV_5_ in pairs(A0_9745) do
    A0_9745[_FORV_4_] = nil
  end
  Set.countTable[A0_9745] = 0
end
function Set.Merge(A0_9746, A1_9747)
  local L2_9748, L3_9749, L4_9750, L5_9751, L6_9752, L7_9753
  L2_9748 = true
  L3_9749(L4_9750)
  L3_9749(L4_9750)
  for L6_9752, L7_9753 in L3_9749(L4_9750) do
    if not Set.Add(A0_9746, L6_9752, L7_9753) then
      L2_9748 = false
    end
  end
  return L2_9748
end
function Set.SanityCheck(A0_9754)
  local L1_9755, L2_9756, L3_9757, L4_9758, L5_9759, L6_9760, L7_9761, L8_9762, L9_9763
  L1_9755 = Set
  L1_9755 = L1_9755.Check
  L1_9755(L2_9756)
  L1_9755 = 0
  for L5_9759, L6_9760 in L2_9756(L3_9757) do
    L1_9755 = L1_9755 + 1
  end
  if L1_9755 ~= L2_9756 then
    L3_9757(L4_9758)
    return L3_9757
  end
  for L8_9762, L9_9763 in L5_9759(L6_9760) do
    if L3_9757 then
      if L3_9757 ~= type(L8_9762) then
        System.Log("[Set] Sanity check failed - Found indices of both types " .. L3_9757 .. " and " .. type(L8_9762))
        return false
      end
    else
    end
    if L4_9758 then
      if L4_9758 ~= type(L9_9763) then
        System.Log("[Set] Sanity check failed - Found values of both types " .. L4_9758 .. " and " .. type(L9_9763))
        return false
      end
    else
    end
  end
  return L5_9759
end
function Set.Test(A0_9764)
  local L1_9765, L2_9766
  L1_9765 = Set
  L1_9765 = L1_9765.New
  L1_9765 = L1_9765()
  L2_9766 = Set
  L2_9766 = L2_9766.New
  L2_9766 = L2_9766()
  if Set.Add(L1_9765, "key1", 1) == false then
    return false
  end
  if Set.Add(L1_9765, "key2") == false then
    return false
  end
  if Set.Add(L1_9765, "key3", 3) == false then
    return false
  end
  if Set.Add(L1_9765, "key1", 1) == true then
    return false
  end
  if Set.Remove(L1_9765, "key1") == false then
    return false
  end
  if Set.Get(L1_9765, "key2") == false then
    return false
  end
  if Set.Get(L1_9765, "key1") ~= nil then
    return false
  end
  if Set.Get(L1_9765, "key3") ~= 3 then
    return false
  end
  if Set.Size(L1_9765) ~= 2 then
    return false
  end
  Set.RemoveAll(L1_9765)
  if Set.Size(L1_9765) ~= 0 then
    return false
  end
  if Set.Add(L1_9765, "key1", 1) == false then
    return false
  end
  if Set.Set(L1_9765, "key1", 9) == false then
    return false
  end
  if Set.Set(L1_9765, "key0", 9) == true then
    return false
  end
  if Set.Add(L1_9765, "keyF", 3) == false then
    return false
  end
  if Set.Size(L1_9765) ~= 3 then
    return false
  end
  if Set.Add(L2_9766, "key3", 3) == false then
    return false
  end
  if Set.Add(L2_9766, "key4", 4) == false then
    return false
  end
  if Set.Add(L2_9766, "key5", 5) == false then
    return false
  end
  if Set.Add(L2_9766, "key3", 3) == true then
    return false
  end
  if Set.Set(L2_9766, "key9") == true then
    return false
  end
  if Set.Get(L2_9766, "key9") == nil then
    return false
  end
  if not Set.Merge(L1_9765, L2_9766) then
    return false
  end
  if Set.Size(L1_9765) ~= 7 then
    return false
  end
  if Set.Merge(L1_9765, L2_9766) then
    return false
  end
  if Set.Size(L1_9765) ~= 7 then
    return false
  end
  if A0_9764 then
    collectgarbage()
    for _FORV_7_, _FORV_8_ in pairs(Set.countTable) do
    end
    L2_9766 = nil
    collectgarbage()
    for _FORV_8_, _FORV_9_ in pairs(Set.countTable) do
    end
    if 0 + 1 - (0 + 1) ~= 1 then
      return false
    end
  end
  do return true end
  return true
end
if not Set.Test() then
  System.Log("Containers: ... Error - Failed Unit Test")
else
end
