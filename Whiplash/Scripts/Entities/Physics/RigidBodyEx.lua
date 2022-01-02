local L0_7938
L0_7938 = Script
L0_7938 = L0_7938.ReloadScript
L0_7938("Scripts/Entities/Physics/BasicEntity.lua")
L0_7938 = {}
L0_7938.Properties = {
  bUseSafeCarry = false,
  textDisplayName = "Name Not Set",
  bSerialize = 0,
  bDamagesPlayerOnCollisionSP = 0,
  ability_CarryRequirement = "",
  bHideDisplayName = 0,
  bGooCannotAttachInGravity = 0,
  ei_TransparencyMode = 0,
  carryDirection = {
    x = 0,
    y = 0,
    z = 0
  },
  carryHeightOffset = 0,
  carryForwardOffset = 0,
  vector_throwParticleOffset = {
    x = 0,
    y = 0,
    z = 0
  },
  vector_ThrowAngularImpulse = {
    x = -10,
    y = 0,
    z = 0
  },
  bIsMimicable = 1,
  bIsCarryable = 1,
  bInteractiveCollision = 0,
  Sound = {
    audioTrigger_Carry = "",
    audioTrigger_HoldCarryStart = "",
    audioTrigger_HoldCarryCancel = ""
  },
  AI = {bUsedAsDynamicObstacle = 1},
  Physics = {
    signalpackage_collisionDamagePackage = "",
    bRigidBodyActive = 1,
    bActivateOnDamage = 0,
    bResting = 1,
    bCanBreakOthers = 0,
    Simulation = {
      max_time_step = 0.02,
      sleep_speed = 0.04,
      damping = 0,
      bFixedDamping = 0,
      bUseSimpleSolver = 0
    },
    Buoyancy = {
      water_density = 1000,
      water_damping = 0,
      water_resistance = 1000
    },
    CGFPropsOverride = {
      Joint = {
        limit = "",
        twist = "",
        bend = "",
        push = "",
        pull = "",
        shift = ""
      },
      Constraint = {
        constraint_limit = "",
        constraint_minang = "",
        constraint_maxang = "",
        constraint_damping = "",
        constraint_collides = ""
      },
      Deformable = {
        stiffness = "",
        thickness = "",
        max_stretch = "",
        max_impulse = "",
        skin_dist = "",
        hardness = "",
        explosion_scale = ""
      },
      player_can_break = ""
    },
    ForeignData = {bMovingPlatform = 0}
  },
  MultiplayerOptions = {bNetworked = 0},
  RecycleData = {
    organic = 0,
    mineral = 0,
    synthetic = 0,
    exotic = 0
  },
  Silhouette = {
    color_RGB = {
      x = 1,
      y = 1,
      z = 1
    },
    fAlpha = 0.25
  }
}
L0_7938.PropertiesInstance = {bUsedAsDynamicObstacle = 1}
L0_7938.Editor = {
  Icon = "physicsobject.bmp",
  IconOnTop = 1,
  IsScalable = false
}
L0_7938.States = {"Default", "Activated"}
L0_7938.bRigidBodyActive = 1
L0_7938.signalListened = "3149325216915554009"
RigidBodyEx = L0_7938
L0_7938 = {}
L0_7938.bRigidBodyActive = 0
L0_7938.bActivateOnDamage = 0
L0_7938.bResting = 1
L0_7938.Simulation = {
  max_time_step = 0.02,
  sleep_speed = 0.04,
  damping = 0,
  bFixedDamping = 0,
  bUseSimpleSolver = 0
}
L0_7938.Buoyancy = {
  water_density = 1000,
  water_damping = 0,
  water_resistance = 1000
}
MakeDerivedEntity(RigidBodyEx, BasicEntity)
function RigidBodyEx.OnSpawn(A0_7939)
  if A0_7939.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_7939:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  if A0_7939.Properties.Physics.bRigidBodyActive == 1 then
    A0_7939.bRigidBodyActive = 1
  end
  A0_7939:SetFromProperties()
  A0_7939:SetupHealthProperties()
  Ark.RegisterForSignal(A0_7939.id, A0_7939.signalListened)
  g_gameRules.game:MakeMovementVisibleToAI("RigidBodyEx")
end
function RigidBodyEx.OnSignalReceived(A0_7940)
  BroadcastEvent(A0_7940, "Hit")
