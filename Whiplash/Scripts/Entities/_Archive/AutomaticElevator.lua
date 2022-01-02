local L0_268, L1_269, L2_270, L3_271
L0_268 = {}
L1_269 = {}
L1_269.bActive = 1
L1_269.MapVisMask = 0
L2_270 = {}
L2_270.X = 0
L2_270.Y = 0
L2_270.Z = 1
L1_269.Direction = L2_270
L1_269.OpenDelay = 1.5
L1_269.CloseDelay = 1.5
L1_269.RetriggerDelay = 1
L1_269.MovingDistance = 2
L1_269.MovingSpeed = 0.5
L1_269.bAutomatic = 1
L1_269.fileModel = "Objects/indoor/lift/lift.cgf"
L1_269.fileStartSound = "Sounds/lifts/liftst.wav"
L1_269.fileLoopSound = "Sounds/lifts/liftlp.wav"
L1_269.fileStopSound = "Sounds/lifts/liftend.wav"
L1_269.LoopSoundStart = 1.1
L2_270 = {}
L2_270.bHasWarnLight = 1
L2_270.fLightRadius = 10
L3_271 = {
  1,
  0,
  0
}
L2_270.clrLightDiffuse = L3_271
L3_271 = {
  1,
  1,
  1
}
L2_270.clrLightSpecular = L3_271
L3_271 = {}
L3_271.x = 0
L3_271.y = 0
L3_271.z = 0
L2_270.LightAngles = L3_271
L2_270.fLightRotSpeed = 50
L2_270.bProjectInAllDirs = 0
L2_270.ProjectorFov = 90
L2_270.texture_ProjectorTexture = "Textures/projector.jpg"
L2_270.shader_lightShader = ""
L2_270.bAffectsThisAreaOnly = 1
L2_270.bUsedInRealTime = 1
L2_270.bFakeLight = 0
L2_270.bHeatSource = 0
L1_269.WarnLight = L2_270
L1_269.sMaterialDefault = "m06_ben.Lift.reseach_lift_Default"
L1_269.sMaterialUp = "m06_ben.Lift.reseach_lift_UP"
L1_269.sMaterialDown = "m06_ben.Lift.reseach_lift_DOWN"
L0_268.Properties = L1_269
L0_268.base = nil
L1_269 = {}
L1_269.x = 0
L1_269.y = 0
L1_269.z = 0
L0_268.temp_vec = L1_269
L1_269 = {}
L1_269.x = 0
L1_269.y = 0
L1_269.z = 0
L0_268.base_pos = L1_269
L0_268.Distance = 0
L0_268.bOpeningDelay = nil
L0_268.bTriggerOpenRequest = nil
L0_268.bActive = 1
L0_268.MoveDir = 1
AutomaticElevator = L0_268
L0_268 = AutomaticElevator
function L1_269(A0_272, A1_273)
  WriteToStream(A1_273, A0_272.base_pos)
  A1_273:WriteFloat(A0_272.Distance)
  A1_273:WriteInt(A0_272.bActive)
  if A0_272.InUpPos then
    A1_273:WriteInt(A0_272.InUpPos)
  else
    A1_273:WriteInt(0)
  end
end
L0_268.OnSave = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_274, A1_275)
  A0_274:OnPropertyChange()
  A0_274.base_pos = ReadFromStream(A1_275)
  A0_274:SetPos(A0_274.base_pos)
  A0_274.Distance = A1_275:ReadFloat()
  A0_274.bActive = A1_275:ReadInt()
  A0_274.InUpPos = A1_275:ReadInt()
  if A0_274.InUpPos == 0 then
    A0_274.InUpPos = nil
  else
    A0_274.temp_vec.x = A0_274.Properties.Direction.X * A0_274.Properties.MovingDistance * A0_274.MoveDir + A0_274.base_pos.x
    A0_274.temp_vec.y = A0_274.Properties.Direction.Y * A0_274.Properties.MovingDistance * A0_274.MoveDir + A0_274.base_pos.y
    A0_274.temp_vec.z = A0_274.Properties.Direction.Z * A0_274.Properties.MovingDistance * A0_274.MoveDir + A0_274.base_pos.z
    A0_274:SetPos(A0_274.temp_vec)
  end
