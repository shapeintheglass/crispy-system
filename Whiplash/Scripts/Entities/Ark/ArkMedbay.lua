Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkMedbay = {
  Properties = {
    object_Model = "",
    sEnabledMessage = "",
    sDisabledMessage = "",
    ei_ObjectMapIcon = "",
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
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
  States = {"Enabled", "Disabled"},
  PropertiesInstance = {
    bUsable = 1,
    bStartsEnabled = 1,
    bVerbose = 0
  },
  Editor = {Icon = "health.bmp", IconOnTop = 1}
}
MedbayInstanceVars = {
  m_bVerbose = false,
  m_bEnabled = false,
  m_bUsable = false,
  m_referenceTable = false,
  m_usableMessage = ""
}
GetArkEntityUtils(ArkMedbay)
function CreateMedbay(A0_4280)
  mergef(A0_4280, MedbayInstanceVars, 1)
  A0_4280.m_referenceTable = MedbayInstanceVars
end
function ArkMedbay.Init(A0_4281)
  A0_4281:SetFromProperties()
  if A0_4281.m_bEnabled then
    A0_4281:GotoState("Enabled")
  else
    A0_4281:GotoState("Disabled")
  end
end
function ArkMedbay.SetFromProperties(A0_4282)
  A0_4282:Log("Setting from properties")
  A0_4282.m_bVerbose = A0_4282.PropertiesInstance.bVerbose == 1
  A0_4282.m_bEnabled = A0_4282.PropertiesInstance.bStartsEnabled == 1
  A0_4282.m_bUsable = A0_4282.PropertiesInstance.bUsable == 1
  A0_4282:SetupModelAndPhysics()
end
function ArkMedbay.GetUsable(A0_4283)
  local L2_4284
  L2_4284 = {}
  if A0_4283.m_bUsable then
    ({}).ActionType = "ScriptDefined"
    L2_4284.Use, ({}).DisplayText = {}, "@use_object"
  end
  return L2_4284
end
function ArkMedbay.GetRemoteManipulationInteraction(A0_4285)
  local L1_4286
  L1_4286 = {}
  L1_4286.ActionType = "ScriptDefined"
  L1_4286.DisplayText = "@use_object"
  L1_4286.CouldChange = false
  return L1_4286
end
function ArkMedbay.Event_Enable(A0_4287)
  A0_4287:GotoState("Enabled")
end
function ArkMedbay.Event_Disable(A0_4288)
  A0_4288:GotoState("Disabled")
end
function ArkMedbay.OnUsed(A0_4289, A1_4290)
  A0_4289:Log("OnUsed")
  BroadcastEvent(A0_4289, "Used")
end
function ArkMedbay.OnRemoteManipulation(A0_4291, A1_4292)
  A0_4291:Log("OnUsed")
  BroadcastEvent(A0_4291, "Used")
end
function ArkMedbay.OnReset(A0_4293)
  A0_4293:Log("OnReset")
  A0_4293:SetFromProperties()
end
function ArkMedbay.OnSpawn(A0_4294)
  CreateMedbay(A0_4294)
  A0_4294:Log("OnSpawn")
end
ArkMedbay.Enabled = {
  OnStartLevel = function(A0_4295)
    A0_4295:OnStartLevel()
  end,
  OnBeginState = function(A0_4296)
    A0_4296:Log("Enabled state begin")
    A0_4296.m_bEnabled = true
    A0_4296.m_bUsable = A0_4296.PropertiesInstance.bUsable == 1
    A0_4296.m_usableMessage = A0_4296.Properties.sEnabledMessage
    A0_4296:SetDisplayName(A0_4296.m_usableMessage)
    BroadcastEvent(A0_4296, "Enabled")
  end,
  OnEndState = function(A0_4297)
    A0_4297:Log("Enabled state end")
  end
}
ArkMedbay.Disabled = {
  OnStartLevel = function(A0_4298)
    A0_4298:OnStartLevel()
  end,
  OnBeginState = function(A0_4299)
    A0_4299:Log("Disabled state begin")
    A0_4299.m_bEnabled = false
    A0_4299.m_bUsable = A0_4299.PropertiesInstance.bUsable == 1
    A0_4299.m_usableMessage = A0_4299.Properties.sDisabledMessage
    A0_4299:SetDisplayName(A0_4299.m_usableMessage)
    BroadcastEvent(A0_4299, "Disabled")
  end,
  OnEndState = function(A0_4300)
    A0_4300:Log("Disabled state end")
  end
}
ArkMedbay.FlowEvents = {
  Inputs = {
    Enable = {
      ArkMedbay.Event_Enable,
      "bool"
    },
    Disable = {
      ArkMedbay.Event_Disable,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    Enabled = "bool",
    Disabled = "bool"
  }
}
