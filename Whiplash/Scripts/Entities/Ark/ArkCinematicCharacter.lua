Script.ReloadScript("Scripts/Entities/Physics/BasicEntity.lua")
SEQUENCE_NOT_STARTED = 0
SEQUENCE_PLAYING = 1
SEQUENCE_STOPPED = 2
NPC_SPEAKER = 1
ArkCinematicCharacter = {
  Properties = {
    ActionController = "Animations/Mannequin/ADB/Ai_Human_ControllerDefs.xml",
    AnimDatabase3P = "Animations/Mannequin/ADB/Ai_Human_Database.adb",
    metaTags_ArkMetaTags = "",
    Animation = {
      Animation = "Default",
      Speed = 1,
      bLoop = 1,
      bPlaying = 1,
      bAlwaysUpdate = 0,
      playerAnimationState = "",
      bPhysicalizeAfterAnimation = 0
    },
    Physics = {
      bArticulated = 0,
      bRigidBody = 0,
      bPushableByPlayers = 0,
      bPushableByAI = 0,
      bBulletCollisionEnabled = 1
    },
    Rendering = {bWrinkleMap = 0},
    Cinematic = {bOnDemandModelLoad = 0, bRenderAlways = 0},
    ActivatePhysicsThreshold = 0,
    ActivatePhysicsDist = 50,
    bNoFriendlyFire = 0,
    object_Model = "objects/props/maritime/windsock/windsock.cga",
    MultiplayerOptions = {bNetworked = 0},
    ArkCharacter = {character_Character = "", bMuteVO = 0},
    ArkDialog = {audioProxyJointName = "head_jnt"},
    ArkSpeakerExtension = {nSpeakerType = NPC_SPEAKER},
    LipSync = {
      TransitionQueueSettings = {
        nCharacterSlot = 0,
        nAnimLayer = 12,
        sDefaultAnimName = "MissingLipSyncAnim"
      }
    }
  },
  ArkEmotionExtension = {nAnimLayer = 7},
  PHYSICALIZEAFTER_TIMER = 1,
  POSTQL_TIMER = 2,
  Client = {},
  Server = {},
  Editor = {
    Icon = "animobject.bmp",
    IconOnTop = 0
  }
}
Net.Expose({
  Class = ArkCinematicCharacter,
  ClientMethods = {
    ClEvent_StartAnimation = {
      RELIABLE_ORDERED,
      NO_ATTACH,
      FLOAT
    },
    ClEvent_ResetAnimation = {RELIABLE_ORDERED, NO_ATTACH},
    ClSync = {
      RELIABLE_ORDERED,
      NO_ATTACH,
      FLOAT,
      FLOAT,
      FLOAT
    }
  },
  ServerMethods = {
    SVSync = {RELIABLE_ORDERED, NO_ATTACH}
  },
  ServerProperties = {}
})
MakeDerivedEntityOverride(ArkCinematicCharacter, BasicEntity)
function ArkCinematicCharacter.LoadModelOnDemand(A0_3444)
  local L1_3445
  L1_3445 = A0_3444.Properties
  L1_3445 = L1_3445.Cinematic
  L1_3445 = L1_3445.bOnDemandModelLoad
  return L1_3445
