Script.ReloadScript("Scripts/Entities/AlienTech/AlienTech.lua")
CrashSiteLocation = new(AlienTech)
CrashSiteLocation.Properties.ControlRadius = 8
CrashSiteLocation.Properties.ControlHeight = 5
CrashSiteLocation.Properties.ControlOffsetZ = 0
CrashSiteLocation.Properties.UseFlowGraph = 0
CrashSiteLocation.Properties.DebugDraw = 0
CrashSiteLocation.Properties.radiusEffectScale = 1
CrashSiteLocation.SmokeSlot = -1
CrashSiteLocation.AlertActive = false
CrashSiteLocation.IsActive = false
CrashSiteLocation.StartPos = nil
CrashSiteLocation.Velocity = nil
CrashSiteLocation.Falling = false
CrashSiteLocation.Acceleration = nil
CrashSiteLocation.DropPos = nil
CrashSiteLocation.PreviousColour = {
  x = 0,
  y = 0,
  z = 0
}
CrashSiteLocation.TargetColour = {
  x = 0,
  y = 0,
  z = 0
}
CrashSiteLocation.ColourChangePerc = 1
CrashSiteLocation.InDeathAnim = false
CrashSiteLocation.TimeToDeath = 0
CrashSiteLocation.InFlowGraph = false
CrashSiteLocation.HasReceivedIconEvent = false
CrashSiteLocation.NumTimesLanded = 0
CrashSiteLocation.START_FALL_HEIGHT = 300
CrashSiteLocation.ICON_HEIGHT = 0.15
CrashSiteLocation.PARTICLE_EFFECT_TRAIL = "cw2_gameplay.crash_site.drop_pod_trail"
CrashSiteLocation.PARTICLE_EFFECT_CRASH = "cw2_gameplay.crash_site.drop_pod_impact"
CrashSiteLocation.PARTICLE_EFFECT_EXPLOSION = "cw2_gameplay.crash_site.drop_pod_explode"
CrashSiteLocation.PARTICLE_EFFECT_DEATH_ANIM = "cw2_gameplay.crash_site.drop_pod_explode_builup"
CrashSiteLocation.DEATH_ANIM_LENGTH = 5
CrashSiteLocation.AUDIO_START = GameAudio.GetSignal("Crashsite_Start")
CrashSiteLocation.AUDIO_LAND = GameAudio.GetSignal("Crashsite_Land")
CrashSiteLocation.AUDIO_VOLATILE = GameAudio.GetSignal("Crashsite_Volatile")
CrashSiteLocation.AUDIO_EXPLODE = GameAudio.GetSignal("Crashsite_Explode")
CrashSiteLocation.NEUTRAL_GAMESTATE_STRING = "@ui_msg_cs_status_0"
CrashSiteLocation.EXPLOSION_INFO = {
  damage = 1000,
  pressure = 2000,
  hole_size = 3,
  type = "alienDropPodBounce",
  min_radius = 2,
  max_radius = 5,
  min_phys_radius = 2.2,
  max_phys_radius = 4
}
CrashSiteLocation.EXPLOSION_INFO_2 = {
  damage = 100,
  pressure = 1000,
  hole_size = 1,
  type = "alienDropPodBounce",
  min_radius = 1,
  max_radius = 2.5,
  min_phys_radius = 1.2,
  max_phys_radius = 3
}
function CrashSiteLocation.Server.OnInit(A0_6283)
  if not A0_6283.bInitialized then
    A0_6283:OnReset()
    A0_6283.bInitialized = 1
  end
end
function CrashSiteLocation.Client.OnInit(A0_6284)
  if not A0_6284.bInitialized then
    A0_6284:OnReset()
    A0_6284.bInitialized = 1
  end
