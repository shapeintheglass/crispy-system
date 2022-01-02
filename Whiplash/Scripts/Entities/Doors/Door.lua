Script.ReloadScript("scripts/Entities/Sound/Shared/AudioUtils.lua")
Door = {
  Properties = {
    soclasses_SmartObjectClass = "Door",
    fileModel = "engine/engineassets/objects/default.cgf",
    Audio = {
      audioTriggerOnMoveOpenTrigger = "",
      audioTriggerOnMoveCloseTrigger = "",
      audioTriggerOnStopTrigger = "",
      audioTriggerOnClosedTrigger = "",
      eiSoundObstructionType = 1
    },
    Rotation = {
      fSpeed = 200,
      fAcceleration = 500,
      fStopTime = 0.125,
      fRange = 90,
      sAxis = "z",
      bRelativeToUser = 1,
      sFrontAxis = "y"
    },
    Slide = {
      fSpeed = 2,
      fAcceleration = 3,
      fStopTime = 0.5,
      fRange = 0,
      sAxis = "x"
    },
    fUseDistance = 2.5,
    bLocked = 0,
    bSquashPlayers = 0,
    bActivatePortal = 0,
    bUsable = 1,
    UseMessage = "@use_door"
  },
  PhysParams = {mass = 0, density = 0},
  Server = {},
  Client = {},
  Editor = {Icon = "door.bmp", IconOnTop = 1},
  hOnMoveOpenTriggerID = nil,
  hOnMoveCloseTriggerID = nil,
  hOnStopTriggerID = nil,
  hOnClosedTriggerID = nil,
  tObstructionType = {},
  bIsActive = 0
}
DoorVars = {
  goalAngle = {
    x = 0,
    y = 0,
    z = 0
  },
  currAngle = {
    x = 0,
    y = 0,
    z = 0
  },
  modelAngle = {
    x = 0,
    y = 0,
    z = 0
  },
  goalPos = {
    x = 0,
    y = 0,
    z = 0
  },
  currPos = {
    x = 0,
    y = 0,
    z = 0
  },
  modelPos = {
    x = 0,
    y = 0,
    z = 0
  },
  locked = false
}
function CreateDoor(A0_4982)
  mergef(A0_4982, DoorVars, 1)
end
DOOR_TOGGLE = 0
DOOR_OPEN = 1
DOOR_CLOSE = 2
Net.Expose({
  Class = Door,
  ClientMethods = {
    ClSlide = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      BOOL
    },
    ClRotate = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      BOOL,
      BOOL
    }
  },
  ServerMethods = {
    SvRequestOpen = {
      RELIABLE_UNORDERED,
      POST_ATTACH,
      ENTITYID,
      BOOL
    }
  },
  ServerProperties = {}
})
function Door._LookupTriggerIDs(A0_4983)
  A0_4983.hOnMoveOpenTriggerID = AudioUtils.LookupTriggerID(A0_4983.Properties.Audio.audioTriggerOnMoveOpenTrigger)
  A0_4983.hOnMoveCloseTriggerID = AudioUtils.LookupTriggerID(A0_4983.Properties.Audio.audioTriggerOnMoveCloseTrigger)
  A0_4983.hOnStopTriggerID = AudioUtils.LookupTriggerID(A0_4983.Properties.Audio.audioTriggerOnStopTrigger)
  A0_4983.hOnClosedTriggerID = AudioUtils.LookupTriggerID(A0_4983.Properties.Audio.audioTriggerOnClosedTrigger)
end
function Door._LookupObstructionSwitchIDs(A0_4984)
  A0_4984.tObstructionType = AudioUtils.LookupObstructionSwitchAndStates()
end
function Door._SetObstruction(A0_4985)
  local L1_4986, L2_4987, L3_4988, L5_4989
  L1_4986 = A0_4985.Properties
  L1_4986 = L1_4986.Audio
  L1_4986 = L1_4986.eiSoundObstructionType
  L1_4986 = L1_4986 + 1
  L2_4987 = A0_4985.tObstructionType
  L2_4987 = L2_4987.hSwitchID
  if L2_4987 ~= nil then
    L2_4987 = A0_4985.tObstructionType
    L2_4987 = L2_4987.tStateIDs
    L2_4987 = L2_4987[L1_4986]
    if L2_4987 ~= nil then
      L3_4988 = A0_4985
      L2_4987 = A0_4985.SetAudioSwitchState
      L5_4989 = A0_4985.tObstructionType
      L5_4989 = L5_4989.hSwitchID
      L2_4987(L3_4988, L5_4989, A0_4985.tObstructionType.tStateIDs[L1_4986], A0_4985:GetDefaultAuxAudioProxyID())
    end
  end