end
function ArkCinematicCharacter.SetFromProperties(A0_3446)
  local L1_3447, L2_3448
  A0_3446.controllingAnimHere = true
  A0_3446.isModelLoaded = false
  A0_3446.isRagdollized = false
  L1_3447 = BasicEntity
  L1_3447 = L1_3447.SetFromProperties
  L2_3448 = A0_3446
  L1_3447(L2_3448)
  A0_3446.touchedByFlownode = false
  A0_3446.animstarted = 0
  L1_3447 = SEQUENCE_NOT_STARTED
  A0_3446.sequenceStatus = L1_3447
  L1_3447 = A0_3446.Properties
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.bPlaying
  A0_3446.bAnimPlaying = L2_3448
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.bLoop
  A0_3446.bAnimLoop = L2_3448
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.Animation
  A0_3446.animName = L2_3448
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.bPlaying
  if L2_3448 == 1 then
    L2_3448 = A0_3446.DoStartAnimation
    L2_3448(A0_3446)
  else
    L2_3448 = A0_3446.ResetAnimation
    L2_3448(A0_3446, 0, -1)
  end
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.bAlwaysUpdate
  if L2_3448 == 1 then
    L2_3448 = A0_3446.Activate
    L2_3448(A0_3446, 1)
  end
  L2_3448 = A0_3446.SetAnimationSpeed
  L2_3448(A0_3446, 0, 0, L1_3447.Animation.Speed)
  L2_3448 = L1_3447.Animation
  L2_3448 = L2_3448.Speed
  A0_3446.animationSpeed = L2_3448
  A0_3446.curAnimTime = 0
  L2_3448 = A0_3446.Properties
  L2_3448 = L2_3448.ActivatePhysicsThreshold
  if L2_3448 > 0 then
    L2_3448 = {}
    L2_3448.threshold = A0_3446.Properties.ActivatePhysicsThreshold
    L2_3448.detach_distance = A0_3446.Properties.ActivatePhysicsDist
    A0_3446:SetPhysicParams(PHYSICPARAM_AUTO_DETACHMENT, L2_3448)
  end
  L2_3448 = A0_3446.CheckShaderParamCallbacks
  L2_3448(A0_3446)
end
function ArkCinematicCharacter.SetupModel(A0_3449)
  if A0_3449:LoadModelOnDemand() == 0 or System.IsEditor() then
    A0_3449:LoadAndPhysicalizeModel()
  else
    Game.CacheResource("ArkCinematicCharacter.lua", A0_3449.Properties.object_Model, eGameCacheResourceType_StaticObject, 0)
  end
end
function ArkCinematicCharacter.LoadAndPhysicalizeModel(A0_3450)
  if not A0_3450.isModelLoaded then
    A0_3450:LoadObject(0, A0_3450.Properties.object_Model)
    A0_3450:RenderAlways(A0_3450.Properties.Cinematic.bRenderAlways)
    if A0_3450.Properties.Physics.bPhysicalize == 1 then
      A0_3450:PhysicalizeThis()
    end
    A0_3450.isModelLoaded = true
    CryAction.CreateGameObjectForEntity(A0_3450.id)
    CryAction.ActivateExtensionForGameObject(A0_3450.id, "ArkSpeakerExtension", true)
    CryAction.ActivateExtensionForGameObject(A0_3450.id, "ArkEmotionExtension", true)
    return 1
  end
  return 0
end
function ArkCinematicCharacter.UnloadModel(A0_3451)
  if A0_3451.isModelLoaded then
    A0_3451:DestroyPhysics()
    A0_3451:FreeSlot(0)
    A0_3451.isModelLoaded = false
  end
end
function ArkCinematicCharacter.OnSpawn(A0_3452)
  if A0_3452.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_3452:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  A0_3452.isRagdollized = false
  BasicEntity.OnSpawn(A0_3452)
  if A0_3452.Properties.Animation.bAlwaysUpdate == 1 then
    CryAction.CreateGameObjectForEntity(A0_3452.id)
    CryAction.BindGameObjectToNetwork(A0_3452.id)
    CryAction.ForceGameObjectUpdate(A0_3452.id, true)
    A0_3452:Activate(1)
  end
end
function ArkCinematicCharacter.OnReset(A0_3453)
  BasicEntity.OnReset(A0_3453)
  A0_3453.bAnimPlaying = 0
  A0_3453:SetFromProperties()
  A0_3453.sequenceStatus = SEQUENCE_NOT_STARTED
end
function ArkCinematicCharacter.Event_ResetAnimation(A0_3454)
  A0_3454.controllingAnimHere = true
  A0_3454:ResetAnimation(0, -1)
  A0_3454.animstarted = 0
  if 0 < A0_3454.Properties.Physics.Mass then
    A0_3454:OnReset()
  else
    A0_3454.animName = A0_3454.Properties.Animation.Animation
    A0_3454:StartAnimation(0, A0_3454.Properties.Animation.Animation, 0, 0, 0, false)
  end
  if CryAction.IsServer() and A0_3454.allClients then
    A0_3454.allClients:ClEvent_ResetAnimation()
  end