end
function CrashSiteLocation.OnReset(A0_6285)
  local L1_6286, L2_6287, L3_6288, L4_6289, L5_6290
  L2_6287 = A0_6285
  L1_6286 = A0_6285.CreateRenderProxy
  L1_6286(L2_6287)
  L2_6287 = A0_6285
  L1_6286 = A0_6285.ClearSmoke
  L1_6286(L2_6287)
  L2_6287 = A0_6285
  L1_6286 = A0_6285.PreLoadParticleEffect
  L3_6288 = A0_6285.PARTICLE_EFFECT_TRAIL
  L1_6286(L2_6287, L3_6288)
  L2_6287 = A0_6285
  L1_6286 = A0_6285.PreLoadParticleEffect
  L3_6288 = A0_6285.PARTICLE_EFFECT_CRASH
  L1_6286(L2_6287, L3_6288)
  L2_6287 = A0_6285
  L1_6286 = A0_6285.PreLoadParticleEffect
  L3_6288 = A0_6285.PARTICLE_EFFECT_EXPLOSION
  L1_6286(L2_6287, L3_6288)
  L2_6287 = A0_6285
  L1_6286 = A0_6285.PreLoadParticleEffect
  L3_6288 = A0_6285.PARTICLE_EFFECT_DEATH_ANIM
  L1_6286(L2_6287, L3_6288)
  L1_6286 = A0_6285.StartPos
  if L1_6286 == nil then
    L2_6287 = A0_6285
    L1_6286 = A0_6285.GetPos
    L1_6286 = L1_6286(L2_6287)
    A0_6285.StartPos = L1_6286
    L2_6287 = A0_6285
    L1_6286 = A0_6285.GetAngles
    L1_6286 = L1_6286(L2_6287)
    L2_6287 = {}
    L2_6287.x = 0
    L2_6287.y = 0
    L2_6287.z = -9.81
    A0_6285.Acceleration = L2_6287
    L2_6287 = RotateVectorAroundR
    L3_6288 = A0_6285.Acceleration
    L4_6289 = A0_6285.Acceleration
    L5_6290 = g_Vectors
    L5_6290 = L5_6290.v100
    L2_6287(L3_6288, L4_6289, L5_6290, L1_6286.x)
    L2_6287 = RotateVectorAroundR
    L3_6288 = A0_6285.Acceleration
    L4_6289 = A0_6285.Acceleration
    L5_6290 = g_Vectors
    L5_6290 = L5_6290.v010
    L2_6287(L3_6288, L4_6289, L5_6290, L1_6286.y)
    L2_6287 = RotateVectorAroundR
    L3_6288 = A0_6285.Acceleration
    L4_6289 = A0_6285.Acceleration
    L5_6290 = g_Vectors
    L5_6290 = L5_6290.v001
    L2_6287(L3_6288, L4_6289, L5_6290, L1_6286.z)
    L2_6287 = A0_6285.Acceleration
    L2_6287 = L2_6287.z
    if L2_6287 > 0 then
      L2_6287 = A0_6285.Acceleration
      L3_6288 = A0_6285.Acceleration
      L3_6288 = L3_6288.x
      L3_6288 = -L3_6288
      L2_6287.x = L3_6288
      L2_6287 = A0_6285.Acceleration
      L3_6288 = A0_6285.Acceleration
      L3_6288 = L3_6288.y
      L3_6288 = -L3_6288
      L2_6287.y = L3_6288
      L2_6287 = A0_6285.Acceleration
      L3_6288 = A0_6285.Acceleration
      L3_6288 = L3_6288.z
      L3_6288 = -L3_6288
      L2_6287.z = L3_6288
    end
    L2_6287 = {}
    L3_6288 = CopyVector
    L4_6289 = L2_6287
    L5_6290 = A0_6285.Acceleration
    L3_6288(L4_6289, L5_6290)
    L3_6288 = NormalizeVector
    L4_6289 = L2_6287
    L3_6288(L4_6289)
    L3_6288 = ScaleVector
    L4_6289 = L2_6287
    L5_6290 = A0_6285.START_FALL_HEIGHT
    L5_6290 = -L5_6290
    L3_6288 = L3_6288(L4_6289, L5_6290)
    A0_6285.DropPos = L3_6288
    L3_6288 = FastSumVectors
    L4_6289 = A0_6285.DropPos
    L5_6290 = A0_6285.DropPos
    L3_6288(L4_6289, L5_6290, A0_6285.StartPos)
  end
  L1_6286 = A0_6285.IsActive
  if not L1_6286 then
    L1_6286 = System
    L1_6286 = L1_6286.IsEditor
    L1_6286 = L1_6286()
  elseif L1_6286 then
    L2_6287 = A0_6285
    L1_6286 = A0_6285.ActivateCapturePoint
    L3_6288 = false
    L1_6286(L2_6287, L3_6288)
  end
  L1_6286 = A0_6285.Properties
  L1_6286 = L1_6286.ControlRadius
  L2_6287 = A0_6285.Properties
  L2_6287 = L2_6287.ControlOffsetZ
  L3_6288 = A0_6285.Properties
  L3_6288 = L3_6288.ControlHeight
  L4_6289 = {}
  L5_6290 = -L1_6286
  L4_6289.x = L5_6290
  L5_6290 = -L1_6286
  L4_6289.y = L5_6290
  L4_6289.z = L2_6287
  L5_6290 = {}
  L5_6290.x = L1_6286
  L5_6290.y = L1_6286
  L5_6290.z = L3_6288 + L2_6287
  A0_6285:SetTriggerBBox(L4_6289, L5_6290)
  if System.IsEditor() then
    if A0_6285.Properties.DebugDraw ~= 0 then
      A0_6285:Activate(1)
    else
      A0_6285:Activate(0)
    end
  else
    A0_6285:Hide(1)
  end