end
L0_268.OnLoad = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_276, A1_277)
  A0_276:OnPropertyChange()
  A0_276.base_pos = ReadFromStream(A1_277)
  A0_276:SetPos(A0_276.base_pos)
  A0_276.Distance = A1_277:ReadFloat()
  A0_276.bActive = A1_277:ReadInt()
end
L0_268.OnLoadRELEASE = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_278)
  A0_278:OnReset()
  if A0_278.Properties.fileStartSound ~= A0_278.CurrStartSound then
    A0_278.CurrStartSound = A0_278.Properties.fileStartSound
    A0_278.StartSound = Sound.Load3DSound(A0_278.CurrStartSound)
    Sound.SetSoundVolume(A0_278.StartSound, 255)
    Sound.SetMinMaxDistance(A0_278.StartSound, 10, 30)
  end
  if A0_278.Properties.fileLoopSound ~= A0_278.CurrLoopSound then
    A0_278.CurrLoopSound = A0_278.Properties.fileLoopSound
    A0_278.LoopSound = Sound.Load3DSound(A0_278.CurrLoopSound)
    Sound.SetSoundLoop(A0_278.LoopSound, 1)
    Sound.SetSoundVolume(A0_278.LoopSound, 255)
    Sound.SetMinMaxDistance(A0_278.LoopSound, 10, 30)
  end
  if A0_278.Properties.fileStopSound ~= A0_278.CurrStopSound then
    A0_278.CurrStopSound = A0_278.Properties.fileStopSound
    A0_278.StopSound = Sound.Load3DSound(A0_278.CurrStopSound)
    Sound.SetSoundVolume(A0_278.StopSound, 255)
    Sound.SetMinMaxDistance(A0_278.StopSound, 10, 30)
  end
end
L0_268.OnPropertyChange = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_279, A1_280)
  local L2_281
  L2_281 = A0_279.Properties
  L2_281 = L2_281.WarnLight
  L2_281 = L2_281.bHasWarnLight
  if L2_281 > 0 then
    L2_281 = A0_279.GetHelperPos
    L2_281 = L2_281(A0_279, "warnlight")
    if L2_281 then
      if A1_280 > 5 then
        A1_280 = 0
      end
      A0_279.Properties.WarnLight.LightAngles.z = A0_279.Properties.WarnLight.LightAngles.z + A0_279.Properties.WarnLight.fLightRotSpeed * A1_280
      if A0_279.Properties.WarnLight.LightAngles.z >= 360 then
        A0_279.Properties.WarnLight.LightAngles.z = A0_279.Properties.WarnLight.LightAngles.z - 360
      end
      if 0 > A0_279.Properties.WarnLight.LightAngles.z then
        A0_279.Properties.WarnLight.LightAngles.z = A0_279.Properties.WarnLight.LightAngles.z + 360
      end
      A0_279:AddDynamicLight(L2_281, A0_279.Properties.WarnLight.fLightRadius, A0_279.Properties.WarnLight.clrLightDiffuse[1], A0_279.Properties.WarnLight.clrLightDiffuse[2], A0_279.Properties.WarnLight.clrLightDiffuse[3], 1, A0_279.Properties.WarnLight.clrLightSpecular[1], A0_279.Properties.WarnLight.clrLightSpecular[2], A0_279.Properties.WarnLight.clrLightSpecular[3], 1, 0, 0, A0_279.Properties.WarnLight.LightAngles, A0_279.Properties.WarnLight.ProjectorFov, A0_279.proj_tex_id, A0_279.Properties.WarnLight.bAffectsThisAreaOnly, A0_279.Properties.WarnLight.bUsedInRealTime, A0_279.Properties.WarnLight.bHeatSource, A0_279.Properties.WarnLight.bFakeLight)
    end
  else
  end