end
function ArkCinematicCharacter.Event_StartAnimation(A0_3455, A1_3456)
  A0_3455.controllingAnimHere = true
  A0_3455:StartEntityAnimation()
  A0_3455.animstarted = 1
  if CryAction.IsServer() and A0_3455.allClients then
    A0_3455.allClients:ClEvent_StartAnimation(CryAction.GetServerTime())
  end
end
function ArkCinematicCharacter.Event_StopAnimation(A0_3457, A1_3458)
  A0_3457.controllingAnimHere = true
  if A0_3457.animstarted == 1 and A0_3457:IsAnimationRunning(0, 0) then
    A0_3457.curAnimTime = A0_3457:GetAnimationTime(0, 0)
  else
    A0_3457.curAnimTime = 0
  end
  A0_3457:StopAnimation(0, -1)
  A0_3457.animstarted = 0
end
function ArkCinematicCharacter.Event_RagdollizeDerived(A0_3459)
  local L1_3460
  A0_3459.isRagdollized = true
end
function ArkCinematicCharacter.Event_ModelLoad(A0_3461)
  if A0_3461:LoadAndPhysicalizeModel() ~= 0 then
    A0_3461:RelinkAllEntities()
  end
end
function ArkCinematicCharacter.Event_ModelUnload(A0_3462)
  if not System.IsEditor() then
    A0_3462:UnloadModel()
  end
end
function ArkCinematicCharacter.Event_RenderAlwaysEnable(A0_3463)
  A0_3463:RenderAlways(1)
end
function ArkCinematicCharacter.Event_RenderAlwaysDisable(A0_3464)
  A0_3464:RenderAlways(0)
end
function ArkCinematicCharacter.DoStartAnimation(A0_3465)
  A0_3465.animName = A0_3465.Properties.Animation.Animation
  A0_3465:StartAnimation(0, A0_3465.Properties.Animation.Animation, 0, 0, A0_3465.Properties.Animation.Speed, A0_3465.Properties.Animation.bLoop, 1)
  A0_3465:ForceCharacterUpdate(0, true)
  A0_3465.animstarted = 1
  if 0 > A0_3465.Properties.Animation.Speed then
    A0_3465.curAnimTime = 0
  else
    A0_3465.curAnimTime = A0_3465:GetAnimationLength(0, A0_3465.Properties.Animation.Animation)
  end
  A0_3465.startTime = CryAction.GetServerTime()
  if A0_3465.timeDiff then
    A0_3465.startTime = A0_3465.startTime - A0_3465.timeDiff
  end
end
function ArkCinematicCharacter.StartEntityAnimation(A0_3466)
  local L1_3467, L2_3468
  L2_3468 = A0_3466
  L1_3467 = A0_3466.StopAnimation
  L1_3467(L2_3468, 0, -1)
  L2_3468 = A0_3466
  L1_3467 = A0_3466.DoStartAnimation
  L1_3467(L2_3468)
  A0_3466.bStopAnimAfterQL = false
  L2_3468 = A0_3466
  L1_3467 = A0_3466.KillTimer
  L1_3467(L2_3468, A0_3466.POSTQL_TIMER)
  L1_3467 = A0_3466.Properties
  L1_3467 = L1_3467.Animation
  L1_3467 = L1_3467.playerAnimationState
  L2_3468 = g_localActor
  if L2_3468 and L1_3467 ~= "" then
    L2_3468 = g_localActor
    L2_3468 = L2_3468.actor
    L2_3468 = L2_3468.CreateCodeEvent
    L2_3468(L2_3468, {
      event = "animationControl",
      pos = A0_3466:GetWorldPos(),
      angle = A0_3466:GetWorldAngles()
    })
    L2_3468 = g_localActor
    L2_3468 = L2_3468.actor
    L2_3468 = L2_3468.QueueAnimationState
    L2_3468(L2_3468, L1_3467)
    L2_3468 = A0_3466.Properties
    L2_3468 = L2_3468.Animation
    L2_3468 = L2_3468.bPhysicalizeAfterAnimation
    if L2_3468 == 1 then
      L2_3468 = A0_3466.GetAnimationLength
      L2_3468 = L2_3468(A0_3466, 0, A0_3466.Properties.Animation.Animation)
      L2_3468 = L2_3468 * 1000
      L2_3468 = L2_3468 / A0_3466.Properties.Animation.Speed
      A0_3466:SetTimer(A0_3466.PHYSICALIZEAFTER_TIMER, L2_3468)
    end
  end
