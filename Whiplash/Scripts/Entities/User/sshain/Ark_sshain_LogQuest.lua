local L0_8895
L0_8895 = {}
L0_8895.Properties = {
  fileModel = "Objects/Weapons/equipment/medical_Kit/medical_kit_bag_tp.cgf",
  fileXmlDef = "Scripts/Entities/User/sshain/LogQuestDefinitions.xml",
  fileXmlData = "Scripts/Entities/User/sshain/LogQuestData_Test.xml",
  fUseDistance = 2.5,
  sUsableMessage = "Ark_sshain_LogQuestClue",
  sQuestName = "TestQuest",
  sThisLocationName = "TestLocation"
}
L0_8895.PhysParams = {mass = 10, density = 0}
L0_8895.Editor = {
  Icon = "TagPoint.bmp",
  IconOnTop = 1
}
L0_8895.nRandomSeed = os.time()
L0_8895.bVerbose = true
L0_8895.bQuestVerified = false
L0_8895.bUsed = false
L0_8895.player = {}
Ark_sshain_LogQuest = L0_8895
L0_8895 = Ark_sshain_LogQuest
function L0_8895.Log(A0_8896, A1_8897)
  if A0_8896.bVerbose then
    System.Log(A1_8897)
  end
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.ResetQuest(A0_8898, A1_8899)
  local L2_8900
  L2_8900 = A0_8898.Properties
  L2_8900 = L2_8900.sQuestName
  A1_8899[L2_8900] = {}
  L2_8900 = A0_8898.Properties
  L2_8900 = L2_8900.sQuestName
  L2_8900 = A1_8899[L2_8900]
  L2_8900.bQuestStarted = false
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.StartQuest(A0_8901, A1_8902)
  A1_8902[A0_8901.Properties.sQuestName] = {
    bQuestStarted = true,
    nCluesDiscovered = 0,
    objectiveLocations = A0_8901:GenerateObjectiveLocations(),
    objectiveTexts = A0_8901:GenerateObjectiveTexts()
  }
  A0_8901:ContinueQuest(A1_8902)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.ContinueQuest(A0_8903, A1_8904)
  local L2_8905, L3_8906, L4_8907, L5_8908, L6_8909, L7_8910, L8_8911, L9_8912, L10_8913, L11_8914, L12_8915, L13_8916, L14_8917, L15_8918
  L3_8906 = A0_8903
  L2_8905 = A0_8903.GetQuestLocations
  L4_8907 = A1_8904
  L2_8905 = L2_8905(L3_8906, L4_8907)
  L4_8907 = A0_8903
  L3_8906 = A0_8903.GetQuestTexts
  L3_8906 = L3_8906(L4_8907, L5_8908)
  L4_8907 = {}
  for L8_8911, L9_8912 in L5_8908(L6_8909) do
    if L10_8913 == L11_8914 then
      for L13_8916, L14_8917 in L10_8913(L11_8914) do
        L15_8918 = L14_8917
        if L15_8918 == "THIS_LOCATION" then
          L15_8918 = L2_8905[L8_8911]
        elseif L15_8918 == "NEXT_LOCATION" then
          if L8_8911 + 1 <= #L2_8905 then
            L15_8918 = L2_8905[L8_8911 + 1]
          else
            L15_8918 = "INVALID NEXT_LOCATION CALL AT " .. tostring(L8_8911) .. "-" .. tostring(L13_8916)
          end
        end
        table.insert(L4_8907, L15_8918)
      end
      for L14_8917, L15_8918 in L11_8914(L12_8915) do
      end
      L11_8914(L12_8915, L13_8916)
      L14_8917 = L10_8913
      L11_8914(L12_8915, L13_8916, L14_8917)
    end
  end
  L8_8911 = A1_8904
  L5_8908.nCluesDiscovered = L6_8909
  L5_8908(L6_8909, L7_8910)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.EvaluateQuest(A0_8919, A1_8920)
  if A0_8919:GetCluesRemaining(A1_8920) == 0 then
    BroadcastEvent(A0_8919, "QuestComplete")
  end
  if A0_8919:GetCluesDiscovered(A1_8920) == 1 then
    BroadcastEvent(A0_8919, "FirstClueFound")
  end
  if A0_8919:GetQuestLocations(A1_8920)[#A0_8919:GetQuestLocations(A1_8920)] == A0_8919.Properties.sThisLocationName then
    BroadcastEvent(A0_8919, "LastClueFound")
  end
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GetQuestLocations(A0_8921, A1_8922)
  local L2_8923
  L2_8923 = A0_8921.Properties
  L2_8923 = L2_8923.sQuestName
  L2_8923 = A1_8922[L2_8923]
  L2_8923 = L2_8923.objectiveLocations
  return L2_8923
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GetCluesDiscovered(A0_8924, A1_8925)
  local L2_8926
  L2_8926 = A0_8924.Properties
  L2_8926 = L2_8926.sQuestName
  L2_8926 = A1_8925[L2_8926]
  L2_8926 = L2_8926.nCluesDiscovered
  return L2_8926
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GetQuestTexts(A0_8927, A1_8928)
  local L2_8929
  L2_8929 = A0_8927.Properties
  L2_8929 = L2_8929.sQuestName
  L2_8929 = A1_8928[L2_8929]
  L2_8929 = L2_8929.objectiveTexts
  return L2_8929
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GetCluesRemaining(A0_8930, A1_8931)
  return #A0_8930:GetQuestLocations(A1_8931) - A0_8930:GetCluesDiscovered(A1_8931)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.IsQuestStarted(A0_8932, A1_8933)
  local L2_8934
  L2_8934 = A0_8932.Properties
  L2_8934 = L2_8934.sQuestName
  L2_8934 = A1_8933[L2_8934]
  if L2_8934 then
    L2_8934 = A0_8932.Properties
    L2_8934 = L2_8934.sQuestName
    L2_8934 = A1_8933[L2_8934]
    L2_8934 = L2_8934.bQuestStarted
    return L2_8934
  else
    L2_8934 = 0
    return L2_8934
  end
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.IsValidQuestItem(A0_8935, A1_8936)
  if A0_8935:IsQuestStarted(A1_8936) then
    for _FORV_5_, _FORV_6_ in ipairs(A0_8935:GetQuestLocations(A1_8936)) do
      if A0_8935.Properties.sThisLocationName == _FORV_6_ then
        return 1
      end
    end
    return 0
  else
    return 1
  end
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GenerateObjectiveTexts(A0_8937)
  local L1_8938, L2_8939
  L1_8938 = A0_8937.player
  L1_8938 = L1_8938.xmlLogQuestData
  L2_8939 = A0_8937.Properties
  L2_8939 = L2_8939.sQuestName
  L1_8938 = L1_8938[L2_8939]
  L1_8938 = L1_8938.quest
  L1_8938 = L1_8938.objectives
  L2_8939 = {}
  for _FORV_6_, _FORV_7_ in ipairs(L1_8938) do
    table.insert(L2_8939, _FORV_7_.objectiveTexts)
  end
  return L2_8939
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GenerateObjectiveLocations(A0_8940)
  local L1_8941, L2_8942, L3_8943, L4_8944, L5_8945
  function L1_8941()
    local L0_8946, L1_8947, L2_8948, L3_8949, L4_8950, L5_8951, L6_8952
    L0_8946 = _UPVALUE0_
    L0_8946 = L0_8946.player
    L0_8946 = L0_8946.xmlLogQuestData
    L1_8947 = _UPVALUE0_
    L1_8947 = L1_8947.Properties
    L1_8947 = L1_8947.sQuestName
    L0_8946 = L0_8946[L1_8947]
    L0_8946 = L0_8946.quest
    L0_8946 = L0_8946.locations
    L1_8947 = {}
    for L5_8951, L6_8952 in L2_8948(L3_8949) do
      if L6_8952 == _UPVALUE0_.Properties.sThisLocationName then
        _UPVALUE0_.bQuestVerified = true
      else
        table.insert(L1_8947, L6_8952)
      end
    end
    if not L2_8948 then
      L5_8951 = _UPVALUE0_
      L5_8951 = L5_8951.Properties
      L5_8951 = L5_8951.sThisLocationName
      L6_8952 = " is missing from quest locations."
      L2_8948(L3_8949, L4_8950)
    end
    return L1_8947
  end
  L2_8942 = L1_8941
  L2_8942 = L2_8942()
  function L3_8943()
    local L0_8953, L1_8954
    L0_8953 = _UPVALUE0_
    L0_8953 = L0_8953.player
    L0_8953 = L0_8953.xmlLogQuestData
    L1_8954 = _UPVALUE0_
    L1_8954 = L1_8954.Properties
    L1_8954 = L1_8954.sQuestName
    L0_8953 = L0_8953[L1_8954]
    L0_8953 = L0_8953.quest
    L0_8953 = L0_8953.questLength
    return L0_8953
  end
  function L4_8944()
    local L0_8955
    L0_8955 = random
    L0_8955 = L0_8955(1, #_UPVALUE0_)
    table.remove(_UPVALUE0_, L0_8955)
    return _UPVALUE0_[L0_8955]
  end
  function L5_8945(A0_8956)
    local L1_8957
    L1_8957 = {
      _UPVALUE0_.Properties.sThisLocationName
    }
    while A0_8956 > #L1_8957 do
      table.insert(L1_8957, _UPVALUE1_())
    end
    return L1_8957
  end
  return L5_8945(L3_8943())
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.DoPhysicalize(A0_8958)
  if A0_8958.currModel ~= A0_8958.Properties.fileModel then
    CryAction.ActivateExtensionForGameObject(A0_8958.id, "ScriptControlledPhysics", false)
    A0_8958:LoadObject(0, A0_8958.Properties.fileModel)
    A0_8958:Physicalize(0, PE_RIGID, A0_8958.PhysParams)
    CryAction.ActivateExtensionForGameObject(A0_8958.id, "ScriptControlledPhysics", true)
  end
  A0_8958:SetPhysicParams(PHYSICPARAM_FLAGS, {flags_mask = pef_cannot_squash_players, flags = pef_cannot_squash_players})
  A0_8958.currModel = A0_8958.Properties.fileModel
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.Reset(A0_8959, A1_8960)
  A0_8959:DoPhysicalize()
  A0_8959.player = g_localActor
  A0_8959.bUsed = false
  if A0_8959.player and A0_8959.player[A0_8959.Properties.sQuestName] then
    A0_8959.player[A0_8959.Properties.sQuestName] = nil
  end
  if A0_8959.player.xmlLogQuestData ~= nil then
    if A0_8959.player.xmlLogQuestData[A0_8959.Properties.sQuestName] ~= nil then
      A0_8959.player.xmlLogQuestData[A0_8959.Properties.sQuestName] = nil
    end
  else
    A0_8959.player.xmlLogQuestData = {}
    A0_8959.player.xmlLogQuestData[A0_8959.Properties.sQuestName] = {}
  end
  A0_8959.player.xmlLogQuestData[A0_8959.Properties.sQuestName] = CryAction.LoadXML(A0_8959.Properties.fileXmlDef, A0_8959.Properties.fileXmlData)
  A0_8959:ResetQuest(A0_8959.player)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.UnHide(A0_8961)
  local L1_8962
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.IsUsable(A0_8963, A1_8964)
  local L2_8965, L3_8966, L4_8967, L5_8968, L6_8969, L7_8970
  if not A1_8964 then
    L2_8965 = 0
    return L2_8965
  end
  L2_8965 = A0_8963.Properties
  L2_8965 = L2_8965.fUseDistance
  L3_8966 = g_Vectors
  L3_8966 = L3_8966.temp_v1
  L5_8968 = A0_8963
  L4_8967 = A0_8963.GetWorldBBox
  L5_8968 = L4_8967(L5_8968)
  L6_8969 = FastSumVectors
  L7_8970 = L4_8967
  L6_8969(L7_8970, L4_8967, L5_8968)
  L6_8969 = ScaleVectorInPlace
  L7_8970 = L4_8967
  L6_8969(L7_8970, 0.5)
  L7_8970 = A1_8964
  L6_8969 = A1_8964.GetWorldPos
  L6_8969(L7_8970, L3_8966)
  L6_8969 = SubVectors
  L7_8970 = L3_8966
  L6_8969(L7_8970, L3_8966, L4_8967)
  L6_8969 = LengthSqVector
  L7_8970 = L3_8966
  L6_8969 = L6_8969(L7_8970)
  L7_8970 = sqr
  L7_8970 = L7_8970(L2_8965)
  if L6_8969 < L7_8970 then
    L6_8969 = A0_8963.bUsed
    if L6_8969 then
      L6_8969 = 0
      return L6_8969
    else
      L7_8970 = A0_8963
      L6_8969 = A0_8963.IsValidQuestItem
      return L6_8969(L7_8970, A1_8964)
    end
  else
    L6_8969 = 0
    return L6_8969
  end
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.GetUsableMessage(A0_8971, A1_8972)
  return A0_8971.Properties.sUsableMessage .. ": " .. A0_8971.Properties.sThisLocationName
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.OnUsed(A0_8973, A1_8974)
  if not A0_8973.bUsed then
    if A0_8973:IsQuestStarted(A1_8974) then
      A0_8973:ContinueQuest(A1_8974)
    else
      A0_8973:StartQuest(A1_8974)
    end
    A0_8973:ActivateOutput("PickedUp", A0_8973.Properties.sThisLocationName)
    A0_8973:ActivateOutput("CluesFound", A0_8973:GetCluesDiscovered(A1_8974))
    A0_8973:ActivateOutput("CluesRemaining", A0_8973:GetCluesRemaining(A1_8974))
  end
  A0_8973.bUsed = true
  A0_8973:Hide(1)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.OnPropertyChange(A0_8975)
  A0_8975:Reset()
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.OnReset(A0_8976)
  A0_8976:Reset()
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.OnSpawn(A0_8977)
  A0_8977:Reset(1)
end
L0_8895 = Ark_sshain_LogQuest
function L0_8895.OnDestroy(A0_8978)
  local L1_8979
end
L0_8895 = Ark_sshain_LogQuest
L0_8895.FlowEvents = {
  Inputs = {},
  Outputs = {
    QuestComplete = "bool",
    FirstClueFound = "bool",
    LastClueFound = "bool",
    PickedUp = "string",
    Objective = "string",
    CluesFound = "int",
    CluesRemaining = "int"
  }
}
