local L0_7509
L0_7509 = Script
L0_7509 = L0_7509.ReloadScript
L0_7509("scripts/Utils/EntityUtils.lua")
L0_7509 = {}
L0_7509.Properties = {
  soclasses_SmartObjectClass = "",
  bMissionCritical = 0,
  bCanTriggerAreas = 0,
  DmgFactorWhenCollidingAI = 1,
  object_Model = "",
  Physics = {
    bPhysicalize = 1,
    bRigidBody = 1,
    bPushableByPlayers = 1,
    bPushableByAI = 1,
    Density = -1,
    Mass = -1
  },
  MultiplayerOptions = {bNetworked = 0},
  bExcludeCover = 0,
  bIsMimicable = true
}
L0_7509.Client = {}
L0_7509.Server = {}
L0_7509._Flags = {}
L0_7509.Editor = {
  Icon = "physicsobject.bmp",
  IconOnTop = 1
}
BasicEntity = L0_7509
L0_7509 = {}
L0_7509.bPhysicalize = 1
L0_7509.bPushableByPlayers = 0
L0_7509.bPushableByAI = 0
L0_7509.Density = 0
L0_7509.Mass = 0
function BasicEntity.OnSpawn(A0_7510)
  if A0_7510.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_7510:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  A0_7510.bRigidBodyActive = 1
  A0_7510:SetFromProperties()
end
function BasicEntity.SetFromProperties(A0_7511)
  local L1_7512
  L1_7512 = A0_7511.Properties
  if L1_7512.object_Model == "" then
    return
  end
  A0_7511.freezable = tonumber(L1_7512.bFreezable) ~= 0
  A0_7511:SetupModel()
  if L1_7512.bAutoGenAIHidePts == 1 then
    A0_7511:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    A0_7511:SetFlags(ENTITY_FLAG_AI_HIDEABLE, 2)
  end
  if A0_7511.Properties.bCanTriggerAreas == 1 then
    A0_7511:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    A0_7511:SetFlags(ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
end
function BasicEntity.SetupModel(A0_7513)
  local L1_7514
  L1_7514 = A0_7513.Properties
  A0_7513:LoadObject(0, L1_7514.object_Model)
  if L1_7514.Physics.bPhysicalize == 1 then
    A0_7513:PhysicalizeThis()
  end
end
function BasicEntity.IsRigidBody(A0_7515)
  local L1_7516
  L1_7516 = A0_7515.Properties
  if L1_7516.Mass == 0 or L1_7516.Density == 0 or L1_7516.bPhysicalize ~= 1 then
    return false
  end
  return true
end
function BasicEntity.PhysicalizeThis(A0_7517)
  local L1_7518
  L1_7518 = A0_7517.Properties
  L1_7518 = L1_7518.Physics
  if CryAction.IsImmersivenessEnabled() == 0 then
    L1_7518 = _UPVALUE0_
  end
  EntityCommon.PhysicalizeRigid(A0_7517, 0, L1_7518, A0_7517.bRigidBodyActive)
end
function BasicEntity.OnPropertyChange(A0_7519)
  if A0_7519.__usable and (A0_7519.__origUsable ~= A0_7519.Properties.bUsable or A0_7519.__origPickable ~= A0_7519.Properties.bPickable) then
    A0_7519.__usable = nil
  end
  A0_7519:SetFromProperties()
end
function BasicEntity.OnReset(A0_7520)
  A0_7520:ResetOnUsed()
  A0_7520:DrawSlot(0, 1)
  if A0_7520.Properties.Physics.bPhysicalize == 1 then
    A0_7520:PhysicalizeThis()
    A0_7520:AwakePhysics(0)
  end
end
function BasicEntity.Event_Remove(A0_7521)
  A0_7521:DrawSlot(0, 0)
  A0_7521:DestroyPhysics()
  A0_7521:ActivateOutput("Remove", true)
end
function BasicEntity.Event_Hide(A0_7522)
  A0_7522:Hide(1)
  A0_7522:ActivateOutput("Hide", true)
  if CurrentCinematicName then
    Log("%.3f %s %s : Event_Hide", _time, CurrentCinematicName, A0_7522:GetName())
  end
end
function BasicEntity.Event_UnHide(A0_7523)
  A0_7523:Hide(0)
  A0_7523:ActivateOutput("UnHide", true)
  if CurrentCinematicName then
    Log("%.3f %s %s : Event_UnHide", _time, CurrentCinematicName, A0_7523:GetName())
  end
end
function BasicEntity.Event_Ragdollize(A0_7524)
  A0_7524:RagDollize(0)
  A0_7524:ActivateOutput("Ragdollized", true)
  if A0_7524.Event_RagdollizeDerived then
    A0_7524:Event_RagdollizeDerived()
  end
end
function BasicEntity.Client.OnPhysicsBreak(A0_7525, A1_7526, A2_7527, A3_7528)
  A0_7525:ActivateOutput("Break", A2_7527 + 1)
end
function BasicEntity.IsUsable(A0_7529, A1_7530)
  if not A0_7529.__usable then
    A0_7529.__usable = A0_7529.Properties.bUsable
  end
  if System.IsMultiplayer() and System.IsMultiplayer() ~= 0 then
    return 0
  end
  return 2 or 0
end
BasicEntity.FlowEvents = {
  Inputs = {
    Used = {
      BasicEntity.Event_Used,
      "bool"
    },
    EnableUsable = {
      BasicEntity.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      BasicEntity.Event_DisableUsable,
      "bool"
    },
    Hide = {
      BasicEntity.Event_Hide,
      "bool"
    },
    UnHide = {
      BasicEntity.Event_UnHide,
      "bool"
    },
    Remove = {
      BasicEntity.Event_Remove,
      "bool"
    },
    Ragdollize = {
      BasicEntity.Event_Ragdollize,
      "bool"
    }
  },
  Outputs = {
    Used = "bool",
    EnableUsable = "bool",
    DisableUsable = "bool",
    Activate = "bool",
    Hide = "bool",
    UnHide = "bool",
    Remove = "bool",
    Ragdollized = "bool",
    Break = "int"
  }
}
MakeUsable(BasicEntity)
MakePickable(BasicEntity)
MakeTargetableByAI(BasicEntity)
MakeKillable(BasicEntity)
AddHeavyObjectProperty(BasicEntity)
SetupCollisionFiltering(BasicEntity)