end
function Door._Activate(A0_4990, A1_4991)
  A0_4990.bIsActive = A1_4991
  A0_4990:Activate(A1_4991)
end
function Door.OnLoad(A0_4992, A1_4993)
  local L2_4994
  L2_4994 = A1_4993.rotationUpdate
  A0_4992.rotationUpdate = L2_4994
  L2_4994 = A1_4993.slideUpdate
  A0_4992.slideUpdate = L2_4994
  L2_4994 = A1_4993.goalAngle
  A0_4992.goalAngle = L2_4994
  L2_4994 = A1_4993.currAngle
  A0_4992.currAngle = L2_4994
  L2_4994 = A1_4993.modelAngle
  A0_4992.modelAngle = L2_4994
  L2_4994 = A1_4993.goalPos
  A0_4992.goalPos = L2_4994
  L2_4994 = A1_4993.currPos
  A0_4992.currPos = L2_4994
  L2_4994 = A1_4993.modelPos
  A0_4992.modelPos = L2_4994
  L2_4994 = A1_4993.locked
  A0_4992.locked = L2_4994
  L2_4994 = A1_4993.bIsActive
  A0_4992.bIsActive = L2_4994
  L2_4994 = A1_4993.action
  A0_4992.action = L2_4994
end
function Door.OnSave(A0_4995, A1_4996)
  local L2_4997
  L2_4997 = A0_4995.rotationUpdate
  A1_4996.rotationUpdate = L2_4997
  L2_4997 = A0_4995.slideUpdate
  A1_4996.slideUpdate = L2_4997
  L2_4997 = A0_4995.goalAngle
  A1_4996.goalAngle = L2_4997
  L2_4997 = A0_4995.currAngle
  A1_4996.currAngle = L2_4997
  L2_4997 = A0_4995.modelAngle
  A1_4996.modelAngle = L2_4997
  L2_4997 = A0_4995.goalPos
  A1_4996.goalPos = L2_4997
  L2_4997 = A0_4995.currPos
  A1_4996.currPos = L2_4997
  L2_4997 = A0_4995.modelPos
  A1_4996.modelPos = L2_4997
  L2_4997 = A0_4995.locked
  A1_4996.locked = L2_4997
  L2_4997 = A0_4995.bIsActive
  A1_4996.bIsActive = L2_4997
  L2_4997 = A0_4995.action
  A1_4996.action = L2_4997
end
function Door.OnPropertyChange(A0_4998)
  A0_4998:Reset()
end
function Door.OnReset(A0_4999)
  A0_4999:Reset()
end
function Door.OnTransformFromEditorDone(A0_5000)
  A0_5000:Reset()
end
function Door.OnSpawn(A0_5001)
  CryAction.CreateGameObjectForEntity(A0_5001.id)
  CryAction.BindGameObjectToNetwork(A0_5001.id)
  CryAction.ForceGameObjectUpdate(A0_5001.id, true)
  A0_5001.isServer = CryAction.IsServer()
  A0_5001.isClient = CryAction.IsClient()
  A0_5001:Reset(1)
end
function Door.OnDestroy(A0_5002)
  local L1_5003
end
function Door.DoPhysicalize(A0_5004)
  if A0_5004.currModel ~= A0_5004.Properties.fileModel then
    CryAction.ActivateExtensionForGameObject(A0_5004.id, "ScriptControlledPhysics", false)
    A0_5004:LoadObject(0, A0_5004.Properties.fileModel)
    A0_5004:Physicalize(0, PE_RIGID, A0_5004.PhysParams)
    CryAction.ActivateExtensionForGameObject(A0_5004.id, "ScriptControlledPhysics", true)
  end
  if tonumber(A0_5004.Properties.bSquashPlayers) == 0 then
    A0_5004:SetPhysicParams(PHYSICPARAM_FLAGS, {flags_mask = pef_cannot_squash_players, flags = pef_cannot_squash_players})
  end
  A0_5004.currModel = A0_5004.Properties.fileModel