end
function CrashSiteLocation.OnPropertyChange(A0_6291)
  A0_6291:OnReset()
end
function CrashSiteLocation.ShouldShowHudIcon(A0_6292)
  local L1_6293, L2_6294
  L1_6293 = A0_6292.Falling
  if L1_6293 then
    L1_6293 = A0_6292.StartPos
    L1_6293 = L1_6293.z
    L2_6294 = A0_6292.DropPos
    L2_6294 = L2_6294.z
    if (A0_6292:GetPos().z - L1_6293) / (L2_6294 - L1_6293) > CrashSiteLocation.ICON_HEIGHT then
      return false
    end
  else
    L1_6293 = A0_6292.InFlowGraph
    if L1_6293 == true then
      L1_6293 = A0_6292.HasReceivedIconEvent
      return L1_6293
    end
  end
  L1_6293 = true
  return L1_6293
end
function CrashSiteLocation.ShouldDoPulseEffect(A0_6295)
  local L1_6296
  L1_6296 = A0_6295.Falling
  if not L1_6296 then
    L1_6296 = A0_6295.InFlowGraph
  else
    if L1_6296 then
      L1_6296 = false
      return L1_6296
  end
  else
    L1_6296 = true
    return L1_6296
  end
end
function CrashSiteLocation.Update(A0_6297, A1_6298)
  local L2_6299, L3_6300
  L2_6299 = A0_6297.Falling
  if L2_6299 then
    L2_6299 = ScaleVector
    L3_6300 = A0_6297.Acceleration
    L2_6299 = L2_6299(L3_6300, A1_6298)
    L3_6300 = FastSumVectors
    L3_6300(A0_6297.Velocity, A0_6297.Velocity, L2_6299)
    L3_6300 = A0_6297.GetPos
    L3_6300 = L3_6300(A0_6297)
    FastSumVectors(L3_6300, L3_6300, ScaleVector(A0_6297.Velocity, A1_6298))
    if L3_6300.z < A0_6297.StartPos.z then
      L3_6300 = A0_6297.StartPos
      A0_6297.Falling = false
      A0_6297:Event_Landed()
    end
    A0_6297:SetPos(L3_6300)
  else
    L2_6299 = A0_6297.InDeathAnim
    if L2_6299 == true then
      L2_6299 = A0_6297.TimeToDeath
      L2_6299 = L2_6299 - A1_6298
      A0_6297.TimeToDeath = L2_6299
      L2_6299 = A0_6297.TimeToDeath
      if L2_6299 < 0 then
        L3_6300 = A0_6297
        L2_6299 = A0_6297.OnFinished
        L2_6299(L3_6300, true)
        A0_6297.InDeathAnim = false
        L2_6299 = BroadcastEvent
        L3_6300 = A0_6297
        L2_6299(L3_6300, "DeActivated")
      end
    end
  end
  L2_6299 = A0_6297.ColourChangePerc
  if L2_6299 < 1 then
    L2_6299 = A0_6297.ColourChangePerc
    L2_6299 = L2_6299 + A1_6298
    A0_6297.ColourChangePerc = L2_6299
    L2_6299 = A0_6297.ColourChangePerc
    if L2_6299 > 1 then
      A0_6297.ColourChangePerc = 1
    end
    L2_6299 = A0_6297.ColourChangePerc
    L2_6299 = 1 - L2_6299
    L3_6300 = {}
    L3_6300.x = A0_6297.PreviousColour.x * L2_6299 + A0_6297.TargetColour.x * A0_6297.ColourChangePerc
    L3_6300.y = A0_6297.PreviousColour.y * L2_6299 + A0_6297.TargetColour.y * A0_6297.ColourChangePerc
    L3_6300.z = A0_6297.PreviousColour.z * L2_6299 + A0_6297.TargetColour.z * A0_6297.ColourChangePerc
    A0_6297:SetMaterialVec3(0, 1, MaterialVec3Params.diffuse_color, L3_6300)
  end
  L2_6299 = A0_6297.InFlowGraph
  if L2_6299 == true then
    L2_6299 = A0_6297.SmokeSlot
    if L2_6299 == -1 then
      L3_6300 = A0_6297
      L2_6299 = A0_6297.IsHidden
      L2_6299 = L2_6299(L3_6300)
      if L2_6299 == false then
        L3_6300 = A0_6297
        L2_6299 = A0_6297.StartSmoke
        L2_6299(L3_6300)
      end
    end
  end
