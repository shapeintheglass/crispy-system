Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkElectricalBox = {
  Properties = {
    object_Model = "",
    object_ModelBroken = "",
    signalpackage_Hazard = "",
    archetype_LightningArc = "ArkGameplayObjects.LightningArc.LightningArc_ElectricalBox",
    nElectricArcs = 1,
    nSparkInterval = 1000,
    nSparkVariation = 100,
    nGooSparkWarningTime = 2000,
    nGooBreakWarningTime = 1000,
    fHazardRadius = 1,
    nMaxTargets = 1,
    fHealth = 100,
    signal_GooSignal = "3149325216915549017",
    fMaxGooAccumulation = 128,
    fGooDrainRate = 20,
    fGooDecalSize = 2,
    material_GooDecal = "Materials/ArkEffects/Weapons/Gloogun/Gloogun_Decal_Hard_00",
    vector_GooDecalOffset = {
      x = -0.85,
      y = 0,
      z = 0.75
    },
    vector_ElectricalArcOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    vector_ElectricalArcOffset2 = {
      x = 0,
      y = 0,
      z = 0
    },
    vector_ElectricalArcOffset3 = {
      x = 0,
      y = 0,
      z = 0
    },
    signalGroup_Damage = "3149325216937655803",
    signalmodifier_SignalModifier = "5310807215636213104",
    textCorpseName = "@npc_broken",
    fInstigationDecayTime = 5,
    bInteractIgnoresGloo = 1,
    fPlayerZeroGImpulseScale = 10,
    tutorial_ContextualTutorial = "",
    Repair = {
      textPromptItemRequired = "",
      textDisplayName = "",
      textDisplayNameBroken = "",
      nSparePartsRequired = 1,
      nHoldToUseDuration = 1000,
      ability_RepairRequirement = "",
      archetype_RepairItem = "",
      bRepairable = 1,
      fRepairIconRange = 10
    },
    Fortify = {
      nHoldToUseDuration = 1000,
      archetype_FortifyItem = "",
      ability_FortifyRequirement = "3149325216929347161",
      nSparePartsRequired = 0,
      bFortifiable = 1,
      textFortifyVerb = ""
    },
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = ""
    },
    Effects = {
      material_electricalArc = "",
      particleeffect_FlashVFX = "",
      particleeffect_IdleVFX = "",
      particleeffect_WarningVFX = ""
    },
    Sound = {
      audioTrigger_IntactLoop = "",
      audioTrigger_HazardLoop = "",
      audioTrigger_PowerOff = "",
      audioTrigger_Zap = "",
      audioTrigger_RepairLoop = "",
      audioTrigger_RepairStop = "",
      audioTrigger_WarningLoop = "",
      audioTrigger_WarningStop = ""
    },
    Physics = {
      bPhysicalize = 1,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bResting = 1,
      bRigidBodyActive = 1,
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
    },
    AI = {ei_DangerAreaType = 0}
  },
  TargetClassBlackList = {
    LightningArc = true,
    EnvironmentLight = true,
    GeomEntity = true,
    ArkElectricalBox = true,
    SinglePlayer = true,
    ExtendedClip = true,
    NoWeapon = true,
    SoundListener = true,
    ArkProjectileEMPGrenade = true,
    ArkProjectileGoo = true,
    ArkProjectileGooBall = true,
    ArkProjectileHomingPsiBlast = true,
    ArkProjectileLureGrenade = true,
    ArkProjectileNullwaveTransmitter = true,
    ArkProjectilePistolBullet = true,
    ArkProjectileRecyclerGrenade = true,
    ArkProjectileShotgunBlast = true,
    ArkProjectileShotgunShell = true,
    ArkProjectileStunGun = true,
    ArkProjectileTracer = true,
    ArkProjectileTurretBullet = true,
    ArkTechnopathEMPHazard = true
  },
  Editor = {
    Icon = "Lightning.bmp",
    IconOnTop = 1,
    IsScalable = false
  },
  PropertiesInstance = {
    bStartsBroken = 0,
    bStartsPowered = 1,
    bVerbose = 0
  }
}
GetArkEntityUtils(ArkElectricalBox)
SetupCollisionFiltering(ArkElectricalBox)
ArkMakeSaveable(ArkElectricalBox)
ArkElectricalBoxInstanceVars = {
  m_bVerbose = false,
  m_bInit = false,
  m_referenceTable = false,
  m_activatorId = NULL_ENTITY
}
function CreateElectricalBox(A0_3634)
  mergef(A0_3634, ArkElectricalBoxInstanceVars, 1)
  A0_3634.m_referenceTable = ArkElectricalBoxInstanceVars