end
function Door.ResetAction(A0_5005)
  A0_5005.action = DOOR_CLOSE
  A0_5005.rotationUpdate = nil
  A0_5005.slideUpdate = nil
  if AI then
    AI.ModifySmartObjectStates(A0_5005.id, "Closed-Open")
  end
end
function Door.Reset(A0_5006, A1_5007)
  local L2_5008
  if A1_5007 then
    L2_5008 = CreateDoor
    L2_5008(A0_5006)
  end
  L2_5008 = A0_5006._Activate
  L2_5008(A0_5006, 0)
  if A1_5007 then
    L2_5008 = A0_5006.ResetAction
    L2_5008(A0_5006)
  end
  L2_5008 = A0_5006.DoPhysicalize
  L2_5008(A0_5006)
  L2_5008 = A0_5006.action
  if L2_5008 == DOOR_CLOSE then
    L2_5008 = A0_5006.rotationUpdate
    if not L2_5008 then
      L2_5008 = A0_5006.slideUpdate
      if not L2_5008 then
        L2_5008 = A0_5006.GetWorldAngles
        L2_5008(A0_5006, A0_5006.modelAngle)
        L2_5008 = A0_5006.GetWorldPos
        L2_5008(A0_5006, A0_5006.modelPos)
      end
    end
  end
  L2_5008 = A0_5006.ResetAction
  L2_5008(A0_5006)
  L2_5008 = CopyVector
  L2_5008(A0_5006.currAngle, A0_5006.modelAngle)
  L2_5008 = CopyVector
  L2_5008(A0_5006.goalAngle, A0_5006.modelAngle)
  L2_5008 = CopyVector
  L2_5008(A0_5006.currPos, A0_5006.modelPos)
  L2_5008 = CopyVector
  L2_5008(A0_5006.goalPos, A0_5006.modelPos)
  L2_5008 = A0_5006.portal
  if L2_5008 then
    L2_5008 = System
    L2_5008 = L2_5008.ActivatePortal
    L2_5008(A0_5006:GetWorldPos(), 0, A0_5006.id)
  end
  L2_5008 = A0_5006.UpdateRotation
  L2_5008(A0_5006, 0)
  L2_5008 = A0_5006.UpdateSlide
  L2_5008(A0_5006, 0)
  L2_5008 = A0_5006.AwakePhysics
  L2_5008(A0_5006, 1)
  L2_5008 = A0_5006.Properties
  L2_5008 = L2_5008.bLocked
  L2_5008 = L2_5008 ~= 0
  A0_5006.locked = L2_5008
  L2_5008 = A0_5006.Properties
  L2_5008 = L2_5008.bActivatePortal
  L2_5008 = L2_5008 ~= 0
  A0_5006.portal = L2_5008
  L2_5008 = string
  L2_5008 = L2_5008.lower
  L2_5008 = L2_5008(A0_5006.Properties.Rotation.sFrontAxis)
  if string.find(L2_5008, "x") then
    A0_5006.frontAxis = A0_5006:GetDirectionVector(0)
  elseif string.find(L2_5008, "y") then
    A0_5006.frontAxis = A0_5006:GetDirectionVector(1)
  else
    A0_5006.frontAxis = A0_5006:GetDirectionVector(2)
  end
  if L2_5008 == "-x" or L2_5008 == "-y" or L2_5008 == "-z" then
    A0_5006.frontAxis.x = -A0_5006.frontAxis.x
    A0_5006.frontAxis.y = -A0_5006.frontAxis.y
    A0_5006.frontAxis.z = -A0_5006.frontAxis.z
  end
  if AI then
    if A0_5006.locked == true then
      AI.SetSmartObjectState(A0_5006.id, "Locked,Closed")
    else
      AI.SetSmartObjectState(A0_5006.id, "Closed")
    end
  end
  if 0 > A0_5006.Properties.Audio.eiSoundObstructionType then
    A0_5006.Properties.Audio.eiSoundObstructionType = 0
  elseif 1 < A0_5006.Properties.Audio.eiSoundObstructionType then
    A0_5006.Properties.Audio.eiSoundObstructionType = 2
  end
  A0_5006:_LookupTriggerIDs()
  A0_5006:_LookupObstructionSwitchIDs()
  A0_5006:_SetObstruction()
