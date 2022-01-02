Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkSurfaceHazard = {
  Properties = {
    object_Model = "",
    signalpackage_SurfaceHazard = "",
    signalpackage_InitialExplosion = "",
    nHazardInterval = 100,
    nHazardDuration = -1,
    fHazardRadius = 1,
    fHazardWidth = 0,
    fHazardLength = 0,
    nDepletedDelay = 800,
    nTriggerDelay = 200,
    nNeighborActivationCooldown = 1000,
    bEffectOnCollision = 1,
    bEffectOnProximity = 1,
    bDepletesAfterDuration = 0,
    bRefreshDurationOnActivation = 0,
    signalGroup_Activating = "",
    signalGroup_Deactivating = "",
    signalmodifier_InboundModifier = "",
    Effects = {
      particleeffect_Hazard = "",
      particleeffect_ExplosionVFX = "",
      particleeffect_DeactivateVFX = "",
      fHazardVFXScale = 1,
      fHazardVFXPulsePeriod = -1,
      bPlaceHazardVFX = 1
    },
    Decal = {
      material_DecalMaterial = "",
      fDecalRadius = 1,
      nDecalSortPriority = 1,
      fDecalDepth = 1,
      bDecalDeferred = 0,
      decalProjection_ProjectionType = 0
    },
    DepletedDecal = {
      material_DecalMaterial = "",
      fDecalRadius = 1,
      nDecalSortPriority = 1,
      fDecalDepth = 1,
      bDecalDeferred = 0,
      decalProjection_ProjectionType = 0
    },
    Sound = {audioTrigger_Activate = "", audioTrigger_Deactivate = ""},
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 0,
      Density = -1,
      Mass = -1
    },
    AI = {ei_DangerAreaType = 0}
  },
  Editor = {
    Icon = "Hazard.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {bVerbose = 0, bStartsEnabled = 0}
}
GetArkEntityUtils(ArkSurfaceHazard)
SetupCollisionFiltering(ArkSurfaceHazard)
function ArkSurfaceHazard.Init(A0_4525, A1_4526)
  A0_4525:Log("Initializing...")
  if A1_4526 then
    A0_4525:SetFromProperties()
  end
end
function ArkSurfaceHazard.SetFromProperties(A0_4527)
  A0_4527.m_bVerbose = A0_4527.PropertiesInstance.bVerbose == 1
  Ark.RemoveInboundSignalModifier(A0_4527.id, A0_4527.Properties.signalmodifier_InboundModifier)
  Ark.AttachInboundSignalModifier(A0_4527.id, A0_4527.Properties.signalmodifier_InboundModifier)
  A0_4527.m_position = A0_4527:GetWorldBoundsCenter()
  if System.IsEditing() and A0_4527.m_bVerbose then
    CryAction.PersistantSphere(A0_4527.m_position, A0_4527.Properties.fHazardRadius, g_Vectors.v010, "test", 5)
  end
end
function ArkSurfaceHazard.OnReset(A0_4528, A1_4529)
  A0_4528:Log("OnReset")
  A0_4528:SetFromProperties()
end
function ArkSurfaceHazard.OnSpawn(A0_4530)
  A0_4530:SetFromProperties()
  A0_4530:Log("OnSpawn")
end
function ArkSurfaceHazard.Event_Activate(A0_4531)
  Ark.ActivateSurfaceHazard(A0_4531.id, true, true)
end
function ArkSurfaceHazard.Event_Deactivate(A0_4532)
  Ark.ActivateSurfaceHazard(A0_4532.id, false, true)
end
function ArkSurfaceHazard.Event_Enable(A0_4533, A1_4534, A2_4535)
  Ark.EnableSurfaceHazard(A0_4533.id, A2_4535)
end
function ArkSurfaceHazard.Event_Activator(A0_4536, A1_4537, A2_4538)
  Ark.SetEnvironmentalHazardActivator(A0_4536.id, A2_4538.id)
end
ArkSurfaceHazard.FlowEvents = {
  Inputs = {
    Activate = {
      ArkSurfaceHazard.Event_Activate,
      "bool"
    },
    Deactivate = {
      ArkSurfaceHazard.Event_Deactivate,
      "bool"
    },
    Activator = {
      ArkSurfaceHazard.Event_Activator,
      "entity"
    },
    Enable = {
      ArkSurfaceHazard.Event_Enable,
      "bool"
    }
  },
  Outputs = {
    Activated = "bool",
    Deactivated = "bool",
    Depleted = "bool"
  }
}