end
L0_268.IsMovingClient = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_282)
  if A0_282.Properties.OpenDelay <= 0 then
    A0_282.Properties.OpenDelay = 0.001
  end
  if 0 >= A0_282.Properties.RetriggerDelay then
    A0_282.Properties.RetriggerDelay = 0.001
  end
  if 0 > A0_282.Properties.MovingDistance then
    A0_282.Properties.MovingDistance = 0
  end
  A0_282.bActive = A0_282.Properties.bActive
  A0_282:LoadObject(A0_282.Properties.fileModel, 0, 1)
  A0_282:DrawObject(0, 1)
  A0_282:CreateRigidBody(0, 0, -1)
  A0_282:AwakePhysics(0)
  A0_282:SetUpdateType(eUT_Always)
  A0_282.DuringLoading = 1
  A0_282:RegisterState("Idle")
  A0_282:RegisterState("Opening")
  A0_282:RegisterState("Closing")
  A0_282:GotoState("Idle")
  A0_282.DuringLoading = nil
  if 0 > A0_282.Properties.MovingSpeed then
    A0_282.MoveDir = -1
  else
    A0_282.MoveDir = 1
  end
  A0_282:SetVelocity(0)
  A0_282.Distance = 0
  A0_282.proj_tex_id = System.LoadTexture(A0_282.Properties.WarnLight.texture_ProjectorTexture, 1)
  A0_282:InitDynamicLight(A0_282.Properties.WarnLight.texture_ProjectorTexture, A0_282.Properties.WarnLight.shader_lightShader, A0_282.Properties.WarnLight.bProjectInAllDirs, 0)
end
L0_268.OnReset = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_283, A1_284)
  A0_283.Velocity = {}
  A0_283.Velocity.v = {}
  A0_283.Velocity.v.x = A0_283.Properties.Direction.X * A0_283.Properties.MovingSpeed * A1_284
  A0_283.Velocity.v.y = A0_283.Properties.Direction.Y * A0_283.Properties.MovingSpeed * A1_284
  A0_283.Velocity.v.z = A0_283.Properties.Direction.Z * A0_283.Properties.MovingSpeed * A1_284
  if A1_284 == 0 then
    A0_283:SetUpdateType(eUT_Always)
  else
    A0_283:AwakePhysics(1)
    A0_283:SetUpdateType(eUT_PhysicsPostStep)
  end
end
L0_268.SetVelocity = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_285)
  A0_285:OnReset()
  A0_285:OnPropertyChange()
  A0_285:NetPresent(nil)
  A0_285:Activate(0)
  A0_285:TrackColliders(1)
  A0_285.base_pos = new(A0_285:GetPos())
end
L0_268.OnInit = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_286, A1_287)
  if A0_286.bActive == 0 then
    return
  end
  A0_286:GotoState("Opening")
  BroadcastEvent(A0_286, "Open")
end
L0_268.Event_Open = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_288, A1_289)
  if A0_288.bActive == 0 then
    return
  end
  A0_288:GotoState("Closing")
  BroadcastEvent(A0_288, "Close")
end
L0_268.Event_Close = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_290, A1_291)
  if A0_290.bActive == 0 then
    return
  end
  BroadcastEvent(A0_290, "Opened")
end
L0_268.Event_Opened = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_292, A1_293)
  if A0_292.bActive == 0 then
    return
  end
  BroadcastEvent(A0_292, "Closed")
end
L0_268.Event_Closed = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_294, A1_295)
  A0_294.bActive = 1
end
L0_268.Event_Activate = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_296, A1_297)
  A0_296.bActive = 0
end
L0_268.Event_Deactivate = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_298)
  if A0_298.bActive == 0 then
    return
  end
  A0_298:ResetAnimation(0, -1)
