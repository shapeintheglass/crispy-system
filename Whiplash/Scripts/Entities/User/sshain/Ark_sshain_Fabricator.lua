Script.ReloadScript("Scripts/Entities/Physics/BasicEntity.lua")
Ark_sshain_Fabricator = {
  Properties = {
    object_Model = "GameSDK/Objects/ArkEffects/Temporary/proxy_fabricator.cga",
    file_XmlDef = "GameSDK/Scripts/Entities/User/sshain/Ark_sshain_FabPlans_Def.xml",
    file_XmlData = "GameSDK/Scripts/Entities/User/sshain/Ark_sshain_FabPlans_Data.xml",
    bUsable = true,
    bVerbose = true
  },
  Colors = {
    clrColor = {
      x = 1,
      y = 1,
      z = 0
    }
  },
  Sound = {
    sndCraft = "Sounds/environment:city:atrium_elevator_start"
  },
  States = {
    "InUse",
    "Busy",
    "Standby",
    "Destroyed"
  },
  Editor = {Icon = "Prefab.bmp"},
  m_file_SpawnVFX = "ArkGameplay.Fabricator.CraftingFinish",
  m_uiElementName = "DanielleFabricator",
  m_subMatIndex = 2,
  m_useMessage = "Use Fabricator",
  m_idleDelay = 5000,
  m_craftingDelay = 1500,
  m_itemClearDelay = 1000,
  m_usable = 1,
  m_timerId = 0,
  m_instanceId = -1,
  m_m_bVerbose = true,
  m_fInteractDist = 1.5,
  m_fItemClearDist = 1.5,
  m_planIndex = 1,
  m_fabPlans = {},
  m_vecItemSpawnPos = {},
  m_vecInteractPos = {}
}
MakeDerivedEntityOverride(Ark_sshain_Fabricator, BasicEntity)
function Ark_sshain_Fabricator.Log(A0_8811, A1_8812)
  A1_8812 = "ArkFabricator" .. tostring(A0_8811.m_instanceId) .. ": " .. A1_8812
  if A0_8811.m_bVerbose then
    System.Log(A1_8812)
  end
end
function Ark_sshain_Fabricator.Reset(A0_8813)
  local L1_8814
  L1_8814 = A0_8813.__super
  L1_8814 = L1_8814.SetFromProperties
  L1_8814(A0_8813)
  L1_8814 = A0_8813.__super
  L1_8814 = L1_8814.OnReset
  L1_8814(A0_8813)
  L1_8814 = A0_8813.Log
  L1_8814(A0_8813, "Fabricator: Reset")
  L1_8814 = A0_8813.GetRawId
  L1_8814 = L1_8814(A0_8813)
  A0_8813.m_instanceId = L1_8814
  L1_8814 = A0_8813.id
  Ark.AttachWorldUIInstanceToEntity(L1_8814, A0_8813.m_instanceId, A0_8813:GetMaterial(0), A0_8813.m_uiElementName, A0_8813.m_subMatIndex)
  UIAction.UnregisterElementListener(A0_8813, "OnButtonPress")
  UIAction.RegisterElementListener(A0_8813, A0_8813.m_uiElementName, A0_8813.m_instanceId, "fabricatorBtnPress", "OnButtonPress")
  A0_8813:PhysicalizeThis()
  if A0_8813.Properties.bUsable then
    A0_8813.m_usable = 1
  else
    A0_8813.m_usable = 0
  end
  if A0_8813.m_idleDelay < A0_8813.m_craftingDelay then
    A0_8813:Log("Fabricator Warning: Idle delay must be longer than crafting delay.")
    A0_8813.m_idleDelay = A0_8813.m_craftingDelay + 100
  end
  A0_8813.m_vecItemSpawnPos = A0_8813:GetBonePos(A0_8813:GetBoneNameFromTable(1))
  A0_8813.m_vecInteractPos = A0_8813:GetBonePos(A0_8813:GetBoneNameFromTable(2))
  A0_8813.m_fabPlans = {}
  A0_8813.m_planIndex = 1
  A0_8813.m_bVerbose = A0_8813.Properties.bVerbose
  if A0_8813.m_bVerbose then
    A0_8813:Log("Clearing crafting data for testing...")
    g_localActor:ClearAllArkInventory()
  end
  A0_8813:GotoState("Standby")
