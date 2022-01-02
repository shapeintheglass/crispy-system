Script.ReloadScript("scripts/Utils/EntityUtils.lua")
GeomEntity = {
  Client = {},
  Server = {},
  Editor = {
    Icon = "physicsobject.bmp",
    IconOnTop = 1
  },
  Properties = {
    bCollisionEnabled = 1,
    bCanTriggerAreas = 1,
    bDisallowGrenades = false,
    Disrupt = {
      disruptionProfile_Profile = "",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = ""
    }
  }
}
SetupCollisionFiltering(GeomEntity)
function GeomEntity.Server.OnInit(A0_4747)
  A0_4747:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  if A0_4747.Properties.bCanTriggerAreas == 1 then
    A0_4747:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_4747:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
function GeomEntity.Client.OnInit(A0_4748)
  A0_4748:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  if A0_4748.Properties.bCanTriggerAreas == 1 then
    A0_4748:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_4748:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
function GeomEntity.Server.OnStartGame(A0_4749)
  A0_4749:UpdateCollision()
end
function GeomEntity.Client.OnPhysicsBreak(A0_4750, A1_4751, A2_4752, A3_4753)
  A0_4750:ActivateOutput("Break", A2_4752 + 1)
end
function GeomEntity.Event_Remove(A0_4754)
  A0_4754:DrawSlot(0, 0)
  A0_4754:DestroyPhysics()
  A0_4754:ActivateOutput("Remove", true)
end
function GeomEntity.Event_Hide(A0_4755)
  A0_4755:Hide(1)
  A0_4755:ActivateOutput("Hide", true)
end
function GeomEntity.Event_UnHide(A0_4756)
  A0_4756:Hide(0)
  A0_4756:ActivateOutput("UnHide", true)
end
function GeomEntity.OnPropertyChange(A0_4757)
  A0_4757:OnReset()
  A0_4757:UpdateCollision()
end
function GeomEntity.OnEditorSetGameMode(A0_4758, A1_4759)
  if A1_4759 ~= true then
    A0_4758:UpdateCollision()
  end
end
function GeomEntity.UpdateCollision(A0_4760)
  if not A0_4760:IsHidden() then
    A0_4760:EnablePhysics(A0_4760.Properties.bCollisionEnabled)
  end
  ApplyCollisionFiltering(A0_4760, GetCollisionFiltering(A0_4760))
end
GeomEntity.FlowEvents = {
  Inputs = {
    Hide = {
      GeomEntity.Event_Hide,
      "bool"
    },
    UnHide = {
      GeomEntity.Event_UnHide,
      "bool"
    },
    Remove = {
      GeomEntity.Event_Remove,
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
MakeTargetableByAI(GeomEntity)
MakeKillable(GeomEntity)
MakeRenderProxyOptions(GeomEntity)
