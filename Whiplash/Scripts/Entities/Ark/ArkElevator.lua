Script.ReloadScript("scripts/ArkEntityUtils.lua")
ArkElevator = {
  Properties = {
    object_Model = "",
    bDisallowGrenades = true,
    bIgnoreLiftPower = true,
    Sound = {audioTrigger_Start = "", audioTrigger_Stop = ""},
    Slide = {
      fSpeed = 1,
      fAcceleration = 1,
      fStopTime = 0.06,
      bExactPosition = 1
    }
  },
  PropertiesInstance = {bVerbose = 0},
  Editor = {
    Icon = "elevator.bmp",
    IconOnTop = 0,
    IsScalable = false
  }
}
ArkElevatorInstanceVars = {
  m_bVerbose = false,
  m_bInit = false,
  m_bMoving = false,
  m_bIsForward = true,
  m_bSlidingRequested = false,
  m_referenceTable = false,
  m_transitRequest = "",
  m_teleportRequest = "",
  m_maxSqDistance = 0,
  m_startingPosition = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_destinationPosition = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_forwardDirection = ConstVec({
    x = 0,
    y = 0,
    z = 0
  }),
  m_audioIds = {}
}
GetArkEntityUtils(ArkElevator)
ArkMakeSaveable(ArkElevator)
SetupCollisionFiltering(ArkElevator)
function CreateElevator(A0_3654)
  mergef(A0_3654, ArkElevatorInstanceVars, 1)
  A0_3654.m_referenceTable = ArkElevatorInstanceVars
end
function ArkElevator.DoPhysicalize(A0_3655)
  local L1_3656
  L1_3656 = CryAction
  L1_3656 = L1_3656.ActivateExtensionForGameObject
  L1_3656(A0_3655.id, "ScriptControlledPhysics", false)
  L1_3656 = A0_3655.LoadObject
  L1_3656(A0_3655, 0, A0_3655.Properties.object_Model)
  L1_3656 = A0_3655.Physicalize
  L1_3656(A0_3655, 0, PE_RIGID, {mass = 0})
  L1_3656 = CryAction
  L1_3656 = L1_3656.ActivateExtensionForGameObject
  L1_3656(A0_3655.id, "ScriptControlledPhysics", true)
  L1_3656 = EntityCommon
  L1_3656 = L1_3656.TempPhysicsFlags
  L1_3656.flags = pef_ignore_areas
  L1_3656.flags_mask = pef_ignore_areas
  A0_3655:SetPhysicParams(PHYSICPARAM_FLAGS, L1_3656)
end
function ArkElevator.SetFromProperties(A0_3657)
  GetAudioIds(A0_3657.Properties.Sound, A0_3657.m_audioIds)
  A0_3657.m_bVerbose = A0_3657.PropertiesInstance.bVerbose == 1
  A0_3657.Properties.Physics.bPhysicalize = 1
  A0_3657.Properties.Physics.bRigidBody = 1
  A0_3657.Properties.Physics.Density = -1
  A0_3657.Properties.Physics.Mass = -1
end
function ArkElevator.SetMoving(A0_3658, A1_3659)
  A0_3658.m_bMoving = A1_3659
  A0_3658:ActivateOutput("Moving", A0_3658.m_bMoving)
end
function ArkElevator.Init(A0_3660, A1_3661)
  A0_3660:Activate(0)
  if not A0_3660.m_bInit then
    A0_3660:Log("Init")
    A0_3660.m_bInit = true
    A0_3660:SetFromProperties()
    A0_3660:DoPhysicalize()
    A0_3660.scp:Reset()
    if A1_3661 then
      A0_3660:AwakePhysics(1)
      if 0 < A0_3660:CountLinks() then
        A0_3660.m_destinationPosition = A0_3660:GetLink(0):GetWorldPos()
      else
        LogError("ArkElevator has no linked destination entity. A destination entity is required.")
      end
      A0_3660.m_startingPosition = A0_3660:GetWorldPos()
      A0_3660.m_maxSqDistance = DistanceSqVectors(A0_3660.m_startingPosition, A0_3660.m_destinationPosition)
      A0_3660.m_forwardDirection = GetDirection(A0_3660.m_startingPosition, A0_3660.m_destinationPosition)
    end
  end
