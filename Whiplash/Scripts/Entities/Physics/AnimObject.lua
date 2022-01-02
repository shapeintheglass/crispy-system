Script.ReloadScript("Scripts/Entities/Physics/BasicEntity.lua")
SEQUENCE_NOT_STARTED = 0
SEQUENCE_PLAYING = 1
SEQUENCE_STOPPED = 2
AnimObject = {
  Properties = {
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
    Rendering = {bWrinkleMap = 0, bIsArkSceneWindow = 0},
    Cinematic = {bOnDemandModelLoad = 0, bRenderAlways = 0},
    ActivatePhysicsThreshold = 0,
    ActivatePhysicsDist = 50,
    bNoFriendlyFire = 0,
    object_Model = "objects/props/maritime/windsock/windsock.cga",
    MultiplayerOptions = {bNetworked = 0}
  },
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
  Class = AnimObject,
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
MakeDerivedEntityOverride(AnimObject, BasicEntity)
function AnimObject.LoadModelOnDemand(A0_7428)
  local L1_7429
  L1_7429 = A0_7428.Properties
  L1_7429 = L1_7429.Cinematic
  L1_7429 = L1_7429.bOnDemandModelLoad
  return L1_7429
end
function AnimObject.SetFromProperties(A0_7430)
  local L1_7431, L2_7432
  A0_7430.controllingAnimHere = true
  A0_7430.isModelLoaded = false
  A0_7430.isRagdollized = false
  L1_7431 = BasicEntity
  L1_7431 = L1_7431.SetFromProperties
  L2_7432 = A0_7430
  L1_7431(L2_7432)
  A0_7430.touchedByFlownode = false
  A0_7430.animstarted = 0
  L1_7431 = SEQUENCE_NOT_STARTED
  A0_7430.sequenceStatus = L1_7431
  L1_7431 = A0_7430.Properties
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.bPlaying
  A0_7430.bAnimPlaying = L2_7432
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.bLoop
  A0_7430.bAnimLoop = L2_7432
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.Animation
  A0_7430.animName = L2_7432
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.bPlaying
  if L2_7432 == 1 then
    L2_7432 = A0_7430.DoStartAnimation
    L2_7432(A0_7430)
  else
    L2_7432 = A0_7430.ResetAnimation
    L2_7432(A0_7430, 0, -1)
  end
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.bAlwaysUpdate
  if L2_7432 == 1 then
    L2_7432 = A0_7430.Activate
    L2_7432(A0_7430, 1)
  end
  L2_7432 = A0_7430.SetAnimationSpeed
  L2_7432(A0_7430, 0, 0, L1_7431.Animation.Speed)
  L2_7432 = L1_7431.Animation
  L2_7432 = L2_7432.Speed
  A0_7430.animationSpeed = L2_7432
  A0_7430.curAnimTime = 0
  L2_7432 = A0_7430.Properties
  L2_7432 = L2_7432.ActivatePhysicsThreshold
  if L2_7432 > 0 then
    L2_7432 = {}
    L2_7432.threshold = A0_7430.Properties.ActivatePhysicsThreshold
    L2_7432.detach_distance = A0_7430.Properties.ActivatePhysicsDist
    A0_7430:SetPhysicParams(PHYSICPARAM_AUTO_DETACHMENT, L2_7432)
  end
  L2_7432 = A0_7430.CheckShaderParamCallbacks
  L2_7432(A0_7430)
  L2_7432 = A0_7430.SetAsSceneWindow
  L2_7432(A0_7430, L1_7431.Rendering.bIsArkSceneWindow)
end
function AnimObject.SetupModel(A0_7433)
  if A0_7433:LoadModelOnDemand() == 0 or System.IsEditor() then
    A0_7433:LoadAndPhysicalizeModel()
  else
    Game.CacheResource("AnimObject.lua", A0_7433.Properties.object_Model, eGameCacheResourceType_StaticObject, 0)
  end
end
function AnimObject.LoadAndPhysicalizeModel(A0_7434)
  if not A0_7434.isModelLoaded then
    A0_7434:LoadObject(0, A0_7434.Properties.object_Model)
    A0_7434:RenderAlways(A0_7434.Properties.Cinematic.bRenderAlways)
    if A0_7434.Properties.Physics.bPhysicalize == 1 then
      A0_7434:PhysicalizeThis()
    end
    A0_7434.isModelLoaded = true
    return 1
  end
  return 0
end
function AnimObject.UnloadModel(A0_7435)
  if A0_7435.isModelLoaded then
    A0_7435:DestroyPhysics()
    A0_7435:FreeSlot(0)
    A0_7435.isModelLoaded = false
  end
end
function AnimObject.OnSpawn(A0_7436)
  if A0_7436.Properties.MultiplayerOptions.bNetworked == 0 then
    A0_7436:SetFlags(ENTITY_FLAG_CLIENT_ONLY, 0)
  end
  A0_7436.isRagdollized = false
  BasicEntity.OnSpawn(A0_7436)
  if A0_7436.Properties.Animation.bAlwaysUpdate == 1 then
    CryAction.CreateGameObjectForEntity(A0_7436.id)
    CryAction.BindGameObjectToNetwork(A0_7436.id)
    CryAction.ForceGameObjectUpdate(A0_7436.id, true)
    A0_7436:Activate(1)
  end
end
function AnimObject.OnReset(A0_7437)
  BasicEntity.OnReset(A0_7437)
  A0_7437.bAnimPlaying = 0
  A0_7437:SetFromProperties()
  A0_7437.sequenceStatus = SEQUENCE_NOT_STARTED
end
function AnimObject.Event_ResetAnimation(A0_7438)
  A0_7438.controllingAnimHere = true
  A0_7438:ResetAnimation(0, -1)
  A0_7438.animstarted = 0
  if 0 < A0_7438.Properties.Physics.Mass then
    A0_7438:OnReset()
  else
    A0_7438.animName = A0_7438.Properties.Animation.Animation
    A0_7438:StartAnimation(0, A0_7438.Properties.Animation.Animation, 0, 0, 0, false)
  end
  if CryAction.IsServer() and A0_7438.allClients then
    A0_7438.allClients:ClEvent_ResetAnimation()
  end
end
function AnimObject.Event_StartAnimation(A0_7439, A1_7440)
  A0_7439.controllingAnimHere = true
  A0_7439:StartEntityAnimation()
  A0_7439.animstarted = 1
  if CryAction.IsServer() and A0_7439.allClients then
    A0_7439.allClients:ClEvent_StartAnimation(CryAction.GetServerTime())
  end
end
function AnimObject.Event_StopAnimation(A0_7441, A1_7442)
  A0_7441.controllingAnimHere = true
  if A0_7441.animstarted == 1 and A0_7441:IsAnimationRunning(0, 0) then
    A0_7441.curAnimTime = A0_7441:GetAnimationTime(0, 0)
  else
    A0_7441.curAnimTime = 0
  end
  A0_7441:StopAnimation(0, -1)
  A0_7441.animstarted = 0
end
function AnimObject.Event_RagdollizeDerived(A0_7443)
  local L1_7444
  A0_7443.isRagdollized = true
end
function AnimObject.Event_ModelLoad(A0_7445)
  if A0_7445:LoadAndPhysicalizeModel() ~= 0 then
    A0_7445:RelinkAllEntities()
  end
end
function AnimObject.Event_ModelUnload(A0_7446)
  if not System.IsEditor() then
    A0_7446:UnloadModel()
  end
end
function AnimObject.Event_RenderAlwaysEnable(A0_7447)
  A0_7447:RenderAlways(1)
end
function AnimObject.Event_RenderAlwaysDisable(A0_7448)
  A0_7448:RenderAlways(0)
end
function AnimObject.DoStartAnimation(A0_7449)
  A0_7449.animName = A0_7449.Properties.Animation.Animation
  A0_7449:StartAnimation(0, A0_7449.Properties.Animation.Animation, 0, 0, A0_7449.Properties.Animation.Speed, A0_7449.Properties.Animation.bLoop, 1)
  A0_7449:ForceCharacterUpdate(0, true)
  A0_7449.animstarted = 1
  if 0 > A0_7449.Properties.Animation.Speed then
    A0_7449.curAnimTime = 0
  else
    A0_7449.curAnimTime = A0_7449:GetAnimationLength(0, A0_7449.Properties.Animation.Animation)
  end
  A0_7449.startTime = CryAction.GetServerTime()
  if A0_7449.timeDiff then
    A0_7449.startTime = A0_7449.startTime - A0_7449.timeDiff
  end
end
function AnimObject.StartEntityAnimation(A0_7450)
  local L1_7451, L2_7452
  L2_7452 = A0_7450
  L1_7451 = A0_7450.StopAnimation
  L1_7451(L2_7452, 0, -1)
  L2_7452 = A0_7450
  L1_7451 = A0_7450.DoStartAnimation
  L1_7451(L2_7452)
  A0_7450.bStopAnimAfterQL = false
  L2_7452 = A0_7450
  L1_7451 = A0_7450.KillTimer
  L1_7451(L2_7452, A0_7450.POSTQL_TIMER)
  L1_7451 = A0_7450.Properties
  L1_7451 = L1_7451.Animation
  L1_7451 = L1_7451.playerAnimationState
  L2_7452 = g_localActor
  if L2_7452 and L1_7451 ~= "" then
    L2_7452 = g_localActor
    L2_7452 = L2_7452.actor
    L2_7452 = L2_7452.CreateCodeEvent
    L2_7452(L2_7452, {
      event = "animationControl",
      pos = A0_7450:GetWorldPos(),
      angle = A0_7450:GetWorldAngles()
    })
    L2_7452 = g_localActor
    L2_7452 = L2_7452.actor
    L2_7452 = L2_7452.QueueAnimationState
    L2_7452(L2_7452, L1_7451)
    L2_7452 = A0_7450.Properties
    L2_7452 = L2_7452.Animation
    L2_7452 = L2_7452.bPhysicalizeAfterAnimation
    if L2_7452 == 1 then
      L2_7452 = A0_7450.GetAnimationLength
      L2_7452 = L2_7452(A0_7450, 0, A0_7450.Properties.Animation.Animation)
      L2_7452 = L2_7452 * 1000
      L2_7452 = L2_7452 / A0_7450.Properties.Animation.Speed
      A0_7450:SetTimer(A0_7450.PHYSICALIZEAFTER_TIMER, L2_7452)
    end
  end
end
function AnimObject.Client.OnTimer(A0_7453, A1_7454, A2_7455)
  if A1_7454 == A0_7453.PHYSICALIZEAFTER_TIMER then
    A0_7453.Properties.Physics.bRigidBodyActive = 1
    A0_7453.Properties.Physics.bPhysicalize = 1
    A0_7453.Properties.Physics.bRigidBody = 1
    A0_7453.Properties.Physics.bResting = 0
    if A0_7453.bRigidBodyActive ~= A0_7453.Properties.Physics.bRigidBodyActive then
      A0_7453.bRigidBodyActive = A0_7453.Properties.Physics.bRigidBodyActive
      A0_7453:PhysicalizeThis()
    end
    if A0_7453.Properties.Physics.bRigidBody == 1 then
      A0_7453:AwakePhysics(1 - A0_7453.Properties.Physics.bResting)
      A0_7453.bRigidBodyActive = A0_7453.Properties.Physics.bRigidBodyActive
    end
  end
  if A1_7454 == A0_7453.POSTQL_TIMER and A0_7453.sequenceStatus == SEQUENCE_NOT_STARTED then
    A0_7453:StopAnimation(0, -1)
  end
end
function AnimObject.Client.OnUpdate(A0_7456, A1_7457)
  if A0_7456.bStopAnimAfterQL then
    A0_7456.bStopAnimAfterQL = false
    A0_7456:SetTimer(A0_7456.POSTQL_TIMER, 0.2)
    if A0_7456.Properties.Animation.bAlwaysUpdate ~= 1 then
      A0_7456:Activate(0)
    end
  end
end
function AnimObject.OnLoad(A0_7458, A1_7459)
  local L2_7460
  L2_7460 = A1_7459.isRagdollized
  if A0_7458.isRagdollized and not wasRagdollized then
    A0_7458:OnReset()
  end
  A0_7458.bAnimPlaying = A1_7459.bAnimPlaying
  A0_7458.bAnimLoop = A1_7459.bAnimLoop
  A0_7458.animName = A1_7459.animName
  A0_7458.animstarted = A1_7459.animstarted
  A0_7458.health = A1_7459.health
  A0_7458.dead = A1_7459.dead
  A0_7458.controllingAnimHere = A1_7459.bControllingAnimHere
  if A0_7458.controllingAnimHere then
    if A0_7458.animstarted == 1 then
      A0_7458:StartEntityAnimation()
      A0_7458:SetAnimationTime(0, 0, A1_7459.animTime)
    else
      if 0 < A1_7459.animTime then
        if A0_7458.animName ~= A0_7458.Properties.Animation.Animation then
          A0_7458:StartAnimation(0, A0_7458.animName, 0, 0, A0_7458.Properties.Animation.Speed, A0_7458.Properties.Animation.bLoop, 1)
          A0_7458:SetAnimationTime(0, 0, A1_7459.animTime)
        else
          A0_7458:StartEntityAnimation()
        end
        A0_7458:SetAnimationTime(0, 0, A1_7459.animTime)
        A0_7458.bStopAnimAfterQL = true
        A0_7458:Activate(1)
        A0_7458.curAnimTime = A1_7459.animTime
      end
      if A1_7459.animTime == 0 then
        if A1_7459.sequenceStatus == SEQUENCE_NOT_STARTED and A0_7458.sequenceStatus ~= SEQUENCE_NOT_STARTED or A0_7458.touchedByFlownode then
          A0_7458:ResetAnimation(0, -1)
          A0_7458:StartEntityAnimation()
          A0_7458:SetAnimationTime(0, 0, 0)
          A0_7458.bStopAnimAfterQL = true
          A0_7458:Activate(1)
          A0_7458.curAnimTime = 0
        end
      end
    end
  else
    A0_7458.externalAnim_anim = A1_7459.externalAnim_anim
    A0_7458.externalAnim_layer = A1_7459.externalAnim_layer
    A0_7458.externalAnim_loop = A1_7459.externalAnim_loop
    A0_7458:StartAnimation(0, A0_7458.externalAnim_anim, A0_7458.externalAnim_layer, 0, 1, A0_7458.externalAnim_loop)
    A0_7458:SetAnimationTime(0, A0_7458.externalAnim_layer, A1_7459.animTime)
  end
  A0_7458.touchedByFlownode = false
  if A0_7458.Properties.Physics.bArticulated == 0 and A0_7458.Properties.Physics.bRigidBody == 0 and A0_7458.Properties.Physics.bPhysicalize == 1 then
    A0_7458:PhysicalizeThis()
  end
  A0_7458.sequenceStatus = A1_7459.sequenceStatus
end
function AnimObject.OnSave(A0_7461, A1_7462)
  A1_7462.isRagdollized = A0_7461.isRagdollized
  A1_7462.bAnimPlaying = A0_7461.bAnimPlaying
  A1_7462.bAnimLoop = A0_7461.bAnimLoop
  A1_7462.animName = A0_7461.animName
  A1_7462.sequenceStatus = A0_7461.sequenceStatus
  A1_7462.health = A0_7461.health
  A1_7462.dead = A0_7461.dead
  A1_7462.bControllingAnimHere = A0_7461.controllingAnimHere
  if A0_7461.controllingAnimHere then
    if A0_7461.animstarted == 1 and A0_7461:IsAnimationRunning(0, 0) then
      A1_7462.animTime = A0_7461:GetAnimationTime(0, 0)
      A1_7462.animstarted = 1
    else
      A1_7462.animstarted = 0
      if A0_7461.curAnimTime then
        A1_7462.animTime = A0_7461.curAnimTime
      else
        A1_7462.animTime = 0
      end
    end
  else
    A1_7462.externalAnim_anim = A0_7461.externalAnim_anim
    A1_7462.externalAnim_layer = A0_7461.externalAnim_layer
    A1_7462.externalAnim_loop = A0_7461.externalAnim_loop
    A1_7462.animTime = A0_7461:GetAnimationTime(0, A0_7461.externalAnim_layer)
  end
end
AnimObject.FlowEvents.Inputs.ResetAnimation = {
  AnimObject.Event_ResetAnimation,
  "bool"
}
AnimObject.FlowEvents.Inputs.StartAnimation = {
  AnimObject.Event_StartAnimation,
  "bool"
}
AnimObject.FlowEvents.Inputs.StopAnimation = {
  AnimObject.Event_StopAnimation,
  "bool"
}
AnimObject.FlowEvents.Inputs.ModelLoad = {
  AnimObject.Event_ModelLoad,
  "bool"
}
AnimObject.FlowEvents.Inputs.ModelUnload = {
  AnimObject.Event_ModelUnload,
  "bool"
}
function AnimObject.Client.ClEvent_StartAnimation(A0_7463, A1_7464)
  A0_7463.timeDiff = CryAction.GetServerTime() - A1_7464
  if not CryAction.IsServer() then
    A0_7463:Event_StartAnimation()
  end
end
function AnimObject.Client.ClEvent_ResetAnimation(A0_7465)
  if not CryAction.IsServer() then
    A0_7465:Event_ResetAnimation()
  end
end
function AnimObject.SavePhysicalState(A0_7466)
  A0_7466.initPos = A0_7466:GetPos()
  A0_7466.initRot = A0_7466:GetWorldAngles()
  A0_7466.initScale = A0_7466:GetScale()
end
function AnimObject.RestorePhysicalState(A0_7467)
  A0_7467:SetPos(A0_7467.initPos)
  A0_7467:SetWorldAngles(A0_7467.initRot)
  A0_7467:SetScale(A0_7467.initScale)
  A0_7467:ResetAnimation(0, -1)
  A0_7467.animstarted = 0
  if 0 < A0_7467.Properties.Physics.Mass then
    A0_7467:OnReset()
  else
    A0_7467.animName = A0_7467.Properties.Animation.Animation
    A0_7467:StartAnimation(0, A0_7467.Properties.Animation.Animation, 0, 0, 0, false)
  end
end
function AnimObject.PhysicalizeThis(A0_7468)
  local L1_7469, L2_7470
  L1_7469 = BasicEntity
  L1_7469 = L1_7469.PhysicalizeThis
  L2_7470 = A0_7468
  L1_7469(L2_7470)
  L1_7469 = A0_7468.Properties
  L1_7469 = L1_7469.Physics
  L2_7470 = L1_7469.bBulletCollisionEnabled
  if L2_7470 == 0 then
    L2_7470 = {}
    L2_7470.flags_mask = geom_colltype_ray + geom_colltype_foliage_proxy
    L2_7470.flags = geom_colltype_player * L1_7469.bPushableByPlayers
    A0_7468:SetPhysicParams(PHYSICPARAM_PART_FLAGS, L2_7470)
  end
end
function AnimObject.SendSyncToClient(A0_7471, A1_7472)
  if A0_7471.animstarted == 1 then
    animTime = A0_7471:GetAnimationTime(0, 0)
    A0_7471.onClient:ClSync(A1_7472, animTime, A0_7471.startTime, CryAction.GetServerTime())
  end
end
function AnimObject.Server.OnPostInitClient(A0_7473, A1_7474)
  A0_7473:SendSyncToClient(A1_7474)
end
function AnimObject.Server.SVSync(A0_7475, A1_7476)
  A0_7475:SendSyncToClient(A1_7476)
end
function AnimObject.Client.ClSync(A0_7477, A1_7478, A2_7479, A3_7480)
  A0_7477:StartEntityAnimation()
  A0_7477.startTime = A2_7479
  A0_7477:SetAnimationTime(0, 0, A1_7478)
end
function AnimObject.UpdateFromServer(A0_7481)
  A0_7481.server:SVSync()
end
function AnimObject.OnSequenceStart(A0_7482)
  A0_7482.sequenceStatus = SEQUENCE_PLAYING
end
function AnimObject.OnSequenceStop(A0_7483)
  A0_7483.sequenceStatus = SEQUENCE_STOPPED
end
function AnimObject.OnSequenceAnimationStart(A0_7484, A1_7485)
  A0_7484.sequenceStatus = SEQUENCE_PLAYING
  A0_7484.animName = A1_7485
end
function AnimObject.OnSequenceAnimationStop(A0_7486)
  A0_7486.sequenceStatus = SEQUENCE_STOPPED
end
function AnimObject.OnFlowGraphAnimationStart(A0_7487, A1_7488, A2_7489, A3_7490)
  A0_7487.animName = A1_7488
  A0_7487.externalAnim_anim = A1_7488
  A0_7487.controllingAnimHere = false
  A0_7487.externalAnim_layer = A2_7489
  A0_7487.externalAnim_loop = A3_7490
  A0_7487.touchedByFlownode = true
end
function AnimObject.OnFlowGraphAnimationStop(A0_7491)
  if A0_7491.externalAnim_layer then
    A0_7491.curAnimTime = A0_7491:GetAnimationTime(0, A0_7491.externalAnim_layer)
  end
  A0_7491.controllingAnimHere = true
end
function AnimObject.OnFlowGraphAnimationEnd(A0_7492)
  local L1_7493
  A0_7492.curAnimTime = 1
  A0_7492.controllingAnimHere = true
end