end
L0_268.Event_ResetAnimation = L1_269
L0_268 = AutomaticElevator
function L1_269(A0_299, A1_300)
  if A0_299.bActive == 0 then
    return
  end
  A0_299:ResetAnimation(0, -1)
  A0_299:StartAnimation(0, "default", 0, 0, 1, 0)
  A0_299:SetAnimationSpeed(1)
end
L0_268.Event_StartAnimation = L1_269
L0_268 = AutomaticElevator
L1_269 = {}
function L2_270(A0_301)
  A0_301.server = 1
  A0_301:OnInit()
end
L1_269.OnInit = L2_270
L2_270 = {}
function L3_271(A0_302)
  A0_302:Activate(0)
  A0_302:SetVelocity(0)
  if not A0_302.InUpPos then
    A0_302.bOpeningDelay = nil
    A0_302.bTriggerOpenRequest = nil
  end
  A0_302:SetMaterial(A0_302.Properties.sMaterialDefault)
end
L2_270.OnBeginState = L3_271
function L3_271(A0_303)
  A0_303:Activate(1)
end
L2_270.OnEndState = L3_271
function L3_271(A0_304, A1_305)
  if A0_304.bActive == 0 or A0_304.Properties.bAutomatic == 0 then
    return
  end
  if not A0_304.InUpPos and not A0_304.WaitForDownDelay and A0_304.bOpeningDelay == nil then
    A0_304:SetTimer(A0_304.Properties.OpenDelay * 1000)
    A0_304.bOpeningDelay = 1
  end
end
L2_270.OnContact = L3_271
function L3_271(A0_306)
  if A0_306.bActive == 0 then
    return
  end
  if not A0_306.InUpPos then
    if not A0_306.WaitForDownDelay then
      A0_306:GotoState("Opening")
    end
  else
    System.LogToConsole("Opened State Timer Exprired")
    A0_306:GotoState("Closing")
    A0_306:Event_Close(A0_306)
  end
  A0_306.InUpPos = nil
  A0_306.WaitForDownDelay = nil
end
L2_270.OnTimer = L3_271
L1_269.Idle = L2_270
L2_270 = {}
function L3_271(A0_307)
  A0_307.EventSent = nil
  A0_307:SetVelocity(1)
  A0_307:SetMaterial(A0_307.Properties.sMaterialUp)
end
L2_270.OnBeginState = L3_271
function L3_271(A0_308)
  local L1_309
end
L2_270.OnEndState = L3_271
function L3_271(A0_310, A1_311)
  A0_310.Distance = A0_310.Distance + abs(A1_311 * A0_310.Properties.MovingSpeed)
  if A0_310.Distance > A0_310.Properties.MovingDistance then
    A0_310.Distance = A0_310.Properties.MovingDistance
    if not A0_310.EventSent then
      A0_310.Event_Opened(A0_310)
      A0_310.InUpPos = 1
      A0_310:GotoState("Idle")
      if A0_310.Properties.bAutomatic ~= 0 and 0 < A0_310.Properties.CloseDelay then
        A0_310:SetTimer(A0_310.Properties.CloseDelay * 1000)
      end
    end
    A0_310.EventSent = 1
  end
  A0_310.temp_vec.x = A0_310.Properties.Direction.X * A0_310.Distance * A0_310.MoveDir + A0_310.base_pos.x
  A0_310.temp_vec.y = A0_310.Properties.Direction.Y * A0_310.Distance * A0_310.MoveDir + A0_310.base_pos.y
  A0_310.temp_vec.z = A0_310.Properties.Direction.Z * A0_310.Distance * A0_310.MoveDir + A0_310.base_pos.z
  A0_310:SetPos(A0_310.temp_vec)
  A0_310:SetPhysicParams(PHYSICPARAM_VELOCITY, A0_310.Velocity)
