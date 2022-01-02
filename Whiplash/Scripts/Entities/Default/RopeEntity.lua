Script.ReloadScript("scripts/Utils/EntityUtils.lua")
RopeEntity = {
  Properties = {
    MultiplayerOptions = {bNetworked = 0}
  }
}
function RopeEntity.OnSpawn(A0_4761)
  if A0_4761.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_4761:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
end
function RopeEntity.OnPhysicsBreak(A0_4762, A1_4763, A2_4764, A3_4765)
  A0_4762:ActivateOutput("Break", A2_4764 + 1)
end
function RopeEntity.Event_Remove(A0_4766)
  A0_4766:DrawSlot(0, 0)
  A0_4766:DestroyPhysics()
  A0_4766:ActivateOutput("Remove", true)
end
function RopeEntity.Event_Hide(A0_4767)
  A0_4767:Hide(1)
  A0_4767:ActivateOutput("Hide", true)
end
function RopeEntity.Event_UnHide(A0_4768)
  A0_4768:Hide(0)
  A0_4768:ActivateOutput("UnHide", true)
end
function RopeEntity.Event_BreakStart(A0_4769, A1_4770, A2_4771, A3_4772)
  local L4_4773
  L4_4773 = {}
  L4_4773.entity_name_1 = "#unattached"
  A0_4769:SetPhysicParams(PHYSICPARAM_ROPE, L4_4773)
end
function RopeEntity.Event_BreakEnd(A0_4774, A1_4775, A2_4776, A3_4777)
  local L4_4778
  L4_4778 = {}
  L4_4778.entity_name_2 = "#unattached"
  A0_4774:SetPhysicParams(PHYSICPARAM_ROPE, L4_4778)
end
function RopeEntity.Event_BreakDist(A0_4779, A1_4780, A2_4781)
  local L3_4782
  L3_4782 = {}
  L3_4782.break_point = A2_4781
  A0_4779:SetPhysicParams(PHYSICPARAM_ROPE, L3_4782)
end
function RopeEntity.Event_Disable(A0_4783)
  local L1_4784
  L1_4784 = {}
  L1_4784.bDisabled = 1
  A0_4783:SetPhysicParams(PHYSICPARAM_ROPE, L1_4784)
end
function RopeEntity.Event_Enable(A0_4785)
  local L1_4786
  L1_4786 = {}
  L1_4786.bDisabled = 0
  A0_4785:SetPhysicParams(PHYSICPARAM_ROPE, L1_4786)
end
RopeEntity.FlowEvents = {
  Inputs = {
    Hide = {
      RopeEntity.Event_Hide,
      "bool"
    },
    UnHide = {
      RopeEntity.Event_UnHide,
      "bool"
    },
    Remove = {
      RopeEntity.Event_Remove,
      "bool"
    },
    BreakStart = {
      RopeEntity.Event_BreakStart,
      "bool"
    },
    BreakEnd = {
      RopeEntity.Event_BreakEnd,
      "bool"
    },
    BreakDist = {
      RopeEntity.Event_BreakDist,
      "float"
    },
    Disable = {
      RopeEntity.Event_Disable,
      "bool"
    },
    Enable = {
      RopeEntity.Event_Enable,
      "bool"
    }
  },
  Outputs = {
    Hide = "bool",
    UnHide = "bool",
    Remove = "bool",
    Break = "int"
  }
}
