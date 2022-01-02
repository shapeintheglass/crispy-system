Script.ReloadScript("Scripts/Entities/Ark/ArkContainer.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkKeypad.lua")
ArkKeypadContainer = {
  Properties = {
    archetype_KeypadArchetype = "",
    KeypadBoneName = "",
    textDisplayNameLocked = "@i_container_locked"
  },
  PropertiesInstance = {
    keycode_UnlockCode = "",
    ability_HackRequirementOverride = "",
    bStartsLocked = 0
  },
  States = {"Locked", "Unlocked"}
}
ArkKeypadContainerInstanceVars = {
  m_bLocked = false,
  m_keypad = false,
  m_savedState = false
}
ArkMakeDerivedEntityOverride(ArkKeypadContainer, ArkContainer, true)
ArkMakeLockable(ArkKeypadContainer)
function CreateKeypadContainer(A0_4102)
  mergef(A0_4102, ArkKeypadContainerInstanceVars, 1)
  A0_4102.m_referenceTable = ArkKeypadContainerInstanceVars
end
function ArkKeypadContainer.Init(A0_4103, A1_4104)
  A0_4103:Log("Init()")
  if not A0_4103.m_bInit then
    A0_4103:Log("ArkKeypadContainer:Init")
    A0_4103.m_bInit = true
    A0_4103:SetFromProperties()
    if A0_4103.Properties.bCanTriggerAreas == 1 then
      A0_4103:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
    else
      A0_4103:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
    end
    if A1_4104 then
      CryAction.CreateGameObjectForEntity(A0_4103.id)
      A0_4103:InitInventory()
      A0_4103:InitKeypad()
      A0_4103:SpawnLootFromTable()
      if A0_4103.m_bLocked then
        A0_4103:GotoState("Locked")
      else
        A0_4103:GotoState("Unlocked")
      end
    end
  end
end
function ArkKeypadContainer.SetFromProperties(A0_4105)
  A0_4105:Log("SetFromProperties()")
  A0_4105.m_bLocked = A0_4105.PropertiesInstance.bStartsLocked == 1
  ArkContainer.SetFromProperties(A0_4105)
end
function ArkKeypadContainer.GetUsable(A0_4106)
  local L1_4107, L2_4108, L3_4109
  L1_4107 = {}
  L2_4108 = A0_4106.m_bUsable
  if L2_4108 then
    L2_4108 = A0_4106.m_bLocked
    if not L2_4108 then
      L2_4108 = {}
      L2_4108.ActionType = "ScriptDefined"
      L3_4109 = A0_4106.Properties
      L3_4109 = L3_4109.textDisplayText
      L2_4108.DisplayText = L3_4109
      L1_4107.Loot = L2_4108
    end
    L2_4108 = A0_4106.Properties
    L2_4108 = L2_4108.Physics
    L2_4108 = L2_4108.bRigidBody
    if L2_4108 == 1 then
      L2_4108 = A0_4106.Properties
      L2_4108 = L2_4108.ability_CarryRequirement
      if L2_4108 then
        L3_4109 = {}
        L3_4109.ActionType = "Carry"
        L1_4107["Hold Use"] = L3_4109
      end
    end
  end
  return L1_4107
end
function ArkKeypadContainer.InitKeypad(A0_4110)
  local L1_4111, L2_4112, L3_4113, L4_4114, L5_4115, L6_4116, L7_4117
  L1_4111 = A0_4110.Properties
  L1_4111 = L1_4111.archetype_KeypadArchetype
  L2_4112 = "ArkKeypad"
  L3_4113 = System
  L3_4113 = L3_4113.GetEntityLayer
  L4_4114 = A0_4110.id
  L3_4113 = L3_4113(L4_4114)
  L4_4114 = A0_4110.Properties
  L4_4114 = L4_4114.KeypadBoneName
  L6_4116 = A0_4110
  L5_4115 = A0_4110.GetBonePos
  L7_4117 = L4_4114
  L5_4115 = L5_4115(L6_4116, L7_4117)
  L7_4117 = A0_4110
  L6_4116 = A0_4110.GetBoneDir
  L6_4116 = L6_4116(L7_4117, A0_4110.Properties.KeypadBoneName)
  L7_4117 = A0_4110.GetBoneUp
  L7_4117 = L7_4117(A0_4110, L4_4114)
  A0_4110.m_keypad = A0_4110:SpawnAccessController(L1_4111, L2_4112, L3_4113, L5_4115, L6_4116, L7_4117)
  A0_4110.m_keypad:InitDoorAccessController(A0_4110)
