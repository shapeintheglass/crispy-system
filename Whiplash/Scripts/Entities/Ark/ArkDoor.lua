Script.ReloadScript("scripts/Entities/Ark/ArkKeypad.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkKeycardReader.lua")
Script.ReloadScript("scripts/Entities/Ark/ArkInteractiveObject.lua")
ArkDoor = {
  Properties = {
    object_Model = "",
    object_KeypadModel = "",
    object_FreeExitModel = "",
    signalpackage_DamagePackage = "",
    archetype_Keypad = "",
    archetype_KeycardReader = "",
    archetype_FreeExitButton = "",
    ei_ObjectMapIcon = "",
    textMessageLockedAndUnpowered = "",
    textMessageUnlockedAndUnpowered = "",
    textMessageLockedAndManual = "",
    textMessageUnlockedAndManual = "",
    textPromptManualOpen = "",
    textPromptManualClose = "",
    textPromptButtonVerb = "",
    textPromptUseAbility = "",
    ability_HackRequirement = "",
    ability_PryOpenRequirement = "",
    nHoldToUseDuration = 1000,
    bDisruptable = 0,
    bActivatePortal = 0,
    bIsOnlyBackSideUsable = 0,
    fInteractDistanceOverride = 0,
    bNoFriendlyFire = 0,
    triggerLength = 5,
    triggerWidth = 3,
    triggerHeight = 3,
    allowedPenetration = 0.31,
    openTimer = 3,
    ignoreCollisionTimer = 5,
    NavAgentTypes = "MediumSizedCharacters ArkOperator ArkAlien_Small ArkAlien_Medium ArkWeaver ArkEtherForm",
    bDisallowGrenades = true,
    vector_InteractionOffset = {
      x = 0,
      y = 0,
      z = 1.6
    },
    vector_linkOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    Glow = {
      sDoorSkinAttachmentName = "door_skin",
      color_LockedColor = {
        x = 1,
        y = 0,
        z = 0
      },
      color_UnlockedColor = {
        x = 0,
        y = 1,
        z = 0
      },
      color_UnpoweredColor = {
        x = 1,
        y = 1,
        z = 1
      },
      fLockedGlowAmount = 50,
      fUnlockedGlowAmount = 50,
      fUnpoweredGlowAmount = 0,
      nGlowSubmatIdA = 0,
      nGlowSubmatIdB = -1,
      bUseGlow = 0,
      bModelIsCGF = 0
    },
    KeypadBoneNames = {
      left = {outside = "", inside = ""},
      right = {outside = "", inside = ""}
    },
    Signals = {signal_Goo = ""},
    Sound = {
      audioTrigger_Open = "",
      audioTrigger_Close = "",
      audioTrigger_Locked = ""
    },
    Animation = {
      anim_Open = "Default",
      anim_Close = "",
      anim_PryIn = "Open_Leverage_In",
      anim_PryLoop = "Open_Leverage",
      anim_PryOpen = "Open_Leverage_Out",
      anim_PryCancel = "Cancel_Leverage"
    },
    Pry = {
      bPryable = 1,
      sFrontAttachment = "pry_front",
      sBackAttachment = "pry_back",
      fragment_PlayerIn = "Door_PryIn",
      fragment_PlayerOut = "Door_PryOut",
      fragment_PlayerCancel = "Door_PryCancel",
      fLerpSpeed = 5,
      fAngularLerp = 3
    },
    Physics = {
      bPhysicalize = 1,
      bArticulated = 1,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      Density = -1,
      Mass = -1
    },
    Portal = {
      bHasAudioPortal = 0,
      fWidth = 1,
      fHeight = 1,
      fMinOcclusion = 0,
      fMaxOcclusion = 1,
      fMinHazardOcclusion = 0,
      fMaxHazardOcclusion = 1,
      vectorOffset = ""
    },
    Disrupt = {
      disruptionProfile_Profile = "10739735956140212131",
      particleeffect_SparkVFX = "",
      audioTrigger_SparkSFX = "",
      sSparkAttachment = ""
    },
    Repair = {
      textPromptItemRequired = "@i_spareparts",
      textDisplayNameBroken = "",
      nSparePartsRequired = 1,
      nHoldToUseDuration = 1000,
      ability_RepairRequirement = "3149325216929347161",
      archetype_RepairItem = "ArkPickups.Misc.SpareParts",
      bRepairable = 1,
      fRepairIconRange = 2,
      particleeffect_BrokenVFX = "",
      nBrokenVFXInterval = 1000,
      nBrokenVFXVariation = 100,
      object_BrokenModel = ""
    }
  },
  PropertiesInstance = {
    nKeypads = 0,
    keycode_UnlockCode = "",
    keycard_UnlockKeycard = "",
    bKeypadsOnLeftSide = 1,
    bUseKeycardReaders = 0,
    bStartsBroken = 0,
    bStartsLocked = 0,
    bStartsOpen = 0,
    bUseFreeExitButton = 0,
    vector_FreeExitOffset = {
      x = 0,
      y = 0,
      z = 0
    },
    bStartsPoweredOn = 1,
    TriggerDimensionsOverride = {
      triggerLength = 0,
      triggerWidth = 0,
      triggerHeight = 0
    },
    ability_HackRequirementOverride = "",
    bVerbose = 0,
    vectorPortalOffset = "",
    MaterialOverride = {
      attachment = "",
      material_Material = "",
      nSubMtlId = 0
    },
    RNG = {
      randomDoorState_randomDoorState = "",
      PossibleStates = {
        bUnlocked = 0,
        bLockedWithKeycard = 1,
        bLockedWithKeycode = 1,
        bBrokenUnlocked = 1
      }
    }
  },
  Editor = {
    IconOnTop = true,
    Icon = "Door.bmp",
    ShowBounds = 0,
    IsScalable = false
  }
}
GetArkEntityUtils(ArkDoor)
SetupCollisionFiltering(ArkDoor)
ArkMakeLockable(ArkDoor)
ArkMakeSaveable(ArkDoor)
ArkDoorInstanceVars = {
  m_insideController = false,
  m_outsideController = false,
  m_referenceTable = false,
  m_bInit = false,
  m_bVerbose = false,
  m_bUseKeycardReader = false,
  m_bUseLeftSide = false,
  m_bUseFreeExit = false,
  m_currentSound = false,
  m_bIsPowerSupplied = false,
  m_bIsDisrupted = false,
  m_bLocked = false,
  m_nKeypads = 0,
  m_audioIds = {}
}
function CreateArkDoor(A0_3576)
  mergef(A0_3576, ArkDoorInstanceVars, 1)
  A0_3576.m_referenceTable = ArkDoorInstanceVars