end
function ArkElevator.OnUpdate(A0_3662, A1_3663)
  local L2_3664, L3_3665, L4_3666
  L2_3664 = A0_3662.m_transitRequest
  if L2_3664 ~= "" then
    L2_3664 = A0_3662.scp
    L3_3665 = L2_3664
    L2_3664 = L2_3664.HasArrived
    L2_3664 = L2_3664(L3_3665)
    if L2_3664 then
      L3_3665 = A0_3662
      L2_3664 = A0_3662.ActivateOutput
      L4_3666 = "TransitComplete"
      L2_3664(L3_3665, L4_3666, A0_3662.m_transitRequest)
      A0_3662.m_transitRequest = ""
      L3_3665 = A0_3662
      L2_3664 = A0_3662.Activate
      L4_3666 = 0
      L2_3664(L3_3665, L4_3666)
      L3_3665 = A0_3662
      L2_3664 = A0_3662.SetMoving
      L4_3666 = false
      L2_3664(L3_3665, L4_3666)
    end
  else
    L2_3664 = A0_3662.m_teleportRequest
    if L2_3664 ~= "" then
      L2_3664 = A0_3662.scp
      L3_3665 = L2_3664
      L2_3664 = L2_3664.HasArrived
      L2_3664 = L2_3664(L3_3665)
      if L2_3664 then
        L3_3665 = A0_3662
        L2_3664 = A0_3662.ActivateOutput
        L4_3666 = A0_3662.m_transitRequest
        L2_3664(L3_3665, L4_3666)
        L3_3665 = A0_3662
        L2_3664 = A0_3662.ActivateOutput
        L4_3666 = "TeleportComplete"
        L2_3664(L3_3665, L4_3666, A0_3662.m_teleportRequest)
        A0_3662.m_teleportRequest = ""
        L3_3665 = A0_3662
        L2_3664 = A0_3662.Activate
        L4_3666 = 0
        L2_3664(L3_3665, L4_3666)
        L3_3665 = A0_3662
        L2_3664 = A0_3662.SetMoving
        L4_3666 = false
        L2_3664(L3_3665, L4_3666)
      end
    else
      L2_3664 = A0_3662.m_bMoving
      if not L2_3664 then
        L2_3664 = A0_3662.m_bSlidingRequested
        if L2_3664 then
          L3_3665 = A0_3662
          L2_3664 = A0_3662.Slide
          L2_3664(L3_3665)
        end
      else
        L2_3664 = A0_3662.m_bMoving
        if L2_3664 then
          L3_3665 = A0_3662
          L2_3664 = A0_3662.GetWorldPos
          L2_3664 = L2_3664(L3_3665)
          L3_3665 = DistanceSqVectors
          L4_3666 = A0_3662.m_startingPosition
          L3_3665 = L3_3665(L4_3666, L2_3664)
          L4_3666 = A0_3662.ActivateOutput
          L4_3666(A0_3662, "Distance", math.sqrt(L3_3665))
          L4_3666 = A0_3662.m_bIsForward
          if L4_3666 then
            L4_3666 = A0_3662.m_maxSqDistance
            if L3_3665 >= L4_3666 then
              L4_3666 = A0_3662.Stop
              L4_3666(A0_3662)
            end
          else
            L4_3666 = GetDirection
            L4_3666 = L4_3666(A0_3662.m_startingPosition, L2_3664)
            if 0 > dotproduct3d(A0_3662.m_forwardDirection, L4_3666) then
              A0_3662:Stop()
            end
          end
        end
      end
    end
  end
  A0_3662.m_bSlidingRequested = false
end
function ArkElevator.Stop(A0_3667)
  A0_3667.scp:Stop(A0_3667.Properties.Slide.fStopTime)
  A0_3667:SetMoving(false)
  A0_3667:Activate(0)
  if A0_3667.m_audioIds.audioTrigger_Stop ~= nil then
    A0_3667:ExecuteAudioTrigger(A0_3667.m_audioIds.audioTrigger_Stop, A0_3667:GetDefaultAuxAudioProxyID())
  end
  if A0_3667.m_bIsForward then
    BroadcastEvent(A0_3667, "StoppedForward")
  else
    BroadcastEvent(A0_3667, "StoppedBackward")
  end
end
function ArkElevator.StopImmediate(A0_3668)
  A0_3668.scp:Stop(0)
  A0_3668:SetMoving(false)
  A0_3668:Activate(0)
  if A0_3668.m_audioIds.audioTrigger_Stop ~= nil then
    A0_3668:ExecuteAudioTrigger(A0_3668.m_audioIds.audioTrigger_Stop, A0_3668:GetDefaultAuxAudioProxyID())
  end
  if A0_3668.m_bIsForward then
    BroadcastEvent(A0_3668, "StoppedForward")
  else
    BroadcastEvent(A0_3668, "StoppedBackward")
  end