end
function ArkCinematicCharacter.Client.OnTimer(A0_3469, A1_3470, A2_3471)
  if A1_3470 == A0_3469.PHYSICALIZEAFTER_TIMER then
    A0_3469.Properties.Physics.bRigidBodyActive = 1
    A0_3469.Properties.Physics.bPhysicalize = 1
    A0_3469.Properties.Physics.bRigidBody = 1
    A0_3469.Properties.Physics.bResting = 0
    if A0_3469.bRigidBodyActive ~= A0_3469.Properties.Physics.bRigidBodyActive then
      A0_3469.bRigidBodyActive = A0_3469.Properties.Physics.bRigidBodyActive
      A0_3469:PhysicalizeThis()
    end
    if A0_3469.Properties.Physics.bRigidBody == 1 then
      A0_3469:AwakePhysics(1 - A0_3469.Properties.Physics.bResting)
      A0_3469.bRigidBodyActive = A0_3469.Properties.Physics.bRigidBodyActive
    end
  end
  if A1_3470 == A0_3469.POSTQL_TIMER and A0_3469.sequenceStatus == SEQUENCE_NOT_STARTED then
    A0_3469:StopAnimation(0, -1)
  end
end
function ArkCinematicCharacter.Client.OnUpdate(A0_3472, A1_3473)
  if A0_3472.bStopAnimAfterQL then
    A0_3472.bStopAnimAfterQL = false
    A0_3472:SetTimer(A0_3472.POSTQL_TIMER, 0.2)
    if A0_3472.Properties.Animation.bAlwaysUpdate ~= 1 then
      A0_3472:Activate(0)
    end
  end
end
function ArkCinematicCharacter.OnLoad(A0_3474, A1_3475)
  local L2_3476
  L2_3476 = A1_3475.isRagdollized
  if A0_3474.isRagdollized and not wasRagdollized then
    A0_3474:OnReset()
  end
  A0_3474.bAnimPlaying = A1_3475.bAnimPlaying
  A0_3474.bAnimLoop = A1_3475.bAnimLoop
  A0_3474.animName = A1_3475.animName
  A0_3474.animstarted = A1_3475.animstarted
  A0_3474.health = A1_3475.health
  A0_3474.dead = A1_3475.dead
  A0_3474.controllingAnimHere = A1_3475.bControllingAnimHere
  if A0_3474.controllingAnimHere then
    if A0_3474.animstarted == 1 then
      A0_3474:StartEntityAnimation()
      A0_3474:SetAnimationTime(0, 0, A1_3475.animTime)
    else
      if 0 < A1_3475.animTime then
        if A0_3474.animName ~= A0_3474.Properties.Animation.Animation then
          A0_3474:StartAnimation(0, A0_3474.animName, 0, 0, A0_3474.Properties.Animation.Speed, A0_3474.Properties.Animation.bLoop, 1)
          A0_3474:SetAnimationTime(0, 0, A1_3475.animTime)
        else
          A0_3474:StartEntityAnimation()
        end
        A0_3474:SetAnimationTime(0, 0, A1_3475.animTime)
        A0_3474.bStopAnimAfterQL = true
        A0_3474:Activate(1)
        A0_3474.curAnimTime = A1_3475.animTime
      end
      if A1_3475.animTime == 0 then
        if A1_3475.sequenceStatus == SEQUENCE_NOT_STARTED and A0_3474.sequenceStatus ~= SEQUENCE_NOT_STARTED or A0_3474.touchedByFlownode then
          A0_3474:ResetAnimation(0, -1)
          A0_3474:StartEntityAnimation()
          A0_3474:SetAnimationTime(0, 0, 0)
          A0_3474.bStopAnimAfterQL = true
          A0_3474:Activate(1)
          A0_3474.curAnimTime = 0
        end
      end
    end
  else
    A0_3474.externalAnim_anim = A1_3475.externalAnim_anim
    A0_3474.externalAnim_layer = A1_3475.externalAnim_layer
    A0_3474.externalAnim_loop = A1_3475.externalAnim_loop
    A0_3474:StartAnimation(0, A0_3474.externalAnim_anim, A0_3474.externalAnim_layer, 0, 1, A0_3474.externalAnim_loop)
    A0_3474:SetAnimationTime(0, A0_3474.externalAnim_layer, A1_3475.animTime)
  end
  A0_3474.touchedByFlownode = false
  if A0_3474.Properties.Physics.bArticulated == 0 and A0_3474.Properties.Physics.bRigidBody == 0 and A0_3474.Properties.Physics.bPhysicalize == 1 then
    A0_3474:PhysicalizeThis()
  end
  A0_3474.sequenceStatus = A1_3475.sequenceStatus