end
function CrashSiteLocation.Server.OnUpdate(A0_6301, A1_6302)
  local L2_6303, L3_6304, L4_6305
  L2_6303 = A0_6301.Properties
  L2_6303 = L2_6303.DebugDraw
  if L2_6303 ~= 0 then
    L3_6304 = A0_6301
    L2_6303 = A0_6301.GetWorldPos
    L2_6303 = L2_6303(L3_6304)
    L3_6304 = A0_6301.Properties
    L3_6304 = L3_6304.ControlRadius
    L4_6305 = A0_6301.Properties
    L4_6305 = L4_6305.ControlHeight
    L2_6303.z = L2_6303.z + L4_6305 * 0.5 + A0_6301.Properties.ControlOffsetZ
    Game.DebugDrawCylinder(L2_6303.x, L2_6303.y, L2_6303.z, L3_6304, L4_6305, 60, 60, 255, 100)
  end
end
function CrashSiteLocation.ActivateCapturePoint(A0_6306, A1_6307)
  if A0_6306.InDeathAnim == true or A0_6306.IsActive == true then
    A0_6306.InDeathAnim = false
    BroadcastEvent(A0_6306, "DeActivated")
  end
  A0_6306.IsActive = true
  A0_6306:SetFlags(ENTITY_FLAG_ON_RADAR, 0)
  if A1_6307 then
    if A0_6306.Properties.UseFlowGraph == 0 then
      A0_6306.Velocity = {
        x = 0,
        y = 0,
        z = 0
      }
      A0_6306:SetPos(A0_6306.DropPos)
      A0_6306.Falling = true
      A0_6306:StartSmoke()
      A0_6306:Hide(0)
    else
      BroadcastEvent(A0_6306, "Activated")
      A0_6306.InFlowGraph = true
      A0_6306.HasReceivedIconEvent = false
    end
  else
    A0_6306:SetPos(A0_6306.StartPos)
    A0_6306:DoLandingFlowgraphEvent()
  end
  A0_6306:SetViewDistRatio(255)
  A0_6306:SetTargetColour(g_gameRules.game:GetTeam(A0_6306.id))
  if CryAction.IsServer() then
    g_gameRules.game:ResetAlienTech(A0_6306.id)
  end