end
function ArkDoor.Init(A0_3577, A1_3578)
  if not A0_3577.m_bInit then
    A0_3577.m_bInit = true
    A0_3577:SetFromProperties()
    if A1_3578 then
      A0_3577:UpdatePowerState()
      A0_3577:SetIsDoorLocked(A0_3577.m_bLocked)
    end
  end
end
function ArkDoor.HandleModelLoad(A0_3579, A1_3580)
  local L2_3581
  L2_3581 = A0_3579.PropertiesInstance
  A0_3579:Init(true)
  A0_3579:FreeSlot(1)
  A0_3579:FreeSlot(2)
  if A0_3579.m_nKeypads > 0 or A0_3579.m_bUseFreeExit then
    if A1_3580 then
      if A0_3579.m_outsideController then
        Ark.UnregisterArkDoorController(A0_3579.id, A0_3579.m_outsideController.id)
      end
      if A0_3579.m_insideController then
        Ark.UnregisterArkDoorController(A0_3579.id, A0_3579.m_insideController.id)
      end
      A0_3579:SetupAccessControl(A0_3579.m_bUseKeycardReader, A0_3579.m_nKeypads, A0_3579.m_bUseLeftSide, A0_3579.m_bUseFreeExit, L2_3581.vector_FreeExitOffset)
      if A0_3579.m_outsideController then
        Ark.RegisterArkDoorController(A0_3579.id, A0_3579.m_outsideController.id)
      end
      if A0_3579.m_insideController then
        Ark.RegisterArkDoorController(A0_3579.id, A0_3579.m_insideController.id)
      end
    else
      A0_3579:LoadAccessControllersForEditor(A0_3579.m_nKeypads, A0_3579.m_bUseLeftSide, A0_3579.m_bUseFreeExit, L2_3581.vector_FreeExitOffset)
    end
  end
  if A1_3580 then
    if A0_3579:IsPowered() then
      A0_3579:DoFunctionOnControllers("Event_PowerOn", true)
    else
      A0_3579:DoFunctionOnControllers("Event_PowerOff", true)
    end
    if A0_3579.m_bLocked then
      A0_3579:DoFunctionOnControllers("Event_Lock", false)
    else
      A0_3579:DoFunctionOnControllers("Event_Unlock", false)
    end
    if A0_3579.m_bUseFreeExit then
      A0_3579:ControllerFunction(A0_3579.m_insideController, "SetActive", not A0_3579.m_bLocked, true)
    end
  end
  if A0_3579.Properties.Glow.bUseGlow == 1 then
    if A0_3579.Properties.Glow.bModelIsCGF == 1 then
      A0_3579:CloneMaterial(0)
    else
      A0_3579:CloneAttachmentMaterial(0, A0_3579.Properties.Glow.sDoorSkinAttachmentName)
    end
  end
  A0_3579:SetDoorGlow()