end
function Door.UpdateRotation(A0_5009, A1_5010)
  local L2_5011, L3_5012
  L3_5012 = A0_5009
  L2_5011 = A0_5009.GetWorldAngles
  L2_5011 = L2_5011(L3_5012, g_Vectors.temp_v1)
  L3_5012 = A0_5009.goalAngle
  if L2_5011.x < 0 and L3_5012.x > 0 then
    L2_5011.x = L2_5011.x + 2 * math.pi
  end
  if L2_5011.x > 0 and L3_5012.x < 0 then
    L2_5011.x = L2_5011.x - 2 * math.pi
  end
  if 0 > L2_5011.y and 0 < L3_5012.y then
    L2_5011.y = L2_5011.y + 2 * math.pi
  end
  if 0 < L2_5011.y and 0 > L3_5012.y then
    L2_5011.y = L2_5011.y - 2 * math.pi
  end
  if 0 > L2_5011.z and 0 < L3_5012.z then
    L2_5011.z = L2_5011.z + 2 * math.pi
  end
  if 0 < L2_5011.z and 0 > L3_5012.z then
    L2_5011.z = L2_5011.z - 2 * math.pi
  end
  if vecLenSq(vecSub(L3_5012, L2_5011)) < 1.0E-4 then
    A0_5009.rotationUpdate = nil
    if A0_5009.action == DOOR_CLOSE and not A0_5009.slideUpdate and A0_5009.portal then
      System.ActivatePortal(A0_5009:GetWorldPos(), 0, A0_5009.id)
    end
  end
end
function Door.UpdateSlide(A0_5013, A1_5014)
  local L2_5015, L3_5016
  L3_5016 = A0_5013
  L2_5015 = A0_5013.GetWorldPos
  L2_5015 = L2_5015(L3_5016, g_Vectors.temp_v1)
  L3_5016 = A0_5013.goalPos
  if vecLenSq(vecSub(L3_5016, L2_5015)) < 1.0E-4 then
    A0_5013.slideUpdate = nil
    if A0_5013.action == DOOR_CLOSE and not A0_5013.rotationUpdate and A0_5013.portal then
      System.ActivatePortal(A0_5013:GetWorldPos(), 0, A0_5013.id)
    end
  end
end
function Door.IsUsable(A0_5017, A1_5018)
  local L2_5019
  L2_5019 = 0
  return L2_5019
end
function Door.GetUsableMessage(A0_5020, A1_5021)
  local L2_5022
  L2_5022 = ""
  return L2_5022
end
function Door.Server.OnCollision(A0_5023, A1_5024)
  if A1_5024.target_id ~= nil then
    if System.GetEntityClass(A1_5024.target_id) == "ArkProjectileGoo" then
      BroadcastEvent(A0_5023, "_Gooed")
    elseif System.GetEntityClass(A1_5024.target_id) == "ArkAmberProjectile" then
      BroadcastEvent(A0_5023, "_Gooed")
    end
  end
end
function Door.OnUsed(A0_5025, A1_5026)
  if A0_5025:IsUsable(A1_5026) ~= 1 then
    return nil
  end
  A0_5025.server:SvRequestOpen(A1_5026.id, A0_5025.action ~= DOOR_OPEN)
end
function Door.Server.OnUpdate(A0_5027, A1_5028)
  A0_5027:Update(A1_5028)
end
function Door.Client.OnUpdate(A0_5029, A1_5030)
  if not A0_5029.isServer then
    A0_5029:Update(A1_5030)
  end
end
function Door.Update(A0_5031, A1_5032)
  if A0_5031.rotationUpdate then
    A0_5031:UpdateRotation(A1_5032)
  end
  if A0_5031.slideUpdate then
    A0_5031:UpdateSlide(A1_5032)
  end
  if not A0_5031.slideUpdate and not A0_5031.rotationUpdate and A0_5031.bIsActive == 1 then
    A0_5031:_Activate(0)
  end
  if true then
    if A0_5031.action == DOOR_CLOSE then
      if A0_5031.hOnClosedTriggerID ~= nil then
        A0_5031:ExecuteAudioTrigger(A0_5031.hOnClosedTriggerID, A0_5031:GetDefaultAuxAudioProxyID())
      end
    elseif A0_5031.hOnStopTriggerID ~= nil then
      A0_5031:ExecuteAudioTrigger(A0_5031.hOnStopTriggerID, A0_5031:GetDefaultAuxAudioProxyID())
    end
  end