end
function CrashSiteLocation.StartSmoke(A0_6308)
  A0_6308.SmokeSlot = A0_6308:LoadParticleEffect(A0_6308.SmokeSlot, A0_6308.PARTICLE_EFFECT_TRAIL, {})
  GameAudio.PlayEntitySignal(A0_6308.AUDIO_START, A0_6308.id)
end
function CrashSiteLocation.IsAlertActive(A0_6309)
  if A0_6309.AlertActive then
    return 1
  else
    return 0
  end
end
function CrashSiteLocation.DeactivateCapturePoint(A0_6310, A1_6311)
  local L2_6312, L3_6313
  A0_6310.IsActive = false
  L3_6313 = A0_6310
  L2_6312 = A0_6310.SetFlags
  L2_6312(L3_6313, ENTITY_FLAG_ON_RADAR, 2)
  L2_6312 = A0_6310.Falling
  if L2_6312 then
    A0_6310.Falling = false
    A0_6310.TimeToDeath = 0
  end
  if A1_6311 then
    L2_6312 = A0_6310.Falling
    if L2_6312 then
      A0_6310.Falling = false
      A0_6310.TimeToDeath = 0
    else
      L3_6313 = A0_6310
      L2_6312 = A0_6310.LoadParticleEffect
      L2_6312 = L2_6312(L3_6313, A0_6310.SmokeSlot, A0_6310.PARTICLE_EFFECT_DEATH_ANIM, {})
      A0_6310.SmokeSlot = L2_6312
      A0_6310.InDeathAnim = true
      L2_6312 = A0_6310.DEATH_ANIM_LENGTH
      A0_6310.TimeToDeath = L2_6312
      L2_6312 = GameAudio
      L2_6312 = L2_6312.PlayEntitySignal
      L3_6313 = A0_6310.AUDIO_VOLATILE
      L2_6312(L3_6313, A0_6310.id)
      L3_6313 = A0_6310
      L2_6312 = A0_6310.GetChildCount
      L2_6312 = L2_6312(L3_6313)
      L3_6313 = 0
      while L2_6312 > L3_6313 do
        if A0_6310:GetChild(L3_6313) ~= nil and A0_6310:GetChild(L3_6313).bCurrentlyPickable == 1 then
          A0_6310:GetChild(L3_6313).bCurrentlyPickable = 0
        end
        L3_6313 = L3_6313 + 1
      end
    end
  else
    L3_6313 = A0_6310
    L2_6312 = A0_6310.OnFinished
    L2_6312(L3_6313, A1_6311)
    L2_6312 = BroadcastEvent
    L3_6313 = A0_6310
    L2_6312(L3_6313, "DeActivated")
  end