end
L2_270.OnUpdate = L3_271
L1_269.Opening = L2_270
L2_270 = {}
function L3_271(A0_312)
  A0_312.EventSent = nil
  A0_312:SetVelocity(-1)
  A0_312:SetMaterial(A0_312.Properties.sMaterialDown)
end
L2_270.OnBeginState = L3_271
function L3_271(A0_313)
  local L1_314
end
L2_270.OnEndState = L3_271
function L3_271(A0_315, A1_316)
  A0_315.Distance = A0_315.Distance - abs(A1_316 * A0_315.Properties.MovingSpeed)
  if A0_315.Distance < 0 then
    A0_315.Distance = 0
    if not A0_315.EventSent then
      System.Log("Server-EVENT-Closed")
      A0_315:Event_Closed()
      A0_315.WaitForDownDelay = 1
      A0_315:GotoState("Idle")
      A0_315.InUpPos = nil
      if A0_315.Properties.bAutomatic ~= 0 then
        A0_315:SetTimer(A0_315.Properties.RetriggerDelay * 1000)
      end
    end
    A0_315.EventSent = 1
  end
  A0_315.temp_vec.x = A0_315.Properties.Direction.X * A0_315.Distance * A0_315.MoveDir + A0_315.base_pos.x
  A0_315.temp_vec.y = A0_315.Properties.Direction.Y * A0_315.Distance * A0_315.MoveDir + A0_315.base_pos.y
  A0_315.temp_vec.z = A0_315.Properties.Direction.Z * A0_315.Distance * A0_315.MoveDir + A0_315.base_pos.z
  A0_315:SetPos(A0_315.temp_vec)
  A0_315:SetPhysicParams(PHYSICPARAM_VELOCITY, A0_315.Velocity)
end
L2_270.OnUpdate = L3_271
L1_269.Closing = L2_270
L0_268.Server = L1_269
L0_268 = AutomaticElevator
L1_269 = {}
L2_270 = AutomaticElevator
L2_270 = L2_270.OnInit
L1_269.OnInit = L2_270
L2_270 = {}
function L3_271(A0_317)
  A0_317:SetVelocity(0)
  if not A0_317.DuringLoading then
    Sound.SetSoundPosition(A0_317.StopSound, A0_317:GetPos())
    Sound.PlaySound(A0_317.StopSound)
    Sound.StopSound(A0_317.LoopSound)
    Sound.StopSound(A0_317.StartSound)
  end
  A0_317.LoopStarted = nil
end
L2_270.OnBeginState = L3_271
L1_269.Idle = L2_270
L2_270 = {}
function L3_271(A0_318)
  A0_318:SetVelocity(1)
  A0_318:StartAnimation(0, "open")
  System.LogToConsole("CLIENT:Open")
  Sound.SetSoundPosition(A0_318.StartSound, A0_318:GetPos())
  Sound.PlaySound(A0_318.StartSound)
  A0_318.StartMoveTime = _time
end
L2_270.OnBeginState = L3_271
function L3_271(A0_319, A1_320)
  if not A0_319.server then
    A0_319.Distance = A0_319.Distance + abs(A1_320 * A0_319.Properties.MovingSpeed)
    if A0_319.Distance > A0_319.Properties.MovingDistance then
      A0_319.Distance = A0_319.Properties.MovingDistance
    end
    A0_319.temp_vec.x = A0_319.Properties.Direction.X * A0_319.Distance * A0_319.MoveDir + A0_319.base_pos.x
    A0_319.temp_vec.y = A0_319.Properties.Direction.Y * A0_319.Distance * A0_319.MoveDir + A0_319.base_pos.y
    A0_319.temp_vec.z = A0_319.Properties.Direction.Z * A0_319.Distance * A0_319.MoveDir + A0_319.base_pos.z
    A0_319:SetPos(A0_319.temp_vec)
    A0_319:SetPhysicParams(PHYSICPARAM_VELOCITY, A0_319.Velocity)
  end
  if _time - A0_319.StartMoveTime >= A0_319.Properties.LoopSoundStart and not A0_319.LoopStarted then
    Sound.PlaySound(A0_319.LoopSound)
    A0_319.LoopStarted = 1
  end
  Sound.SetSoundPosition(A0_319.StartSound, A0_319:GetPos())
  Sound.SetSoundPosition(A0_319.LoopSound, A0_319:GetPos())
  A0_319:IsMovingClient(A1_320)