end
function ArkElectricalBox.Init(A0_3635, A1_3636)
  local L2_3637
  L2_3637 = A0_3635.Properties
  if not A0_3635.m_bInit then
    A0_3635:Log("Initializing...")
    A0_3635.m_bInit = true
    if A1_3636 then
      A0_3635:Activate(1)
    end
  end
end
function ArkElectricalBox.SetFromProperties(A0_3638)
  local L1_3639
  L1_3639 = A0_3638.Properties
  A0_3638.m_bVerbose = A0_3638.PropertiesInstance.bVerbose == 1
  A0_3638:SetDisplayName(L1_3639.Repair.textDisplayName)
  Ark.RemoveInboundSignalModifier(A0_3638.id, L1_3639.signalmodifier_SignalModifier)
  Ark.AttachInboundSignalModifier(A0_3638.id, L1_3639.signalmodifier_SignalModifier)
end
function ArkElectricalBox.OnPropertyChange(A0_3640)
  if A0_3640.PropertiesInstance.bStartsBroken == 1 then
    A0_3640:LoadObject(0, A0_3640.Properties.object_ModelBroken)
  else
    A0_3640:SetupModelAndPhysics()
  end
end
function ArkElectricalBox.Event_Repair(A0_3641)
  BroadcastEvent(A0_3641, "Repair")
end
function ArkElectricalBox.Event_Break(A0_3642)
  BroadcastEvent(A0_3642, "Break")
end
function ArkElectricalBox.OnReset(A0_3643, A1_3644)
  A0_3643:Log("OnReset")
  A0_3643.m_bInit = false
  A0_3643.m_activatorId = A0_3643.id
  A0_3643:Activate(0)
  A0_3643:SetFromProperties()
end
function ArkElectricalBox.OnSpawn(A0_3645)
  CreateElectricalBox(A0_3645)
  A0_3645:Log("OnSpawn")
  A0_3645:SetFromProperties()
end
function ArkElectricalBox.OnPostLoad(A0_3646)
  A0_3646:Activate(1)
end
function ArkElectricalBox.OnSetBroken(A0_3647, A1_3648)
  if A1_3648 then
    A0_3647:LoadObject(0, A0_3647.Properties.object_ModelBroken)
    A0_3647:PhysicalizeThis()
  else
    A0_3647:SetupModelAndPhysics()
  end
end
function ArkElectricalBox.Event_PowerOn(A0_3649)
  Ark.SetElectricalBoxPowered(A0_3649.id, true, A0_3649.m_activatorId)
  BroadcastEvent(A0_3649, "PoweredOn")
end
function ArkElectricalBox.Event_PowerOff(A0_3650)
  Ark.SetElectricalBoxPowered(A0_3650.id, false, A0_3650.m_activatorId)
  BroadcastEvent(A0_3650, "PoweredOff")
end
function ArkElectricalBox.Event_Activator(A0_3651, A1_3652, A2_3653)
  A0_3651.m_activatorId = A2_3653.id
end
ArkElectricalBox.FlowEvents = {
  Inputs = {
    PowerOn = {
      ArkElectricalBox.Event_PowerOn,
      "bool"
    },
    PowerOff = {
      ArkElectricalBox.Event_PowerOff,
      "bool"
    },
    Repair = {
      ArkElectricalBox.Event_Repair,
      "bool"
    },
    Break = {
      ArkElectricalBox.Event_Break,
      "bool"
    },
    Activator = {
      ArkElectricalBox.Event_Activator,
      "entity"
    }
  },
  Outputs = {
    Broken = "bool",
    Repaired = "bool",
    Disabled = "bool",
    PoweredOn = "bool",
    PoweredOff = "bool",
    Spark = "bool",
    StrikeTime = "float",
    EntityId = "entity"
  }
}