end
function ArkDoor.RemoveControllerHandle(A0_3582, A1_3583)
  if A0_3582.m_insideController and A0_3582.m_insideController:GetRawId() == A1_3583 then
    A0_3582.m_insideController = false
  end
  if A0_3582.m_outsideController and A0_3582.m_outsideController:GetRawId() == A1_3583 then
    A0_3582.m_outsideController = false
  end
end
function ArkDoor.DoFunctionOnControllers(A0_3584, A1_3585, A2_3586)
  A0_3584:ControllerFunction(A0_3584.m_outsideController, A1_3585)
  if A2_3586 or not A0_3584.m_bUseFreeExit then
    A0_3584:ControllerFunction(A0_3584.m_insideController, A1_3585)
  end
end
function ArkDoor.ControllerFunction(A0_3587, A1_3588, A2_3589, A3_3590, A4_3591)
  local L5_3592
  if A1_3588 then
    L5_3592 = A1_3588[A2_3589]
    L5_3592(A1_3588, A3_3590, A4_3591)
  end
end
function ArkDoor.SetDoorGlow(A0_3593)
  local L1_3594, L2_3595, L3_3596, L4_3597
  L1_3594 = A0_3593.Properties
  L1_3594 = L1_3594.Glow
  L2_3595, L3_3596 = nil, nil
  L4_3597 = "unset"
  if L1_3594.bUseGlow == 1 then
    if A0_3593:IsPowered() then
      if A0_3593.m_bLocked then
        L2_3595 = L1_3594.color_LockedColor
        L3_3596 = L1_3594.fLockedGlowAmount
        L4_3597 = "locked"
      else
        L2_3595 = L1_3594.color_UnlockedColor
        L3_3596 = L1_3594.fUnlockedGlowAmount
        L4_3597 = "unlocked"
      end
    else
      L2_3595 = L1_3594.color_UnpoweredColor
      L3_3596 = L1_3594.fUnpoweredGlowAmount
      L4_3597 = "unpowered"
    end
    if L1_3594.bModelIsCGF == 1 then
      A0_3593:SetMaterialFloat(0, L1_3594.nGlowSubmatIdA, MaterialFloatParams.emissive_intensity, L3_3596)
      A0_3593:SetMaterialVec3(0, L1_3594.nGlowSubmatIdA, MaterialVec3Params.emissive_color, L2_3595)
      if 0 <= L1_3594.nGlowSubmatIdB then
        A0_3593:SetMaterialFloat(0, L1_3594.nGlowSubmatIdB, MaterialFloatParams.emissive_intensity, L3_3596)
        A0_3593:SetMaterialVec3(0, L1_3594.nGlowSubmatIdB, MaterialVec3Params.emissive_color, L2_3595)
      end
    else
      A0_3593:SetAttachmentMaterialFloat(0, L1_3594.sDoorSkinAttachmentName, L1_3594.nGlowSubmatIdA, MaterialFloatParams.emissive_intensity, L3_3596)
      A0_3593:SetAttachmentMaterialVec3(0, L1_3594.sDoorSkinAttachmentName, L1_3594.nGlowSubmatIdA, MaterialVec3Params.emissive_color, L2_3595)
      if 0 <= L1_3594.nGlowSubmatIdB then
        A0_3593:SetAttachmentMaterialFloat(0, L1_3594.sDoorSkinAttachmentName, L1_3594.nGlowSubmatIdB, MaterialFloatParams.emissive_intensity, L3_3596)
        A0_3593:SetAttachmentMaterialVec3(0, L1_3594.sDoorSkinAttachmentName, L1_3594.nGlowSubmatIdB, MaterialVec3Params.emissive_color, L2_3595)
      end
    end
    A0_3593:Log("DOOR EMISSIVE SET " .. L4_3597)
  end