end
function ArkCinematicCharacter.OnSave(A0_3477, A1_3478)
  A1_3478.isRagdollized = A0_3477.isRagdollized
  A1_3478.bAnimPlaying = A0_3477.bAnimPlaying
  A1_3478.bAnimLoop = A0_3477.bAnimLoop
  A1_3478.animName = A0_3477.animName
  A1_3478.sequenceStatus = A0_3477.sequenceStatus
  A1_3478.health = A0_3477.health
  A1_3478.dead = A0_3477.dead
  A1_3478.bControllingAnimHere = A0_3477.controllingAnimHere
  if A0_3477.controllingAnimHere then
    if A0_3477.animstarted == 1 and A0_3477:IsAnimationRunning(0, 0) then
      A1_3478.animTime = A0_3477:GetAnimationTime(0, 0)
      A1_3478.animstarted = 1
    else
      A1_3478.animstarted = 0
      if A0_3477.curAnimTime then
        A1_3478.animTime = A0_3477.curAnimTime
      else
        A1_3478.animTime = 0
      end
    end
  else
    A1_3478.externalAnim_anim = A0_3477.externalAnim_anim
    A1_3478.externalAnim_layer = A0_3477.externalAnim_layer
    A1_3478.externalAnim_loop = A0_3477.externalAnim_loop
    A1_3478.animTime = A0_3477:GetAnimationTime(0, A0_3477.externalAnim_layer)
  end
end
ArkCinematicCharacter.FlowEvents.Inputs.ResetAnimation = {
  ArkCinematicCharacter.Event_ResetAnimation,
  "bool"
}
ArkCinematicCharacter.FlowEvents.Inputs.StartAnimation = {
  ArkCinematicCharacter.Event_StartAnimation,
  "bool"
}
ArkCinematicCharacter.FlowEvents.Inputs.StopAnimation = {
  ArkCinematicCharacter.Event_StopAnimation,
  "bool"
}
ArkCinematicCharacter.FlowEvents.Inputs.ModelLoad = {
  ArkCinematicCharacter.Event_ModelLoad,
  "bool"
}
ArkCinematicCharacter.FlowEvents.Inputs.ModelUnload = {
  ArkCinematicCharacter.Event_ModelUnload,
  "bool"
}
function ArkCinematicCharacter.Client.ClEvent_StartAnimation(A0_3479, A1_3480)
  A0_3479.timeDiff = CryAction.GetServerTime() - A1_3480
  if not CryAction.IsServer() then
    A0_3479:Event_StartAnimation()
  end
end
function ArkCinematicCharacter.Client.ClEvent_ResetAnimation(A0_3481)
  if not CryAction.IsServer() then
    A0_3481:Event_ResetAnimation()
  end
end
function ArkCinematicCharacter.SavePhysicalState(A0_3482)
  A0_3482.initPos = A0_3482:GetPos()
  A0_3482.initRot = A0_3482:GetWorldAngles()
  A0_3482.initScale = A0_3482:GetScale()