end
function ArkKeypadContainer.DoFunctionOnKeypad(A0_4118, A1_4119, A2_4120, A3_4121)
  A0_4118:ControllerFunction(A0_4118.m_keypad, A1_4119, A2_4120, A3_4121)
end
function ArkKeypadContainer.ControllerFunction(A0_4122, A1_4123, A2_4124, A3_4125, A4_4126)
  local L5_4127
  if A1_4123 then
    L5_4127 = A1_4123[A2_4124]
    L5_4127(A1_4123, A3_4125, A4_4126)
  end
end
function ArkKeypadContainer.OnRemoteManipulation(A0_4128)
  if A0_4128:GetState() == "Unlocked" then
    A0_4128:OpenExternalInventory()
  end
end
function ArkKeypadContainer.Event_Lock(A0_4129, A1_4130)
  A0_4129:Log("ArkKeypadContainer:Event_Lock()")
  A0_4129:GotoState("Locked")
  BroadcastEvent(A0_4129, "Locked")
end
function ArkKeypadContainer.Event_Unlock(A0_4131, A1_4132)
  A0_4131:Log("ArkKeypadContainer:Event_Unlock()")
  A0_4131:GotoState("Unlocked")
  BroadcastEvent(A0_4131, "Unlocked")
end
function ArkKeypadContainer.OnPostLoad(A0_4133)
  A0_4133:Log("OnPostLoad")
  A0_4133:GotoState("")
  A0_4133:SetupModelAndPhysics()
  A0_4133:GotoState(A0_4133.m_savedState)
end
function ArkKeypadContainer.OnReset(A0_4134)
  A0_4134:GotoState("")
  A0_4134.m_keypad = false
  ArkContainer.OnReset(A0_4134)
end
function ArkKeypadContainer.OnSpawn(A0_4135)
  CreateKeypadContainer(A0_4135)
  A0_4135:Log("OnSpawn")
end
ArkKeypadContainer.Locked = {
  OnStartLevel = function(A0_4136)
    local L1_4137
  end,
  OnBeginState = function(A0_4138)
    A0_4138:Log("Locked state begin")
    A0_4138.m_bLocked = true
    A0_4138.m_bUsable = false
    A0_4138:SetDisplayName(A0_4138.Properties.textDisplayNameLocked)
    A0_4138:DoFunctionOnKeypad("Event_Lock")
    BroadcastEvent(A0_4138, "Locked")
  end,
  OnEndState = function(A0_4139)
    A0_4139:Log("Locked state end")
  end
}
ArkKeypadContainer.Unlocked = {
  OnStartLevel = function(A0_4140)
    local L1_4141
  end,
  OnBeginState = function(A0_4142)
    A0_4142:Log("Unlocked state begin")
    A0_4142.m_bLocked = false
    A0_4142.m_bUsable = true
    A0_4142:SetDisplayName(A0_4142.Properties.textDisplayName)
    A0_4142:DoFunctionOnKeypad("Event_Unlock")
    BroadcastEvent(A0_4142, "Unlocked")
  end,
  OnEndState = function(A0_4143)
    A0_4143:Log("Unlocked state end")
  end
}
ArkKeypadContainer.FlowEvents = {
  Inputs = {
    Lock = {
      ArkKeypadContainer.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkKeypadContainer.Event_Unlock,
      "bool"
    }
  },
  Outputs = {
    OnOpen = "bool",
    OnQuickLooted = "bool",
    Locked = "bool",
    Unlocked = "bool"
  }
}