end
function ArkDoor.UpdateForEditorDisplay(A0_3598)
  A0_3598:LoadAccessControllersForEditor(A0_3598.PropertiesInstance.nKeypads, A0_3598.m_bUseLeftSide, A0_3598.m_bUseFreeExit, A0_3598.PropertiesInstance.vector_FreeExitOffset)
  A0_3598:SetDoorGlow()
end
function ArkDoor.SetFromProperties(A0_3599)
  GetAudioIds(A0_3599.Properties.Sound, A0_3599.m_audioIds)
  A0_3599.m_bUseKeycardReader = A0_3599.PropertiesInstance.bUseKeycardReaders == 1
  A0_3599.m_bUseLeftSide = A0_3599.PropertiesInstance.bKeypadsOnLeftSide == 1
  A0_3599.m_bUseFreeExit = A0_3599.PropertiesInstance.bUseFreeExitButton == 1
  A0_3599.m_bIsPowerSupplied = A0_3599.PropertiesInstance.bStartsPoweredOn == 1
  A0_3599.m_bLocked = A0_3599.PropertiesInstance.bStartsLocked == 1
  A0_3599.m_bVerbose = A0_3599.PropertiesInstance.bVerbose == 1
  A0_3599.m_nKeypads = A0_3599.PropertiesInstance.nKeypads
end
function ArkDoor.Reset(A0_3600)
  A0_3600:SetFromProperties()
  A0_3600:SetIsDoorLocked(A0_3600.m_bLocked)
end
function ArkDoor.IsPowered(A0_3601)
  local L1_3602
  L1_3602 = A0_3601.m_bIsPowerSupplied
  if L1_3602 then
    L1_3602 = A0_3601.m_bIsDisrupted
    L1_3602 = not L1_3602
  end
  return L1_3602
end
function ArkDoor.UpdatePowerState(A0_3603)
  if A0_3603:IsPowered() then
    A0_3603:DoFunctionOnControllers("Event_PowerOn", true)
    BroadcastEvent(A0_3603, "PoweredOn")
  else
    A0_3603:DoFunctionOnControllers("Event_PowerOff", true)
    BroadcastEvent(A0_3603, "PoweredOff")
  end
  Ark.PowerDoor(A0_3603.id, A0_3603.m_bIsPowerSupplied)
  A0_3603:SetDoorGlow()
end
function ArkDoor.SetIsDoorLocked(A0_3604, A1_3605)
  local L2_3606, L3_3607
  L2_3606 = "Lock"
  if not A1_3605 then
    L2_3606 = "Unlock"
  end
  L3_3607 = "Event_"
  L3_3607 = L3_3607 .. L2_3606
  if A0_3604.m_bLocked ~= A1_3605 then
    BroadcastEvent(A0_3604, L2_3606)
  end
  A0_3604:Log(L3_3607)
  A0_3604:DoFunctionOnControllers(L3_3607, false)
  if A0_3604.m_bUseFreeExit then
    if A1_3605 then
      A0_3604:ControllerFunction(A0_3604.m_insideController, "Event_Deactivate")
    else
      A0_3604:ControllerFunction(A0_3604.m_insideController, "Event_Activate")
    end
  end
  A0_3604.m_bLocked = A1_3605
  Ark.LockDoor(A0_3604.id, A1_3605)
  A0_3604:SetDoorGlow()
end
function ArkDoor.OnPostLoad(A0_3608)
  A0_3608:UpdatePowerState()
end
function ArkDoor.OnSave(A0_3609, A1_3610)
  for _FORV_5_, _FORV_6_ in pairs(A0_3609.m_referenceTable) do
    A1_3610[_FORV_5_] = A0_3609[_FORV_5_]
  end
end
function ArkDoor.OnInit(A0_3611)
  A0_3611:Log("OnInit")
  if System.IsEditor() then
    A0_3611:Init()
  end
end
function ArkDoor.OnPropertyChange(A0_3612)
  A0_3612:Reset()
  A0_3612:UpdateForEditorDisplay()
  A0_3612:Log("OnPropertyChange")
end
function ArkDoor.OnReset(A0_3613)
  A0_3613:Log("OnReset")
  A0_3613:Activate(0)
  A0_3613.m_bInit = false
  if A0_3613.m_outsideController then
    System.RemoveEntity(A0_3613.m_outsideController.id)
    A0_3613.m_outsideController = false
  end
  if A0_3613.m_insideController then
    System.RemoveEntity(A0_3613.m_insideController.id)
    A0_3613.m_insideController = false
  end
  A0_3613:Reset()
  A0_3613:UpdateForEditorDisplay()