end
function RigidBodyEx.SetFromProperties(A0_7941)
  local L1_7942, L2_7943
  L1_7942 = A0_7941.Properties
  L2_7943 = L1_7942.object_Model
  if L2_7943 == "" then
    return
  end
  L2_7943 = A0_7941.SetDisplayName
  L2_7943(A0_7941, A0_7941.Properties.textDisplayName)
  L2_7943 = A0_7941.LoadObject
  L2_7943(A0_7941, 0, L1_7942.object_Model)
  L2_7943 = A0_7941.CharacterUpdateOnRender
  L2_7943(A0_7941, 0, 1)
  L2_7943 = A0_7941.DrawSlot
  L2_7943(A0_7941, 0, 1)
  L2_7943 = L1_7942.Physics
  L2_7943 = L2_7943.bRigidBodyActive
  A0_7941.bRigidBodyActive = L2_7943
  L2_7943 = L1_7942.Physics
  L2_7943 = L2_7943.bPhysicalize
  if L2_7943 == 1 then
    L2_7943 = A0_7941.PhysicalizeThis
    L2_7943(A0_7941)
  else
    L2_7943 = {}
    A0_7941:Physicalize(0, PE_NONE, L2_7943)
  end
  L2_7943 = A0_7941.GotoState
  L2_7943(A0_7941, "Default")
  L2_7943 = A0_7941.Properties
  L2_7943 = L2_7943.bAutoGenAIHidePts
  if L2_7943 == 1 then
    L2_7943 = A0_7941.SetFlags
    L2_7943(A0_7941, ENTITY_FLAG_AI_HIDEABLE, 0)
  else
    L2_7943 = A0_7941.SetFlags
    L2_7943(A0_7941, ENTITY_FLAG_AI_HIDEABLE, 2)
  end
  L2_7943 = A0_7941.Properties
  L2_7943 = L2_7943.bCanTriggerAreas
  if L2_7943 == 1 then
    L2_7943 = A0_7941.SetFlags
    L2_7943(A0_7941, ENTITY_FLAG_TRIGGER_AREAS, 0)
  else
    L2_7943 = A0_7941.SetFlags
    L2_7943(A0_7941, ENTITY_FLAG_TRIGGER_AREAS, 2)
  end
  A0_7941.broken = 0
end
function RigidBodyEx.GetUsable(A0_7944)
  local L2_7945, L3_7946
  L2_7945 = {}
  L3_7946 = A0_7944.Properties
  L3_7946 = L3_7946.Physics
  L3_7946 = L3_7946.Mass
  if not (L3_7946 > 0) then
    L3_7946 = A0_7944.Properties
    L3_7946 = L3_7946.Physics
    L3_7946 = L3_7946.Density
  elseif L3_7946 > 0 then
    L3_7946 = A0_7944.Properties
    L3_7946 = L3_7946.Physics
    L3_7946 = L3_7946.bPhysicalize
    if L3_7946 == 1 then
      L3_7946 = A0_7944.Properties
      L3_7946 = L3_7946.bIsCarryable
      if L3_7946 == 1 then
        L3_7946 = {}
        L3_7946.ActionType = "Carry"
        if A0_7944.Properties.ability_CarryRequirement == "" then
          L3_7946.DisplayText = ""
        end
        L2_7945.Use = L3_7946
      end
    end
  end
  return L2_7945
end
function RigidBodyEx.GetRemoteManipulationInteraction(A0_7947)
  local L1_7948, L2_7949
  L1_7948 = {}
  L2_7949 = A0_7947.Properties
  L2_7949 = L2_7949.Physics
  L2_7949 = L2_7949.Mass
  if not (L2_7949 > 0) then
    L2_7949 = A0_7947.Properties
    L2_7949 = L2_7949.Physics
    L2_7949 = L2_7949.Density
  elseif L2_7949 > 0 then
    L2_7949 = A0_7947.Properties
    L2_7949 = L2_7949.Physics
    L2_7949 = L2_7949.bPhysicalize
    if L2_7949 == 1 then
      L2_7949 = A0_7947.Properties
      L2_7949 = L2_7949.bIsCarryable
      if L2_7949 == 1 then
        L1_7948.ActionType = "Carry"
      end
    end
  end
  L1_7948.CouldChange = false
  return L1_7948
end
function RigidBodyEx.PhysicalizeThis(A0_7950)
  local L1_7951
  L1_7951 = A0_7950.Properties
  L1_7951 = L1_7951.Physics
  if CryAction.IsImmersivenessEnabled() == 0 then
    L1_7951 = _UPVALUE0_
  end
  EntityCommon.PhysicalizeRigid(A0_7950, 0, L1_7951, A0_7950.bRigidBodyActive)
end
function RigidBodyEx.OnPropertyChange(A0_7952)
  A0_7952:SetFromProperties()
end
function RigidBodyEx.OnReset(A0_7953)
  A0_7953:ResetOnUsed()
  if A0_7953.Properties.Physics.bPhysicalize == 1 then
    if A0_7953:IsInState("Default") ~= 0 then
      A0_7953:AwakePhysics(1 - A0_7953.Properties.Physics.bResting)
    end
    A0_7953:GotoState("Default")
  end
  A0_7953:SetupHealthProperties()
  A0_7953.broken = 0