end
function Ark_sshain_Fabricator.Fabricate(A0_8815)
  local L1_8816
  L1_8816 = A0_8815.m_planIndex
  if L1_8816 ~= nil then
    L1_8816 = A0_8815.m_fabPlans
    L1_8816 = L1_8816[A0_8815.m_planIndex]
    if L1_8816 ~= nil then
      L1_8816 = A0_8815.m_fabPlans
      L1_8816 = L1_8816[A0_8815.m_planIndex]
      if A0_8815:PlayerHasPlanIngredients(L1_8816) then
        Script.KillTimer(A0_8815.m_timerId)
        A0_8815.m_timerId = Script.SetTimer(A0_8815.m_craftingDelay, function()
          _UPVALUE0_:SpawnItem(_UPVALUE1_)
        end)
        A0_8815:DebitPlanIngredients(L1_8816)
        A0_8815:GotoState("Busy")
      end
    end
  end
end
function Ark_sshain_Fabricator.GetPlayerItemQuantity(A0_8817, A1_8818)
  local L3_8819
  L3_8819 = 0
  for _FORV_6_, _FORV_7_ in ipairs(g_localActor:GetItems()) do
    if _FORV_7_ == A1_8818 then
      L3_8819 = L3_8819 + 1
    end
  end
  return L3_8819
end
function Ark_sshain_Fabricator.PlayerHasPlanIngredients(A0_8820, A1_8821)
  local L2_8822, L3_8823, L4_8824, L5_8825, L6_8826
  L2_8822 = g_localActor
  L3_8823 = L2_8822
  L2_8822 = L2_8822.GetIngredients
  L2_8822 = L2_8822(L3_8823)
  L3_8823 = L2_8822.organic
  L4_8824 = A1_8821.organic
  L3_8823 = L3_8823 >= L4_8824
  L4_8824 = L2_8822.mineral
  L5_8825 = A1_8821.mineral
  L4_8824 = L4_8824 >= L5_8825
  L5_8825 = L2_8822.synthetic
  L6_8826 = A1_8821.synthetic
  L5_8825 = L5_8825 >= L6_8826
  L6_8826 = L2_8822.exotic
  L6_8826 = L6_8826 >= A1_8821.exotic
  return L3_8823 and L4_8824 and L5_8825 and L6_8826
end
function Ark_sshain_Fabricator.GetPlayerFabPlans(A0_8827)
  return g_localActor:GetFabricationPlans()
end
function Ark_sshain_Fabricator.GetPlayerIngredientsAsArray(A0_8828)
  return {
    g_localActor:GetIngredients().organic,
    g_localActor:GetIngredients().mineral,
    g_localActor:GetIngredients().synthetic,
    g_localActor:GetIngredients().exotic
  }
end
function Ark_sshain_Fabricator.DebitPlanIngredients(A0_8829, A1_8830)
  g_localActor:RemoveIngredients(A1_8830)
end
function Ark_sshain_Fabricator.SpawnItem(A0_8831, A1_8832)
  local L2_8833, L3_8834
  L2_8833 = Particle
  L2_8833 = L2_8833.SpawnEffect
  L3_8834 = A0_8831.m_file_SpawnVFX
  L2_8833(L3_8834, A0_8831.m_vecItemSpawnPos, g_Vectors.v001)
  L2_8833 = {}
  L2_8833.class = A1_8832
  L3_8834 = A0_8831.m_vecItemSpawnPos
  L2_8833.position = L3_8834
  L2_8833.name = A1_8832
  L3_8834 = System
  L3_8834 = L3_8834.SpawnEntity
  L3_8834 = L3_8834(L2_8833)
  A0_8831:SetDisplayMode("ItemReady")
  A0_8831:StartItemClearTimer(L3_8834)
end
function Ark_sshain_Fabricator.StartItemClearTimer(A0_8835, A1_8836)
  A0_8835.m_timerId = Script.SetTimer(A0_8835.m_itemClearDelay, function()
    _UPVALUE0_:IsItemPresent(_UPVALUE1_)
  end)
end
function Ark_sshain_Fabricator.StartIdleTimer(A0_8837)
  A0_8837.m_timerId = Script.SetTimer(A0_8837.m_idleDelay, function()
    _UPVALUE0_:ReturnToStandby()
  end)
end
function Ark_sshain_Fabricator.IsItemPresent(A0_8838, A1_8839)
  if A1_8839 then
    A0_8838:Log("ItemId.bWasPickedUp: " .. tostring(A1_8839.bWasPickedUp))
  end
  if DistanceVectors(A1_8839:GetWorldPos(), A0_8838.m_vecItemSpawnPos) < A0_8838.m_fItemClearDist and not A1_8839.bWasPickedUp then
    A0_8838:StartItemClearTimer(A1_8839)
  else
    A0_8838:SetDisplayMode("ItemPickedUp")
    A0_8838:GotoState("InUse")
  end
end
function Ark_sshain_Fabricator.ReturnToStandby(A0_8840)
  if A0_8840.m_usable == 2 then
    if A0_8840:CheckDistanceToPlayer() > A0_8840.m_fInteractDist then
      A0_8840:GotoState("Standby")
    else
      A0_8840:StartIdleTimer()
    end
  end