end
function Door.Server.OnInitClient(A0_5033, A1_5034)
  local L2_5035
  L2_5035 = A0_5033.Properties
  L2_5035 = L2_5035.Rotation
  L2_5035 = L2_5035.fRange
  if L2_5035 ~= 0 then
    L2_5035 = A0_5033.action
    L2_5035 = L2_5035 == DOOR_OPEN
    A0_5033.onClient:ClRotate(A1_5034, L2_5035, A0_5033.fwd or false)
  end
  L2_5035 = A0_5033.Properties
  L2_5035 = L2_5035.Slide
  L2_5035 = L2_5035.fRange
  if L2_5035 ~= 0 then
    L2_5035 = A0_5033.action
    L2_5035 = L2_5035 == DOOR_OPEN
    A0_5033.onClient:ClSlide(A1_5034, L2_5035)
  end
  L2_5035 = A0_5033._LookupTriggerIDs
  L2_5035(A0_5033)
  L2_5035 = A0_5033._LookupObstructionSwitchIDs
  L2_5035(A0_5033)
  L2_5035 = A0_5033._SetObstruction
  L2_5035(A0_5033)
end
function Door.Server.SvRequestOpen(A0_5036, A1_5037, A2_5038)
  local L3_5039, L4_5040
  L3_5039 = DOOR_TOGGGLE
  if A2_5038 then
    L3_5039 = DOOR_OPEN
  else
    L3_5039 = DOOR_CLOSE
  end
  L4_5040 = System
  L4_5040 = L4_5040.GetEntity
  L4_5040 = L4_5040(A1_5037)
  A0_5036:Open(L4_5040, L3_5039)
end
function Door.Client.ClRotate(A0_5041, A1_5042, A2_5043)
  if not A0_5041.isServer or g_gameRules.game:IsDemoMode() ~= 0 then
    if A1_5042 then
      A0_5041.action = DOOR_OPEN
    else
      A0_5041.action = DOOR_CLOSE
    end
    A0_5041:Rotate(A1_5042, A2_5043)
  end
end
function Door.Client.ClSlide(A0_5044, A1_5045)
  if not A0_5044.isServer or g_gameRules.game:IsDemoMode() ~= 0 then
    if A1_5045 then
      A0_5044.action = DOOR_OPEN
    else
      A0_5044.action = DOOR_CLOSE
    end
    A0_5044:Slide(A1_5045)
  end
end
function Door.Slide(A0_5046, A1_5047)
  local L2_5048, L3_5049, L4_5050
  if A1_5047 then
    L2_5048 = A0_5046.Properties
    L2_5048 = L2_5048.Slide
    L2_5048 = L2_5048.sAxis
    L3_5049 = A0_5046.Properties
    L3_5049 = L3_5049.Slide
    L3_5049 = L3_5049.fRange
    L4_5050 = g_Vectors
    L4_5050 = L4_5050.temp_v1
    if L2_5048 == "X" or L2_5048 == "x" then
      L4_5050 = A0_5046:GetDirectionVector(0)
    elseif L2_5048 == "Y" or L2_5048 == "y" then
      L4_5050 = A0_5046:GetDirectionVector(1)
    else
      L4_5050 = A0_5046:GetDirectionVector(2)
    end
    A0_5046.goalPos.x = A0_5046.modelPos.x + L4_5050.x * L3_5049
    A0_5046.goalPos.y = A0_5046.modelPos.y + L4_5050.y * L3_5049
    A0_5046.goalPos.z = A0_5046.modelPos.z + L4_5050.z * L3_5049
  else
    L2_5048 = CopyVector
    L3_5049 = A0_5046.goalPos
    L4_5050 = A0_5046.modelPos
    L2_5048(L3_5049, L4_5050)
  end
  L2_5048 = A0_5046.scp
  L3_5049 = L2_5048
  L2_5048 = L2_5048.MoveTo
  L4_5050 = A0_5046.goalPos
  L2_5048(L3_5049, L4_5050, A0_5046:GetSpeed(), A0_5046.Properties.Slide.fSpeed, A0_5046.Properties.Slide.fAcceleration, A0_5046.Properties.Slide.fStopTime)
  L2_5048 = A0_5046.portal
  if L2_5048 then
    L2_5048 = System
    L2_5048 = L2_5048.ActivatePortal
    L4_5050 = A0_5046
    L3_5049 = A0_5046.GetWorldPos
    L3_5049 = L3_5049(L4_5050)
    L4_5050 = 1
    L2_5048(L3_5049, L4_5050, A0_5046.id)
  end
  A0_5046.slideUpdate = 1
  L3_5049 = A0_5046
  L2_5048 = A0_5046._Activate
  L4_5050 = 1
  L2_5048(L3_5049, L4_5050)
  L3_5049 = A0_5046
  L2_5048 = A0_5046.Sound
  L4_5050 = A1_5047
  L2_5048(L3_5049, L4_5050)