end
function ArkCinematicCharacter.RestorePhysicalState(A0_3483)
  A0_3483:SetPos(A0_3483.initPos)
  A0_3483:SetWorldAngles(A0_3483.initRot)
  A0_3483:SetScale(A0_3483.initScale)
  A0_3483:ResetAnimation(0, -1)
  A0_3483.animstarted = 0
  if 0 < A0_3483.Properties.Physics.Mass then
    A0_3483:OnReset()
  else
    A0_3483.animName = A0_3483.Properties.Animation.Animation
    A0_3483:StartAnimation(0, A0_3483.Properties.Animation.Animation, 0, 0, 0, false)
  end
end
function ArkCinematicCharacter.PhysicalizeThis(A0_3484)
  local L1_3485, L2_3486
  L1_3485 = BasicEntity
  L1_3485 = L1_3485.PhysicalizeThis
  L2_3486 = A0_3484
  L1_3485(L2_3486)
  L1_3485 = A0_3484.Properties
  L1_3485 = L1_3485.Physics
  L2_3486 = L1_3485.bBulletCollisionEnabled
  if L2_3486 == 0 then
    L2_3486 = {}
    L2_3486.flags_mask = geom_colltype_ray + geom_colltype_foliage_proxy
    L2_3486.flags = geom_colltype_player * L1_3485.bPushableByPlayers
    A0_3484:SetPhysicParams(PHYSICPARAM_PART_FLAGS, L2_3486)
  end
end
function ArkCinematicCharacter.SendSyncToClient(A0_3487, A1_3488)
  if A0_3487.animstarted == 1 then
    animTime = A0_3487:GetAnimationTime(0, 0)
    A0_3487.onClient:ClSync(A1_3488, animTime, A0_3487.startTime, CryAction.GetServerTime())
  end
end
function ArkCinematicCharacter.Server.OnPostInitClient(A0_3489, A1_3490)
  A0_3489:SendSyncToClient(A1_3490)
end
function ArkCinematicCharacter.Server.SVSync(A0_3491, A1_3492)
  A0_3491:SendSyncToClient(A1_3492)
end
function ArkCinematicCharacter.Client.ClSync(A0_3493, A1_3494, A2_3495, A3_3496)
  A0_3493:StartEntityAnimation()
  A0_3493.startTime = A2_3495
  A0_3493:SetAnimationTime(0, 0, A1_3494)
end
function ArkCinematicCharacter.UpdateFromServer(A0_3497)
  A0_3497.server:SVSync()
end
function ArkCinematicCharacter.OnSequenceStart(A0_3498)
  A0_3498.sequenceStatus = SEQUENCE_PLAYING
end
function ArkCinematicCharacter.OnSequenceStop(A0_3499)
  A0_3499.sequenceStatus = SEQUENCE_STOPPED
end
function ArkCinematicCharacter.OnSequenceAnimationStart(A0_3500, A1_3501)
  A0_3500.sequenceStatus = SEQUENCE_PLAYING
  A0_3500.animName = A1_3501
end
function ArkCinematicCharacter.OnSequenceAnimationStop(A0_3502)
  A0_3502.sequenceStatus = SEQUENCE_STOPPED
end
function ArkCinematicCharacter.OnFlowGraphAnimationStart(A0_3503, A1_3504, A2_3505, A3_3506)
  A0_3503.animName = A1_3504
  A0_3503.externalAnim_anim = A1_3504
  A0_3503.controllingAnimHere = false
  A0_3503.externalAnim_layer = A2_3505
  A0_3503.externalAnim_loop = A3_3506
  A0_3503.touchedByFlownode = true
end
function ArkCinematicCharacter.OnFlowGraphAnimationStop(A0_3507)
  if A0_3507.externalAnim_layer then
    A0_3507.curAnimTime = A0_3507:GetAnimationTime(0, A0_3507.externalAnim_layer)
  end
  A0_3507.controllingAnimHere = true
end
function ArkCinematicCharacter.OnFlowGraphAnimationEnd(A0_3508)
  local L1_3509
  A0_3508.curAnimTime = 1
  A0_3508.controllingAnimHere = true
end