end
function Ark_sshain_Fabricator.UpdateDisplayData(A0_8841)
  local L1_8842, L2_8843, L3_8844, L4_8845, L5_8846, L6_8847, L7_8848, L8_8849
  L1_8842 = A0_8841.GetPlayerIngredientsAsArray
  L1_8842 = L1_8842(L2_8843)
  L5_8846 = "ingredientsArray"
  L6_8847 = L1_8842
  L2_8843(L3_8844, L4_8845, L5_8846, L6_8847)
  A0_8841.m_fabPlans = L2_8843
  if L2_8843 > 0 then
    for L5_8846, L6_8847 in L2_8843(L3_8844) do
      L7_8848 = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut"
      L8_8849 = false
      UIAction.CallFunction(A0_8841.m_uiElementName, A0_8841.m_instanceId, "fabricatorRecipeParams", L5_8846, L6_8847.itemName, L7_8848, L6_8847.organic, L6_8847.mineral, L6_8847.synthetic, L6_8847.exotic, A0_8841:GetPlayerItemQuantity(L6_8847.itemName), A0_8841:PlayerHasPlanIngredients(L6_8847), L8_8849)
    end
  else
    L5_8846 = "fabricatorRecipeParams"
    L6_8847 = 1
    L7_8848 = "ERROR: SEE DESCRIPTION"
    L8_8849 = "You currently have no fabrication plans for use with this Fabricator. Please come back when you have a fabrication plan."
    L2_8843(L3_8844, L4_8845, L5_8846, L6_8847, L7_8848, L8_8849, 0, 0, 0, 0, 0, false, false)
  end
end
function Ark_sshain_Fabricator.UpdateView(A0_8850)
  if #A0_8850:GetPlayerFabPlans() > 0 then
    UIAction.CallFunction(A0_8850.m_uiElementName, A0_8850.m_instanceId, "fabricatorHL", A0_8850.m_planIndex - 1)
  end
end
function Ark_sshain_Fabricator.SetDisplayMode(A0_8851, A1_8852, A2_8853)
  local L3_8854
  L3_8854 = "fabricator"
  L3_8854 = L3_8854 .. A1_8852
  if A2_8853 == nil then
    UIAction.CallFunction(A0_8851.m_uiElementName, A0_8851.m_instanceId, L3_8854)
  else
    UIAction.CallFunction(A0_8851.m_uiElementName, A0_8851.m_instanceId, L3_8854, A2_8853)
  end
end
function Ark_sshain_Fabricator.CheckDistanceToPlayer(A0_8855)
  local L1_8856, L2_8857
  L1_8856 = DistanceVectors
  L2_8857 = A0_8855.m_vecInteractPos
  L1_8856 = L1_8856(L2_8857, g_localActor:GetWorldPos())
  return L1_8856
end
function Ark_sshain_Fabricator.PlaySound(A0_8858, A1_8859)
  if not _sSound or A1_8859 ~= "" then
  end
end
function Ark_sshain_Fabricator.IsUsable(A0_8860, A1_8861)
  local L2_8862
  L2_8862 = 0
  if A0_8860.m_usable == 1 and A0_8860:CheckDistanceToPlayer() <= A0_8860.m_fInteractDist then
    L2_8862 = 1
  end
  return L2_8862
end
function Ark_sshain_Fabricator.GetUsableMessage(A0_8863, A1_8864)
  if A0_8863.m_usable == 1 then
    return A0_8863.m_useMessage
  else
    return "@use_object"
  end
end
function Ark_sshain_Fabricator.PhysicalizeThis(A0_8865)
  if A0_8865.Properties.object_Model ~= "" then
    A0_8865:LoadObject(0, A0_8865.Properties.object_Model)
  end
  BasicEntity.PhysicalizeThis(A0_8865)
end
function Ark_sshain_Fabricator.OnInit(A0_8866)
  A0_8866:Reset()
end
function Ark_sshain_Fabricator.OnUsed(A0_8867, A1_8868, A2_8869)
  A0_8867:GotoState("InUse")
  BroadcastEvent(A0_8867, "Used")
