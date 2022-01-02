InteractiveObjectEx = {
  type = "InteractiveObjectEx",
  Properties = {
    Interaction = {
      object_Model = "Objects/prototype/ElevatorDoors/AnimatedElevatorDoors.cga",
      Interaction = "OpenElevatorDoor",
      InteractionRadius = 1.5,
      InteractionAngle = 70,
      bRemoveDecalsOnUse = 0,
      bStartInteractionOnExplosion = 0
    },
    Physics = {bRigidBody = 0}
  },
  Editor = {
    Icon = "animobject.bmp",
    IconOnTop = 1
  },
  userId = NULL_ENTITY
}
function InteractiveObjectEx.OnInit(A0_8033)
  A0_8033:OnReset()
end
function InteractiveObjectEx.OnPropertyChange(A0_8034)
  A0_8034:OnReset()
end
function InteractiveObjectEx.OnReset(A0_8035)
  local L1_8036
  L1_8036 = A0_8035.Properties
  L1_8036 = L1_8036.bUsable
  A0_8035.bUsable = L1_8036
end
function InteractiveObjectEx.OnSave(A0_8037, A1_8038)
  local L2_8039
  L2_8039 = A0_8037.bUsable
  A1_8038.bUsable = L2_8039
  L2_8039 = A0_8037.userId
  A1_8038.userId = L2_8039
end
function InteractiveObjectEx.OnLoad(A0_8040, A1_8041)
  local L2_8042
  L2_8042 = A1_8041.bUsable
  A0_8040.bUsable = L2_8042
  L2_8042 = A1_8041.userId
  A0_8040.userId = L2_8042
end
function InteractiveObjectEx.OnShutDown(A0_8043)
  local L1_8044
end
function InteractiveObjectEx.Event_Use(A0_8045)
  A0_8045.interactiveObject:Use(A0_8045.userId)
  A0_8045:ActivateOutput("Started", true)
end
function InteractiveObjectEx.Event_UserId(A0_8046, A1_8047, A2_8048)
  A0_8046.userId = A2_8048.id
end
function InteractiveObjectEx.Event_Hide(A0_8049)
  A0_8049:Hide(1)
  A0_8049:ActivateOutput("Hide", true)
end
function InteractiveObjectEx.Event_UnHide(A0_8050)
  A0_8050:Hide(0)
  A0_8050:ActivateOutput("UnHide", true)
end
function InteractiveObjectEx.Event_EnableUsable(A0_8051)
  A0_8051.bUsable = 1
  A0_8051:ActivateOutput("Enabled", true)
end
function InteractiveObjectEx.Event_DisableUsable(A0_8052)
  A0_8052.bUsable = 0
  A0_8052:ActivateOutput("Disabled", true)
end
function InteractiveObjectEx.Event_Reset(A0_8053)
  Game.ResetEntity(A0_8053.id)
  A0_8053:ActivateOutput("Reset", true)
end
InteractiveObjectEx.FlowEvents = {
  Inputs = {
    Use = {
      InteractiveObjectEx.Event_Use,
      "bool"
    },
    UserId = {
      InteractiveObjectEx.Event_UserId,
      "entity"
    },
    Hide = {
      InteractiveObjectEx.Event_Hide,
      "bool"
    },
    UnHide = {
      InteractiveObjectEx.Event_UnHide,
      "bool"
    },
    Enable = {
      InteractiveObjectEx.Event_EnableUsable,
      "bool"
    },
    Disable = {
      InteractiveObjectEx.Event_DisableUsable,
      "bool"
    },
    Reset = {
      InteractiveObjectEx.Event_Reset,
      "bool"
    }
  },
  Outputs = {
    Started = "bool",
    Finished = "bool",
    Aborted = "bool",
    Enabled = "bool",
    Disabled = "bool",
    Hide = "bool",
    UnHide = "bool",
    Reset = "bool",
    UsedBy = "entity"
  }
}
MakeUsable(InteractiveObjectEx)
function InteractiveObjectEx.IsUsable(A0_8054, A1_8055)
  if A0_8054.bUsable ~= 0 then
    return A0_8054.interactiveObject:CanUse(A1_8055.id)
  else
    return 0
  end
end
function InteractiveObjectEx.OnUsed(A0_8056, A1_8057, A2_8058)
  A0_8056.interactiveObject:Use(A1_8057.id)
  A0_8056:ActivateOutput("UsedBy", A1_8057.id)
  A0_8056:ActivateOutput("Started", true)
  BroadcastEvent(A0_8056, "Used")
end
function InteractiveObjectEx.StopUse(A0_8059, A1_8060, A2_8061)
  A0_8059.interactiveObject:StopUse(A1_8060)
  A0_8059:ActivateOutput("Finished", true)
end
function InteractiveObjectEx.AbortUse(A0_8062, A1_8063)
  A0_8062.interactiveObject:AbortUse()
  A0_8062:ActivateOutput("Aborted", true)
end