end
function CrashSiteLocation.OnFinished(A0_6314, A1_6315)
  local L2_6316, L3_6317, L4_6318, L5_6319, L6_6320
  L2_6316 = {}
  L3_6317 = pef_always_notify_on_deletion
  L2_6316.flags_mask = L3_6317
  L3_6317 = pef_always_notify_on_deletion
  L2_6316.flags = L3_6317
  L4_6318 = A0_6314
  L3_6317 = A0_6314.SetPhysicParams
  L5_6319 = PHYSICPARAM_FLAGS
  L6_6320 = L2_6316
  L3_6317(L4_6318, L5_6319, L6_6320)
  A0_6314.AlertActive = false
  L4_6318 = A0_6314
  L3_6317 = A0_6314.ClearSmoke
  L3_6317(L4_6318)
  L4_6318 = A0_6314
  L3_6317 = A0_6314.Hide
  L5_6319 = 1
  L3_6317(L4_6318, L5_6319)
  if A1_6315 then
    L3_6317 = A0_6314.Falling
    if not L3_6317 then
      L3_6317 = Particle
      L3_6317 = L3_6317.SpawnEffect
      L4_6318 = A0_6314.PARTICLE_EFFECT_EXPLOSION
      L6_6320 = A0_6314
      L5_6319 = A0_6314.GetPos
      L5_6319 = L5_6319(L6_6320)
      L6_6320 = g_Vectors
      L6_6320 = L6_6320.v000
      L3_6317(L4_6318, L5_6319, L6_6320)
      L3_6317 = GameAudio
      L3_6317 = L3_6317.PlayEntitySignal
      L4_6318 = A0_6314.AUDIO_EXPLODE
      L5_6319 = A0_6314.id
      L3_6317(L4_6318, L5_6319)
    end
  end
  L3_6317 = g_gameRules
  if L3_6317 then
    L3_6317 = CryAction
    L3_6317 = L3_6317.IsServer
    L3_6317 = L3_6317()
    if L3_6317 then
      L4_6318 = A0_6314
      L3_6317 = A0_6314.GetPos
      L3_6317 = L3_6317(L4_6318)
      L4_6318 = L3_6317.z
      L4_6318 = L4_6318 + 1.5
      L3_6317.z = L4_6318
      L4_6318 = {}
      L4_6318.x = 0
      L4_6318.y = 0
      L4_6318.z = 1
      L5_6319 = A0_6314.EXPLOSION_INFO_2
      L6_6320 = g_gameRules
      L6_6320 = L6_6320.game
      L6_6320 = L6_6320.GetHitTypeId
      L6_6320 = L6_6320(L6_6320, L5_6319.type)
      g_gameRules.game:ServerExplosion(NULL_ENTITY, A0_6314.id, L5_6319.damage, L3_6317, L4_6318, L5_6319.max_radius, 0, L5_6319.pressure, L5_6319.hole_size, "", 0, L6_6320, L5_6319.min_radius, L5_6319.min_phys_radius, L5_6319.max_phys_radius)
    end
  end
end
function CrashSiteLocation.ClearSmoke(A0_6321)
  if A0_6321.SmokeSlot ~= -1 then
    A0_6321:DeleteParticleEmitter(A0_6321.SmokeSlot)
    A0_6321:FreeSlot(A0_6321.SmokeSlot)
    A0_6321.SmokeSlot = -1
  end
end
function CrashSiteLocation.OnSetTeam(A0_6322, A1_6323)
  A0_6322:SetTargetColour(A1_6323)
end
function CrashSiteLocation.LocalPlayerChangedTeam(A0_6324)
  local L1_6325, L2_6326
  L2_6326 = A0_6324
  L1_6325 = A0_6324.SetTargetColour
  L1_6325(L2_6326, g_gameRules.game:GetTeam(A0_6324.id))
end
function CrashSiteLocation.SetTargetColour(A0_6327, A1_6328)
  local L2_6329
  L2_6329 = -1
  if g_localActorId then
    L2_6329 = g_gameRules.game:GetTeam(g_localActorId)
  end
  CopyVector(A0_6327.PreviousColour, A0_6327.TargetColour)
  if A1_6328 == 0 then
    A0_6327.TargetColour.x = 0.3019
    A0_6327.TargetColour.y = 0.3019
    A0_6327.TargetColour.z = 0.3019
  elseif A1_6328 == L2_6329 then
    A0_6327.TargetColour.x = 0.0784
    A0_6327.TargetColour.y = 0.2588
    A0_6327.TargetColour.z = 0.6784
  else
    A0_6327.TargetColour.x = 0.7019
    A0_6327.TargetColour.y = 0.0705
    A0_6327.TargetColour.z = 0
  end
  A0_6327.ColourChangePerc = 0