end
L2_270.OnUpdate = L3_271
L1_269.Opening = L2_270
L2_270 = {}
function L3_271(A0_321)
  A0_321:SetVelocity(-1)
  A0_321:StartAnimation(0, "close")
  System.LogToConsole("CLIENT:Close")
  Sound.SetSoundPosition(A0_321.StartSound, A0_321:GetPos())
  Sound.PlaySound(A0_321.StartSound)
  A0_321.StartMoveTime = _time
end
L2_270.OnBeginState = L3_271
function L3_271(A0_322, A1_323)
  if not A0_322.server then
    A0_322.Distance = A0_322.Distance - abs(A1_323 * A0_322.Properties.MovingSpeed)
    if A0_322.Distance < 0 then
      A0_322.Distance = 0
    end
    A0_322.temp_vec.x = A0_322.Properties.Direction.X * A0_322.Distance * A0_322.MoveDir + A0_322.base_pos.x
    A0_322.temp_vec.y = A0_322.Properties.Direction.Y * A0_322.Distance * A0_322.MoveDir + A0_322.base_pos.y
    A0_322.temp_vec.z = A0_322.Properties.Direction.Z * A0_322.Distance * A0_322.MoveDir + A0_322.base_pos.z
    A0_322:SetPos(A0_322.temp_vec)
    A0_322:SetPhysicParams(PHYSICPARAM_VELOCITY, A0_322.Velocity)
  end
  if _time - A0_322.StartMoveTime >= A0_322.Properties.LoopSoundStart and not A0_322.LoopStarted then
    Sound.PlaySound(A0_322.LoopSound)
    A0_322.LoopStarted = 1
  end
  Sound.SetSoundPosition(A0_322.StartSound, A0_322:GetPos())
  Sound.SetSoundPosition(A0_322.LoopSound, A0_322:GetPos())
  A0_322.IsMovingClient(A0_322, A1_323)
end
L2_270.OnUpdate = L3_271
L1_269.Closing = L2_270
L0_268.Client = L1_269
L0_268 = AutomaticElevator
L1_269 = {}
L2_270 = {}
L3_271 = {
  AutomaticElevator.Event_Activate,
  "bool"
}
L2_270.Activate = L3_271
L3_271 = {
  AutomaticElevator.Event_Close,
  "bool"
}
L2_270.Close = L3_271
L3_271 = {
  AutomaticElevator.Event_Closed,
  "bool"
}
L2_270.Closed = L3_271
L3_271 = {
  AutomaticElevator.Event_Deactivate,
  "bool"
}
L2_270.Deactivate = L3_271
L3_271 = {
  AutomaticElevator.Event_Open,
  "bool"
}
L2_270.Open = L3_271
L3_271 = {
  AutomaticElevator.Event_Opened,
  "bool"
}
L2_270.Opened = L3_271
L3_271 = {
  AutomaticElevator.Event_ResetAnimation,
  "bool"
}
L2_270.ResetAnimation = L3_271
L3_271 = {
  AutomaticElevator.Event_StartAnimation,
  "bool"
}
L2_270.StartAnimation = L3_271
L1_269.Inputs = L2_270
L2_270 = {}
L2_270.Activate = "bool"
L2_270.Close = "bool"
L2_270.Closed = "bool"
L2_270.Deactivate = "bool"
L2_270.Open = "bool"
L2_270.Opened = "bool"
L2_270.ResetAnimation = "bool"
L2_270.StartAnimation = "bool"
L1_269.Outputs = L2_270
L0_268.FlowEvents = L1_269
