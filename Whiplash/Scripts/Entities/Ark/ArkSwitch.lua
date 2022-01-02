Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkSwitch = {
  Properties = {
    object_Model = "",
    textDisplayName = "No Display Name Set",
    textDisplayNameLocked = "No Locked Display Name Set",
    textMessageTurnOn = "No Turn On Message Set",
    textMessageTurnOff = "No Turn Off Message Set",
    bDisallowGrenades = true,
    bRemoteManipulatable = 1,
    Sound = {
      audioTrigger_On = "",
      audioTrigger_Off = "",
      audioTrigger_Locked = ""
    },
    Animation = {anim_On = "", anim_Off = ""},
    Physics = {
      bPhysicalize = 1,
      bArticulated = 1,
      bPushableByPlayers = 1,
      bPushableByAI = 1,
      Density = -1,
      Mass = -1
    },
    Silhouette = {
      color_RGB = {
        x = 1,
        y = 1,
        z = 1
      },
      fAlpha = 0.25
    }
  },
  States = {"On", "Off"},
  PropertiesInstance = {
    bStartsOn = 0,
    bUsable = 1,
    bLocked = 0,
    bVerbose = 0,
    bPlayerCanLock = 0,
    bBreaksGloo = true
  },
  Editor = {
    IconOnTop = true,
    Icon = "switch.bmp",
    ShowBounds = 0,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkSwitch)
SetupCollisionFiltering(ArkSwitch)
ArkMakeSaveable(ArkSwitch)
ArkSwitchInstanceVars = {
  m_bIsAnimating = false,
  m_savedState = false,
  m_bScriptedUsable = 1,
  m_bUsable = 1,
  m_bInit = false,
  m_bVerbose = false,
  m_bLocked = false,
  m_referenceTable = false,
  m_bNeedsUsableBroadcast = false,
  m_usableMessage = "",
  m_audioIds = {}
}
function CreateArkSwitch(A0_4543)
  mergef(A0_4543, ArkSwitchInstanceVars, 1)
  A0_4543.m_referenceTable = ArkSwitchInstanceVars
end
function ArkSwitch.Init(A0_4544)
  if not A0_4544.m_bInit then
    A0_4544.m_bInit = true
    A0_4544:Activate(1)
    A0_4544:GotoState("")
    A0_4544.m_skipAnim = true
    if A0_4544.PropertiesInstance.bStartsOn == 1 then
      A0_4544:GotoState("On")
    else
      A0_4544:GotoState("Off")
    end
    if A0_4544.m_bLocked then
      A0_4544:SetDisplayName(A0_4544.Properties.textDisplayNameLocked)
    else
      A0_4544:SetDisplayName(A0_4544.Properties.textDisplayName)
    end
  end
end
function ArkSwitch.SetFromProperties(A0_4545)
  A0_4545:SetupModelAndPhysics()
  GetAudioIds(A0_4545.Properties.Sound, A0_4545.m_audioIds)
  A0_4545.m_bVerbose = A0_4545.PropertiesInstance.bVerbose == 1
  A0_4545.m_bScriptedUsable = A0_4545.PropertiesInstance.bUsable == 1
  A0_4545.m_bUsable = A0_4545.PropertiesInstance.bUsable == 1
  A0_4545.m_bLocked = A0_4545.PropertiesInstance.bLocked == 1
  A0_4545.m_bNeedsUsableBroadcast = false
end
function ArkSwitch.ResetUsability(A0_4546)
  A0_4546.m_bUsable = A0_4546.m_bScriptedUsable
  if A0_4546.m_bNeedsUsableBroadcast then
    A0_4546.m_bNeedsUsableBroadcast = false
    if A0_4546.m_bUsable then
      BroadcastEvent(A0_4546, "Enabled")
    else
      BroadcastEvent(A0_4546, "Disabled")
    end
  end
end
function ArkSwitch.GetUsable(A0_4547)
  local L1_4548, L2_4549, L3_4550
  L1_4548 = {}
  L2_4549 = {}
  L3_4550 = A0_4547.m_bUsable
  if L3_4550 then
    L3_4550 = A0_4547.m_bLocked
    if not L3_4550 then
      L2_4549.ActionType = "ScriptDefined"
    else
      L2_4549.ActionType = "ScriptDefined"
    end
    L3_4550 = A0_4547.m_usableMessage
    L2_4549.DisplayText = L3_4550
    L3_4550 = {}
    if A0_4547.PropertiesInstance.bPlayerCanLock == 1 and A0_4547:GetState() == "Off" and A0_4547.m_bLocked then
      L3_4550.ActionType = "ScriptDefined"
      L3_4550.DisplayText = "Unlock"
    elseif A0_4547.PropertiesInstance.bPlayerCanLock == 1 and A0_4547:GetState() == "Off" and not A0_4547.m_bLocked then
      L3_4550.ActionType = "ScriptDefined"
      L3_4550.DisplayText = "Lock"
    end
    L1_4548.Special = L3_4550
    L1_4548.Use = L2_4549
  end
  return L1_4548
end
function ArkSwitch.OnSpecialUsed(A0_4551, A1_4552, A2_4553)
  if A0_4551.PropertiesInstance.bPlayerCanLock == 1 then
    if A0_4551.m_bLocked then
      A0_4551:Event_Unlock()
    else
      A0_4551:Event_Lock()
    end
  end
end
function ArkSwitch.GetRemoteManipulationInteraction(A0_4554)
  local L1_4555, L2_4556
  L1_4555 = {}
  L2_4556 = A0_4554.m_bUsable
  if L2_4556 then
    L2_4556 = A0_4554.Properties
    L2_4556 = L2_4556.bRemoteManipulatable
    if L2_4556 == 1 then
      L2_4556 = A0_4554.m_bLocked
      if not L2_4556 then
        L1_4555.ActionType = "ScriptDefined"
        L2_4556 = A0_4554.m_usableMessage
        L1_4555.DisplayText = L2_4556
      end
    end
  end
  return L1_4555
end
function ArkSwitch.AttemptUsabilityUpdate(A0_4557, A1_4558)
  if A0_4557:GetAnimationTime(0, 0) == 1 and A0_4557:GetNumQueuedAnimations(0, 0) == 1 then
    BroadcastEvent(A0_4557, A1_4558)
    A0_4557.m_bIsAnimating = false
    A0_4557:ResetUsability()
  elseif not A0_4557.PropertiesInstance.bBreaksGloo and Ark.HandleGooOverlappingEntity(A0_4557.id, A0_4557.PropertiesInstance.bBreaksGloo) then
    A0_4557:SetAnimationSpeed(0, 0, 0)
  elseif not Ark.HandleGooOverlappingEntity(A0_4557.id, A0_4557.PropertiesInstance.bBreaksGloo) then
    A0_4557:SetAnimationSpeed(0, 0, 1)
  end
end
function ArkSwitch.Animate(A0_4559, A1_4560, A2_4561)
  A0_4559:Log("anim = " .. A1_4560)
  if A0_4559.m_skipAnim then
    A0_4559:StopAnimation(0, 0)
    A0_4559:StartAnimation(0, A1_4560)
    A0_4559:SetAnimationTime(0, 0, 1)
    A0_4559.m_skipAnim = false
  else
    A0_4559:StartAnimation(0, A1_4560)
    A0_4559.m_bUsable = false
    if A2_4561 ~= nil then
      A0_4559:ExecuteAudioTrigger(A2_4561, A0_4559:GetDefaultAuxAudioProxyID())
    end
    A0_4559.m_bIsAnimating = true
  end
end
function ArkSwitch.SetLightBrightness(A0_4562, A1_4563)
  local L2_4564, L3_4565, L4_4566, L5_4567, L6_4568
  L2_4564 = A0_4562.CountLinks
  L2_4564 = L2_4564(L3_4565)
  for L6_4568 = 0, L2_4564 - 1 do
    if A0_4562:GetLink(L6_4568) and A0_4562:GetLink(L6_4568).SetLightScale then
      A0_4562:GetLink(L6_4568):SetLightScale(A1_4563)
    end
  end
end
function ArkSwitch.OnUsed(A0_4569)
  if A0_4569.PropertiesInstance.bBreaksGloo or not Ark.HandleGooOverlappingEntity(A0_4569.id, A0_4569.PropertiesInstance.bBreaksGloo) then
    if not A0_4569.m_bLocked then
      if A0_4569:GetState() == "On" then
        A0_4569:GotoState("Off")
      else
        A0_4569:GotoState("On")
      end
      Ark.AddInstigationEvent(A0_4569.id, g_localActor.id, 5)
    else
      A0_4569:ExecuteAudioTrigger(A0_4569.m_audioIds.audioTrigger_Locked, A0_4569:GetDefaultAuxAudioProxyID())
    end
    BroadcastEvent(A0_4569, "Used")
  end
end
function ArkSwitch.OnRemoteManipulation(A0_4570)
  if A0_4570.PropertiesInstance.bBreaksGloo or not Ark.HandleGooOverlappingEntity(A0_4570.id, A0_4570.PropertiesInstance.bBreaksGloo) then
    if A0_4570:GetState() == "On" then
      A0_4570:GotoState("Off")
    else
      A0_4570:GotoState("On")
    end
    BroadcastEvent(A0_4570, "Used")
  end
end
function ArkSwitch.OnPostLoad(A0_4571)
  A0_4571:Activate(1)
  A0_4571:GotoState("")
  A0_4571.m_skipAnim = true
  A0_4571:GotoState(A0_4571.m_savedState)
end
function ArkSwitch.OnPropertyChange(A0_4572)
  A0_4572:Log("OnPropertyChange")
  A0_4572:SetFromProperties()
  A0_4572:Init()
end
function ArkSwitch.OnReset(A0_4573)
  A0_4573.m_bInit = false
  A0_4573:SetFromProperties()
  A0_4573:Init()
  A0_4573:Log("OnReset")
end
function ArkSwitch.OnSpawn(A0_4574)
  CreateArkSwitch(A0_4574)
  A0_4574:SetFromProperties()
  A0_4574:Init()
  A0_4574:Log("OnSpawn")
end
function ArkSwitch.Event_On(A0_4575)
  if A0_4575.PropertiesInstance.bBreaksGloo or not Ark.HandleGooOverlappingEntity(A0_4575.id, A0_4575.PropertiesInstance.bBreaksGloo) then
    A0_4575:Log("Event_On")
    A0_4575:GotoState("On")
  end
end
function ArkSwitch.Event_Off(A0_4576)
  if A0_4576.PropertiesInstance.bBreaksGloo or not Ark.HandleGooOverlappingEntity(A0_4576.id, A0_4576.PropertiesInstance.bBreaksGloo) then
    A0_4576:Log("Event_Off")
    A0_4576:GotoState("Off")
  end
end
function ArkSwitch.Event_Lock(A0_4577)
  A0_4577:Log("Event_Lock")
  A0_4577.m_bLocked = true
  A0_4577:SetDisplayName(A0_4577.Properties.textDisplayNameLocked)
  BroadcastEvent(A0_4577, "Locked")
end
function ArkSwitch.Event_Unlock(A0_4578)
  A0_4578:Log("Event_Unlock")
  A0_4578.m_bLocked = false
  A0_4578:SetDisplayName(A0_4578.Properties.textDisplayName)
  BroadcastEvent(A0_4578, "Unlocked")
end
function ArkSwitch.Event_Enable(A0_4579)
  A0_4579:Log("Event_Enable")
  A0_4579.m_bScriptedUsable = true
  if not A0_4579.m_bIsAnimating then
    A0_4579.m_bUsable = true
    BroadcastEvent(A0_4579, "Enabled")
  else
    A0_4579.m_bNeedsUsableBroadcast = true
  end
end
function ArkSwitch.Event_Disable(A0_4580)
  A0_4580:Log("Event_Disable")
  A0_4580.m_bScriptedUsable = false
  if not A0_4580.m_bIsAnimating then
    A0_4580.m_bUsable = false
    BroadcastEvent(A0_4580, "Disabled")
  else
    A0_4580.m_bNeedsUsableBroadcast = true
  end
end
function ArkSwitch.Event_Hide(A0_4581)
  A0_4581:Hide(1)
  A0_4581:ActivateOutput("Hide", true)
end
function ArkSwitch.Event_UnHide(A0_4582)
  A0_4582:Hide(0)
  A0_4582:ActivateOutput("UnHide", true)
end
ArkSwitch.On = {
  OnStartLevel = function(A0_4583)
    A0_4583:OnStartLevel()
  end,
  OnBeginState = function(A0_4584)
    A0_4584:Log("On state begin")
    A0_4584:Activate(1)
    A0_4584:Animate(A0_4584.Properties.Animation.anim_On, A0_4584.m_audioIds.audioTrigger_On)
    A0_4584:SetLightBrightness(1)
    A0_4584.m_usableMessage = A0_4584.Properties.textMessageTurnOff
  end,
  OnUpdate = function(A0_4585)
    A0_4585:Log("On state OnUpdate")
    if A0_4585.m_bIsAnimating then
      A0_4585:AttemptUsabilityUpdate("On")
    else
      A0_4585:Activate(0)
    end
  end,
  OnEndState = function(A0_4586)
    A0_4586:Log("On state end")
  end
}
ArkSwitch.Off = {
  OnStartLevel = function(A0_4587)
    A0_4587:OnStartLevel()
  end,
  OnBeginState = function(A0_4588)
    A0_4588:Log("Off state begin")
    A0_4588:Activate(1)
    A0_4588:Animate(A0_4588.Properties.Animation.anim_Off, A0_4588.m_audioIds.audioTrigger_Off)
    A0_4588:SetLightBrightness(0)
    A0_4588.m_usableMessage = A0_4588.Properties.textMessageTurnOn
  end,
  OnUpdate = function(A0_4589)
    A0_4589:Log("Off state OnUpdate")
    if A0_4589.m_bIsAnimating then
      A0_4589:AttemptUsabilityUpdate("Off")
    else
      A0_4589:Activate(0)
    end
  end,
  OnEndState = function(A0_4590)
    A0_4590:Log("Off state end")
  end
}
ArkSwitch.FlowEvents = {
  Inputs = {
    Off = {
      ArkSwitch.Event_Off,
      "bool"
    },
    On = {
      ArkSwitch.Event_On,
      "bool"
    },
    Enable = {
      ArkSwitch.Event_Enable,
      "bool"
    },
    Disable = {
      ArkSwitch.Event_Disable,
      "bool"
    },
    Lock = {
      ArkSwitch.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkSwitch.Event_Unlock,
      "bool"
    },
    Hide = {
      ArkSwitch.Event_Hide,
      "bool"
    },
    UnHide = {
      ArkSwitch.Event_UnHide,
      "bool"
    }
  },
  Outputs = {
    Off = "bool",
    On = "bool",
    Enabled = "bool",
    Disabled = "bool",
    Locked = "bool",
    Unlocked = "bool",
    Hide = "bool",
    UnHide = "bool",
    Used = "bool"
  }
}