end
function CrashSiteLocation.Event_Landed(A0_6330)
  local L1_6331, L2_6332, L3_6333, L4_6334
  L1_6331 = GameAudio
  L1_6331 = L1_6331.PlayEntitySignal
  L2_6332 = A0_6330.AUDIO_LAND
  L3_6333 = A0_6330.id
  L1_6331(L2_6332, L3_6333)
  L1_6331 = GameAudio
  L1_6331 = L1_6331.Announce
  L2_6332 = "Landed"
  L3_6333 = 0
  L1_6331(L2_6332, L3_6333)
  L1_6331 = Particle
  L1_6331 = L1_6331.SpawnEffect
  L2_6332 = A0_6330.PARTICLE_EFFECT_CRASH
  L4_6334 = A0_6330
  L3_6333 = A0_6330.GetPos
  L3_6333 = L3_6333(L4_6334)
  L4_6334 = g_Vectors
  L4_6334 = L4_6334.v000
  L1_6331(L2_6332, L3_6333, L4_6334)
  L1_6331 = A0_6330.SmokeSlot
  if L1_6331 ~= -1 then
    L2_6332 = A0_6330
    L1_6331 = A0_6330.DeleteParticleEmitter
    L3_6333 = A0_6330.SmokeSlot
    L1_6331(L2_6332, L3_6333)
    L2_6332 = A0_6330
    L1_6331 = A0_6330.FreeSlot
    L3_6333 = A0_6330.SmokeSlot
    L1_6331(L2_6332, L3_6333)
    A0_6330.SmokeSlot = -1
  end
  A0_6330.InFlowGraph = false
  L1_6331 = g_gameRules
  if L1_6331 then
    L1_6331 = CryAction
    L1_6331 = L1_6331.IsServer
    L1_6331 = L1_6331()
    if L1_6331 then
      L2_6332 = A0_6330
      L1_6331 = A0_6330.GetPos
      L1_6331 = L1_6331(L2_6332)
      L2_6332 = L1_6331.z
      L2_6332 = L2_6332 + 1.5
      L1_6331.z = L2_6332
      L2_6332 = {}
      L2_6332.x = 0
      L2_6332.y = 0
      L2_6332.z = 1
      L3_6333 = A0_6330.EXPLOSION_INFO
      L4_6334 = g_gameRules
      L4_6334 = L4_6334.game
      L4_6334 = L4_6334.GetHitTypeId
      L4_6334 = L4_6334(L4_6334, L3_6333.type)
      g_gameRules.game:ServerExplosion(NULL_ENTITY, A0_6330.id, L3_6333.damage, L1_6331, L2_6332, L3_6333.max_radius, 0, L3_6333.pressure, L3_6333.hole_size, "", 0, L4_6334, L3_6333.min_radius, L3_6333.min_phys_radius, L3_6333.max_phys_radius)
    end
  end
  L2_6332 = A0_6330
  L1_6331 = A0_6330.DoLandingFlowgraphEvent
  L1_6331(L2_6332)
end
function CrashSiteLocation.Event_Show(A0_6335)
  A0_6335:Hide(0)
end
function CrashSiteLocation.DoLandingFlowgraphEvent(A0_6336)
  if A0_6336.NumTimesLanded == 0 then
    BroadcastEvent(A0_6336, "OnFirstLanding")
  else
    BroadcastEvent(A0_6336, "OnRepeatLanding")
  end
  BroadcastEvent(A0_6336, "OnAnyLanding")
  A0_6336.NumTimesLanded = A0_6336.NumTimesLanded + 1
  if g_gameRules.game:GetTeam(A0_6336.id) == 0 then
    HUD.OnGameStatusUpdate(0, A0_6336.NEUTRAL_GAMESTATE_STRING)
  end
end
function CrashSiteLocation.Event_ShowIcon(A0_6337)
  local L1_6338
  A0_6337.HasReceivedIconEvent = true
end
function CrashSiteLocation.TestFlowGraph(A0_6339)
  A0_6339:ActivateCapturePoint(true)
end
function CrashSiteLocation.TestPulseEffect(A0_6340)
  Particle.SpawnEffect("cw2_gameplay.crash_site.drop_pod_capture_area", A0_6340:GetPos(), {
    x = 0,
    y = 0,
    z = 1
  }, A0_6340.Properties.radiusEffectScale)
end
CrashSiteLocation.FlowEvents = {
  Inputs = {
    Landed = {
      CrashSiteLocation.Event_Landed,
      "any"
    },
    ShowIcon = {
      CrashSiteLocation.Event_ShowIcon,
      "any"
    },
    Show = {
      CrashSiteLocation.Event_Show,
      "any"
    }
  },
  Outputs = {
    Activated = "bool",
    OnFirstLanding = "bool",
    OnRepeatLanding = "bool",
    OnAnyLanding = "bool",
    DeActivated = "bool"
  }
}