end
function RigidBodyEx.Event_Remove(A0_7954)
  A0_7954:DrawSlot(0, 0)
  A0_7954:DestroyPhysics()
  A0_7954:ActivateOutput("Remove", true)
end
function RigidBodyEx.Event_Hide(A0_7955)
  A0_7955:Hide(1)
  A0_7955:ActivateOutput("Hide", true)
end
function RigidBodyEx.Event_UnHide(A0_7956)
  A0_7956:Hide(0)
  A0_7956:ActivateOutput("UnHide", true)
end
function RigidBodyEx.Event_Ragdollize(A0_7957)
  A0_7957:RagDollize(0)
  A0_7957:ActivateOutput("Ragdollized", true)
end
function RigidBodyEx.OnPhysicsBreak(A0_7958, A1_7959, A2_7960, A3_7961)
  A0_7958:ActivateOutput("Break", A2_7960 + 1)
  A0_7958.broken = 1
end
function RigidBodyEx.OnDamage(A0_7962, A1_7963)
end
function RigidBodyEx.GetUsableMessage(A0_7964, A1_7965)
  return A0_7964.Properties.textDisplayName
end
function RigidBodyEx.Event_Activate(A0_7966, A1_7967)
  A0_7966:GotoState("Default")
  A0_7966:GotoState("Activated")
end
function RigidBodyEx.CommonSwitchToMaterial(A0_7968, A1_7969)
  if not A0_7968.sOriginalMaterial then
    A0_7968.sOriginalMaterial = A0_7968:GetMaterial()
  end
  if A0_7968.sOriginalMaterial then
    A0_7968:SetMaterial(A0_7968.sOriginalMaterial .. A1_7969)
  end
end
function RigidBodyEx.Event_SwitchToMaterialOriginal(A0_7970, A1_7971)
  A0_7970:CommonSwitchToMaterial("")
end
function RigidBodyEx.Event_SwitchToMaterial1(A0_7972, A1_7973)
  A0_7972:CommonSwitchToMaterial("1")
end
function RigidBodyEx.Event_SwitchToMaterial2(A0_7974, A1_7975)
  A0_7974:CommonSwitchToMaterial("2")
end
RigidBodyEx.Server.Default = {
  OnBeginState = function(A0_7976)
    if A0_7976.Properties.Physics.bRigidBody == 1 then
      if A0_7976.bRigidBodyActive ~= A0_7976.Properties.Physics.bRigidBodyActive then
        A0_7976.bRigidBodyActive = A0_7976.Properties.Physics.bRigidBodyActive
        A0_7976:PhysicalizeThis()
      else
        A0_7976:AwakePhysics(1 - A0_7976.Properties.Physics.bResting)
      end
    end
  end,
  OnDamage = RigidBodyEx.OnDamage,
  OnPhysicsBreak = RigidBodyEx.OnPhysicsBreak
}
RigidBodyEx.Server.Activated = {
  OnBeginState = function(A0_7977)
    if A0_7977.Properties.Physics.bRigidBody == 1 and A0_7977.bRigidBodyActive == 0 then
      A0_7977.bRigidBodyActive = 1
      A0_7977:PhysicalizeThis()
      A0_7977:AwakePhysics(1)
    end
  end,
  OnDamage = RigidBodyEx.OnDamage,
  OnPhysicsBreak = RigidBodyEx.OnPhysicsBreak
}
RigidBodyEx.FlowEvents = {
  Inputs = {
    Used = {
      RigidBodyEx.Event_Used,
      "bool"
    },
    EnableUsable = {
      RigidBodyEx.Event_EnableUsable,
      "bool"
    },
    DisableUsable = {
      RigidBodyEx.Event_DisableUsable,
      "bool"
    },
    Activate = {
      RigidBodyEx.Event_Activate,
      "bool"
    },
    Hide = {
      RigidBodyEx.Event_Hide,
      "bool"
    },
    UnHide = {
      RigidBodyEx.Event_UnHide,
      "bool"
    },
    Remove = {
      RigidBodyEx.Event_Remove,
      "bool"
    },
    Ragdollize = {
      RigidBodyEx.Event_Ragdollize,
      "bool"
    },
    SwitchToMaterial1 = {
      RigidBodyEx.Event_SwitchToMaterial1,
      "bool"
    },
    SwitchToMaterial2 = {
      RigidBodyEx.Event_SwitchToMaterial2,
      "bool"
    },
    SwitchToMaterialOriginal = {
      RigidBodyEx.Event_SwitchToMaterialOriginal,
      "bool"
    },
    ResetHealth = {
      RigidBodyEx.Event_ResetHealth,
      "any"
    },
    MakeVulnerable = {
      RigidBodyEx.Event_MakeVulnerable,
      "any"
    },
    MakeInvulnerable = {
      RigidBodyEx.Event_MakeInvulnerable,
      "any"
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
    Break = "int",
    Dead = "bool",
    Hit = "bool",
    Health = "float"
  }
}