end
function Door.Rotate(A0_5051, A1_5052, A2_5053)
  if A1_5052 then
    if not A2_5053 then
    end
    if A0_5051.Properties.Rotation.sAxis == "X" or A0_5051.Properties.Rotation.sAxis == "x" then
      A0_5051.goalAngle.x = A0_5051.modelAngle.x + -math.rad(A0_5051.Properties.Rotation.fRange)
    elseif A0_5051.Properties.Rotation.sAxis == "Y" or A0_5051.Properties.Rotation.sAxis == "y" then
      A0_5051.goalAngle.y = A0_5051.modelAngle.y + -math.rad(A0_5051.Properties.Rotation.fRange)
    else
      A0_5051.goalAngle.z = A0_5051.modelAngle.z + -math.rad(A0_5051.Properties.Rotation.fRange)
    end
  else
    CopyVector(A0_5051.goalAngle, A0_5051.modelAngle)
  end
  if A0_5051.portal then
    System.ActivatePortal(A0_5051:GetWorldPos(), 1, A0_5051.id)
  end
  A0_5051.scp:RotateToAngles(A0_5051.goalAngle, A0_5051.scp:GetAngularSpeed(), A0_5051.Properties.Rotation.fSpeed, A0_5051.Properties.Rotation.fAcceleration, A0_5051.Properties.Rotation.fStopTime)
  A0_5051.rotationUpdate = 1
  A0_5051:_Activate(1)
  A0_5051:Sound(A1_5052)
end
function Door.Sound(A0_5054, A1_5055)
  local L2_5056, L3_5057, L4_5058
  if A1_5055 then
    L2_5056 = A0_5054.hOnMoveOpenTriggerID
    if L2_5056 ~= nil then
      L3_5057 = A0_5054
      L2_5056 = A0_5054.ExecuteAudioTrigger
      L4_5058 = A0_5054.hOnMoveOpenTriggerID
      L2_5056(L3_5057, L4_5058, A0_5054:GetDefaultAuxAudioProxyID())
    end
  else
    L2_5056 = A0_5054.hOnMoveCloseTriggerID
    if L2_5056 ~= nil then
      L3_5057 = A0_5054
      L2_5056 = A0_5054.ExecuteAudioTrigger
      L4_5058 = A0_5054.hOnMoveCloseTriggerID
      L2_5056(L3_5057, L4_5058, A0_5054:GetDefaultAuxAudioProxyID())
    end
  end