end
function ArkDoor.OnSpawn(A0_3614)
  CreateArkDoor(A0_3614)
  A0_3614:Log("OnSpawn")
  A0_3614:Reset()
end
function ArkDoor.Event_Disrupted(A0_3615, A1_3616)
  A0_3615:Log("Event_Disrupted: " .. tostring(A1_3616))
  A0_3615.m_bIsDisrupted = A1_3616
  A0_3615:UpdatePowerState()
end
function ArkDoor.Event_PowerOn(A0_3617)
  A0_3617:Log("Event_PowerOn")
  A0_3617.m_bIsPowerSupplied = true
  A0_3617:UpdatePowerState()
end
function ArkDoor.Event_PowerOff(A0_3618)
  A0_3618:Log("Event_PowerOff")
  A0_3618.m_bIsPowerSupplied = false
  A0_3618:UpdatePowerState()
end
function ArkDoor.Event_Unlock(A0_3619)
  A0_3619:SetIsDoorLocked(false)
  if A0_3619:IsPowered() then
    Ark.OpenDoor(A0_3619.id)
  end
end
function ArkDoor.UnlockNoOpen(A0_3620)
  A0_3620:SetIsDoorLocked(false)
end
function ArkDoor.Event_Lock(A0_3621)
  A0_3621:SetIsDoorLocked(true)
end
function ArkDoor.Event_Open(A0_3622)
  A0_3622:Log("Event_Open")
  Ark.OpenDoor(A0_3622.id)
end
function ArkDoor.Event_Close(A0_3623)
  A0_3623:Log("Event_Close")
  Ark.CloseDoor(A0_3623.id)
end
function ArkDoor.Event_Hide(A0_3624)
  A0_3624:Hide(1)
  if A0_3624.m_insideController then
    A0_3624.m_insideController:Hide(1)
  end
  if A0_3624.m_outsideController then
    A0_3624.m_outsideController:Hide(1)
  end
  A0_3624:ActivateOutput("Hide", true)
end
function ArkDoor.Event_UnHide(A0_3625)
  A0_3625:Hide(0)
  if A0_3625.m_insideController then
    A0_3625.m_insideController:Hide(0)
  end
  if A0_3625.m_outsideController then
    A0_3625.m_outsideController:Hide(0)
  end
  A0_3625:ActivateOutput("UnHide", true)
end
function ArkDoor.Event_Repair(A0_3626)
  BroadcastEvent(A0_3626, "Repair")
end
function ArkDoor.Event_Break(A0_3627)
  BroadcastEvent(A0_3627, "Break")
end
function ArkDoor.OnObstructed(A0_3628, A1_3629, A2_3630)
  if A2_3630 then
    A0_3628:Log(A2_3630:GetName() .. " is obstructing")
  else
    A0_3628:Log("entityId: " .. tostring(A1_3629) .. " has no script table and is obstructing")
  end
  Ark.SendSignalPackage(A1_3629, A0_3628.id, A0_3628.id, A0_3628.Properties.signalpackage_DamagePackage)
  A0_3628:ActivateOutput("Obstructed", true)
end
ArkDoor.FlowEvents = {
  Inputs = {
    Close = {
      ArkDoor.Event_Close,
      "bool"
    },
    Open = {
      ArkDoor.Event_Open,
      "bool"
    },
    Lock = {
      ArkDoor.Event_Lock,
      "bool"
    },
    Unlock = {
      ArkDoor.Event_Unlock,
      "bool"
    },
    Hide = {
      ArkDoor.Event_Hide,
      "bool"
    },
    UnHide = {
      ArkDoor.Event_UnHide,
      "bool"
    },
    PowerOn = {
      ArkDoor.Event_PowerOn,
      "bool"
    },
    PowerOff = {
      ArkDoor.Event_PowerOff,
      "bool"
    },
    Break = {
      ArkDoor.Event_Break,
      "bool"
    },
    Repair = {
      ArkDoor.Event_Repair,
      "bool"
    }
  },
  Outputs = {
    Close = "bool",
    Open = "bool",
    Lock = "bool",
    Unlock = "bool",
    Hide = "bool",
    UnHide = "bool",
    Obstructed = "bool",
    Hacked = "bool",
    Failed = "bool",
    PoweredOn = "bool",
    PoweredOff = "bool",
    Opening = "bool",
    Closing = "bool",
    Prying = "bool",
    PryingCanceled = "bool",
    Repaired = "bool"
  }
}