end
function Ark_sshain_Fabricator.OnButtonPress(A0_8870, A1_8871, A2_8872, A3_8873, A4_8874)
  local L5_8875
  L5_8875 = A4_8874[0]
  A0_8870:Log("Button pressed:" .. L5_8875)
  if L5_8875 == "Next" then
    A0_8870.m_planIndex = A0_8870.m_planIndex + 1
  elseif L5_8875 == "Prev" then
    A0_8870.m_planIndex = A0_8870.m_planIndex - 1
  elseif L5_8875 == "Create" then
    if A0_8870.m_usable == 2 then
      A0_8870:Fabricate()
    end
  elseif L5_8875 == "Start" then
    A0_8870:GotoState("InUse")
    BroadcastEvent(A0_8870, "Used")
  end
  if A0_8870.m_planIndex > #A0_8870.m_fabPlans then
    A0_8870.m_planIndex = 1
  elseif A0_8870.m_planIndex < 1 then
    A0_8870.m_planIndex = #A0_8870.m_fabPlans
  end
  A0_8870:UpdateView()
end
function Ark_sshain_Fabricator.OnPropertyChange(A0_8876)
  A0_8876:Reset()
end
function Ark_sshain_Fabricator.OnReset(A0_8877)
  A0_8877:Reset()
end
function Ark_sshain_Fabricator.Event_UserCommand(A0_8878, A1_8879, A2_8880)
  if A0_8878:CheckDistanceToPlayer() <= A0_8878.m_fInteractDist then
    if A2_8880 == "g" then
      A0_8878.m_planIndex = A0_8878.m_planIndex + 1
    elseif A2_8880 == "t" then
      A0_8878.m_planIndex = A0_8878.m_planIndex - 1
    elseif A2_8880 == "e" and A0_8878.m_usable == 2 then
      A0_8878:Fabricate()
    end
    if A0_8878.m_planIndex > #A0_8878.m_fabPlans then
      A0_8878.m_planIndex = 1
    elseif A0_8878.m_planIndex < 1 then
      A0_8878.m_planIndex = #A0_8878.m_fabPlans
    end
    A0_8878:UpdateView()
  end
end
Ark_sshain_Fabricator.Server.InUse = {
  OnBeginState = function(A0_8881)
    A0_8881:UpdateDisplayData()
    A0_8881:SetDisplayMode("Open")
    A0_8881:UpdateView()
    A0_8881.m_usable = 2
    A0_8881:StartIdleTimer()
    BroadcastEvent(A0_8881, "InUse")
    A0_8881:Log("In use state begin")
  end,
  OnEndState = function(A0_8882)
    A0_8882:Log("In use state end")
  end
}
Ark_sshain_Fabricator.Server.Busy = {
  OnBeginState = function(A0_8883)
    A0_8883:SetDisplayMode("BusyStart", A0_8883.m_craftingDelay * 0.001)
    A0_8883.m_usable = 0
    BroadcastEvent(A0_8883, "Busy")
    A0_8883:Log("Busy state begin")
  end,
  OnEndState = function(A0_8884)
    A0_8884:Log("Busy state end")
  end
}
Ark_sshain_Fabricator.Server.Standby = {
  OnBeginState = function(A0_8885)
    local L1_8886, L2_8887, L3_8888, L4_8889, L5_8890
    L1_8886(L2_8887, L3_8888)
    A0_8885.m_usable = 1
    L1_8886(L2_8887, L3_8888)
    L1_8886(L2_8887, L3_8888)
    L1_8886(L2_8887, L3_8888)
    L1_8886(L2_8887, L3_8888)
    L5_8890 = L2_8887(L3_8888)
    for L4_8889, L5_8890 in L1_8886(L2_8887, L3_8888, L4_8889, L5_8890, L2_8887(L3_8888)) do
      System.Log(tostring(L4_8889) .. " " .. L5_8890)
    end
  end,
  OnEndState = function(A0_8891)
    A0_8891:Log("standby state end")
  end
}
Ark_sshain_Fabricator.Server.Destroyed = {
  OnBeginState = function(A0_8892)
    A0_8892.m_usable = 0
    BroadcastEvent(A0_8892, "Destroyed")
  end,
  OnEndState = function(A0_8893)
    local L1_8894
  end
}
Ark_sshain_Fabricator.FlowEvents.Inputs.ButtonPress = {
  Ark_sshain_Fabricator.Event_OnButtonPress,
  "string"
}
Ark_sshain_Fabricator.FlowEvents.Inputs.UserCommand = {
  Ark_sshain_Fabricator.Event_UserCommand,
  "string"
}
Ark_sshain_Fabricator.FlowEvents.Outputs.CurrentPlan = "string"
Ark_sshain_Fabricator.FlowEvents.Outputs.UserHelp = "string"
Ark_sshain_Fabricator.FlowEvents.Outputs.InUse = "bool"
Ark_sshain_Fabricator.FlowEvents.Outputs.Busy = "bool"
Ark_sshain_Fabricator.FlowEvents.Outputs.Standby = "bool"
Ark_sshain_Fabricator.FlowEvents.Outputs.Destroyed = "bool"