end
function Door.Open(A0_5059, A1_5060, A2_5061)
  local L3_5062, L4_5063, L5_5064, L6_5065, L7_5066, L8_5067
  L3_5062 = A0_5059.action
  L4_5063 = A0_5059.locked
  if L4_5063 then
    L4_5063 = 0
    return L4_5063
  end
  L4_5063 = DOOR_TOGGLE
  if A2_5061 == L4_5063 then
    L4_5063 = A0_5059.action
    L5_5064 = DOOR_OPEN
    if L4_5063 == L5_5064 then
      L4_5063 = DOOR_CLOSE
      A0_5059.action = L4_5063
    else
      L4_5063 = DOOR_OPEN
      A0_5059.action = L4_5063
    end
  else
    A0_5059.action = A2_5061
  end
  L4_5063 = A0_5059.action
  if L3_5062 == L4_5063 then
    L4_5063 = 0
    return L4_5063
  end
  L4_5063 = A0_5059.Properties
  L4_5063 = L4_5063.Rotation
  L4_5063 = L4_5063.fRange
  if L4_5063 ~= 0 then
    L4_5063 = false
    L5_5064 = true
    L6_5065 = A0_5059.action
    L7_5066 = DOOR_OPEN
    if L6_5065 == L7_5066 then
      if A1_5060 then
        L6_5065 = tonumber
        L7_5066 = A0_5059.Properties
        L7_5066 = L7_5066.Rotation
        L7_5066 = L7_5066.bRelativeToUser
        L6_5065 = L6_5065(L7_5066)
        if L6_5065 ~= 0 then
          L6_5065 = g_Vectors
          L6_5065 = L6_5065.temp_v2
          L8_5067 = A0_5059
          L7_5066 = A0_5059.GetWorldPos
          L7_5066 = L7_5066(L8_5067, g_Vectors.temp_v3)
          L8_5067 = A1_5060.GetWorldPos
          L8_5067 = L8_5067(A1_5060, g_Vectors.temp_v4)
          SubVectors(L6_5065, L7_5066, L8_5067)
          NormalizeVector(L6_5065)
          if 0 > dotproduct3d(A0_5059.frontAxis, L6_5065) then
            L5_5064 = false
          end
        end
      end
      L4_5063 = true
    end
    A0_5059.fwd = L5_5064
    L7_5066 = A0_5059
    L6_5065 = A0_5059.Rotate
    L8_5067 = L4_5063
    L6_5065(L7_5066, L8_5067, L5_5064)
    L6_5065 = A0_5059.allClients
    L7_5066 = L6_5065
    L6_5065 = L6_5065.ClRotate
    L8_5067 = L4_5063
    L6_5065(L7_5066, L8_5067, L5_5064)
  end
  L4_5063 = A0_5059.Properties
  L4_5063 = L4_5063.Slide
  L4_5063 = L4_5063.fRange
  if L4_5063 ~= 0 then
    L4_5063 = A0_5059.action
    L5_5064 = DOOR_OPEN
    L4_5063 = L4_5063 == L5_5064
    L6_5065 = A0_5059
    L5_5064 = A0_5059.Slide
    L7_5066 = L4_5063
    L5_5064(L6_5065, L7_5066)
    L5_5064 = A0_5059.allClients
    L6_5065 = L5_5064
    L5_5064 = L5_5064.ClSlide
    L7_5066 = L4_5063
    L5_5064(L6_5065, L7_5066)
  end
  L4_5063 = AI
  if L4_5063 then
    L4_5063 = A0_5059.action
    L5_5064 = DOOR_OPEN
    if L4_5063 == L5_5064 then
      L4_5063 = AI
      L4_5063 = L4_5063.ModifySmartObjectStates
      L5_5064 = A0_5059.id
      L6_5065 = "Open-Closed"
      L4_5063(L5_5064, L6_5065)
      L4_5063 = BroadcastEvent
      L5_5064 = A0_5059
      L6_5065 = "Open"
      L4_5063(L5_5064, L6_5065)
    else
      L4_5063 = A0_5059.action
      L5_5064 = DOOR_CLOSE
      if L4_5063 == L5_5064 then
        L4_5063 = AI
        L4_5063 = L4_5063.ModifySmartObjectStates
        L5_5064 = A0_5059.id
        L6_5065 = "Closed-Open"
        L4_5063(L5_5064, L6_5065)
        L4_5063 = BroadcastEvent
        L5_5064 = A0_5059
        L6_5065 = "Close"
        L4_5063(L5_5064, L6_5065)
      end
    end
  end
  L4_5063 = 1
  return L4_5063
end
function Door.Event_Open(A0_5068, A1_5069)
  if A1_5069 == A0_5068 then
    return
  end
  A0_5068:Open(A1_5069, DOOR_OPEN)
end
function Door.Event_Close(A0_5070, A1_5071)
  if A1_5071 == A0_5070 then
    return
  end
  A0_5070:Open(A1_5071, DOOR_CLOSE)
end
function Door.Event_UnLock(A0_5072, A1_5073)
  A0_5072.locked = false
  if AI then
    AI.ModifySmartObjectStates(A0_5072.id, "-Locked")
  end
end
function Door.Event_Lock(A0_5074, A1_5075)
  A0_5074.locked = true
  if AI then
    AI.ModifySmartObjectStates(A0_5074.id, "Locked")
  end
end
Door.FlowEvents = {
  Inputs = {
    Close = {
      Door.Event_Close,
      "bool"
    },
    Open = {
      Door.Event_Open,
      "bool"
    },
    Lock = {
      Door.Event_Lock,
      "bool"
    },
    UnLock = {
      Door.Event_UnLock,
      "bool"
    }
  },
  Outputs = {
    Close = "bool",
    Open = "bool",
    Lock = "bool",
    UnLock = "bool",
    _Gooed = "bool"
  }
}