end
function ArkElevator.Slide(A0_3669)
  local L1_3670, L2_3671
  L2_3671 = A0_3669
  L1_3670 = A0_3669.Log
  L1_3670(L2_3671, "Sliding start")
  L1_3670 = A0_3669.Properties
  L1_3670 = L1_3670.Slide
  L2_3671 = nil
  if A0_3669.m_bIsForward then
    L2_3671 = NewVector(A0_3669.m_forwardDirection)
  else
    L2_3671 = ScaleVector(A0_3669.m_forwardDirection, -1)
  end
  ScaleVectorInPlace(L2_3671, L1_3670.fSpeed)
  LogVec("velocity", L2_3671)
  A0_3669.scp:Move(L2_3671, L1_3670.fAcceleration)
  A0_3669:SetMoving(true)
  if A0_3669.m_audioIds.audioTrigger_Start ~= nil then
    A0_3669:ExecuteAudioTrigger(A0_3669.m_audioIds.audioTrigger_Start, A0_3669:GetDefaultAuxAudioProxyID())
  end
end
function ArkElevator.Forward(A0_3672)
  A0_3672:Activate(1)
  A0_3672.m_bSlidingRequested = true
  A0_3672.m_bIsForward = true
  BroadcastEvent(A0_3672, "StartedForward")
end
function ArkElevator.Backward(A0_3673)
  A0_3673:Activate(1)
  A0_3673.m_bSlidingRequested = true
  A0_3673.m_bIsForward = false
  BroadcastEvent(A0_3673, "StartedBackward")
end
function ArkElevator.TransitToLink(A0_3674, A1_3675, A2_3676)
  A0_3674:Log("Transiting to " .. A2_3676)
  A0_3674:Log("Linked destination entity found: " .. A0_3674:GetLinkTarget(A2_3676):GetName())
  if A0_3674:GetLinkTarget(A2_3676) ~= nil then
    A0_3674.scp:MoveTo(A0_3674:GetLinkTarget(A2_3676):GetWorldPos(), A0_3674:GetSpeed(), A0_3674.Properties.Slide.fSpeed, A0_3674.Properties.Slide.fAcceleration, A0_3674.Properties.Slide.fStopTime, A0_3674.Properties.Slide.bExactPosition)
    A0_3674.m_transitRequest = A2_3676
    A0_3674:SetMoving(true)
    A0_3674:Activate(1)
  else
    LogError("Error: TransitToLink requested on " .. A0_3674:GetName() .. ", check bExpressMode to enable this function.")
  end
end
function ArkElevator.TeleportToLink(A0_3677, A1_3678, A2_3679)
  A0_3677:Log("Teleporting to " .. A2_3679)
  A0_3677:Log("Linked destination entity found: " .. A0_3677:GetLinkTarget(A2_3679):GetName())
  if A0_3677:GetLinkTarget(A2_3679) ~= nil then
    A0_3677.scp:MoveTo(A0_3677:GetLinkTarget(A2_3679):GetWorldPos(), A0_3677:GetSpeed(), 1500, 100, A0_3677.Properties.Slide.fStopTime, 1)
    A0_3677.m_teleportRequest = A2_3679
    A0_3677:SetMoving(true)
    A0_3677:Activate(1)
  else
    LogError("Error: TeleportToLink requested on " .. A0_3677:GetName() .. ", check bExpressMode to enable this function.")
  end
end
function ArkElevator.OnPostLoad(A0_3680)
  A0_3680:DoPhysicalize()
  A0_3680.scp:Reset()
  if A0_3680.m_teleportRequest ~= "" then
    A0_3680:TeleportToLink(nil, A0_3680.m_teleportRequest)
  elseif A0_3680.m_transitRequest ~= "" then
    A0_3680:TransitToLink(nil, A0_3680.m_transitRequest)
  end
end
function ArkElevator.OnReset(A0_3681)
  A0_3681:DoPhysicalize()
  A0_3681.scp:Reset()
  A0_3681.m_bInit = false
  A0_3681.m_bSlidingRequested = false
  A0_3681.m_bMoving = false
  A0_3681:SetupModelAndPhysics()
  A0_3681:Activate(0)
end
function ArkElevator.OnSpawn(A0_3682)
  CreateElevator(A0_3682)
  CryAction.CreateGameObjectForEntity(A0_3682.id)
  CryAction.BindGameObjectToNetwork(A0_3682.id)
  CryAction.ForceGameObjectUpdate(A0_3682.id, true)
  A0_3682:SetupModelAndPhysics()
  A0_3682:SetFromProperties()
  A0_3682:Activate(0)
end
ArkElevator.FlowEvents = {
  Inputs = {
    Forward = {
      ArkElevator.Forward,
      "any"
    },
    Backward = {
      ArkElevator.Backward,
      "any"
    },
    Stop = {
      ArkElevator.Stop,
      "any"
    },
    TransitToLink = {
      ArkElevator.TransitToLink,
      "string"
    },
    TeleportToLink = {
      ArkElevator.TeleportToLink,
      "string"
    }
  },
  Outputs = {
    StartedForward = "bool",
    StoppedForward = "bool",
    StartedBackward = "bool",
    StoppedBackward = "bool",
    Moving = "bool",
    TransitComplete = "string",
    TeleportComplete = "string",
    Distance = "float"
  }
}
